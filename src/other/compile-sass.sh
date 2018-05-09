#!/bin/bash
path=$(pwd | cygpath -w "$(pwd)")
cd $HOME/unix_setup/src/other
node compile-sass $path
