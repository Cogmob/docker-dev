echo bringing changes from remote to local
rsync -rav -e ssh --exclude='.git' --filter=':- .gitignore' cogmob@$(./get_ip_address.sh $1):$(./get_remote_path.sh $1)/ $(./get_local_path.sh) --delete
