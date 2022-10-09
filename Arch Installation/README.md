# Setting Our Timedate
timedatectl set-ntp true

# Disk Partitioning
First we should decide about in which disk drive we're going to install our arch linux.

```
lsblk #For printing out our current disk
fdisk /dev/sda
```

Instead of `sdb` you should write the name of the disk you want your linux to be installed.
Now we're on a new command prompt called fdisk.

- Type in `p` for listing out your partitions.
- Type in `n` for creating a new partition, partition number and first sector are in default so press enter.
- Type in `d` to format your partitions.

**But for the last sector, we want to put the size to create our partition.**


Partition Size:

- Boot: +200M
- Swap: 1.5 Times your memory
- Root: Depends on how much program are you going to install on your linux - at least +15G
- Home: Rest of your space - just leave the last sector empty and automatically does that for you

And last but not least for the fdisk environment:

Type in `w` for writing out your partitions on the device.
Now we're going to make file system on out `root`, `boot` and `home` partition.

```
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda3
mkfs.ext4 /dev/sda4
```

And for our Swap:

```
mkswap /dev/sda2
swapon /dev/sda2
```

# Mounting
Now we're going to mount our `root` partition into `/mnt`.

```
mount /dev/sda3 /mnt
```

Check `/mnt` with `ls` command:

`ls /mnt`

# Making Directories
```
mkdir /mnt/home
mkdir /mnt/boot
```

# Mounting Directories
Now we should mount our `/home` and `/boot` into the file that we've just created.

```
mount /dev/sda1 /mnt/boot
mount /dev/sda4 /mnt/home
```

# Updating Pacman Mirrorlist
First we install `reflector` package.

`pacman -S reflector`

Then we should update our mirrorlist based on download speed.
**This will increase a huge amount of download speed**

`reflector --latest 200 --sort rate --save /etc/pacman.d/mirrorlist`

# Installtion

`pacstrap /mnt base base-devel linux linux-firmware`

This will install our base core arch linux and our linux kernel.
You can also install the `amd-ucode` or if you have a intel cpu `intel-ucode` and this will improve your cpu performance.

# Fstab
This will generate UUID for our partitions.

`genfstab -U /mnt >> /mnt/etc/fstab`

# Chroot
Change root into the new system.
`arch-chroot /mnt`

# Timezone
```
ln -sf /usr/share/zoneinfo/Europe/Switzerland /etc/localtime
```

# Hardware Clock Sync
This will generate `/etc/adjtime` :
`hwclock --systohc`

# Locale
> Uncomment your suited language.
`vim /etc/locale.gen`

## Generate Locale
`locale-gen`

### Create a Locale Config
`vim /etc/locale.conf`

> And put this in it:
```
LANG = en_US.UTF-8
```

# Host Name
`vim /etc/hostname`

# Local IP For Host
`vim /etc/hosts`
> Put this in it:

```
verbatim
127.0.0.1	localhost
::1			localhost
127.0.1.1	Username.localdomain	Username
```

# Initramfs (Not Necessary)
`mkinitcpio -P`

# Set Password
`passwd`

# Boot Loader
`pacman -S grub`

## Grub
`grub-install --target=i386-pc /dev/<YOUR_PARTITION>`

### Grub Config
`grub-mkconfig -o /boot/grub/grub.cfg`

# Installing Useful Software
```
pacman -S networkmanager network-manager-applet wireless-tools wpa-supplicant dialog mtools dosfstools linux-headers cups bluez bluez-utils git pulseaudio pulseaudio-bluetooth pulseaudio-jack pulseaudio-equalizer xdg-utils xdg-user-dirs
```
# Enabling Software In Systemctl
`systemctl enable NetworkManager`
`systemctl enable org.cups.cupsd`

# Adding Users
`useradd -mG wheel <Username>`

# Sudo Permissions / Sudoers
> Uncomment your wheel section in this file:

```
EDITOR=vim visudo
```

# Set Password For Your User
```
passwd <Username>
Exit Chroot
exit
```

# Unmount
> This will unmount all disks:
`umount -a`

### Reboot
`reboot`
