#!/usr/bin/env bash
shopt -s expand_aliases

function install_warp_themes {
   if ! open -Ra "Warp" ; then
      log error "Warp is not installed. Install it first."
   else
      log info downloading Warp Themes
      loader git clone https://github.com/warpdotdev/themes.git
      log info installing Warp Themes
      _ sudo mv ./themes ~/.warp/

      if [ $? -ne 0 ]; then
         log error "failed to install Warp Themes"
         exit 1 # prevent installing extensions
      fi
   fi
}
