#!/bin/bash
set -u

output=$(make error 2>&1)
status=$?

echo "FATAL_STATUS=$status" >> "$GITHUB_OUTPUT"