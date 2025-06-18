# chmod-gatekeeper

A robust macOS utility to fix permissions and remove Gatekeeper quarantine attributes from `.app` bundles in a directory tree, with clear, color-coded, and underlined output for user readability and review.

## What It Does

The `Perms_&_GateKeeper.command` script:

- Changes to the parent directory (so you can keep it in a `chmod-gatekeeper` subfolder and operate on the whole project or downloads folder).
- Sources color and formatting functions from `mac/color/colors.sh` for visually clear output.
- Prompts the user with a color-coded, clearly formatted warning and asks for confirmation before making any changes.
- Recursively sets read, write, and execute permissions (`a+rwx`) on all files and directories under the current directory, tracking which succeeded and which failed.
- Recursively removes the macOS Gatekeeper quarantine flag (`com.apple.quarantine`) from all `.app` bundles, tracking which succeeded and which failed.
- Provides a color-coded, underlined summary of how many files and apps were processed, and lists which ones succeeded or failed for both permissions and quarantine removal.
- Waits for you to press Enter before closing, so you can review the results.

## Getting Started

After downloading, you will have a folder named `chmod-gatekeeper` containing all the necessary files and subfolders. **Do not move or rename files inside this folder.**

**To use the tool on your own files or folders:**

1. Move the entire `chmod-gatekeeper` folder (as-is) to the directory you want to process. For example, if you want to fix permissions in your `Downloads` folder, drag and drop the whole `chmod-gatekeeper` folder into `Downloads` using Finder.
2. Do not remove or rename any files or subfolders inside `chmod-gatekeeper`. The script relies on the folder structure to work correctly.

## Usage

You can run the script in two ways: from the Terminal or using a Finder shortcut. The recommended method is to use the Finder shortcut for ease of use.

### Prerequisites

- Ensure you have a macOS system with Terminal access.
- Make the script executable (only needed once):
  - Open Terminal and navigate to the directory where the script is located, then run:

   ```sh
   chmod +x ./mac/Perms_\&\_GateKeeper.command
   ```

  - This step is required for both Terminal and Shortcut (Finder) usage.

### Option 1: Use the Shortcut (Finder) — Recommended

- A shortcut named `Perms & GateKeeper` is provided in the main directory for convenience.
- You can double-click this shortcut in Finder to launch the script without opening Terminal directly.
- You may still be prompted for your password in a Terminal window, and all output will be shown there.
- This is the easiest and most user-friendly way to run the script.

### Option 2: Run from Terminal

- Run the script from Terminal:

   ```sh
   ./mac/Perms_\&\_GateKeeper.command
   ```

- Review the color-coded summary and lists of successes and failures. Press Enter to exit when done.

## Output Details

- The script displays color-coded and underlined messages for headings, successes, errors, and prompts.
- It summarizes how many files and apps were processed for permissions and quarantine removal, with the counts highlighted in white.
- It lists all files and apps that succeeded or failed for each operation, with clear section headers.
- The script will not make any changes unless you confirm at the prompt.

## Notes

- The script must be run from the parent directory of the `chmod-gatekeeper` folder (it does this automatically).
- It will apply permissions and remove quarantine attributes recursively to all files and subdirectories.
- Use with caution: it grants full access to all files in the directory tree.
- You may be prompted for your password to allow the script to remove quarantine attributes from `.app` bundles.
