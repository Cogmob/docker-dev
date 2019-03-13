#!/bin/sh
dot=$(dirname $(readlink -f $0))
ssh $($dot/lookup.sh $1 remote_username)@$($dot/lookup.sh $1 remote_ip)

if [ $? -ne 0 ]; then
    echo ' '
    echo attempted to ssh to
    echo "$($dot/lookup.sh $1 remote_username)@$($dot/lookup.sh $1 remote_ip)"
    echo ' '
    echo if this failed, check that ssh keys have been installed
    echo ' '
    echo locally:
    echo 'cat ~/.ssh/id_rsa.pub | pbcopy'
    echo ' '
    echo remotely:
    echo 'vim ~/.ssh/authorized_keys2'
fi
