#!/usr/bin/env bash
set -euo pipefail

readonly DEPLOY_HOST="kahuja@attu.cs.washington.edu"
readonly DEPLOY_PATH="/cse/web/courses/cse447/26au/"

bundle exec jekyll build
rsync -rltvO --exclude='.DS_Store' --exclude='deploy.sh' _site/ "${DEPLOY_HOST}:${DEPLOY_PATH}"

printf 'Published to https://courses.cs.washington.edu/courses/cse447/26au/\n'
