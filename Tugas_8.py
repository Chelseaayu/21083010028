from os import getpid
from time import time, sleep
from multiprocessing import Pool, Process

def output(i):
    bilangan = i % 2
    if bilangan == 0:
       print(i, "Genap  -  ID proses", getpid())
    else:
       print(i, "Ganjil -  ID proses", getpid())
    sleep(1)

x = int(input("Input : "))

print("\nSekuensial")
sekuensialmulai = time()

for i in range(1, x + 1):
    output(i)

sekuensialakhir = time()

print("\nmultiprocessing.Process")
proses = []
prosesmulai = time()

for i in range(1, x + 1):
   p = Process(target=output, args=(i,))
   proses.append(p)
   p.start()

for i in proses:
   p.join()

prosesakhir = time()

print("\nmultiprocessing.Pool")
poolmulai = time()

pool = Pool()
pool.map(output, range(1, x + 1))
pool.close()

poolakhir = time()

print("Waktu eksekusi sekuensial : ", sekuensialakhir - sekuensialmulai, "detik")
print("Waktu eksekusi multiprocessing.Process : ", prosesakhir - prosesmulai, "detik")
print("Waktu eksekusi multiprocessing.Pool : ", poolakhir - poolmulai, "detik")
