#!/bin/bash

for file in mnrl/*.mnrl; do
    num_nodes=$(jq '.nodes | length' $file)
    echo "$file: $num_nodes nodes"
done
