# make-ti-bsp
Makefile based build system to build BSP package for TI SOCs

Project is currently tied to TI Linux SDK Installers


## Usage
Build for a specific SOC using sources from a pre-installed SDK as follows: 

`make <target> PLATFORM=<platform> TI_SDK_PATH=</path/to/installed/sdk>`

Currently supported `<platform>`s are:
- j721e
- j7200
- j721s2
- j784s4

For list of supported `<target>`s for a `<platform>`, please look at ./config/`<platform>`.mk
