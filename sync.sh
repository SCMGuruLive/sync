#!/bin/bash

# sync.sh
# A program that does not copy hidden files or text editor backups to a
# remote server
# Edit the the variables in this file for your needs
# Copyright (C) 2020 Scott C. MacCallum
# Email: scott@scm.guru

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.

# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# Local path should be before slash
# Example: /home/jdoe/

local_path="/"

# The remote user
# Example: jdoe

remote_user=""

# Server should be after at sign
# Example: @foo.com

server="@"

# Remote path should be after colon
# Example: :/home/jdoe/project

remote_path=":"

rsync -v -a --exclude=".*" --exclude="*#" --exclude=".*#" --exclude "*~" --exclude="*.~" $local_path $remote_user$server$remote_path

exit
