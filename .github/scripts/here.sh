#!/bin/bash
set -u

output=$(make here 2>&1)
status=$?

echo "HERE_STATUS=$status" >> "$GITHUB_OUTPUT"

echo "HERE<<EOF" >> "$GITHUB_OUTPUT"
echo "$output" >> "$GITHUB_OUTPUT"
echo "EOF" >> "$GITHUB_OUTPUT"
