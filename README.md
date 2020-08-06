# Defocus-Image-Deblurring-Based-on-PYNQ
This repository is compatible with PYNQ image v2.3(maybe 2.4/2.5) for PYNQ-Z2.

- The G folder contains python emulators for fuzzy images
- The HLS folder contains C++ source files that perform wiener filtering on two-dimensional matrices
- The JupyterNotebook folder contains Python files that need to be copied to run on Pynq-Z2

## Warning
This system can deblur the gaussian blur image, but it has limited ability to recover the image taken by nature

## Authors Information
**2020 New Engineering Alliance -Xilinx Summer School Project.**
Powered by Zhang Zekun, Wang Jiyao, Shen Naijie, Guan Bin
## Quick Start
```
pip3 install git+https://github.com/strath-sdr/rfsoc_sam.git
```
## First Time Setup 

- [x] Laptop/Computer
- [x] PYNQ-Z2
- [x] micro usb to usb cable
- [x] micro SD card
- [x] ethernet cable

### Board Setup 

|SD/QSPI/JTAG|REG/USB|
|:----:   |:----:|
|SD|USB|

![pynqimg](https://pynq.readthedocs.io/en/latest/_images/pynqz2_setup.png)

### Configure PYNQ Image

Obtain a [PYNQ 2.5 image](https://github.com/Xilinx/PYNQ/releases)
Write to SD card
