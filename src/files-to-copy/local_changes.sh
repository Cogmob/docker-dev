#!/bin/bash
for el in $( cat .folders_to_check )
do
    cd $el

    res=$(git fetch origin)
    remote_changes=$(git log HEAD..origin/master --oneline)
    if [[ $remote_changes != '' ]]; then
        echo "$el pull"
    fi

    local_changes=$(git diff)
    if [[ $local_changes != '' ]]; then
        echo "$el lg"
    fi

    cd ..
done
