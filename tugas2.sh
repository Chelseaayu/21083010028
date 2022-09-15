echo "Siapa namamu?"
read nama
echo -e "\nHalo $nama!\nSelamat datang di latihan soal random!"

distroLinux=("1" "2" "3")

let pilih=$RANDOM%3

echo "Selamat"
echo "Kamu dapat nomor ${distroLinux[$pilih]} "

printf "Soalnya adalah :\n"
a=12
b=10
printf "Tentukan hasil berikut\n"
echo "A. a + b"
echo "B. a - b"
echo "C. a / b"
printf "Jawab :\n"

let jumlah=$a+$b
let kurang=$a-$b
bagi=`expr $a / $b`

echo "A. a + b = $jumlah"
echo "B. a - b = $kurang"
echo "C. a / b = $bagi"

printf "Apakah mau lanjut ke soal selanjutnya?\n"
printf "iya\n"
printf "nggak\n"

read jawab

case "$jawab" in
  "iya")
    echo "oke tunggu ya aku siapin soal selanjutnya"
    ;;
  "nggak")
    echo "yauda deh"
    ;;
  *)
esac
