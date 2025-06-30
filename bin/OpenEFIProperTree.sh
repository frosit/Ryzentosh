#!/usr/bin/env bash
#
#
# Opens ProperTree with the project EFI


CURRENT_DIR=$(dirname "$(readlink -f "$0")")
PROJECT_ROOT=$(dirname "$CURRENT_DIR")
EFI_DIR="$PROJECT_ROOT/EFI"
OC_CONFI="$EFI_DIR/OC/Config.plist"


PROPERTREE_BIN="$PROJECT_ROOT/Tools/ProperTree/ProperTree.py"

CURRENT_OS=$(uname -s)
# if [[ "$CURRENT_OS" == "Darwin" ]]; then
#     PROPERTREE_PATH="$PROJECT_ROOT/Tools/ProperTree.app/Contents/MacOS/ProperTree"
#     PROPERTREE_PATH="$PROJECT_ROOT/Tools/ProperTree/ProperTree.command"
# else
#     PROPERTREE_PATH="$PROJECT_ROOT/Tools/ProperTree"
# fi 


if [[ ! -f "$PROPERTREE_BIN" ]]; then
    echo "ProperTree not found at $PROPERTREE_BIN"
    exit 1
fi

if [[ ! -f "$OC_CONFI" ]]; then
    echo "OC Config.plist not found at $OC_CONFI"
    exit 1
fi

# Open ProperTree with the OC Config.plist
if [[ "$CURRENT_OS" == "Darwin" ]]; then
    # open -a "$PROPERTREE_PATH" "$OC_CONFI"
    python3 "$PROPERTREE_BIN" "$OC_CONFI"
else
    python3 "$PROPERTREE_BIN" "$OC_CONFI"
fi