#!/bin/bash

set -e

cd "$(dirname "$0")/.."

echo "==> Migrating databases…"
bundle exec rails db:migrate
