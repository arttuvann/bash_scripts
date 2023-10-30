#!/bin/bash
###################
# A simple script for generating usernames with specified number of random characters in the end
# Author: arttuvann@GitHub
# Date: 2023-10-29
###################
username_start="$1_"
char_count=$2

# username_end=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c $char_count ; echo '')
# res=${username_start}${username_end}
# echo $res

read_input() {
    read -p "Give email address: " user_email
    declare -g global_user_email=$user_email
    echo $global_user_email
}
split_email() {

    email_default="testuser@testhost.com"
    email_input=${1:-$email_default}
    # split string based on delimiter
    declare -g email_start=${email_input%%@*}
    declare -g email_end=${email_input#*@}
    #echo $email_start
    #echo $email_end

}

generate_urandom_string() {
    #
    req_default="A-Za-z0-9"
    req_input=${1:-$req_default}
    length_default="6"
    length_input=${2:-$length_default}

    head /dev/urandom | tr -dc $req_input | head -c $length_input
    echo ""
}

generate_email_alias() {
    split_email $1
    echo "${email_start}+$( generate_urandom_string a-z0-9 6 )@${email_end}"
}

# TODO: Jatketaan tätä array-prosessointia myöhemmin
#declare -a usernames_array=()
#for i in {1..5}
#do
#    username_end=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c $char_count ; echo '')
#    usernames_array[$i]="${username_start}${username_end}"
    #echo "${usernames_array[i]}"
#done

# echo ${usernames_array[*]}
#printf "\n"
#echo "-----"
#printf "%s\n" "${usernames_array[@]}"
#echo "-----"
#printf "\n"
