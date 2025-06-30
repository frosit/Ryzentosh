#!/usr/bin/env bash

CURRENT_DIR=$(dirname "$(readlink -f "$0")")
PROJECT_ROOT=$(dirname "$CURRENT_DIR")

EFI_DIR="$PROJECT_ROOT/EFI"

TOOLS_DIR="$PROJECT_ROOT/tools"
BIN_MOUNTEFI="$TOOLS_DIR/MountEFI/MountEFI.py"

# Check if EFI already mounted (/Volumes/EFI)

if mount | grep -q "/Volumes/EFI"; then
    echo "EFI is already mounted at /Volumes/EFI"
    exit 0
else
    echo "EFI is not mounted, proceeding to mount..."
fi

python3 $BIN_MOUNTEFI