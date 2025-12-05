# Step [1] ===============================================
# Resize
setfont ter-132b
setfont ter-124b
setfont ter-116b

# Step [2] ===============================================
# Connect To Wifi
iwctl
[iwd] device list
[iwd] station wlan0 get-networks
[iwd] station wlan0 connect "Name of WiFi access point"
[iwd] exit

# Test Internet
ping -c 3 google.com

# Synchronize pacman packaes
pacman -Syy

# Step [3] ===============================================
# Disk partitioning
# NOTE: lsblk blkid fdisk gdisk cfdisk
cfdisk /dev/sda
# Delete All Partitions
# Boot Partition
#     Make New Partition   = 1G
#     Partition Type       = EFI System
# Swap Partition
#     Make new partition   = 4G
#     Partition Type       = Linux swap
# Root Partition
#     Make new partition   = 50G
#     Partition Type       = Linux root (x86-64)
# Home Partition
#     Make new partition   = 100G
#     Partition Type       = Linux home
# Write and Quit

# Step [4] ===============================================
# Swap "Make & Active"
mkswap /dev/sda2
swapon /dev/sda2

# Step [5] ===============================================
# Format Partitions
mkfs.fat -F 32 /dev/sda1
mkfs.ext4 /dev/sda3
mkfs.ext4 /dev/sda4

# Step [6] ===============================================
# Mounting Partitions
mount /dev/sda3 /mnt
mount --mkdir /dev/sda1 /mnt/boot
mount --mkdir /dev/sda4 /mnt/home

# Step [7] ===============================================
# Select Mirrors
reflector --save /etc/pacman.d/mirrorlist --country Germany --latest 20 -p https

# Step [8] ===============================================
# Install
pacstrap -i /mnt base linux linux-firmware grub efibootmgr vim networkmanager bash-completion

# Step [9] ===============================================
# Configure your fstab
genfstab -U -p /mnt >>/mnt/etc/fstab

# Step [10] ===============================================
# Change root
arch-chroot /mnt

# Step [11] ===============================================
# Root Password
passwd

# Step [12] ===============================================
# Install bootloader
grub-install --target=x86_64-efi --efi-directory=/boot --removable
grub-mkconfig -o /boot/grub/grub.cfg

# Step [13] ===============================================
# Exit And Reboot
exit
umount -R /mnt
reboot
