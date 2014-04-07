Cobbler Verification Box
========================

System Requirements
-------------------

+ [Vagrant](http://www.vagrantup.com/downloads.html)
+ [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

Getting Started
---------------

```
$ vagrant up
```

Downloading ISOs
----------------

+ http://ftp.riken.go.jp/pub/Linux/fedora/releases/20/Fedora/x86_64/iso/Fedora-20-x86_64-DVD.iso

Worklog
-------

### Fedora20

```
$ sudo mount -o loop,ro /vagrant/Fedora-20-x86_64-DVD.iso /mnt/
$ sudo cobbler import --arch=x86_64 --path=/mnt --name=Fedora20
task started: 2014-04-07_204017_import
task started (id=Media import, time=Mon Apr  7 20:40:17 2014)
Found a candidate signature: breed=redhat, version=rhel6
Found a candidate signature: breed=redhat, version=rhel7
Found a candidate signature: breed=redhat, version=fedora20
Found a matching signature: breed=redhat, version=fedora20
Adding distros from path /var/www/cobbler/ks_mirror/Fedora20-x86_64:
creating new distro: Fedora20-x86_64
trying symlink: /var/www/cobbler/ks_mirror/Fedora20-x86_64 -> /var/www/cobbler/links/Fedora20-x86_64
creating new profile: Fedora20-x86_64
associating repos
checking for rsync repo(s)
checking for rhn repo(s)
checking for yum repo(s)
starting descent into /var/www/cobbler/ks_mirror/Fedora20-x86_64 for Fedora20-x86_64
processing repo at : /var/www/cobbler/ks_mirror/Fedora20-x86_64
need to process repo/comps: /var/www/cobbler/ks_mirror/Fedora20-x86_64
looking for /var/www/cobbler/ks_mirror/Fedora20-x86_64/repodata/*comps*.xml
running: createrepo -c cache -s sha --groupfile /var/www/cobbler/ks_mirror/Fedora20-x86_64/repodata/ac802acf81ab55a0eca1fe5d1222bd15b8fab45d302dfdf4e626716d374b6a64-Fedora-20-comps.xml /var/www/cobbler/ks_mirror/Fedora20-x86_64
received on stdout: Spawning worker 0 with 4071 pkgs
Workers Finished
Gathering worker results

Saving Primary metadata
Saving file lists metadata
Saving other metadata
Generating sqlite DBs
Sqlite DBs complete

received on stderr:
*** TASK COMPLETE ***

$ sudo umount /mnt
```

```
$ sudo cobbler distro report
Name                           : Fedora20-x86_64
Architecture                   : x86_64
TFTP Boot Files                : {}
Breed                          : redhat
Comment                        :
Fetchable Files                : {}
Initrd                         : /var/www/cobbler/ks_mirror/Fedora20-x86_64/images/pxeboot/initrd.img
Kernel                         : /var/www/cobbler/ks_mirror/Fedora20-x86_64/images/pxeboot/vmlinuz
Kernel Options                 : {'repo': '$tree'}
Kernel Options (Post Install)  : {}
Kickstart Metadata             : {'tree': 'http://@@http_server@@/cblr/links/Fedora20-x86_64'}
Management Classes             : []
OS Version                     : fedora20
Owners                         : ['admin']
Red Hat Management Key         : <<inherit>>
Red Hat Management Server      : <<inherit>>
Template Files                 : {}

```

```
$ sudo cobbler profile report
Name                           : Fedora20-x86_64
TFTP Boot Files                : {}
Comment                        :
DHCP Tag                       : default
Distribution                   : Fedora20-x86_64
Enable gPXE?                   : 0
Enable PXE Menu?               : 1
Fetchable Files                : {}
Kernel Options                 : {}
Kernel Options (Post Install)  : {}
Kickstart                      : /var/lib/cobbler/kickstarts/sample_end.ks
Kickstart Metadata             : {}
Management Classes             : []
Management Parameters          : <<inherit>>
Name Servers                   : []
Name Servers Search Path       : []
Owners                         : ['admin']
Parent Profile                 :
Proxy                          :
Red Hat Management Key         : <<inherit>>
Red Hat Management Server      : <<inherit>>
Repos                          : []
Server Override                : <<inherit>>
Template Files                 : {}
Virt Auto Boot                 : 1
Virt Bridge                    : xenbr0
Virt CPUs                      : 1
Virt Disk Driver Type          : raw
Virt File Size(GB)             : 5
Virt Path                      :
Virt RAM (MB)                  : 512
Virt Type                      : kvm

```

License
-------

[Beerware](http://en.wikipedia.org/wiki/Beerware) license.

If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.
