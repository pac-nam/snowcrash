# Pré requis

aucun

## GET Flag

A la racine se trouve un executable, lorsqu'il est lance demande a avoir un uid a 4242.
En utilisant gdb, on peut changer la valeur de la variable comparee lors de l'execution.
L'executable permet de lire un fichier avec les droits de flag08, sauf si celui-ci contient le mot token.

```
  gdb level13
  b*main+14
  r
  set $eax = 4242
  c
```

Qui nous donne : `2A31L79asukciNyi8uppkEuSx`

# Flag

On obtient le flag:
`2A31L79asukciNyi8uppkEuSx`
On peut se connecter sur le `level14`

```
level14
2A31L79asukciNyi8uppkEuSx
```
