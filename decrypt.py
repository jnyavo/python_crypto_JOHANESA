#!/usr/bin/env python3
import sys
from Crypto.PublicKey import RSA


#Ouverture des fichiers PEM

with open('private.pem','r') as fk:
	private = RSA.importKey(fk.read())
	fk.close()

with open('public.pem', 'r') as fp:
	public = RSA.importKey(fp.read())
	fp.close()



if(len(sys.argv) > 1):
        fichier = sys.argv[1]
else:
        fichier = input("Le fichier à crypter: ")


#Ouverture du fichier encrypté
with open(fichier, "rb") as fr:
	d_encrypt = fr.read()
	fr.close()
x = private.decrypt(d_encrypt)



#Sauvegarde du fichier decrypté

output = fichier + '.crypt'
if (len(sys.argv) > 2):
        output = sys.argv[2]

with open(output,"wb") as fd:
	fd.write(x)
	fd.close() 
