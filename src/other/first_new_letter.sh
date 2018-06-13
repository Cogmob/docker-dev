function first_new_letter() {
    letters=$(ls -a $1 | cut -c-1 | sort -u | tr -d '\n' | tr -cd '[[:alnum:]]')
    for x in {a..z}
    do
        letter=$(echo $letters | head -c 1)
        if [ "$letter" != "$x" ]; then
            echo $x_
            exit
        fi
        letters=$(echo $letters | cut -c2-)
    done
}
