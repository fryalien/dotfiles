LINK: https://discovery.endeavouros.com/applications/how-to-install-virtualbox/2021/03/

---

**INSTALL VIRTUALBOX ON ENDOS**

**Install kernel headers**

```
sudo pacman -Syu --needed linux-headers
```

**Install Virtualbox**

```
sudo pacman -S virtualbox virtualbox-guest-iso
```

>for linux kernel choose virtualbox-host-modules-arch

**Install net-tools if you want to use host-only or bridged networking**

```
sudo pacman -S net-tools
```

**Load the needed module**

```
sudo modprobe vboxdrv
```

**Add Oracle extensions (optional, but needed for USB function p.e.)**

```
yay -S virtualbox-ext-oracle
```

**Add the user inside the VM to the needed group**

```
sudo usermod -aG vboxsf y
```

>y is my username
