#!/bin/sh
dot=$(dirname $(readlink -f $0))
echo sending changes from local to remote
echo "remote: $($dot/get_remote_path.sh $1)"
echo "local: $($dot/get_local_path.sh $1)"
rsync -rav -e ssh --exclude='.git' --filter=':- .gitignore' $($dot/get_local_path.sh $1)/ $($dot/get_remote_username.sh $1)@$($dot/get_ip_address.sh $1):$($dot/get_remote_path.sh $1)
