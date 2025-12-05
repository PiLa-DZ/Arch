# Step [1] ===============================================
# Connect to WiFi by NetworkManager
systemctl enable NetworkManager
systemctl start NetworkManager
nmcli d
nmcli r wifi on
nmcli d wifi list
nmcli d wifi connect SSID password WiFi-Password

# Step [2] ===============================================
# TTY Fonts
pacman -S terminus-font
setfont ter-132b
vim /etc/vconsole.conf
    FONT=ter-132b
reboot

# Step [3] ===============================================
# Power Button Suspend
vim /etc/systemd/logind.conf
    HandlePowerKey=suspend

# Step [4] ===============================================
pacman -S git
git clone https://github.com/pila-dz/arch.git
vim arch/section_3.sh

# Step [5] ===============================================
# Configuration Local
vim /etc/locale.gen
// Uncomment # en_US.UTF-8
locale-gen
echo LANG=en_US.UTF-8 >/etc/locale.conf
export LANG=en_US.UTF-8

# Step [6] ===============================================
# Configuration Timezone
rm -rf /etc/localtime
ln -s /usr/share/zoneinfo/Africa/Algiers /etc/localtime
hwclock --systohc

# Step [7] ===============================================
# Edit Hosts
echo NabilArch >/etc/hostname
vim /etc/hosts
127.0.0.1 localhost
::1       localhost
127.0.1.1 NabilArch

# Step [8] ===============================================
# Add User
useradd -m -g users -G wheel,storage,power,log,video,audio -s /bin/bash nabil
passwd nabil
// Enter user passwd
pacman -S sudo
EDITOR=vim visudo
// Uncomment # %wheel ALL=(ALL) ALL

# Step [9] ===============================================
// reboot and login with user
