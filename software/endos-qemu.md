LINK: https://discovery.endeavouros.com/applications/how-to-install-virt-manager-complete-edition/2021/09/

---

**INSTALL QEMU ON ENDOS**

**Installing virt-manager (Full-featured install)**

```
sudo pacman -Syu --needed virt-manager qemu-desktop libvirt edk2-ovmf dnsmasq vde2 bridge-utils iptables-nft dmidecode
```

**enable libvirtd service**

```
sudo systemctl enable --now libvirtd.service
```

**Check for the status to make sure the service is running.**

```
systemctl status libvirtd.service

```

**Enable network if not started**

```
sudo virsh net-autostart default
```

**If you wish to edit the created virtual machine disk images you can install `libguestfs`**

```
yay -S libguestfs
```

**This would add support to SMB/CIFS support to QEMU.**

```
yay -S samba
```
