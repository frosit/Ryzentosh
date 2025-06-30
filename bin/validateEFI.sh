#!/usr/bin/env bash
#
# Validates the OpenCore EFI configuration using ocvalidate
# Handles macOS security issues with unsigned binaries

CURRENT_DIR=$(dirname "$(readlink -f "$0")")
PROJECT_ROOT=$(dirname "$CURRENT_DIR")
EFI_DIR="$PROJECT_ROOT/EFI"

OC_TOOL_LATEST="$PROJECT_ROOT/tools/OpenCore/latest"
OCVALIDATE="$OC_TOOL_LATEST/Utilities/ocvalidate/ocvalidate"
CONFIG_PLIST="$EFI_DIR/OC/config.plist"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "🔍 OpenCore EFI Validation Tool"
echo "================================"

# Check if EFI directory exists
if [ ! -d "$EFI_DIR" ]; then
    echo -e "${RED}❌ EFI directory not found: $EFI_DIR${NC}"
    exit 1
fi

# Check if config.plist exists
if [ ! -f "$CONFIG_PLIST" ]; then
    echo -e "${RED}❌ config.plist not found: $CONFIG_PLIST${NC}"
    exit 1
fi

# Check if ocvalidate exists
if [ ! -f "$OCVALIDATE" ]; then
    echo -e "${RED}❌ ocvalidate not found: $OCVALIDATE${NC}"
    exit 1
fi

# Make ocvalidate executable
chmod +x "$OCVALIDATE"

echo -e "${YELLOW}📂 EFI Directory: $EFI_DIR${NC}"
echo -e "${YELLOW}📄 Config file: $CONFIG_PLIST${NC}"
echo -e "${YELLOW}🔧 Validator: $OCVALIDATE${NC}"
echo ""

# Try to run ocvalidate, handle macOS security issues
echo "🚀 Running ocvalidate..."
"$OCVALIDATE" "$CONFIG_PLIST"
validation_result=$?
if [ $validation_result -ne 0 ]; then
    echo -e "${YELLOW}⚠️  macOS blocked the execution of ocvalidate (unsigned binary)${NC}"
    echo ""
    echo "To fix this issue, you have two options:"
    echo ""
    echo "1. 📋 Copy and run this command to temporarily allow the binary:"
    echo -e "${GREEN}   sudo spctl --add \"$OCVALIDATE\"${NC}"
    echo ""
    echo "2. 🖱️  Or manually approve it:"
    echo "   - Go to System Preferences → Security & Privacy → General"
    echo "   - Look for a message about 'ocvalidate' being blocked"
    echo "   - Click 'Allow Anyway'"
    echo "   - Then run this script again"
    echo ""
    echo "3. 🔓 Or disable Gatekeeper temporarily (not recommended):"
    echo -e "${GREEN}   sudo spctl --master-disable${NC}"
    echo -e "${GREEN}   # Run validation, then re-enable with:${NC}"
    echo -e "${GREEN}   sudo spctl --master-enable${NC}"
    echo ""
    
    read -p "Would you like me to try option 1 (add to spctl)? [y/N]: " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "🔐 Adding ocvalidate to macOS security exceptions..."
        if sudo spctl --add "$OCVALIDATE"; then
            echo -e "${GREEN}✅ Successfully added to security exceptions${NC}"
            echo "🚀 Running ocvalidate again..."
            "$OCVALIDATE" "$CONFIG_PLIST"
            validation_result=$?
        else
            echo -e "${RED}❌ Failed to add security exception${NC}"
            exit 1
        fi
    else
        echo "❌ Validation cancelled. Please manually approve the binary and run again."
        exit 1
    fi
else
    echo -e "${GREEN}✅ Configuration passed validation!${NC}"
    validation_result=$?
fi

echo ""
if [ $validation_result -eq 0 ]; then
    echo -e "${GREEN}✅ Validation completed successfully!${NC}"
    echo -e "${GREEN}🎉 Your OpenCore configuration is valid.${NC}"
else
    echo -e "${RED}❌ Validation failed with errors.${NC}"
    echo -e "${YELLOW}💡 Please review the output above and fix any issues in your config.plist${NC}"
fi

exit $validation_result
