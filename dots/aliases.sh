#!/usr/bin/env bash

alias glo='git log --oneline'
alias repo='gh repo view --web'
alias debug='gum log -s -t kitchen -l debug'
alias log='gum log -t kitchen -l'

function git_style {
  gum style "$(gum style --foreground "#f14e32" '') $(gum style --bold --underline --foreground "#f14e32" "$@")"
}

function checksum {
   md5sum $1 | awk '{ print $1 }'
}

function hot {
  if (( $# < 2 )); then
   log error 'USAGE: hot <command> <file1> [<file2> ... <fileN>]'
  else
   script=$1
   shift
   a='';

   while true; do
      b=`ls -l $*`
      [[ $a != $b ]] && a=$b && eval $script;
      sleep .5;
   done
  fi
}
