#!/bin/bash

for file in regex/*.regex; do
    bname=$(basename $file)
    name=$(echo $bname | sed "s/\.regex$//g")
    echo $bname
    pcre2mnrl regex/$name.regex mnrl/$name.mnrl
done
