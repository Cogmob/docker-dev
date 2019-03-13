#!/bin/sh
dot=$(dirname $(readlink -f $0))
echo sending changes from local to remote
echo "local: $($dot/lookup.sh $1 local_path)"
echo "remote: $($dot/lookup.sh $1 remote_username)@$($dot/lookup.sh $1 remote_ip):$($dot/lookup.sh $1 remote_path)"
rsync -rav -e ssh --exclude='.git' --filter=':- .gitignore' $($dot/lookup.sh $1 local_path)/ $($dot/lookup.sh $1 remote_username)@$($dot/lookup.sh $1 remote_ip):$($dot/lookup.sh remote_path)
