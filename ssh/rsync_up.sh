if [ $1="dashboard" ]; then
    rsync -rav -e ssh --exclude='.git' --filter=':- .gitignore' ~/m_dashboard/ cogmob@35.246.62.227:/home/cogmob/dashboard
fi

if [ $1="local" ]; then
    rsync -rav -e ssh --exclude='.git' --filter=':- .gitignore' ~/m_bougainvillea/ cogmob@34.73.123.103:/home/cogmob/mobile-ui
fi
