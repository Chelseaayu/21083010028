#!/bin/bash

#deklarasi array
distroLinux=("Mint" "Ubuntu" "Kali" "Arch" "Debian")

#random distro
let pilih=$RANDOM%5

#eksekusi
echo "Saya memilih distro $pilih, ${distroLinux[$pilih]} !"

