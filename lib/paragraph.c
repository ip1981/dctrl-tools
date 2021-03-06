/*  dctrl-tools - Debian control file inspection tools
    Copyright © 2003, 2004, 2008, 2010, 2011 Antti-Juhani Kaijanaho

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program; if not, write to the Free Software Foundation, Inc.,
    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#include <string.h>
#include "msg.h"
#include "paragraph.h"
#include "strutil.h"

void para_parser_init(para_parser_t * pp, FSAF * fp,
		      bool invalidate_p, bool ignore_failing_paras,
                      bool register_unknown_fields)
{
	pp->fp = fp;
	pp->eof = 0;
	pp->loc = 0;
	pp->line = 1;
	pp->invalidate_p = invalidate_p;
	pp->ignore_broken_paras = ignore_failing_paras;
        pp->register_unknown_fields = register_unknown_fields;
}

void para_init(para_parser_t * pp, para_t * para)
{
	para->common = pp;
	para->line = pp->line;
	para->start = 0;
	para->end = 0;
	para->nfields = fieldtrie_count();
	para->maxfields = para->nfields;
        if (para->nfields > 0) {
                para->fields = malloc(para->nfields * sizeof *para->fields);
                if (para->fields == 0) fatal_enomem(0);
                for (size_t i = 0; i < para->nfields; i++) {
                        para->fields[i].first = 0;
                        para->fields[i].last = 0;
                }
        } else {
                para->fields = NULL;
        }
}

void para_finalize(para_t * para)
{
	para->common = 0;
	para->start = 0;
	para->end = 0;
	if (para->fields != 0) {
                for (size_t i = 0; i < para->nfields; i++) {
                        struct field_datum *fp = para->fields[i].first;
                        while (fp != 0) {
                                struct field_datum *tmp = fp;
                                fp = fp->next;
                                free(tmp);
                        }
                }
		free(para->fields);
	}
        para->maxfields = 0;
	para->nfields = 0;
	para->fields = 0;
}

static struct field_data * register_field(para_t * para,
                                          char const * s, size_t slen)
{
        size_t inx = fieldtrie_insert_n(s, slen)->inx;
        if (inx >= para->maxfields) {
                if (para->maxfields == 0) para->maxfields = 2;
                while (inx >= para->maxfields) {
                        para->maxfields = para->maxfields * 2;
                }
                para->fields = realloc(para->fields,
                                       para->maxfields *
                                       sizeof(para->fields[0]));
                if (para->fields == 0) fatal_enomem(0);
        }
        if (inx >= para->nfields) {
                para->nfields = inx + 1;
                para->fields[inx].first = 0;
                para->fields[inx].last = 0;
        }
        assert(para->nfields <= para->maxfields);
        struct field_data *field_data = &para->fields[inx];
        return field_data;
}

void para_parse_next(para_t * para)
{
redo:
	assert(para != 0);
	para_parser_t * pp = para->common;
	para->start = pp->loc;
	para->line = pp->line;
	for (size_t i = 0; i < para->nfields; i++) {
                struct field_datum *fp = para->fields[i].first;
                while (fp != 0) {
                        struct field_datum *tmp = fp;
                        fp = fp->next;
                        free(tmp);
                }
                para->fields[i].first = 0;
                para->fields[i].last = 0;
	}
	if (pp->invalidate_p) {
		fsaf_invalidate(pp->fp, para->start);
	}

	register size_t pos = para->start;
	register size_t line = para->line;
	register FSAF * fp = pp->fp;
	size_t field_start = 0;
	struct field_datum * field_datum = 0;

#define GETC (c = fsaf_getc(fp, pos++), c == '\n' ? line++ : line)
#define UNGETC (fsaf_getc(fp, --pos) == '\n' ? --line : line)
        int c;
START:
        GETC;
        switch (c) {
        case -1:
                pp->eof = true;
                goto END;
        case '\n':
                para->start++;
                goto START;
        case '#':
                para->start++;
                goto START_SKIPCOMMENT;
        default:
                UNGETC;
                field_start = pos;
                goto FIELD_NAME;
        }
        assert(0);

START_SKIPCOMMENT:
        GETC;
        switch (c) {
        case -1:
                pp->eof = true;
                goto END;
        case '\n':
                para->start++;
                goto START;
        default:
                para->start++;
                goto START_SKIPCOMMENT;
        }

FIELD_NAME:
        GETC;
        switch (c) {
        case '\n': case -1:
                if (pp->ignore_broken_paras) {
                        line_message(L_IMPORTANT, fp->fname,
                                     c == '\n' ?line-1:line,
                                     _("warning: expected a colon"));
                        goto FAIL;
                } else {
                        line_message(L_FATAL, fp->fname,
                                     c == '\n' ?line-1:line,
                                     _("expected a colon"));
                        fail();
                }
                break;
        case ':': {
                size_t len = (pos-1) - field_start;
                struct fsaf_read_rv r = fsaf_read(fp,
                                                  field_start,
                                                  len);
                assert(r.len == len);
                struct field_attr *attr =
                        fieldtrie_lookup(r.b, len);
                if (attr == NULL) {
                        if (para->common->
                            register_unknown_fields) {
                                register_field(para, r.b, len);
                        }
                }
                attr = fieldtrie_lookup(r.b, len);
                if (attr == NULL) {
                        field_datum = 0;
                } else {
                        assert(attr->inx < para->nfields);
                        struct field_data * fds = &para->fields[attr->inx];
                        assert((fds->first == 0) == (fds->last == 0));
                        field_datum = malloc(sizeof *field_datum);
                        if (field_datum == 0) enomem(0);
                        field_datum->start = pos;
                        field_datum->line = line;
                        field_datum->name_start = field_start;
                        field_datum->name_end = pos-1;
                        field_datum->next = 0;
                        field_datum->prev = fds->last;
                        if (fds->last != 0) fds->last->next = field_datum;
                        fds->last = field_datum;
                        if (fds->first == 0) fds->first = field_datum;
                }
                goto BODY;
        }
        default:
                goto FIELD_NAME;
        }
        assert(0);

BODY:
        GETC;
        if (c == -1 || c == '\n') {
                if (field_datum != 0) {
                        field_datum->end = pos-1;
                        while (field_datum->start < field_datum->end
                               && fsaf_getc(fp, field_datum->start)
                               == ' ') {
                                ++field_datum->start;
                        }
                }
                goto BODY_NEWLINE;
        }
        if (c != -1) goto BODY; else goto BODY_NEWLINE;
        assert(0);

BODY_NEWLINE:
        GETC;
        switch (c) {
        case -1:
                //para->eof = true;
                /* pass through */
        case '\n':
                goto END;
        case ' ': case '\t':
                goto BODY_SKIPBLANKS;
        case '#':
                goto BODY_SKIPCOMMENT;
        default:
                UNGETC;
                field_start = pos;
		goto FIELD_NAME;
        }
        assert(0);

BODY_SKIPBLANKS:
        GETC;
        switch (c) {
        case -1:
                /* pass through */
        case '\n':
                goto END;
                break;
        case ' ': case '\t':
                goto BODY_SKIPBLANKS;
        default:
                goto BODY;
        }
        assert(0);

BODY_SKIPCOMMENT:
        GETC;
        switch (c) {
        case -1:
                /* pass through */
        case '\n':
                goto BODY_NEWLINE;
        default:
                goto BODY_SKIPCOMMENT;
        }

#undef GETC

FAIL:
        do {
                c = fsaf_getc(fp, pp->loc++);
                if (c == '\n') pp->line++;
        } while (c != -1 && c != '\n');
        goto redo;

END:
        UNGETC;
        UNGETC;
	para->end = pos;
	pp->loc = para->end;
	pp->line = line;
}
