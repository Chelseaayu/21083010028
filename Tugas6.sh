#!/bin/bash

echo "========================================================="
echo "Indeks Prestasi Semester dan Indeks Prestasi Kumulatif"
echo "Nama : " 
read nama;
echo "Input : "
read inputan;
read s1
read s2
read s3

let ips=$s1+$s2+$s3;
let ipk=($s1+$s2+$s3)/$inputan;

semester=($ips)
kumulatif=($ipk)

echo "Total IPS Mahasiswa : " ${semester[*]}
echo "Total IPK Mahasiswa : " ${kumulatif[*]}
echo "========================================================="
