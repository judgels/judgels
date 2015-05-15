#!/bin/bash

echo "Initializing submodules..."
git submodule init

echo "Fetching submodules..."
git submodule update --remote

echo "Updating submodules..."
git submodule foreach -q --recursive git pull origin master && git checkout master

