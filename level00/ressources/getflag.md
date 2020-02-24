# Pré requis

Il faut rechercher le seul fichier que flag00 peut run

## GET Flag

Il suffit donc de lancer cette commande : `find / -user flag00 -group flag00 -type f 2>&- | grep -v proc`, on peut voir des fichiers "john"
on obtient:
```
/usr/sbin/john
/rofs/usr/sbin/john
```

### Flag

Le contenu de ce fichier est: `cdiiddwpgswtgt`

Reste à le chiffrer avec le code césar et le brute force avec toutes les possibilités avec JTR ou dcode
ce qui donne `nottoohardhere`

On peut se connecter sur le `level01`.

```
level01
nottoohardhere
```