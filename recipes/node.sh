#!/usr/bin/env bash
shopt -s expand_aliases

function install_node {
   log info installing Node via asdf
   _ asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
   _ asdf install nodejs latest
   _ asdf global nodejs latest
}
