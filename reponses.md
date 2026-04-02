# REPONSE AUX QUESTIONS D EVSLUATION

## Q1 — Structure Bash
**Quelle est la différence fondamentale entre un alias et une fonction Bash ?**

Un alias est un simple raccourci pour une commande, il ne peut pas prendre de logique. 
Une fonction est un bloc de code réutilisable qui peut prendre des arguments et contenir des conditions, des boucles, etc.
---

## Q2 — source vs exécution directe
**Expliquez la différence entre les deux commandes suivantes.**

```
source lib/functions.sh
bash lib/functions.sh
```

- `bash lib/functions.sh` — exécute le fichier dans un nouveau shell. Les fonctions disparaissent quand il se termine, le shell actuel n'y a pas accès.
- `source lib/functions.sh` — exécute le fichier dans le shell actuel. Les fonctions s'appliquent directement apres l'execution.

Pour charger les fonctions de syskit, il faut utiliser `source`.
---

## Q3 — Git branches
**Pourquoi crée-t-on une branche feature plutôt que de travailler directement sur main ?**

Travailler sur une branche `feature` isole les modifications — si quelque chose casse, `main` reste stable et fonctionnel.

Si deux développeurs travaillent directement sur `main` en parallèle, ils vont créer des conflits à chaque `push` et risquent d'écraser le travail de l'autre.
---

## Q4 — Script install.sh
**Que fait la ligne `set -e` en début de script ?**

`set -e` arrête immédiatement le script dès qu'une commande retourne une erreur. Sans ça, le script continue même si une étape a échoué, ce qui peut causer des dégâts en cascade.

C'est une bonne pratique car cela garantit que le script ne s'exécute pas dans un état imprévu.
---

## Q5 — Git log
**Quelle commande permet de voir l'historique des commits de façon compacte avec un graphe des branches ?**

``` git log --oneline --graph --all
```
