echo "Masukkan bilangan"
read ganjil
echo "loading proses"

a=$ganjil

while [ $a -gt 0 ]
do
   echo $a
   a=$((a - 2))
done
