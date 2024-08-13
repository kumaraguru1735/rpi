# rpi

add "net.ifnames=0" to /boot/firmware/cmdline.txt

```sudo nano /etc/netplan/50-cloud-init.yaml```
    

    network:
        ethernets:
            eth0:
                dhcp4: true
                optional: true
            eth1:
                dhcp4: false
                addresses: 
                    - 192.168.77.77/24
                optional: true
        version: 2
