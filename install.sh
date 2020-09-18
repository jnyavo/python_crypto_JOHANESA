#!/bin/bash
#Creation du daemon et des dossiers




#Pour ne pas mettre dans l'utilisateur root
USERNAME=$( logname )

TO_CRYPT="/home/$USERNAME/cryptoProject/toCrypt"
CRYPTED="/home/$USERNAME/cryptoProject/crypted"
TO_DECRYPT="/home/$USERNAME/cryptoProject/toDecrypt"
DECRYPTED="/home/$USERNAME/cryptoProject/toDecrypt"

mkdir -p TO_CRYPT
mkdir -p CRYPTED
mkdir -p TO_DECRYPT
mkdir -p DECRYPTED

printf "%s\n" "[unit]" "" "[service]" ""  "[install]" ""
