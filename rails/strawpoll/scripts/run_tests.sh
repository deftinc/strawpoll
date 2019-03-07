#!/bin/bash

set -e

cd "$(dirname "$0")/.."

echo "==> Running tests…"
bundle exec rails test
