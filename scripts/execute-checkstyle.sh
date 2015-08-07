#!/usr/bin/env bash

JUDGELS_BASE_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/..

function join { local IFS=" && "; shift; echo "$*"; }

ARR=( $(find . -name '*.java' ! -name '*_.java' -not -path "*target/*") )

java -jar $JUDGELS_BASE_DIR/checkstyle.jar -c $JUDGELS_BASE_DIR/checkstyle-config.xml $(printf "%s " "${ARR[@]}" | cut -d "," -f 1-${#ARR[@]} )
