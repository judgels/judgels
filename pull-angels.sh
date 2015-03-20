#!/bin/bash

echo "Initializing angels..."
git submodule init

echo "Updating angels..."
git submodule update --remote

echo "Checking out branches in angels..."
git submodule foreach -q --recursive 'branch="$(git config -f $toplevel/.gitmodules submodule.$name.branch)"; git checkout $branch'

