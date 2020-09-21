# Installation

## par système d'exploitation

### Windows 10

La version de Conda que nous utilisons et celle nommée *miniconda*, elle ne contient que le strict minimum et se télécharge à l'adresse suivante :

> https://docs.conda.io/en/latest/miniconda.html

L'intérêt est de limiter l'espace disque nécessaire sur les plus anciennes stations de travail et de réduire le nombre de paquets à mettre à jour dans l'envirronement de base.

La version de l'installateur doit être :
* avec python >= 3.7
* compilée en 64-bit

L'installation peut s'effectuer sans les droits administrateurs, l'application sera installée dans le répertoire *AppData* de l'utilisateur. L'installation par un admin est à priviligier car cela permet de pouvoir configurer et utiliser conda peu importe la session ouverte sur le poste.

### Fedora

L'installation à priviligier est celle par l'utilitaire DNF avec la commande suivante :

``` bash
sudo dnf install conda
```

## premier lancement

### Configurer l'accès réseau

La configuration du proxy et de ses certificats rend *légèrement* compliqué l'usage de conda dès qu'un accès au réseau est nécessaire tel que lors du téléchargement d'un paquet. Pour y remédier, il faut désactiver temporairement le support du chiffrement.

#### Sous Windows 10

Cliquez sur l'icône de lancement des programmes, tapez *conda*. L'outil *Anaconda Prompt Shell* apparaît dans votre liste, veillez à l'exécuter en mode administrateur.

Saisissez la commande suivante :

``` bash
set SSL_NO_VERIFY=1
```

``` bash
conda config --set ssl_verify no
```

#### Sous Fedora

Ouvrez votre terminal et saisissez :

``` bash
conda
set SSL_NO_VERIFY=1
```

### Activation de l'intéropérabilité Conda/pip

La commande suivante permet d'activer une [fonctionnalité expérimentale](https://docs.conda.io/projects/conda/en/latest/user-guide/configuration/pip-interoperability.html) améliorant l'intéropérabilité entre la gestion des paquets conda et celle des paquets pip :

``` bash
conda config --set pip_interop_enabled True
```

