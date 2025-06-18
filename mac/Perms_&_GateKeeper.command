#!/bin/bash

# Get the absolute path to the script's directory (mac)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
PARENT_DIR="$(cd "$ROOT_DIR/.." && pwd)"

# Source colors and print functions
source "$ROOT_DIR/mac/color/colors.sh"

# Change to the directory just outside chmod-gatekeeper (the parent of ROOT_DIR)
cd "$PARENT_DIR" || { print_line "$RED" "Failed to change to target directory outside chmod-gatekeeper."; exit 1; }
print_line "$CYAN" "Now operating in: ${RESET}${WHITE}$PWD${CYAN}"

# Print a confirmation message
print_line " "
print_line "$BOLD_CYAN" "Setting Permissions and Removing Gatekeeper Quarantine Attributes"
print_line "$BOLD_CYAN" "=========================================================="
print_line " "
print_line "$RED" "This will recursively set permissions and remove quarantine attributes from all .app bundles in: ${RESET}${WHITE}$PWD${RED}"
print_line "$Bold_RED" "Are you sure you want to continue? [Y/N] "
read confirm
if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  print_line "$YELLOW" "Aborted."
  print_line "$CYAN" "\nPress Enter to exit..."
  read _
  exit 0
fi

# Collect files and .app bundles for summary
perm_success=()
perm_fail=()
quarantine_success=()
quarantine_fail=()

while IFS= read -r -d '' file; do
  if chmod a+rwx "$file" 2>/dev/null; then
    perm_success+=("$file")
  else
    perm_fail+=("$file")
  fi
done < <(find . -print0)

while IFS= read -r -d '' app; do
  if sudo xattr -r -d com.apple.quarantine "$app" 2>/dev/null; then
    quarantine_success+=("$app")
  else
    quarantine_fail+=("$app")
  fi
done < <(find . -iname "*.app" -print0)

print_line "$BOLD_CYAN" "\nSummary:"
print_line "$GREEN" "Permissions set (a+rwx) on ${RESET}${WHITE}${#perm_success[@]}${RESET}${GREEN} files/directories."
print_line "$GREEN" "Quarantine attribute removed from ${RESET}${WHITE}${#quarantine_success[@]}${RESET}${GREEN} .app bundles."
echo ""

if (( ${#perm_success[@]} )); then
  print_line_color_style_underline "$BOLD_GREEN" "$UNDERLINE" "Permissions successfully set on:"
  printf '  %s\n' "${perm_success[@]}"
fi
if (( ${#perm_fail[@]} )); then
  print_line_color_style_underline "$RED" "$UNDERLINE" "Failed to set permissions on:"
  printf '  %s\n' "${perm_fail[@]}"
fi
if (( ${#quarantine_success[@]} )); then
  print_line_color_style_underline "$BOLD_GREEN" "$UNDERLINE" "Quarantine removed from:"
  printf '  %s\n' "${quarantine_success[@]}"
fi
if (( ${#quarantine_fail[@]} )); then
  print_line_color_style_underline "$RED" "$UNDERLINE" "Failed to remove quarantine from:"
  printf '  %s\n' "${quarantine_fail[@]}"
fi

print_line "$CYAN" "\nPress Enter to exit..."
read _