#!/bin/bash

# Ensure a version argument is provided
if [ -z "$1" ]; then
  echo "Error: No version provided."
  echo "Usage: ./update_versions.sh <new_version>"
  exit 1
fi

NEW_VERSION="$1"
VERSION_FILE="version.txt"  # Change this to your actual file

# Check if the file exists
if [ ! -f "$VERSION_FILE" ]; then
  echo "Error: $VERSION_FILE not found!"
  exit 1
fi

# Update the version in the file
sed -i "s/^version = .*/version = $NEW_VERSION/" "$VERSION_FILE"

echo "Version updated to $NEW_VERSION in $VERSION_FILE"
