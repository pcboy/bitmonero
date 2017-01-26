#!/usr/bin/env bash
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
#
# See the COPYING file for license information.
#
# David Hagege <pcboy.pebkac@gmail.com>

set -euo pipefail
IFS=$'\n'
for i in `find $1 -name '*.o'`;do
  xcrun -sdk iphoneos lipo $i -thin armv7 -output $i.2
  mv $i.2 $i
done

