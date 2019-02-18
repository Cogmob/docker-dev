echo sending changes from local to remote
rsync -rav -e ssh --exclude='.git' --filter=':- .gitignore' $(./get_local_path.sh $1)/ cogmob@$(./get_ip_address.sh $1):$(./get_remote_path.sh $1)
