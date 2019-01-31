#!/bin/bash
# This is the top-level entrypoint to the regex analysis experiment.
# Arg #1 is the path to the regex file.
# Usage:
# ./run.sh $AUTOMATAZOO/Snort/benchmarks/automata/snort.regex

[[ "$1" == "" ]] && echo "ERROR: Please specify path to newline-separated regex file." && exit 2

./extract.sh $1
./compile.sh
./dfa.sh
./analyze.sh | tee analyze.log

# Find the max number of nodes
max_nodes=$(cat analyze.log | cut -d: -f2 | sed "s/[^0-9]*//g" | sort -n | tail -n1)
echo "Max number of nodes: $max_nodes"

# Plot the node distribution
cat analyze.log | cut -d: -f2 | sed "s/[^0-9]*//g" > nodes.log

gnuplot plot.cmd
