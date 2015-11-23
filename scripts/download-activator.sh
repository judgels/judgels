#!/bin/bash

JUDGELS_BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."
ACTIVATOR_DIR="$JUDGELS_BASE_DIR/activator"

echo "Downloading Typesafe Activator..."

mkdir -p $ACTIVATOR_DIR 
pushd $ACTIVATOR_DIR > /dev/null
wget -q http://downloads.typesafe.com/typesafe-activator/1.3.2/typesafe-activator-1.3.2-minimal.zip
unzip typesafe-activator-1.3.2-minimal.zip
mv activator-1.3.2-minimal/* .
rm -rf activator-1.3.2-minimal *.zip
popd > /dev/null

echo "export PATH=\$PATH:$ACTIVATOR_DIR" >> ~/.profile
echo "This script add PATH to your ~/.profile."
echo "Restart terminal to run activator from terminal."
