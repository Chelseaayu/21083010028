panjang() {
     echo "Masukkan Panjang : "
     read panjang
}
lebar() {
     echo "Masukkan Lebar : "
     read lebar
}
luas() {
     echo "Luas Persegi : "
     let luas=$panjang*$lebar
     echo "$luas"
}

panjang
lebar
luas
