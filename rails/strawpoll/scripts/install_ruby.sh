#!/bin/bash

set -e

cd "$(dirname "$0")/.."

if [ -f ".ruby-version" ] && [ -z "$(rbenv version-name 2>/dev/null)" ]; then
  echo "==> Installing Ruby…"
  rbenv install --skip-existing
  which bundle >/dev/null 2>&1  || {
    gem install bundler
    rbenv rehash
  }
else
  echo "==> Ruby is installed."
fi
