if [ "$1" = "dashboard" ]; then
    ssh cogmob@35.246.62.227 -L 3306:localhost:3306
fi

if [ "$1" = "local" ]; then
    ssh cogmob@34.73.123.103 -L 3306:localhost:3306
fi
