lsblk
sudo umount /dev/sdX1
# Note: If mkfs.vfat or mkfs.exfat are missing, install them first:
sudo pacman -S dosfstools exfatprogs

# Target System,Format,Command
sudo mkfs.vfat -F 32 -n "MY_USB" /dev/sdb1 # Windows/Mac/Linux,FAT32
sudo mkfs.ext4 -L "MY_USB" /dev/sdb1       # Linux Only,EXT4
# sudo mkfs.exfat -L "MY_USB" /dev/sdb1 # Windows/Mac/Linux,exFAT
# sudo mkfs.ntfs -L "MY_USB" /dev/sdb1 # Windows Only,NTFS
