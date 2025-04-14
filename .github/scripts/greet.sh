#!/bin/bash
set -u

output=$(make greeting 2>&1)
status=$?

echo "GREETING_STATUS=$status" >> "$GITHUB_OUTPUT"

echo "GREETING<<EOF" >> "$GITHUB_OUTPUT"
echo "$output" >> "$GITHUB_OUTPUT"
echo "EOF" >> "$GITHUB_OUTPUT"
