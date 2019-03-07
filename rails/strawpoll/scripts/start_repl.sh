#!/bin/bash

set -e

cd "$(dirname "$0")/.."

echo "==> Starting console…"
bundle exec rails console
