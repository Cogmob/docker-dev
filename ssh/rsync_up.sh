echo sending changes from local to remote
rsync -rav -e ssh --exclude='.git' --filter=':- .gitignore' ~/dashboard/ cogmob@$(./get_ip_address.sh $1):/home/cogmob/dashboard
