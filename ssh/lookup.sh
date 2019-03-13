dot=$(dirname $(readlink -f $0))
cat ${dot}/${1}.yaml | grep $2 | sed "s/$2: //g"

