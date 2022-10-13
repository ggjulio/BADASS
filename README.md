# BADASS

##### Running the project at 42 using vagrant
Vagrant is now installed by default on the linux dump.   

So only need to change the virtualbox `machinefolder` path to **avoid flood the home folder**.

Choose either `tmp` or `goinfre` folder:
```shell
vboxmanage setproperty machinefolder ~/goinfre
# or
vboxmanage setproperty machinefolder /tmp
```
However logout can mean the lost of the machine folder.  
If persistance matter, try into the server goinfre folder `~/sgoinfre/`  
```shell
vboxmanage setproperty machinefolder ~/sgoinfre
```
But server goinfre probably means slow VMs.

Next step, run the vagrant file:
```shell
vagrant up
```
Then, just wait for the command to end.  
(it can take quite some time, installing ubuntu desktop and gns3 requirements...)

Ressources:
- https://www.youtube.com/watch?v=80RFILipeng
- [man /etc/network/interfaces](https://manpages.ubuntu.com/manpages/jammy/en/man5/interfaces.5.html)
- [man /etc/network/interfaces - interfaces-vxlan](https://manpages.ubuntu.com/manpages/jammy/en/man5/interfaces-vxlan.5.html)
- https://networktechstudy.com/home/cumulus-vxlan
- https://manpages.debian.org/buster/ifupdown/interfaces.5.en.html
- [linux bridge explained](https://www.youtube.com/watch?v=oVu0O0UMBCc)
- [Linux bridge again](https://www.youtube.com/watch?v=T1twNsZojgI)
- [linux network namespaces explained](https://www.youtube.com/watch?v=j_UUnlVC2Ss)