#!/bin/bash

# Get the script's directory and change to that directory
_1=`dirname "${0}"`
cd "$_1"

# Set read, write, and execute permissions for all users on all files
chmod -R a+rwx *

# Find all .app files and remove the com.apple.quarantine attribute
find . -iname "*.app" -exec sudo xattr -r -d com.apple.quarantine {} \;