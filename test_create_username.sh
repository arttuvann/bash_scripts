#!/bin/bash
#bash create_username.sh testi 5

. ./create_username.sh

test_function() {
    # Utility testing function for individual functions.
    # Prints a header and footer and time taken to run function.
    #
    function_name=$1
    echo "Testing function: $function_name"
    echo "-----"
    #printf "%s\n" "${usernames_array[@]}"
    eval "$function_name"
    echo "-----"
    echo "End of testing: $function_name"
    printf "\n"
}


# Test reading of input
#test_function read_input

#test_function split_email

#test_function generate_urandom_string A-Z 6

#generate_urandom_string a-z0-9 10
#generate_urandom_string a-z0-9 10
#generate_urandom_string
echo
for i in {1..5}
do
    generate_email_alias test@testing.de
done
echo