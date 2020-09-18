#!/bin/bash



USERNAME=$( logname )


CHEMIN_FICHIERS='.'
TO_CRYPT="/home/$USERNAME/cryptoProject/toCrypt"
CRYPTED="/home/$USERNAME/cryptoProject/crypted"
TO_DECRYPT="/home/$USERNAME/cryptoProject/toDecrypt"
DECRYPTED="/home/$USERNAME/cryptoProject/Decrypted"

while IFS=$'\n' read fichier
do
	${CHEMIN_FICHIERS}/encrypt.py $fichier ${DECRYPTED}/${fichier}.crypt
done <<<$(ls ${TO_CRYPT}/) 


