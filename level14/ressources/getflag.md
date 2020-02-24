# Pré requis

aucun

## GET Flag

N'ayant aucun fichier à la racine. Nous devons récupérer le flag par n'importe quel moyen.

L'injection de lib pour changer le retour de getuid / geteuid étant bloquée, nous devons trouver un moyen de récupérer le flag.

Du coup on peut lancer gdb sur `/bin/getflag`.

On peut donc jump `ju` sur chacune des instructions `je`.

```

0x080489b6 <+112>:	je     0x80489ea <main+164>
0x08048a9f <+345>:	je     0x8048aae <main+360>
0x08048ab3 <+365>:	je     0x8048e89 <main+1347>
0x08048acf <+393>:	je     0x8048e46 <main+1280>

0x08048b0f <+457>:	je     0x8048ccb <main+901>
0x08048b21 <+475>:	je     0x8048c3b <main+757>
0x08048b33 <+493>:	je     0x8048bf3 <main+685>
0x08048b46 <+512>:	je     0x8048bc6 <main+640>
0x08048b52 <+524>:	je     0x8048c83 <main+829>
0x08048b6d <+551>:	je     0x8048d5b <main+1045>
0x08048b7f <+569>:	je     0x8048d13 <main+973>
0x08048b9a <+596>:	je     0x8048da3 <main+1117>
0x08048bb0 <+618>:	je     0x8048dc4 <main+1150>
0x08048bb6 <+624>:  cmp    $0xbc6,%eax
0x08048bbb <+629>:	je     0x8048de5 <main+1183>
```

Ex :

```
(gdb) ju *0x08048b0f
Continuing at 0x8048b0f.
wiok45aaoguiboiki2tuin6ub
*** stack smashing detected ***: /bin/getflag terminated
```

On peut voir la comparaison si le retour de geteuid vaut 3014, reste à jump.

```
(gdb) ju *0x08048bbb
Continuing at 0x8048bbb.
7QiHafiNa3HVozsaXkawuYrTstxbpABHD8CPnHJ
*** stack smashing detected ***: /bin/getflag terminated

```
Qui nous donne : `7QiHafiNa3HVozsaXkawuYrTstxbpABHD8CPnHJ`

# Flag

On obtient le flag:
`7QiHafiNa3HVozsaXkawuYrTstxbpABHD8CPnHJ`


Snow Crash terminé !
