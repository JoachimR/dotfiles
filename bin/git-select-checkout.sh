#!/bin/bash

# Get a list of local branches
branches=$(git branch | cut -c 3-)

# Use fzf to select a branch interactively
selected_branch=$(echo "$branches" | fzf --preview "git log --oneline --graph --decorate=short {}" --preview-window=up:30%)

# Check if a branch was selected
if [ -n "$selected_branch" ]; then
    echo "You selected branch: $selected_branch"
    git checkout "$selected_branch"
else
    echo "No branch selected"
fi

