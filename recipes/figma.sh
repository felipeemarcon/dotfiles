# https://desktop.figma.com/mac-installer/Figma.dmg

#!/usr/bin/env bash
shopt -s expand_aliases

function install_figma {
   if open -Ra "Figma"; then
      log info "Figma already installed. Skipping"
   else
      log info downloading Figma
      loader wget https://desktop.figma.com/mac-installer/Figma.dmg
      log info installing Figma
      _ hdiutil attach ../Figma.dmg
      _ sudo mv /Volumes/Figma/Figma.app /Applications/

      if [ $? -ne 0 ]; then
         log error "failed to install Figma"
         exit 1
      fi
   fi
}
