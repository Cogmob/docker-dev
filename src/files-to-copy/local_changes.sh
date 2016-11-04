#!/bin/bash
for el in $( cat folders_to_check )
do
    cd $el
    res=$(git diff)
    if [[ $res != '' ]]; then
        echo $el
    fi
    cd ..
done
