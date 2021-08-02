#!/bin/bash

# Author: Zaw Mai
# Subject: PagerDuty Interview Technical Assignment
# Last Updated: 07/28/2021

# initialize empty result string
result=""

# set input file separator to comman and  whitespace
IFS=', '

while read ts customer target;
do
 # if customer equals C1 then appending target with whitespace
 [[ "$customer" == "$2" ]] && result="$result $target"
done < $1


# print result: incldues duplicates
echo $result | grep -o '[^ ]*'

# print result: only unique values
# echo $result | grep -o '[^ ]*' | sort  -h | uniq

# Reference:
# https://unix.stackexchange.com/questions/478861/get-unique-value-for-each-line-with-unix-command
# https://www.shell-tips.com/bash/how-to-parse-csv-file/
# https://linuxhint.com/compare_strings_bash/
# https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php