#!/bin/bash

# Get current git branch name
branch_name=$(git rev-parse --abbrev-ref HEAD)

# Extract prefix if branch name starts with a number followed by a hyphen
prefix=""
if [[ $branch_name =~ ^([0-9]+)- ]]; then
    prefix="${BASH_REMATCH[1]}"
fi

temp_file=$(mktemp)

if [ -n "$prefix" ]; then
  echo "[#$prefix] " > "$temp_file"
fi

nvim +$ "$temp_file"

commit_message=$(cat "$temp_file")

if [ -n "$commit_message" ]; then
  git add .
  git commit -m "$commit_message" --no-verify
  git push
fi

rm "$temp_file"

