# PagerDuty Interview Assignment

Technical Assemsment of Linux and Bash

**Objective**\
Given a file that contains a log (timestamp, customer id, page id), please write a script to parse it and output the list of pages visited by each customer.

**Input CSV**\
Time, Customer ID, Page ID\
1, C1, P1\
2, C2, P2\
3, C3, P3\
4, C2, P1\
5, C2, P3\
6, C2, P2\
7, C1, P3\
8, C1, P2\
9, C3, P1\
10, C2, P1\
11, C2, P3\
12, C2, P2\
13, C1, P1\
14, C1, P3\
15, C1, P2

**Output**\
P1, P3, P2, P1, P3, P2

**How execute script:**
<pre><code>
./script.sh &ltCustomerID&gt
</code></pre>

## Arguments

1. Filename - name of csv file containing three columns in the following order: timestamp, customer id, and page ID.
2. Customer ID - target customer id to aggregate the page ids

## Output

1. String - Line of non-unique Page IDs delimited by a comma and a whitespace.

## Reference

- <https://unix.stackexchange.com/questions/478861/get-unique-value-for-each-line-with-unix-command>
- <https://www.shell-tips.com/bash/how-to-parse-csv-file/>
- <https://linuxhint.com/compare_strings_bash/>
- <https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php/>
