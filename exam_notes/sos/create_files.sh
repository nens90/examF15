#!/bin/bash

for i in {1..11}
do
    file="mm${i}.tex"

    if [ -e "$file" ]
    then
	echo "$file already exists, no action performed."
    else
	echo "$file created."
        touch "${file}"
        echo "\chapter{${i}}" > ${file}
        echo "\clearpage" >> main.tex
        echo "\input{${file}}" >> main.tex
        echo "$file added to main.tex"
    fi
done
