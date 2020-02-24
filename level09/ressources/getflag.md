# Pré requis

aucun

## GET Flag

A la racine se trouve un fichier token avec une chaine "hashée".
La methode de hash est argv[i] += i

Il est possible de copier flag09.c 

```
chmod 777 .
scp -P4242 flag09@$(./ip_machine [VM-NAME]):.
gcc flag09 -o flag09
```

Puis l'executer : `./flag09 $(cat token)`
Qui nous donne : `f3iji1ju5yuevaus41q1afiuq`
# Flag

On obtient le flag:
`s5cAJpM8ev6XHw998pRWG728z`
On peut se connecter sur le `level10`

```
level10
s5cAJpM8ev6XHw998pRWG728z
```
