#!/usr/bin/bash
#!/bin/bash
#!/bin/sh

# Create by Xnuvers007

# Create chroot

echo "============================================================"
echo "Creating chroot"
lsb_release -a
echo "============================================================"
read -p "Enter your password: " password
read -p "Enter the name of the chroot: " chroot_name
echo "$password" | sudo -S mkdir -p /$chroot_name/{bin,etc,lib,lib64,usr/{bin,lib/x86_64-linux-gnu/zsh}}
echo "$password" | sudo -S chown -R root:root /$chroot_name
echo "$password" | sudo -S cp -r /lib64/* /$chroot_name/lib64
echo "$password" | sudo -S cp -r /lib/* /$chroot_name/lib
echo "$password" | sudo -S cp -r /usr/bin/* /$chroot_name/usr/bin
echo "$password" | sudo -S cp -r /bin/* /$chroot_name/bin
echo "$password" | sudo -S cp -r /usr/lib/x86_64-linux-gnu/zsh/* /$chroot_name/usr/lib/x86_64-linux-gnu/
echo "$password" | sudo -S echo "PS1='chroot:$chroot_name [#] '" >> /$chroot_name/etc/profile
echo "$password" | sudo -S echo "PS1='chroot:$chroot_name [#] '" >> /$chroot_name/etc/zshrc
echo "$password" | sudo -S echo "PS1='chroot:$chroot_name [#] '" >> /$chroot_name/etc/bash.bashrc
echo "$password" | sudo -S cp -r /var/www/html/* /$chroot_name/var/www/html/

echo "============================================================"
echo "Chroot has been created in /$chroot_name"
read -p "Enter to exit"
exit 1
echo "============================================================"
