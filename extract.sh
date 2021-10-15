#!/bin/sh
for i in b-*; do unzip $i -d ./"a-"${i%.*}; done #list of archived folders starting with b-, unzip to new folder starting with a-
for f in a-*; do cat ./$f/archive_file.csv >> result.csv;sed -i -e 's/to remove//g' tokens.csv; done #look for csv file in the unzipped folder, and append it to result.csv
echo "total entries: " $(wc -l result.csv)
