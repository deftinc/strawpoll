#!/bin/bash

set -e

cd "$(dirname "$0")/.."

if [ -f "Gemfile" ]; then
  if [ bundle check --path vendor/gems >/dev/null 2>&1 ]; then
    echo "==> Installing gem dependencies…"
    bundle install
  else
    echo "==> Gems are installed."
  fi
fi
