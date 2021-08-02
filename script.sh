#!/bin/bash

# Author: Zaw Mai
# Subject: PagerDuty Interview Technical Assignment
# Last Updated: 08/02/2021

# initialize result string
result=''

# skip header lien and start reading from 2nd line.
while read line;
do
  timeStamp=$(echo $line | tr -d ' ' | cut -f1 -d',')
  customerId=$(echo $line | tr -d ' ' | cut -f2 -d',')
  pageId=$(echo $line | tr -d ' ' | cut -f3 -d',')

  # if customer equals argument position 2 then append to result string
  # with comma and whitespace delimiter
  [[ "$customerId" == "$2" ]] && result="$result${result:+, }$pageId"
  
done < <(tail -n +2 $1)

# print result in a single line
echo $result

# print result line by line: includews duplicates
# echo $result | grep -o '[^ ]*'

# print result line by line: only unique values
# echo $result | grep -o '[^ ]*' | sort  -h | uniq