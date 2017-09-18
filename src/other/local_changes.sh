#!/bin/bash
cd $HOME
for el in $( find . -maxdepth 2 -name .git | tr / \  | cut -d' ' -f2 )
do
    cd "$HOME/$el"

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
