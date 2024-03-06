Test CRUD pour le CDA
/ Mathis GUILLOTIN /
______________________________________________________________________________
Synopsis
______________________________________________________________________________
Ce projet de CRUD est réalisé sur la technologie PHP avec Laravel.
Ce projet de haute voltige est un blog permetant de lire des articles.
Mais dans une autre mesure, si vous êtes admin, vous pourrez gérer tous les articles, de la créations à la suppression en passant par la modification.
Pour le contenu de la base de donnée, c'est du contenu proposé par le Framework Faker qui en crée aléatoirement pour pas que la bdd soit vide.
______________________________________________________________________________
Installation
______________________________________________________________________________
1- Télécharger VS CODE : https://code.visualstudio.com/download.

2- Télécharger Laragon : https://laragon.org/download/index.html.

3- On installe PHPMyAdmin (clic-droit sur la fenêtre de Laragon," Outils/Tools > Quick add > phpmyadmin ".

4- Sur PHPMyAdmin, allez sur l'onglet Root et mettre le dossier projet à la racine, je conseille de le renommer en "blog" pour que ce soit plus simple à écrire quand il faudra le passer dans l'URL.

5- Sur PHPMyAdmin, on vient maintenant sur l'onglet Terminal et on fait la midse à jour qu'il demande.

6- Sur le Terminal, on vérifie si composer est bien installé : "composer --version", normalement il est déjà installé.

7- Si il l'est, on vient faire "cd blog", pour récupérer notre projet et agir dessus.

8- Ensuite on entre la commande "composer update" pour récupérer toutes les dépendances du projet (c'est un peu long).

9- Allons sur le projet dans VS CODE, à la racine, il y a un fichier ".env.example", on le duplique à la racine et on le nomme ".env".

10- Dans ce fichier, à la ligne 14, on vient remplacer "laravel" par le nom de la base de donnée qu'on utlise "blog". A la ligne 20, on vient remplacer "local" par "public" (pour la lecture de fichier, ici c'est des images).

11-On retourne sur le terminal et toujours dans notre dossier blog de saisi, on tape "php artisan key:generate" pour générer une clé d'accès.

12- Dans PHPMyAdmin, on va sur l'onglet "Database", on se retrouve sur l'interface de PHPMyAdmin.Dans un premier temps on vient créer notre bdd, on clique sur "New", puis dans "Create database" on vient choisir "blog" comme nom de bdd. 

13- Sur le Header, il y a plusieurs onglets mais on veux aller sur "Import", ensuite on choisi un fichier et on vient récupérer notre "blog.sql" dans le dossier "Merise" à la racine du projet. On descent sur la page et on clique sur Import tooooooooout en bas de la page.
Ca y est tout est là dans la bdd (normalement si j'ai bien fait mon travail) youpiiii !

14- Rebelote sur le Terminal, on écrit "php artisan storage:link" pour créer un lien symbolique pour les image, sinon elle ne s'affiche pas..

15- Cette fois sur le terminal interne à VS CODE, on vient installer les dépendances de node "npm install".

16- On peut maintenant lancer le host du site, dans le Terminal de VS CODE on écrit "nmp run dev".

17- Maintenant sur le navigateur on peut rechercher 'blog.test' et ainsi rejoindre le site !
______________________________________________________________________________

Tout est bon ! Il n'y a plus qu'à tester !

Pour gérer les posts il faut être admin, et pour changer son rôle il faut passer sur PHPMyAdmin>blog>users>role, si vous voulez essayer avec un compte que vous avez créé.
Sinon je vous en met un là pour aller plus vite : mail: isabelle.berger@example.com / mdp: password.
