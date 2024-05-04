#!/bin/bash
shopt -s expand_aliases

function install_ohmyzsh {
   if ! command -v zsh &> /dev/null; then
      log info installing oh-my-zsh
      loader sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

      if [ $? -ne 0 ]; then
         log error "failed to install oh-my-zsh"
         exit 1 # prevent installing extensions
      fi
   fi
}
