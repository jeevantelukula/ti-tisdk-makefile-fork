# make-ti-bsp
Makefile based build system to build BSP package for TI SOCs

Project is currently tied to TI Linux SDK Installers


## Usage
Build for a specific SOC using sources from a pre-installed SDK as follows: 

`make <target> PLATFORM=<platform> TI_SDK_PATH=</path/to/installed/sdk>`

Currently supported `<platform>`s are:
- am62lxx-evm
- am62axx-evm
- am62pxx-evm
- am62xx-evm, am62xx-lp-evm
- am64xx-evm
- am65xx-evm
- am335x-evm
- am437x-evm

For list of supported `<target>`s for a `<platform>`, please look at ./config/`<platform>`.mk
