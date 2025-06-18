# Created Date: Thursday, December 12th 2024
# Modified Date: Thursday, December 12th 2024

# Title: Colors in the Terminal

# Description:
#               This file contains the colors that can be used in the terminal to print text in different colors.
#               The colors are defined as variables and can be used in the terminal by using the echo command.

# Usage:
#               To use the colors in the terminal, you can use the echo command with the -e option and the color variable.
#               For example, to print text in red, you can use the following command:
#                   echo -e "${RED}This is red text\033[0m"
#               This will print the text "This is red text" in red color.
#               You can also use the colors in functions to print text in different colors.
#               For example, you can define a function to print a line in a specific color like this:
#                   print_line() {
#                       local color=$1
#                       local text=$2
#                       echo -e "${color}${text}\033[0m"
#                   }
#               You can then call this function with the color and text you want to print like this:
#                   print_line $RED "This is red text"
#               This will print the text "This is red text" in red color.

# ======================================================
# ====                  FUNCTIONS                   ====
# ======================================================

# Print a line with a specific color
print_line() {
    local color=$1 # The color of the text
    local text=$2 # The text to print
    echo -e "${color}${text}${RESET}"
}

# Print a line with a specific background color
print_line_bg() {
    local bg_color=$1 # The background color of the text
    local text=$2 # The text to print
    echo -e "${bg_color}${text}${RESET}"
}

# Print a line with a specific color and background color
print_line_color_bg() {
    local color=$1 # The color of the text
    local bg_color=$2 # The background color of the text
    local text=$3 # The text to print
    echo -e "${color}${bg_color}${text}${RESET}"
}

# Print a line with a specific style (bold, underline, etc.)
print_line_style() {
    local style=$1 # The style of the text
    local text=$2 # The text to print
    echo -e "${style}${text}${RESET}"
}

# Print a line with a specific color and style
print_line_color_style() {
    local color=$1 # The color of the text
    local style=$2 # The style of the text
    local text=$3 # The text to print
    echo -e "${color}${style}${text}${RESET}"
}

# Print a line with a specific background color and style
print_line_bg_style() {
    local bg_color=$1 # The background color of the text
    local style=$2 # The style of the text
    local text=$3 # The text to print
    echo -e "${bg_color}${style}${text}${RESET}"
}

# Print a line with a specific color, background color, and style
print_line_color_bg_style() {
    local color=$1 # The color of the text
    local bg_color=$2 # The background color of the text
    local style=$3 # The style of the text
    local text=$4 # The text to print
    echo -e "${color}${bg_color}${style}${text}${RESET}"
}

# Print a line with a specific color and background color and style
print_line_color_bg_style() {
    local color=$1 # The color of the text
    local bg_color=$2 # The background color of the text
    local style=$3 # The style of the text
    local text=$4 # The text to print
    echo -e "${color}${bg_color}${style}${text}${RESET}"
}

# Print a line with a specific color and background color and style and text
print_line_color_bg_style_text() {
    local color=$1 # The color of the text
    local bg_color=$2 # The background color of the text
    local style=$3 # The style of the text
    local text=$4 # The text to print
    echo -e "${color}${bg_color}${style}${text}${RESET}"
}

# Print a line with a specific color and background color and style and text
print_line_color_bg_style_text() {
    local color=$1 # The color of the text
    local bg_color=$2 # The background color of the text
    local style=$3 # The style of the text
    local text=$4 # The text to print
    echo -e "${color}${bg_color}${style}${text}${RESET}"
}

# Print a line with a specific color and background color and style and text
print_line_color_bg_style_text() {
    local color=$1 # The color of the text
    local bg_color=$2 # The background color of the text
    local style=$3 # The style of the text
    local text=$4 # The text to print
    echo -e "${color}${bg_color}${style}${text}${RESET}"
}

# Print a line with a specific underline
print_line_underline() {
    local text=$1 # The text to print
    echo -e "\033[4m${text}${RESET}"
}

# Print a line with a specific color and underline
print_line_color_underline() {
    local color=$1 # The color of the text
    local text=$2 # The text to print
    echo -e "${color}\033[4m${text}${RESET}"
}

# Print a line with a specific background color and underline
print_line_bg_underline() {
    local bg_color=$1 # The background color of the text
    local text=$2 # The text to print
    echo -e "${bg_color}\033[4m${text}${RESET}"
}

# Print a line with a specific color, background color, and underline
print_line_color_bg_underline() {
    local color=$1 # The color of the text
    local bg_color=$2 # The background color of the text
    local text=$3 # The text to print
    echo -e "${color}${bg_color}\033[4m${text}${RESET}"
}

# Print a line with a specific style and underline
print_line_style_underline() {
    local style=$1 # The style of the text
    local text=$2 # The text to print
    echo -e "${style}\033[4m${text}${RESET}"
}

