#! /bin/bash

sudo dmidecode -s chassis-type
hostname
sudo dmidecode -s system-manufacturer
sudo dmidecode -s system-product-name
sudo dmidecode -s system-serial-number
uname -a
cat /proc/cpuinfo
grep MemTotal /proc/meminfo
dmesg | grep blocks
df -h (disk free space)
lspci -v | grep net

echo "Software Name | Version | Install Date | Publisher | Build Number"
echo "--------------------------------------------------------------"

# APT Packages
dpkg-query -W -f='${Package} | ${Version} | ${Maintainer}\n' | sort

# Snap Packages
snap list --all | awk '{print $1, $2, $3, $4, $5}'

# Flatpak Packages
flatpak list --columns=application,version,origin

stat /var/lib/dpkg/info/<package-name>.list stat (for grabbing install date | modify date is close to install date)