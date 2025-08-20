@echo off

hostname
wmic computersystem get manufacturer
wmic computersystem get model
wmic bios get serialnumber
wmic os get caption,version
wmic computersystem get description
ipconfig | findstr /i "IPv4 Address"
getmac /v /fo list
ipconfig | findstr /i "Subnet Mask"
wmic cpu get name
wmic computersystem get totalphysicalmemory
wmic diskdrive get size
wmic logicaldisk get deviceid, freespace
wmic nic get name,manufacturer