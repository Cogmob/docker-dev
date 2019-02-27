#!/bin/sh
dot=$(dirname $(readlink -f $0))
ssh cogmob@$($dot/get_ip_address.sh $1) -L 3306:localhost:3306

if [ $? -ne 0 ]; then
    echo ' '
    echo "attempted to ssh to $($dot/get_ip_address.sh $1)"
    echo ' '
    echo check that ssh keys have been installed
    echo ' '
    echo locally:
    echo 'cat ~/.ssh/id_rsa.pub | pbcopy'
    echo ' '
    echo remotely:
    echo 'vim ~/.ssh/authorized_keys2'
fi
