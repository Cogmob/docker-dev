#!/bin/bash
path=$(pwd | cygpath -w "$(pwd)")
cd $HOME/docker-dev/src/other
node compile-sass $path
