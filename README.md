# Nandland Go Board

<img src="./images/WhatsApp%20Image%202023-06-10%20at%203.23.30%20PM.jpeg" alt="nandland go board" width="500"/>

## icecube2 dependencies

```shell
sudo dnf install libXext.i686 libpng12.i686 libSM.i686 libXi.i686 libXrender.i686 libXrandr.i686 libXfixes.i686 libXcursor.i686 libXinerama.i686 freetype.i686 fontconfig.i686
```

rename network interface

```shell
# interface with MAC address "your-MAC-address" will be assigned "eth0"
# for icecube2 license
SUBSYSTEM=="net", ACTION=="add", ATTR{address}=="your-MAC-address", NAME="eth0"
```

get the mac address by typing `ip addr`

reload the new rules and reboot

```
sudo udevadm control --reload
```

# references

- https://halverscience.net/fpgas_for_sci_and_eng/hardware/
- https://jeelabs.org/2016/06/forth-on-nandland-go-board/
- https://nandland.com/
- https://vhdlwhiz.com/lattice-icecube2-ubuntu-20-04-icestick/ (icecube2 on ubuntu)
- https://www.alteeve.com/w/Changing_Ethernet_Device_Names_in_EL7_and_Fedora_15%2B
