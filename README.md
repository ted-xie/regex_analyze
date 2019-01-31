# Regex DFA Analyzer

## Introduction
I created this tool to help visualize the distribution of DFA sizes for a set of regular expressions.
This tool will:

1. Extract all of the regular expressions from the given file and split them into separate files.
2. Compile each regex into an NFA.
3. Compile each NFA into a DFA.
4. Count the number of nodes in each DFA.
5. Plot the distribution of the number of DFA states.

# Usage
`$ ./run.sh /path/to/patterns.regex`

## Software requiremnts
* gnuplot
* [mnrl][https://github.com/kevinaangstadt/mnrl]
* [hscompile][https://github.com/kevinaangstadt/hscompile]
* [vasim][https://github.com/jackwadden/vasim]

Recommended but not necessary:
* [AutomataZoo][https://github.com/tjt7a/AutomataZoo]
