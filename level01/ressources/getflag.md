# Pré requis

Aucun.

## GET Flag

En regardant le fichier `/etc/passwd`, on peut voir un mot de passe hasher à côté de l'user flag01.

Reste à lancer john copier le fichier `/etc/passwd` et lancer `./john --show passwd`.

### Flag

Le résultat de la commande est : `abcdefg`.

On peut donc se connecter sur le `level02`.

```
level02
abcdeg
```