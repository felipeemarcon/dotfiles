#!/bin/bash
shopt -s expand_aliases

function install_essentials {
   packages=(
      "xsel"
      "ripgrep"
      "neofetch"
      "tmux"
      "zoxide"
      "jq"
      "gh"
      "glow"
      "fzf"
      "warp"
   )

   for pkg in "${packages[@]}"; do
      if ! command -v gum &> /dev/null; then
         _ brew install $pkg
         if [ $? -ne 0 ]; then
            log error "failed to install $pkg"
         fi
      else
         log warn "$pkg already installed. skipping"
      fi
   done
}
