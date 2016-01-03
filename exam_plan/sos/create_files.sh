#!/bin/bash

for i in {1..11}
do
    file="mm${i}.tex"
    if [ -f "$file" ]
    then
	echo "$file already exists"
    else
	echo "$file created."
        touch "mm${i}.tex"
        echo "\chapter{${i}}" > mm${i}.tex
        echo "\input{mm${i}.tex}" >> main.tex
        echo "$file added to main.tex"
    fi
done
