# Script to zip all csv files in data folder:
# Run with ./zip.sh on Windows or sh zip.sh on mac

#!/bin/bash

printf '%s\n' *_*.csv | cut -d_ -f1 | uniq |
while read -r prefix
do
        zip "$prefix".zip "$prefix"_*.csv
done