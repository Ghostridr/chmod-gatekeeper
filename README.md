# chmod-gatekeeper

A robust macOS utility to fix permissions and remove Gatekeeper quarantine attributes from `.app` bundles in a directory tree, with clear, color-coded, and underlined output for user readability and review.

## What It Does

- **run.command** is the entry point. It:
  - Creates a backup of the entire `chmod-gatekeeper` folder (as `backup.zip` inside that folder).
  - Checks for and applies updates from GitHub.
  - Launches the main script for permission and quarantine fixes.
- **Perms_&_GateKeeper.command** handles the core logic: it prompts for confirmation, then recursively sets permissions and removes quarantine attributes from all `.app` bundles in the directory just outside `chmod-gatekeeper`.
- All output is color-coded and user-friendly.

## Getting Started

After downloading, you will have a folder named `chmod-gatekeeper` containing all the necessary files and subfolders. **Do not move or rename files inside this folder.**

**To use the tool on your own files or folders:**

1. Move the entire `chmod-gatekeeper` folder (as-is) to the directory you want to process. For example, if you want to fix permissions in your `Downloads` folder, drag and drop the whole `chmod-gatekeeper` folder into `Downloads` using Finder.
2. Do not remove or rename any files or subfolders inside `chmod-gatekeeper`. The script relies on the folder structure to work correctly.

## Usage

### Prerequisites

- Ensure you have a macOS system with Terminal access.
- Make the script executable (only needed once):
  - Open Terminal and navigate to the directory where `run.command` is located, then run:

   ```sh
   chmod +x run.command
   ```

### How to Run

- Double-click or run the following command from the `chmod-gatekeeper` directory:

   ```sh
   ./run.command
   ```

- Follow the prompts in Terminal.

## Output Details

- The script displays color-coded and underlined messages for headings, successes, errors, and prompts.
- It summarizes how many files and apps were processed for permissions and quarantine removal, with the counts highlighted in white.
- It lists all files and apps that succeeded or failed for each operation, with clear section headers.
- The script will not make any changes unless you confirm at the prompt.

## Notes

- The script will operate on the directory just outside `chmod-gatekeeper` (the folder you placed it in).
- It will apply permissions and remove quarantine attributes recursively to all files and subdirectories in that directory.
- Use with caution: it grants full access to all files in the directory tree.
- You may be prompted for your password to allow the script to remove quarantine attributes from `.app` bundles.
- The backup is stored as `backup.zip` inside the `chmod-gatekeeper` folder before any changes or updates are made.
