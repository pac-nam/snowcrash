# Pré requis

VM Linux ou MacOS et installer wireshark.

### GET Flag
En lisant le `level02.pcap` avec wireshark  on peut voir le mot de passe tapé.

Ce qui donne en hexa : `66 74 5f 77 61 6e 64 72 7f 7f 7f 4e 44 52 65 6c 7f 4c 30 4c 0d 00 0d 0a 01`.

Cela nous donne : `ft_wandrNDRelL0L`.

Nous pouvons voir des caractères `7f` qui est un DEL.
Il suffit donc de supprimer les caractères d'avant.

Ce qui donne comme résultat : `ft_waNDReL0L`.

### Flag

Après la commande getflag nous obtenons : `kooda2puivaav1idi4f57q8iq`.

On peut se connecter sur le `level03`.

```
level03
kooda2puivaav1idi4f57q8iq
```