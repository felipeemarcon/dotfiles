#!/usr/bin/env bash
shopt -s expand_aliases

function install_pnpm {
   if ! command -v pnpm &> /dev/null; then
      log info installing pnpm via asdf
      _ asdf plugin-add pnpm
      _ asdf install pnpm latest
      _ asdf global pnpm latest
   else
      log warn "pnpm already installed. skipping"
   fi
}
