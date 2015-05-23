Some scripts to I use to run my virtual kernel test machine. 

You need to fill in the blanks for your own configuration

#### Start VM:
* start.sh - starts a machine with network and serial port access in qemu terminal
* start-graphic.sh - starts a machine with network and a monitor instead of serialport
* start-nonetscr.sh - same as start.sh but you configure network manually after starting the VM
* start-nosudo - starts a machine with only serial port access, does not need root privileges

#### Configure network:
* qemu-ifup - copy this to /etc and QEMU configures the tap device automatically
* startnet.sh - manual version of above script
* startinternet.sh - configure NAT to give VM internet access over WLAN, you also need dnsmasq for this to work properly

#### Inside VM:
* net - copy this under /etc/conf.d/ in the VM and do as it says inside to configure eth if automatically
