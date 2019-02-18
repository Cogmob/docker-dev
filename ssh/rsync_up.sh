echo sending changes from local to remote
rsync -rav -e ssh --exclude='.git' --filter=':- .gitignore' ~/$2/ cogmob@$(./get_ip_address.sh $1):/home/cogmob/$2
