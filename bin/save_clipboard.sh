#!/bin/bash

# Get the clipboard content
content=$(pbpaste)

output_file="$HOME/Desktop/aaa.bryter"

# Save clipboard content to file
echo "$content" > "$output_file"

# Confirm to user
echo "Clipboard content saved to: $output_file"

