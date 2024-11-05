#!/bin/bash

touch temppuzzle.txt
tail -n +75 puzzle-info.txt > temppuzzle.txt
sed -i '/^\s*$/d' temppuzzle.txt 
cat temppuzzle.txt > puzzle-info.txt
rm temppuzzle.txt
