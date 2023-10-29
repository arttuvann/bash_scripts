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

declare -a usernames_array=()
for i in {1..5}
do
    username_end=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c $char_count ; echo '')
    usernames_array[$i]="${username_start}${username_end}"
    #echo "${usernames_array[i]}"
done

# echo ${usernames_array[*]}
printf "\n"
echo "-----"
printf "%s\n" "${usernames_array[@]}"
echo "-----"
printf "\n"
