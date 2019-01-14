if [ $1="dashboard" ]; then
    echo bringing dashboard changes from remote to local
    rsync -rav -e ssh --exclude='.git' --filter=':- .gitignore' cogmob@35.246.62.227:/home/cogmob/dashboard/ ~/dashboard --delete
fi

if [ $1="local" ]; then
    echo bringing local-ui changes from remote to local
    rsync -rav -e ssh --exclude='.git' --filter=':- .gitignore' cogmob@34.73.123.103:/home/cogmob/mobile-ui/ ~/m_bougainvillea --delete
fi
