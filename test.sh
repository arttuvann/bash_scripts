#!/bin/bash

########################################
# Author:           Arttu Vanninen
# Version:          not versioned
# Date:             2023-05-06
# Description:      General use templates for bash scripts.
# Usage:            chmod +x test.sh
#                   ./test.sh    
########################################

# Import/Source the functions
. ./functions.sh

# Set variables and script settings

set -e # Exit immediately on error

#hello_world "Arttu" "test"
#test_command

# create_folder "test" "" "test_folder/test4"

#test commit here

echo -e "${RED}Error: ${GREEN}testing ${RESET}"
exit 0