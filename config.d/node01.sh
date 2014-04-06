#!/bin/bash
#
# requires:
#  bash
#
set -e
set -o pipefail
set -x

# Do some changes ...

chkconfig cobblerd on
service   cobblerd start

chkconfig httpd    on
service   httpd    start
