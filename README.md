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

| Component       | Model                                                                                                                                                                   | Notes    | image                                                                                                                                                                                                                                                                 |
|-----------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Motherboard     | [MAG X570S TORPEDO MAX (MS-7D54)](https://tweakers.net/pricewatch/1740288/msi-mag-x570s-torpedo-max/specificaties/)                                                     | Zen      | ![msi](https://tweakers.net/i/ifPBekDPA8PsPhawyJ9IliEs3lU=/fit-in/188x141/filters:strip_icc():fill(white):strip_exif()/i/2004600036.jpeg?f=thumblarge)                                                                                                                |
| CPU             | [AMD Ryzen 7 5800X](https://tweakers.net/processors/amd/ryzen-7-5800x_p1191294/vergelijken/)                                                                            | Vermeer  | ![](https://tweakers.net/i/Up6C156VlmECVIaS7ot9BC42DNw=/fit-in/188x141/filters:strip_icc():fill(white):strip_exif()/i/2003937724.jpeg?f=thumblarge)                                                                                                                   |
| GPU             | [Powercolor Red Dragon AMD Radeon RX 6800 XT 16GB GDDR6](https://tweakers.net/pricewatch/1672860/powercolor-red-dragon-amd-radeon-rx-6800-xt-16gb-gddr6/specificaties/) | Navi 21  | ![](https://tweakers.net/i/prx-aSM2AMl92jobuBbBJdBKYD0=/fit-in/188x141/filters:fill(white):strip_exif()/i/2004233906.png?f=thumblarge)                                                                                                                                |
| RAM             | [32GB (2x16GB) Corsair Vengeance LPX CMK32GX4M2D3600C18](https://tweakers.net/pricewatch/1489729/corsair-vengeance-lpx-cmk32gx4m2d3600c18/specificaties/)               |          | ![](https://tweakers.net/i/UhzlrfIkN-X18l9JrWu0PWjsO7E=/fit-in/188x141/filters:strip_icc():fill(white):strip_exif()/i/2003185743.jpeg?f=thumblarge)                                                                                                                   |
| Nvme SSD        | [Samsung SSD 980 PRO 2TB](https://tweakers.net/pricewatch/1648262/samsung-980-pro-zonder-heatsink-2tb.html)                                                             |          | ![https://tweakers.net/pricewatch/1648262/samsung-980-pro-zonder-heatsink-2tb.html](https://tweakers.net/i/nisR4Jc_3lCShuaqGRXI7S_UAmA=/fit-in/188x141/filters:strip_icc():fill(white):strip_exif()/i/2004129684.jpeg?f=thumblarge)                                   |
| NVme SSD        | [KINGSTON A2000 500GB (SA2000M8500G)](https://tweakers.net/pricewatch/1439056/kingston-a2000-500gb/specificaties/)                                                      | used     | ![[KINGSTON A2000 500GB (SA2000M8500G)](https://tweakers.net/pricewatch/1439056/kingston-a2000-500gb/specificaties/)](https://tweakers.net/i/WOoIwNV9Az52kha8iZY8zJ3WtGY=/fit-in/188x141/filters:strip_icc():fill(white):strip_exif()/i/2002979458.jpeg?f=thumblarge) |
| SSD             | Samsung SSD 870 EVO 1TB                                                                                                                                                 | used     |                                                                                                                                                                                                                                                                       |
| Audio Controller | [Focusrite Scarlett Solo (3rd Gen)](https://tweakers.net/pricewatch/1548680/focusrite-scarlett-solo-3rd-gen/specificaties/)                                             | over USB | ![Focusrite Scarlett Solo (3rd Gen)](https://tweakers.net/i/MEhtKKDI_ENoPgWWP0lbe7MRbmE=/fit-in/188x141/filters:fill(white):strip_exif()/i/2003551652.png?f=thumblarge/)                                                                                              |
| PSU             | [Cooler Master Silent Pro M2 1000W)](https://tweakers.net/pricewatch/303813/cooler-master-silent-pro-m2-1000w/specificaties/)                                           | used     | ![Cooler Master Silent Pro M2 1000W)](https://tweakers.net/i/zKeG4zjWBmkvNlA-BB3BkEe41yY=/fit-in/188x141/filters:strip_icc():fill(white):strip_exif()/i/1329227766.jpeg?f=thumblarge)                                                                                                                                        |
| GPU riser       | A pen from a local store                                                                                                                                                 | used     |                                                                                                                                                                                                                                                                       | 

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

@todo add settins

* serial
* fast boot




## Notes

The goal of this rig:

* Audio production (OSX+Windows)
  * FL Studio
  * Logic Pro
  * Presonus Studio One
  * Guitar Pro 
* Software development & hacking
  * JetBrains IDE's
  * Some linux like environment 
3. Gaming

The rig has a life expectancy of 3-4 years with possible upgrades and options to extend performance through overclocking. __This is a overclockers build__


### About hardware decisions

_Why no Intel + Nvidia setup?_

I've been using those in the past but the [Apple MacBook Pro 2018 15,4" i9 2,9 GHz](https://tweakers.net/pricewatch/1215465/apple-macbook-pro-2018-15-komma-4-inch-i9-2-komma-9-ghz-512gb-qwerty-spacegrijs/specificaties/) I wasted 4000 euro's on left a really, really, really nasty taste. and given the GPU prices and the CPU security debacle (Spectre, meltdown, etc) I decided to go for AMD. Also, it's never a bad idea to stick with one vendor.

> The Apple MacBook Pro 2018 15,4" i9 2,9 GHz is the worst laptop ever build by apple in my opinion and is why I decided to switch to hackintosh as I don't dare to make a gamble like this again.

_Why AM4 instead of AM5?_

I decided to stick with the old generation as I believe it's too early for AM5 in my case. My budget is limited and I like to mess around with my computer, like overclocking.
So I went for a overclockers build that would allow me to last roughly 3-4 years and be affordable on a mid-to-high tier build.
For example, I chose the 5800X over the 5800X3D as the 5800X is very suitable for overclocking and the 5800X3D is not.
I chose the X570S TORPEDO MAX over a common gamer motherboard as this one allows for extra voltage to be delivered to the CPU besides the high end Realtek ALC4080 audio chip which would benefit my audio production needs.

Most components we're bought in sales or came in second hand.

_Why no RGB?_

I have yeelights all over my office connected to my PC which is way more immersive and cheap. I don't need RGB in my PC.

