FROSIT Ryzentosh
================

These are my personal Ryzentosh multi-boot (Win11Pro, Ventura, Ubuntu) documentation and EFI/config files.

__Current status:__ Working like a charm, but still polishing the EFI/config files.

__Disclaimer:__ I am not responsible for any damage to your hardware or software. Use at your own risk.

## Table of Contents

- [FROSIT Ryzentosh](#frosit-ryzentosh)
  - [Table of Contents](#table-of-contents)
  - [Hardware](#hardware)
  - [Software](#software)
  - [Notes](#notes)

## Software

I run a multi-boot setup with the following OS's:

* Windows 11 Pro
  * Gaming (low-latency streaming)
  * Music production (low-latency audio)
  * Development (virtualization)
* MacOS Ventura (latest)
  * Development
  * Music production (low-latency audio)
* Ubuntu 22.04 LTS
  * Development (Virtualization)

## Hardware

(most) components we're specifically chosen for certain reasons, you can read about this in the notes column.

| Component        | Model                                                                                                                                                                   | Notes    | image                                                                                                                                                                                                                                                                 |
|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Motherboard      | [MAG X570S TORPEDO MAX (MS-7D54)](https://tweakers.net/pricewatch/1740288/msi-mag-x570s-torpedo-max/specificaties/)                                                     | Zen      | ![msi](https://tweakers.net/i/ifPBekDPA8PsPhawyJ9IliEs3lU=/fit-in/188x141/filters:strip_icc():fill(white):strip_exif()/i/2004600036.jpeg?f=thumblarge)                                                                                                                |
| CPU              | [AMD Ryzen 7 5800X](https://tweakers.net/processors/amd/ryzen-7-5800x_p1191294/vergelijken/)                                                                            | Vermeer  | ![](https://tweakers.net/i/Up6C156VlmECVIaS7ot9BC42DNw=/fit-in/188x141/filters:strip_icc():fill(white):strip_exif()/i/2003937724.jpeg?f=thumblarge)                                                                                                                   |
| GPU              | [Powercolor Red Dragon AMD Radeon RX 6800 XT 16GB GDDR6](https://tweakers.net/pricewatch/1672860/powercolor-red-dragon-amd-radeon-rx-6800-xt-16gb-gddr6/specificaties/) | Navi 21  | ![](https://tweakers.net/i/prx-aSM2AMl92jobuBbBJdBKYD0=/fit-in/188x141/filters:fill(white):strip_exif()/i/2004233906.png?f=thumblarge)                                                                                                                                |
| RAM              | [32GB (4x16GB) Corsair Vengeance LPX CMK32GX4M2D3600C18](https://tweakers.net/pricewatch/1489729/corsair-vengeance-lpx-cmk32gx4m2d3600c18/specificaties/)               |          | ![](https://tweakers.net/i/UhzlrfIkN-X18l9JrWu0PWjsO7E=/fit-in/188x141/filters:strip_icc():fill(white):strip_exif()/i/2003185743.jpeg?f=thumblarge)                                                                                                                   |
| Nvme SSD         | [Samsung SSD 980 PRO 2TB](https://tweakers.net/pricewatch/1648262/samsung-980-pro-zonder-heatsink-2tb.html)                                                             |          | ![https://tweakers.net/pricewatch/1648262/samsung-980-pro-zonder-heatsink-2tb.html](https://tweakers.net/i/nisR4Jc_3lCShuaqGRXI7S_UAmA=/fit-in/188x141/filters:strip_icc():fill(white):strip_exif()/i/2004129684.jpeg?f=thumblarge)                                   |
| NVme SSD         | [KINGSTON A2000 500GB (SA2000M8500G)](https://tweakers.net/pricewatch/1439056/kingston-a2000-500gb/specificaties/)                                                      | used     | ![[KINGSTON A2000 500GB (SA2000M8500G)](https://tweakers.net/pricewatch/1439056/kingston-a2000-500gb/specificaties/)](https://tweakers.net/i/WOoIwNV9Az52kha8iZY8zJ3WtGY=/fit-in/188x141/filters:strip_icc():fill(white):strip_exif()/i/2002979458.jpeg?f=thumblarge) |
| SSD              | Samsung SSD 870 EVO 1TB                                                                                                                                                 | used     |                                                                                                                                                                                                                                                                       |
| WiFi+BT          | [Fenvi FV-T919](https://tweakers.net/pricewatch/1324824/fenvi-fv-t919/specificaties/)                                                                                   | new      | ![Fenviv](https://tweakers.net/i/zSod0MU4duq0uQP2FN2dsTgfD9E=/i/2002552952.jpeg)                                                                                                                                                                                      |
| Audio Controller | [Røde RodeCaster Pro II](https://tweakers.net/pricewatch/1863752/rode-rodecaster-pro-ii/specificaties/)                                                                 | over USB | ![Rodecaster](https://tweakers.net/i/69cF6K0-bqFe9orokBz7FKtPyg8=/i/2005535550.png)                                                                                                                                                                                   |
| PSU              | [Seasonic Focus GX-850 ATX 3.0](https://tweakers.net/pricewatch/1942864/seasonic-focus-gx-850-atx-30-zwart.html)                                                        | new      | ![Seasonic Focus GX-850 ATX 3.0](https://tweakers.net/i/1YWvEkoYEQw6TtPXmXmSUIRCdwo=/fit-in/188x141/filters:fill(white):strip_exif()/i/2005916130.png?f=thumblarge)                                                                                                   |
| GPU riser        | A pen from a local store                                                                                                                                                | used     |                                                                                                                                                                                                                                                                       | 

The following details are important in hardware selection. My build has these specifics:

> * Chipset: AMD x570
> * Audio: Realtek ALC4080
> * Network controller: Realtek RTL8125B
> * Network controller: Realtek RTL8111H
> * Motherboard: Zen architecture
> * CPU: Vermeer architecture
> * GPU: Navi 21 architecture

### Peripherals & other devices attached

* Razer keyboard
* Razer mouse
* Razer mousepad
* Canon G3020 printer
* Logitech C920 webcam
* Trust Tyro cam
* ESI Unik05 speakers over RCA
* Samsung Oddysey G5 34" 1440p 165Hz monitor
* 2x 24" 1080p 60Hz monitor

## Ryzentosh

This section describes a few things about the installation of Ventura xxxx besides Windows 11 Pro.

> This is a work in progress, though functional, be careful.
> Booting into windows through the opencore UEFI show your motherboard to be a MacPro motherboard which invalidates your windows license.

For the most part, it's about following this guide [OpenCore Install Guide - AMD zen](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html)

below is a list of repo's I used:

__Used repos__

* [OpenCore Install Guide](https://github.com/dortania/OpenCore-Install-Guide)
* [OpenCorePkg](https://github.com/acidanthera/OpenCorePkg/releases)
* [GibMacOS](https://github.com/corpnewt/gibMacOS)
* [ProperTree](https://github.com/corpnewt/ProperTree)
* [GenSMBIOS](https://github.com/corpnewt/GenSMBIOS)
* [MountEFI](https://github.com/corpnewt/MountEFI)
* [USBMap](https://github.com/corpnewt/USBMap))

__Others__

* [SSDTime](https://github.com/corpnewt/SSDTTime)
* [RestrictEvents](https://github.com/acidanthera/RestrictEvents/releases) - fixes memory issue with MacPro 7,1

### Working with the EFI folder

I noticed that on Windows, I like to use [DiskGenius](https://www.diskgenius.com/download.php) to transfer to and from the EFI boot folder. On MacOS I use [MountEFI](https://github.com/corpnewt/MountEFI) to mount the EFI partition.
The installer USB was build using [gibMacOS](https://github.com/corpnewt/gibMacOS)


### BIOS settings

See: [BIOS settings](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html#amd-bios-settings)

### Overclocking

@TODO add sections on running high boost clocks while undervolting.


# Document structure & Updating

* The EFI folder in this repo is the latest EFI and the one being edited.