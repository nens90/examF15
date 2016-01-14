#!/bin/bash

for i in {1..7}
do
    file="q${i}.tex"

    if [ -e "$file" ]
    then
	echo "$file already exists, no action performed."
    else
	echo "$file created."
        touch "${file}"
        echo "\chapter{Question ${i}}" > ${file}
        echo "\clearpage" >> main.tex
        echo "\input{${file}}" >> main.tex
        echo "$file added to main.tex"
    fi
done
