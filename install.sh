#!/bin/bash
#Creation du daemon et des dossiers




#Pour ne pas creer dans home/root
USERNAME=$( logname )

TO_CRYPT="/home/$USERNAME/cryptoProject/toCrypt"
CRYPTED="/home/$USERNAME/cryptoProject/crypted"
TO_DECRYPT="/home/$USERNAME/cryptoProject/toDecrypt"
DECRYPTED="/home/$USERNAME/cryptoProject/toDecrypt"

CHEMIN_SH="/usr/bin"

mkdir -p TO_CRYPT
mkdir -p CRYPTED
mkdir -p TO_DECRYPT
mkdir -p DECRYPTED

sudo cp enDec_Service.sh $CHEMIN_SH

printf "%s\n" "[unit]" "" "[service]" ""  "[install]" ""
