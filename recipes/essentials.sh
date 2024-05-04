#!/usr/bin/env bash
shopt -s expand_aliases

function install_essentials {
   packages=(
      "wget"
      "xsel"
      "ripgrep"
      "neofetch"
      "zoxide"
      "jq"
      "gh"
      "glow"
      "fzf"
      "warp"
      "raycast"
      "md5sha1sum"
      "gpg"
      "gnupg"
      "gnupg2"
   )

   for pkg in "${packages[@]}"; do
      if ! command -v $pkg &> /dev/null; then
         loader brew install $pkg
         if [ $? -ne 0 ]; then
            log error "failed to install $pkg"
         fi
      else
         log warn "$pkg already installed. skipping"
      fi
   done
}
