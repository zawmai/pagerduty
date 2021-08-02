# PagerDuty Interview Assignment

Technical Assemsment of Linux and Bash

**How execute script:**
<pre><code>
./script.sh &ltcustomer_pages.csv&gt &ltCustomerID&gt
</code></pre>

## Arguments

1. Filename - name of csv file containing three columns in the following order: timestamp, customer id, and page ID.
2. Customer ID - target customer id to aggregate the page ids

## Output

1. String - Line of non-unique Page IDs delimite by a comma and a whitespace.

## Example

## Reference

- <https://unix.stackexchange.com/questions/478861/get-unique-value-for-each-line-with-unix-command>
- <https://www.shell-tips.com/bash/how-to-parse-csv-file/>
- <https://linuxhint.com/compare_strings_bash/>
- <https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php/>
