# Les environnements conda

## Le concept

Un environnement est un boîte fermée dans laquelle on peut installer et configurer des versions de logiciels sans avoir d'impact sur les autres environnements. On peut mettre en place une version de test et une version de production côte à côte.

## La gestion

### Mettre à jour la base

Avant de commencer à créer de nouveaux environnements, il est recommandé de procéder à la mise à jour de l'environnement de base :

``` shell
conda update --all
```

### Créer un nouvel environnement

``` shell
conda create --name mon_env
```

Remplacer *mon_env* avec le nom que vous voulez, validez et quand conda vous demande si vous voulez continuez, tapez *y*. Cela crée l'environnement dans le répertoire /envs à l'emplacement que vous avez précédemment spécifié.

``` shell
# Pour avoir une version précise de Python à la création :
conda create -n mon_env python=3.8
# Pour installer un paquet dès la création de l'environnement :
conda create -n mon_env pdal=2.1
```

### Activer un environnement

Après la création, il faut passer par une étape d'activation pour entrer dans un environnement  avec la commande ``` conda activate mon_env ```. La désactivation (la sortie) se fait simplement avec ``` conda deactivate ```.

### Définir l'emplacement de stockage

Vous pouvez contrôler l'emplacement où sera stocké l'environnement lors de sa création en utilisant le paramère *--prefix* :

``` shell
conda create --prefix /dossier/sousdossier/envs
```

Pour l'activer, il faut indiquer le préfix complet :

``` shell
conda activate /dossier/sousdossier/envs
```

### Lister les environnements existants

Cette commande indique tous les environnements existants :

``` shell
conda env list
```

### Mettre à jour

Vous pouvez mettre à jour un environnement

``` shell
# en l'activant au préalable
conda activate /dossier/sousdossier/envs
conda update --all
# en spécifiant le nom de l'environnement
conda env update --prefix /dossier/sousdossier/envs --all
```

### Supprimer un environnement

Pour supprimer complétement un environment :

``` shell
conda env remove --name myenv
```

### Créer un script de création d'environnement

Conda permet de sauvegarder les prérequis à la création d'un environment dans un fichier au format YML

``` shell
# activer l'environment à sauvegarder
conda activate mon_env
# exporter la liste des paquets dans un fichier YML
conda env export > environment.yml
# mettre à jour un fichier YML
conda env update --prefix ./env --file environment.yml --prune
```
