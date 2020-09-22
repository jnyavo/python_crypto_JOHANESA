# python_crypto_JOHANESA



Ce projet est un programme de cryptage et de decryptage qui peut se lancer en tant que daemon.


# Fonctionnalité

  - crypter des fichiers
  - decrypter des fichiers





### Tech

Ressources utilisées:

* [pyCrypto](https://gist.github.com/YannBouyeron/f39893644f89dd676297cc3bc67eaedb) - Module de chiffrement RSA
* [Python] - Language de programmation
* [Bash] - Language de programmation linux
* [Systemd] - Services et daemon


### Installation



Installer le service

```bash
$ cd python_crypto_JOHANESA
$ sudo ./install.sh
```

Pour voir le status du service

```bash
$ sudo systemctl status cryptDecrypt_nyavo.service
```
### Usage 

- Tous les fichiers mis dans ~/cryptoProject/toCrypt seront cryptés dans ~/cryptoProject/crypted.
- Tous les fichiers mis dans ~/cryptoProject/toDecrypt seront decryptés dans ~/cryptoProject/Decrypted.


### Usage avancé

Il est possible de chiffrer ou dechiffrer des fichiers manuellement avec les fichiers pythons 

```bash
$ ./encrypt.py <fichier> <destination> <optionnel:clé privée> <optionnel:clé public>
$ ./decrypt.py <fichier> <destination> <optionnel:clé privée> <optionnel:clé public>
```
Pour encrypt.py, si les arguments <clé privée> et <clé public> sont vides, le programme générera les fichiers clés .pem dans le chemin par défaut. <br>
Pour decrypt.py, si les arguments <clé privée> et <clé public> sont vides, le programme cherchera les fichiers clés dans le chemin par défaut

#### Configuration
Les chemins et les extensions par défaut sont configurables dans les fichiers :
Des constantes sont déclarés au début de chaque fichiers, ils peuvent être changés selon le besoin.

Pour chaque changement dans les constantes, il est impératif de faire de même sur tous les fichiers. 

 
    

