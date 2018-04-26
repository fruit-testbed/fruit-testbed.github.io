+++
title = "FruitOS"
layout = "blog"
+++

FruitOS is a lean Linux OS distribution for Raspberry Pi, developed based on
[Alpine Linux](https://alpinelinux.org). The root filesystem only contains
necessary files to provide OS core functions, and push the application files to
containers.

FruitOS uses an immutable, A/B root partitions where an overlay ramdisk is
mounted on top the SD card root partition to eliminate the risk of disk
corruption whenever there is a sudden electric outage. This partition scheme
allows over-the-air since the update is applied on an inactive root partition.
FruitOS will able to recover from an update failure by booting to the backup
root partition and cloning it onto the corrupted one.

Key features:
<ul>
<li> Immutable, A/B root partitions</il>
<li> Over The Air (OTA) update</il>
<li> Support [Docker](https://docker.com) and
     [Singularity](https://singularity-hub.org) containers</il>
<li> Remote configuration management</il>
<li> Remote monitoring system</il>
<li> Peer-to-Peer secure update (beta testing)</il>
</ul>

FruitOS currently supports all kinds of Raspberry Pi boards ranging from Zero,
Zero-W, 1, 2, and 3. The OS image file can be downloaded from
https://fruit-testbed.org/os/edge/releases/armhf.

We plan to release the 64-bit version in June.

More details:
<ul>
<li> [Next generation single board clusters demo paper](https://eprints.soton.ac.uk/418445/)</il>
<li> [FruitOS Github Repo](https://github.com/fruit-testbed/fruitos)
</ul>
