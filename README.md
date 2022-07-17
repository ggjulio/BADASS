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
