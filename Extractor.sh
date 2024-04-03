#!/bin/bash
#this regex to extract num

cat ocr_full.txt | grep -i "[.*]"| grep -o "^.*-.*"| grep -o "[[:digit:]]\{2\}" > num.txt
while read -r line;
do
    touch shopping_bill_${line}.txt
    
done < "num.txt"

