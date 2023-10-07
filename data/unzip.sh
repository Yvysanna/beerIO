# Script to unzip all zip files in data folder:
# Run with ./unzip.sh on Windows or sh unzip.sh on mac

#!/bin/bash

printf '%s\n' *_*.csv | cut -d_ -f1 | uniq |
while read -r prefix
do
        unzip "$prefix".zip
        rm "$prefix".zip
done