#!/bin/bash

#mendeklarasikan fungsi
nama () {
    echo "Siapa namamu?"
    read nama
    npm     #memanggil fungsi di dalam fungsi

}
npm () {
    echo "Sebutkan NPM mu"
    read npm
    echo -e "hai $nama dengan NPM $npm, selamat datang \n di praktikum sistem operasi yang seru ini ya!"
}

#memanggil fungsi
nama
