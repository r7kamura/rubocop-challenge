#!/bin/sh -l

echo /vendor/ >> .git/info/exclude

git config remote.origin.url "git@github.com:${GITHUB_REPOSITORY}.git"

export GITHUB_ACCESS_TOKEN="$2"

rubocop_challenger go \
  --base-branch="$1" \
  --email="${GITHUB_ACTOR}@users.noreply.github.com" \
  --name="${GITHUB_ACTOR}"
