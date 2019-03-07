#!/bin/bash

set -e

cd "$(dirname "$0")/.."

echo "==> Starting server…"
bundle exec rails server
