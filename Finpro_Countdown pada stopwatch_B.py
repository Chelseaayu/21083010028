# import the time module
import time

# define the countdown func.
def countdown(t):
	
	while t:
		mins, secs = divmod(t, 60)
		timer = '{:02d}:{:02d}'.format(mins, secs)
		print(timer, end="\r")
		time.sleep(1)
		t -= 1
	
	print('Waktu sudah habis')

print('=========================================================')
print('       " Selamat Datang di Sistem Hitung Mundur "        ')
print('=========================================================')

print('Masukkan identitas kamu :')
a = input("Nama : ")
t = input("Masukkan durasi (dalam satuan detik): ")

countdown(int(t))
b = input('Ingin menghitung mundur lagi? (y/n) : ')
setuju = str(b)

while setuju == 'y':
    print('Masukkan identitas kamu :')
    a = input("Nama : ")
    t = input("Masukkan durasi (dalam satuan detik): ")
    #function call
    countdown(int(t))
    b = input('Ingin menghitung mundur lagi? (y/n) : ')
    setuju = str(b)
    while setuju == 'y':
        print('Masukkan identitas kamu :')
        a = input("Nama : ")
        t = input("Masukkan durasi (dalam satuan detik): ")
	#function call
        countdown(int(t))
print('=========================================================')

