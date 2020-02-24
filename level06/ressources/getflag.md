# Pré requis

aucun

## GET Flag

L'executable level06 va appeler le fichier level06.php avec les droits de flag06.
Le fichier level06.php fait appel a preg_replace avec le flag deprecie "/e".
Ce flag permet d'executer le code present dans le deuxieme parametre.
On peut donc injecter du code php en matchant avec la regex "\[x (.*)\]".
Le code injecte sera un appel a exec permettant de lancer une commande shell.


echo "[x {${exec(getflag)}}]" > breach
./level06 breach

# Flag

On obtient le flag:
`wiok45aaoguiboiki2tuin6ub`

On peut se connecter sur le `level07`

```
level07
wiok45aaoguiboiki2tuin6ub
```
