#!/usr/bin/env bash
#
# Analyzes the current EFI setup and provides Sequoia upgrade recommendations
#

CURRENT_DIR=$(dirname "$(readlink -f "$0")")
PROJECT_ROOT=$(dirname "$CURRENT_DIR")
EFI_DIR="$PROJECT_ROOT/EFI"
KEXTS_DIR="$EFI_DIR/OC/Kexts"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

echo -e "${BLUE}🔍 OpenCore EFI Analysis Tool${NC}"
echo "=================================="
echo ""

echo -e "${YELLOW}📋 Current System Analysis:${NC}"
echo "• OpenCore Version: 1.0.4"
echo "• Target macOS: Sequoia (from Sonoma)"
echo "• Hardware: AMD Ryzen 7 5800X + RX 6800 XT"
echo "• WiFi Card: Fenvi FV-T919 (BCM94360CD)"
echo ""

echo -e "${YELLOW}📦 Current Kexts Analysis:${NC}"
echo ""

function check_kext_version() {
    local kext_path="$1"
    local kext_name=$(basename "$kext_path")
    
    if [ -f "$kext_path/Contents/Info.plist" ]; then
        local version=$(plutil -p "$kext_path/Contents/Info.plist" 2>/dev/null | grep "CFBundleShortVersionString" | cut -d'"' -f4)
        local identifier=$(plutil -p "$kext_path/Contents/Info.plist" 2>/dev/null | grep "CFBundleIdentifier" | cut -d'"' -f4)
        
        echo -e "  ${GREEN}✅ $kext_name${NC}"
        echo "     Version: $version"
        echo "     Bundle: $identifier"
        echo ""
    else
        echo -e "  ${RED}❌ $kext_name - Missing Info.plist${NC}"
        echo ""
    fi
}

# Check each kext
for kext in "$KEXTS_DIR"/*.kext; do
    if [ -d "$kext" ]; then
        check_kext_version "$kext"
    fi
done

echo -e "${YELLOW}🚨 Sequoia Upgrade Requirements:${NC}"
echo ""

echo -e "${PURPLE}For Fenvi FV-T919 (BCM94360CD):${NC}"
echo "• ❓ Need to add BrcmPatchRAM3.kext for Bluetooth"
echo "• ❓ Need to add BrcmFirmwareData.kext for firmware"
echo "• ✅ AirportBrcmFixup.kext already available (v2.1.9)"
echo "• ❓ May need to disable IO80211FamilyLegacy for native support"
echo ""

echo -e "${PURPLE}Legacy WiFi Kexts Analysis:${NC}"
echo "• ⚠️  IO80211FamilyLegacy.kext - May conflict with native BCM94360CD"
echo "• ⚠️  IOSkywalkFamily.kext - May conflict with native support"
echo "• 💡 Consider disabling these for Fenvi FV-T919"
echo ""

echo -e "${PURPLE}Kexts to Update for Sequoia:${NC}"
echo "• 🔄 Lilu.kext - Check for latest Sequoia-compatible version"
echo "• 🔄 WhateverGreen.kext - Update to 1.6.7+"
echo "• 🔄 AppleALC.kext - Check for Sequoia compatibility"
echo "• 🔄 VirtualSMC.kext - Update to latest version"
echo "• 🔄 SMCAMDProcessor.kext - Update to 0.7.2+"
echo "• 🔄 AMDRyzenCPUPowerManagement.kext - Check compatibility"
echo ""

echo -e "${YELLOW}📝 Recommended Actions:${NC}"
echo ""
echo "1. 💾 Backup current working EFI"
echo "2. 📥 Download latest Sequoia-compatible kexts"
echo "3. ➕ Add BrcmPatchRAM3.kext and BrcmFirmwareData.kext"
echo "4. ⚙️  Test WiFi/BT configuration in current Sonoma"
echo "5. 🧪 Create test EFI for Sequoia"
echo "6. 💿 Install Sequoia on new M.2 SSD"
echo ""

echo -e "${BLUE}🔗 Useful Links:${NC}"
echo "• Kext Downloads: https://dortania.github.io/builds/"
echo "• BrcmPatchRAM: https://github.com/acidanthera/BrcmPatchRAM"
echo "• Fenvi T919 Guide: https://chriswayg.gitbook.io/opencore-visual-beginners-guide/"
echo ""

echo -e "${GREEN}✅ Analysis complete! Check the recommendations above.${NC}"
