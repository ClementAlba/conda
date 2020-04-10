# Les environnements conda

## Le concept

## La gestion

### Définir l'emplacement de stockage

### Mettre à jour la base

### Créer un nouvel environnement

``` shell
conda create --name mon_env
```

Remplacer mon_env avec le nom que vous voulez, validez et quand conda vous demande si vous voulez continuez, tapez *y*.

Cela crée l'environnement dans le répertoire /envs à l'emplacement que vous avez précédemment spécifié.


Pour avoir une version précise de Python à la création :

``` shell
conda create -n mon_env python=3.8
``` 

Pour installer un paquet dès la création de l'environnement :

``` shell
conda create -n mon_env pdal=2.1
``` 

Pour avoir une version précise d'un paquet à la création :

``` shell
conda create -n mon_env pdal=2.1
```

### Mettre à jour un environnement

### Supprimer un environnement

### Cloner un environnement

### Créer un script de création d'environnement
