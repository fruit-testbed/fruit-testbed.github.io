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

  - **Support 32-bit (Zero, Zero-W, 1, 2, 3) and 64-bit (3, 3B+)**
  - **Immutable, A/B root partitions**
  - **Over The Air (OTA) update**
  - **Support [Docker](https://docker.com) containers**
  - **Remote configuration management**
  - **Remote monitoring system**
  - **Peer-to-Peer secure update (beta testing)**

FruitOS currently supports all kinds of Raspberry Pi boards ranging from Zero,
Zero-W, 1, 2, 3, and 3B+. The OS image file can be downloaded from
https://fruit-testbed.org/os/images/.

More details:

  - [Next generation single board clusters demo paper](https://eprints.soton.ac.uk/418445/)
  - [FruitOS Github Repo](https://github.com/fruit-testbed/fruitos)
