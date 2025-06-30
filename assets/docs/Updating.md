Updating
========

About the update process.


* OpenCore update
  * Update Drivers / kexts / ACPI / assets
  * Update config.plist
  * Update OpenCore version
* Updating kexts
  * Update kexts in `EFI/OC/Kexts

https://chriswayg.gitbook.io/opencore-visual-beginners-guide/advanced-topics/open-core-legacy-patcher-oclp/broadcom-wifi-on-macos-sequoia

# Finding kexts

* https://dortania.github.io/builds/
* https://dortania.github.io/OpenCore-Install-Guide/ktext.html#virtualsmc-plugins
* https://github.com/acidanthera/OcBinaryData
* https://github.com/dortania/Getting-Started-With-ACPI/blob/master/extra-files/compiled/SSDT-EC-USBX-DESKTOP.aml
* https://github.com/corpnewt/GenSMBIOS
* https://github.com/AMD-OSX/AMD_Vanilla
* https://github.com/corpnewt/OCConfigCompare
* https://github.com/acidanthera/OpenCorePkg/releases

* whatevergreen: 1.6.7
* https://github.com/ChefKissInc/RadeonSensor/releases
* https://github.com/trulyspinach/SMCAMDProcessor/releases
* https://github.com/acidanthera/OpenCorePkg/releases
* https://github.com/Mieze/RTL8111_driver_for_OS_X/releases
* https://www.insanelymac.com/forum/files/file/1004-lucyrtl8125ethernet/
* https://github.com/USBToolBox/kext


# Kexts

* https://github.com/acidanthera/AirportBrcmFixup

* https://github.com/acidanthera/Lilu
* LILU plugins: https://github.com/acidanthera/Lilu/blob/master/KnownPlugins.md
  * 
* https://github.com/acidanthera/WhateverGreen
* https://github.com/ChefKissInc/SMCRadeonSensors
* 0.7.2 https://github.com/trulyspinach/SMCAMDProcessor
  * AMDRyzenCPUPowerManagement
  * SMCAMDProcessor
  * AMD power gadget

TODO

* https://github.com/acidanthera/BrcmPatchRAM


PciRoot(0x0)/Pci(0x1,0x2)/Pci(0x0,0x0)/Pci(0x3,0x0)/Pci(0x0,0x0)
IOService:/AppleACPIPlatformExpert/PCI0@0/AppleACPIPCI/BXBR@1,2/IOPP/BYUP@0/IOPP/BYD3@3/IOPP/BYS3@0

https://dortania.github.io/Getting-Started-With-ACPI/Manual/dump.html#from-windows
https://dortania.github.io/Getting-Started-With-ACPI/Manual/dump.html#from-opencore
https://dortania.github.io/Getting-Started-With-ACPI/Universal/dmar-methods/manual.html#creating-our-customized-dmar-table
https://www.reddit.com/r/hackintosh/comments/1gvu5n1/broadcom_wifi_on_macos_sonoma_and_sequoia_fenvi/