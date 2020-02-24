# Pré requis

aucun

## GET Flag

A la racine se trouve un fichier token en lecture avec les droits flag08.
L'executable permet de lire un fichier avec les droits de flag08, sauf si celui-ci contient le mot token.
Il est donc possible de changer le nom du fichier.

chmod 777 .
mv token izy
./level08 izy
Qui nous donne : `quif5eloekouj29ke0vouxean`
on peut acceder a flag08 avec ce mot de passe.

# Flag

En lancant la commande `getflag`, on obtient le flag:
`25749xKZ8L7DkSCwJkT9dyv6f`
On peut se connecter sur le `level09`

```
level09
25749xKZ8L7DkSCwJkT9dyv6f
```
