#!/bin/bash
set -u

output=$(make bye 2>&1)
status=$?

echo "BYE_STATUS=$status" >> "$GITHUB_OUTPUT"

echo "BYE<<EOF" >> "$GITHUB_OUTPUT"
echo "$output" >> "$GITHUB_OUTPUT"
echo "EOF" >> "$GITHUB_OUTPUT"
