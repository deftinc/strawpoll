#!/bin/bash

set -e

cd "$(dirname "$0")/.."

echo "==> Creating databases…"
bundle exec rails db:reset
