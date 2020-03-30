#!/bin/sh

set -eu

# -e will not execute next command if first command is false/error
# -u will give us a warnig every time we use undeclare variable

env

ls

yarn

echo "::set-output name=url::http://github.com/razzkumar"


exit 0
