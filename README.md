# syskit
Collection d'outils système Bash pour Linux.

## Fonctionnalités

### Fonctions (`functions.sh`)
- `disk_usage` — affiche l'espace disque du PC
- `top_processes [N]` — affiche les N premiers processus par consommation CPU (défaut : 10)
- `find_large_files <dir> <size_mo>` — cherche les fichiers dépassant une taille donnée

### Alias (`aliases.sh`)
- `..` / `...` — navigation rapide vers le dossier parent / grand-parent
- `ll` — liste détaillée et lisible des fichiers
- `la` — liste tous les fichiers incluant les cachés
- `meminfo` — affiche l'utilisation de la mémoire
- `cpuinfo` — affiche les infos essentielles du CPU
- `ports` — liste les ports réseau ouverts
- `rm` — suppression avec confirmation obligatoire

## Prérequis
- Linux (Ubuntu, Debian, Arch...)
- Bash >= 4.0

## Installation
```bash git clone https://github.com/riantsoa-randria/syskit.git
cd syskit
bash install.sh
source ~/.bashrc
```

## Utilisation

         #disk_usage
Affiche l'espace disque de tous les montages de ton système, trié du plus utilisé au moins utilisé.
Exemple de sortie :

```
=== Utilisation disque ===
/dev/sda1        50G   45G  2.5G  95% /
tmpfs           7.8G  1.2G  6.6G  16% /dev/shm
```

        # top_processes [N]
Affiche les N processus qui consomment le plus de CPU. Si tu ne précises pas N, il affiche les 10 premiers par défaut.
Exemple de sortie :
```
=== Top 5 processus (CPU) ===
USER       PID  %CPU  %MEM  COMMAND
riantsoa  1234  45.0   2.1  firefox
riantsoa  5678  12.3   0.5  python3
```

### find_large_files [dir] [taille_en_Mo]
Cherche tous les fichiers dépassant une certaine taille dans un dossier. Par défaut il cherche dans le dossier actuel les fichiers de plus de 100Mo.
Exemple de sortie :
```
=== Fichiers > 50Mo dans /home ===
-rw-r--r-- 1 riantsoa 215M /home/riantsoa/videos/demo.mp4
```

## Structure du projet
```
syskit/
    install.sh
    lib/
        functions.sh
        aliases.sh
```

## Auteur
Riantsoa Randriamandimby— [GitHub](https://github.com/riantsoa-randria)
