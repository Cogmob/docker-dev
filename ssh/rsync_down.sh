echo bringing changes from remote to local
rsync -rav -e ssh --exclude='.git' --filter=':- .gitignore' cogmob@$(./get_ip_address.sh $1):/home/cogmob/dashboard/ ~/dashboard --delete