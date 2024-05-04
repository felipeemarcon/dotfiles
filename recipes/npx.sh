#!/usr/bin/env bash
shopt -s expand_aliases

function install_npx {
   if command -v npx &> /dev/null; then
      log warn "npx already installed. skipping"
   else
      log info installing npx via pnpm
      _ pnpm add -g npx
   fi
}
