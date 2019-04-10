#!/usr/bin/env bash
#
#
set -x
#
__DIR__=`dirname $0`
cd ${__DIR__}
__PWD__=`pwd`
__CURRDIR__=${__PWD__}

TOBE_LINKED=(
    "x"
    ".gitconfig"
    ".gitignore"
    ".gvimrc"
    ".vimrc"
    ".vim"
    ".wgetrc"
    ".zprezto"
    ".zshrc"
    ".config"
    ".editorconfig"
    ".curlrc"
    ".screenrc"
    ".wgetrc"
    ".php_cs"
    ".aliases"
)
count=0
while [ "x${TOBE_LINKED[count]}" != "x" ]
do
   count=$(( $count + 1 ))
   link=${TOBE_LINKED[count]}
   # echo $link
   if [[ -e $link && ! -L ~/$link ]]; then
       ln -sf ${__CURRDIR__}/$link ~/$link
   fi
done
