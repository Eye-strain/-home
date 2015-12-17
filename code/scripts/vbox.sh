# ~/vbox.sh
#!/bin/bash
#
sudo modprobe vboxdrv
sudo modprobe vboxdrv
sudo modprobe vboxnetadp
sudo modprobe vboxnetflt
sudo modprobe vboxpci
sudo vboxreload
