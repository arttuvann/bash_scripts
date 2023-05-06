#!/bin/bash

##############
# Set variables
##############
# Set the ANSI escape code for red text
RED='\033[0;31m'
GREEN='\033[0;32m'

# Reset the text color to default after the message
RESET='\033[0m'

##############
# Set variables ends
##############

# Define the functions

# Function: hello_world
#
# Description: This function is for testing of the script. Includes error handling
#
# Arguments:
#   $1: Name as argument, optional
#
# Returns:
#   "Hello, world!" or "Hello, name!"
hello_world() {
  name=${1:-"world"}  # Set the 'name' variable to the first argument passed, or "world" if no argument is passed
  echo "Hello, $name!"  

  # Error handling inside function.
  if [[ $# -gt 1 ]]; then
    echo -e "${RED}Error:${RESET} too many arguments! Usage: $FUNCNAME [name]" >&2 # Output the greeting, -e enables interpreting backslash escape sequences in the color vars
    exit 1
  fi

}

# Function: create_folder
#
# Description: This function is for creating folders in current directory.
#
# Arguments:
#   $1: Name of folder, required
#
# Returns:
#   1 if folder name is not given
#   0 otherwise
create_folder() {
  for folder_name in "$@"; do
    if [ -z "$folder_name" ]; then
      echo "${RED}Error:${RESET} folder name is required for $FUNCNAME"
      return 1
    fi
  
    if [ -d "$folder_name" ]; then
      echo "Folder $folder_name already exists"
    else
      mkdir -p "$folder_name" # We define -p in case the parent folder (parent_f/child_f) needs to be also created.
      echo "Folder $folder_name created successfully"
    fi
  done
}
