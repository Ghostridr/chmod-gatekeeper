#!/bin/bash
# run.sh - Entry point for chmod-gatekeeper: handles backup, update, and launches the main script

DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$DIR"
PARENT_DIR="$(cd "$ROOT_DIR/.." && pwd)"

# Create a backup of the current chmod-gatekeeper directory before updating
BACKUP_FILE="$ROOT_DIR/backup.zip"
echo "Creating backup at $BACKUP_FILE ..."
cd "$ROOT_DIR" || { echo "Failed to change to root directory for backup."; exit 1; }
zip -r -q "$BACKUP_FILE" . -x "./backup.zip"

# Make update, color, and .command scripts executable
chmod +x "$ROOT_DIR/mac/update/auto-update.sh"
chmod +x "$ROOT_DIR/mac/color/colors.sh"
chmod +x "$ROOT_DIR/mac/Perms_&_GateKeeper.command"

# Run auto-update.sh before anything else
echo "Checking for updates..."
"$ROOT_DIR/mac/update/auto-update.sh"

# Launch the main script
bash "$ROOT_DIR/mac/Perms_&_GateKeeper.command"
