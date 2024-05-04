#!/usr/bin/env bash
shopt -s expand_aliases

function install_code {
   local vscode_folder=$HOME/Library/Application\ Support/Code

   if [ ! -d "$vscode_folder" ]; then
      log info Creating VS Code directories
      _ mkdir -p "$HOME/Library/Application\ Support/Code/User/"
   fi

   if open -Ra "Visual Studio Code"; then
      log info "VS Code already installed. Skipping"
   else
      log info downloading VS Code
      loader curl -s -L -o "VSCode-darwin-universal.zip" "https://code.visualstudio.com/sha/download?build=stable&os=darwin-universal"
      log info unziping VS Code
      _ unzip ./VSCode-darwin-universal.zip
      log info installing VS Code
      _ mv "./Visual\ Studio\ Code.app" /Applications/


      if [ $? -ne 0 ]; then
         log error "failed to install Visual Studio Code"
         exit 1
      fi
   fi
}
