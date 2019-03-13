#!/bin/sh
dot=$(dirname $(readlink -f $0))
echo bringing changes from remote to local, will delete extra files
echo "remote: $($dot/lookup.sh $1 remote_username)@$($dot/lookup.sh $1 remote_ip):$($dot/lookup.sh $1 remote_path)"
echo "local: $($dot/lookup.sh $1 local_path)"
rsync -rav -e ssh --exclude='.git' --filter=':- .gitignore' $($dot/lookup.sh $1 remote_username)@$($dot/lookup.sh $1 remote_ip):$($dot/lookup.sh $1 remote_path)/ $($dot/lookup.sh $1 local_path) --delete
