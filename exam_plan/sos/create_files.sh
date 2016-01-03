#!/bin/bash

for i in {1..11}
do
    touch "mm${i}.tex"
    echo "\chapter{${i}}" > mm${i}.tex
    echo "\input{mm${i}.tex}" >> main.tex
done
