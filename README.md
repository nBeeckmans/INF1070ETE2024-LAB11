# INF1070ETE2024-LAB11

Pour le script : voir l'exemple `ave` ! 

`b` contient `Bonjour!` et `a` contient `Au revoir!`.
`>b` : redirige la sortie standard vers `b`. 
`2>a` : redirige la sortie d'erreur. 

`{ ./ave | rev ; } 2>&1 | rev` : 
    - `./ave | rev ;` inverse `Bonjour!` 
    - `./ave | rev ;` redirige le `Au revoir!` vers la sortie standard
    - `| rev` inverse les deux mots 
    - Donc, `Au revoir!` est inverse mais pas `Bonjour!` (qui a ete inverse 2 fois).

Pour le script avec `USER` voir l'exemple `ave_user` !

Si on change la variable `USER` cela va impacter le resultat du script...
```sh 
USER=Anonyme ./ave_user
Bonjour! Anonyme
Au revoir! Anonyme
```

Pour le script avec `id` voir l'exemple `ave_id` !
```sh 
USER=Anonyme ./ave_id
Bonjour! nb 
Au revoir!nb
```