# Print a line with a specific color and style and underline
print_line_color_style_underline() {
    local color=$1 # The color of the text
    local style=$2 # The style of the text
    local text=$3 # The text to print
    echo -e "${color}${style}\033[4m${text}${RESET}"
}

# Print a line with a specific background color and style and underline
print_line_bg_style_underline() {
    local bg_color=$1 # The background color of the text
    local style=$2 # The style of the text
    local text=$3 # The text to print
    echo -e "${bg_color}${style}\033[4m${text}${RESET}"
}

# Print a line with a specific color, background color, style, and underline
print_line_color_bg_style_underline() {
    local color=$1 # The color of the text
    local bg_color=$2 # The background color of the text
    local style=$3 # The style of the text
    local text=$4 # The text to print
    echo -e "${color}${bg_color}${style}\033[4m${text}${RESET}"
}

# ======================================================
# ====                   COLORS                     ====
# ======================================================

# Reset color to the default color
RESET="\033[0m"

# Colors
BLACK="\033[0;30m"
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
PURPLE="\033[0;35m"
CYAN="\033[0;36m"
WHITE="\033[0;37m"

# Bold Colors
BOLD_BLACK="\033[1;30m"
BOLD_RED="\033[1;31m"
BOLD_GREEN="\033[1;32m"
BOLD_YELLOW="\033[1;33m"
BOLD_BLUE="\033[1;34m"
BOLD_PURPLE="\033[1;35m"
BOLD_CYAN="\033[1;36m"
BOLD_WHITE="\033[1;37m"

# Underline Colors
UNDERLINE_BLACK="\033[4;30m"
UNDERLINE_RED="\033[4;31m"
UNDERLINE_GREEN="\033[4;32m"
UNDERLINE_YELLOW="\033[4;33m"
UNDERLINE_BLUE="\033[4;34m"
UNDERLINE_PURPLE="\033[4;35m"
UNDERLINE_CYAN="\033[4;36m"
UNDERLINE_WHITE="\033[4;37m"

# Background Colors
BG_BLACK="\033[40m"
BG_RED="\033[41m"
BG_GREEN="\033[42m"
BG_YELLOW="\033[43m"
BG_BLUE="\033[44m"
BG_PURPLE="\033[45m"
BG_CYAN="\033[46m"
BG_WHITE="\033[47m"

# High Intensity Colors
LIGHT_BLACK="\033[0;90m"
LIGHT_RED="\033[0;91m"
LIGHT_GREEN="\033[0;92m"
LIGHT_YELLOW="\033[0;93m"
LIGHT_BLUE="\033[0;94m"
LIGHT_PURPLE="\033[0;95m"
LIGHT_CYAN="\033[0;96m"
LIGHT_WHITE="\033[0;97m"

# Bold High Intensity Colors
BOLD_LIGHT_BLACK="\033[1;90m"
BOLD_LIGHT_RED="\033[1;91m"
BOLD_LIGHT_GREEN="\033[1;92m"
BOLD_LIGHT_YELLOW="\033[1;93m"
BOLD_LIGHT_BLUE="\033[1;94m"
BOLD_LIGHT_PURPLE="\033[1;95m"
BOLD_LIGHT_CYAN="\033[1;96m"
BOLD_LIGHT_WHITE="\033[1;97m"

# High Intensity Background Colors
BG_LIGHT_BLACK="\033[0;100m"
BG_LIGHT_RED="\033[0;101m"
BG_LIGHT_GREEN="\033[0;102m"
BG_LIGHT_YELLOW="\033[0;103m"
BG_LIGHT_BLUE="\033[0;104m"
BG_LIGHT_PURPLE="\033[0;105m"
BG_LIGHT_CYAN="\033[0;106m"
BG_LIGHT_WHITE="\033[0;107m"

# Bold High Intensity Background Colors
BOLD_BG_LIGHT_BLACK="\033[1;100m"
BOLD_BG_LIGHT_RED="\033[1;101m"
BOLD_BG_LIGHT_GREEN="\033[1;102m"
BOLD_BG_LIGHT_YELLOW="\033[1;103m"
BOLD_BG_LIGHT_BLUE="\033[1;104m"
BOLD_BG_LIGHT_PURPLE="\033[1;105m"
BOLD_BG_LIGHT_CYAN="\033[1;106m"
BOLD_BG_LIGHT_WHITE="\033[1;107m"

# ======================================================
# ====                   EXAMPLES                   ====
# ======================================================

# echo -e "${RED}This is red text${RESET}"
# echo -e "${BOLD_RED}This is bold red text${RESET}"
# echo -e "${UNDERLINE_RED}This is underlined red text${RESET}"
# echo -e "${BG_RED}This is red text with a red background${RESET}"
# echo -e "${BOLD_BG_RED}This is bold red text with a red background${RESET}"
# echo -e "${BOLD_BG_LIGHT_RED}This is bold red text with a light red background${RESET}"