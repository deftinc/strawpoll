#!/bin/bash

set -e

cd "$(dirname "$0")/.."

if [ -f "Brewfile" ] && [ "$(uname -s)" = "Darwin" ] && [ -z "$(brew bundle check >/dev/null 2>&1)" ]; then
  if [ brew bundle check >/dev/null 2>&1 ]; then
    echo "==> Installing Homebrew dependencies…"
    brew bundle
  else
    echo "==> Brews are installed."
  fi
fi