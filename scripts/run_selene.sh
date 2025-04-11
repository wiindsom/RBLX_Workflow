#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Define the root directory relative to the project root
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)/src"

# Check if the user provided a file argument
if [ -z "$1" ]; then
    echo "❌ Usage: run_selene <filename> (without extension)"
    exit 1
fi

# Find the file with .luau or .lua extension in any subdirectory
TARGET_FILE=$(find "$ROOT_DIR" -type f \( -name "$1.luau" -o -name "$1.lua" \) | head -n 1)

# Check if the file was found
if [ -z "$TARGET_FILE" ]; then
    echo "❌ Error: No .luau or .lua file found for '$1' in $ROOT_DIR or its subdirectories."
    exit 1
fi

DISPLAY_PATH=$(echo "$TARGET_FILE" | sed 's|.*/Downloads/RBLX_Workflow/|/Downloads/RBLX_Workflow/|')

# Run selene on the detected file
echo "Running selene on: $DISPLAY_PATH"
echo "--------------------------------------------------"
selene "$TARGET_FILE"

# echo "Selene check completed for $TARGET_FILE."

# alias: sln <file>.luau