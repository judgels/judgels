#!/bin/bash

JUDGELS_BASE_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/..

echo "Downloading Checkstyle..."

mkdir -p ~/checkstyle
pushd ~/checkstyle > /dev/null
wget -q -O $JUDGELS_BASE_DIR/checkstyle.jar http://downloads.sourceforge.net/project/checkstyle/checkstyle/6.8.2/checkstyle-6.8.2-all.jar?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fcheckstyle%2Ffiles%2Fcheckstyle%2F6.8.2%2F&ts=1438849665&use_mirror=nchc
popd > /dev/null

echo "Checkstyle successfully downloaded."
