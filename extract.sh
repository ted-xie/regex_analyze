#!/bin/bash

SNORT_REGEX=$1

i=0
while read -r line; do
    echo $i: $line
    echo $line > regex/$i.regex
    let i++
done < "$SNORT_REGEX"
