#!/bin/sh
dot=$(dirname $(readlink -f $0))
echo bringing changes from remote to local, will delete extra files
echo "remote: $($dot/get_remote_path.sh $1)"
echo "local: $($dot/get_local_path.sh $1)"
rsync -rav -e ssh --exclude='.git' --filter=':- .gitignore' cogmob@$($dot/get_ip_address.sh $1):$($dot/get_remote_path.sh $1)/ $($dot/get_local_path.sh $1) --delete
rsync -rav -e ssh --exclude='.git' --filter=':- .gitignore' cogmob@$($dot/get_ip_address.sh $1):$($dot/get_remote_path.sh $1)/ $($dot/get_local_path.sh $1) --delete
