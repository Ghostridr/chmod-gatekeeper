#!/bin/bash

# Set your GitHub repo (replace with your actual repo)
REPO_URL="https://github.com/Ghostridr/chmod-gatekeeper"
BRANCH="Main" # Use the correct branch name with case sensitivity

# Get the directory of this script (assumed to be in mac/update/)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"

cd "$ROOT_DIR" || { echo "Failed to change to root directory."; exit 1; }

echo "Downloading latest update from $REPO_URL..."

# Download and extract the latest version to a temp directory
TMP_DIR=$(mktemp -d)
curl -L "$REPO_URL/archive/refs/heads/$BRANCH.zip" -o "$TMP_DIR/update.zip"
unzip -q "$TMP_DIR/update.zip" -d "$TMP_DIR"

# Find the extracted folder (it will be named like repo-branch)
EXTRACTED_DIR=$(find "$TMP_DIR" -type d -name "chmod-gatekeeper-*" | head -n 1)

# Copy all files from the extracted folder to the root, overwriting existing files
rsync -a --delete --exclude 'mac/update/auto-update.sh' "$EXTRACTED_DIR/" "$ROOT_DIR/"

echo "Update complete."

# Clean up
rm -rf "$TMP_DIR"