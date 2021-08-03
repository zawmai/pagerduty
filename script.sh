#!/bin/bash

# Author: Zaw Mai
# Subject: PagerDuty Interview Technical Assignment
# Last Updated: 08/02/2021

# initialize result string and counter
result=''
count=0

# skip header lien and start reading from 2nd line.
while read line;
do
  timeStamp=$(echo $line | tr -d ' ' | cut -f1 -d',')
  customerId=$(echo $line | tr -d ' ' | cut -f2 -d',')
  pageId=$(echo $line | tr -d ' ' | cut -f3 -d',')

  # if customer equals argument position 2 then append to result string
  # with comma and whitespace delimiter
  [[ "$customerId" == "$2" ]] && result="$result${result:+, }$pageId" && count=$((count+1))
  
done < <(tail -n +2 $1)


if [[ $((count)) > 0 ]]; then
  # if there's more than one entry for target customer id
  # print result in a single line
  echo $result
else
  # else print error message
  echo "Error: No entries for Customer with id $2"
fi

# print result line by line: includews duplicates
# echo $result | grep -o '[^ ]*'

# print result line by line: only unique values
# echo $result | grep -o '[^ ]*' | sort  -h | uniq