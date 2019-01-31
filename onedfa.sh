#!/bin/bash
[[ "$1" == "" ]] && echo "Need an input MNRL file." && exit 2

tmp=$(mktemp -d)
lastdir=$PWD
cd $tmp
vasim $lastdir/mnrl/$1 -D --mnrl > /dev/null
cd $lastdir
mv $tmp/automata_0.mnrl dfa/$file.dfa
rm -rf $tmp
