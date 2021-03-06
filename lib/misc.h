/*  dctrl-tools - Debian control file inspection tools
    Copyright © 2004 Antti-Juhani Kaijanaho

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

#ifndef MISC_H
#define MISC_H

#define COPYING "/usr/share/common-licenses/GPL"

/* Copy the file called fname to standard outuput stream.  Return zero
   iff problems were encountered. */
int to_stdout (const char * fname);

#endif /* MISC_H */
