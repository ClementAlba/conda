# Gérer les logiciels

## Les paquets conda

### Installation

La commande ```conda install``` s'occupe de télécharger et d'installer un paquet logiciel dans un environnement. Un logiciel peut être empaqueté dans de multiples versions dans différents dépôts, il est souvent nécessaire de sépcifier la version (```gdal=3.0.4```) mais aussi la source avec le paramètre ```--channel```/```-c```.

``` shell
# rechercher un paquet
conda search -c conda-forge gdal
# installer en étant dans l'environnement activé
conda install -c conda-forge gdal=3
# installer en-dehors de l'environnement
conda install --name mon_env -c conda-forge gdal=3
# installer plusieurs paquets
conda install -c conda-forge gdal=3 pdal=2.1
```

### Suppression

``` shell
# dans l'environnement activé
conda remove gdal
# en-dehors de l'environnement
conda remove -n mon_env gdal
```

### Mise à jour

Pour mettre à jour un paquet :

``` shell
conda update gdal
```

Pour mettre à jour tout un environnement :

``` shell
conda update --all
```

## Les paquets pip

## Les paquets nodejs

Il faut installer la pile applicative complète pour disposer du gestionnaire de paquet **npm** :

``` shell
conda install -y -c conda-forge nodejs
npm install -g json2csv
```

## Les utilitaires coreutils posix

Le projet [MSYS2](https://www.msys2.org/) met à dispostion un grand d'utilaires courants sur les UNIX (curl, sed, gred, [etc.](https://repo.anaconda.com/pkgs/msys2/)) compilés pour Windows en 64bits. Ces paquets sont disponibles avec Conda :

``` shell
conda install -y -c msys m2-base
```
