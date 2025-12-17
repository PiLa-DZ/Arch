# Download Arch Image
wget -c "https://Arch-ISO-Link"
# Find USB
lsblk
# Unmount USB
sudo umount /dev/sdb1
# Make Bootble USB
sudo dd conv=fsync oflag=direct status=progress bs=4M if=arch.iso of=/dev/sdb && sync
# Safely eject the USB drive
sudo eject /dev/sdb

# Reboot f12
