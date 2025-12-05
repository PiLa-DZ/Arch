# base linux linux-firmware grub efibootmgr gvim networkmanager bash-completion

# Step [1] ===============================================
# Configuration Local
vim /etc/locale.gen
# Uncomment # en_US.UTF-8
locale-gen
echo LANG=en_US.UTF-8 >/etc/locale.conf
export LANG=en_US.UTF-8

# Configuration Timezone
rm -rf /etc/localtime
ln -s /usr/share/zoneinfo/Africa/Algiers /etc/localtime
hwclock --systohc

# Edit Hosts
echo NabilArch >/etc/hostname
vim /etc/hosts
127.0.0.1 NabilArch.localdomain NabilArch

# Add User
useradd -m -g users -G wheel,storage,power,log,video,audio -s /bin/bash nabil
passwd nabil
// Enter user passwd
EDITOR=vim visudo
// Uncomment # %wheel ALL=(ALL) ALL
// Uncomment # %wheel ALL=(ALL) NOPASSWD: ALL

# Enable Network services
systemctl enable dhcpcd
systemctl enable iwd
