#!/usr/bin/env python3
import sys
from Crypto.PublicKey import RSA

#Génerer la clé

key = RSA.generate(1024)


#Exporter la clé dans d'autres variables

k = key.exportKey("PEM")

p = key.publickey().exportKey('PEM')


#Ecrire les clés dans des fichiers pem

with open('private.pem','w') as kf:
	kf.write(k.decode())
	kf.close()

with open('public.pem','w') as pf:
	pf.write(p.decode())
	pf.close()


#Encryption
if(len(sys.argv) > 2):
	fichier = sys.argv[1]
else:
	fichier = input("Le fichier à crypter: ")

fo = open(fichier,"rb")
text = fo.read()
d_encrypt = key.publickey().encrypt(text,32)

#Ecriture du fichier encrypté
fo = open(fichier + '.crypt', 'wb')
fo.write(d_encrypt[0])


fo.close()



