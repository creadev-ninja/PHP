Fiche Développement Web

[![CreaDev](logo-creadev-210207-R-200.png)](http://www.creadev.ninja/)

Technologies en jeux : PHP

Vous avez besoin de l'OS Ubuntu 20 minimum installé. 

# Installation de la pile LAMP sur Ubuntu

La documentation sur LAMP (Linux Apache MySQL PHP) est disponible sur le site d'Ubuntu : [http://doc.ubuntu-fr.org/lamp](http://doc.ubuntu-fr.org/lamp)

Table :
1. Installation d'Apache, MySQl, PHP
2. Installation des paquets complémentaires
3. Autoriser les droits sur le dossier /var/www/html
4. Test phpinfo et "Hello world!"
5. Configurer MySQL
6. Ajouter un super utilisateur à MySQL
7. Installer phpMyAdmin
8. Test de connexion à la base de données

## 1. Installation d'Apache, MySQl, PHP
    sudo apt install apache2 php libapache2-mod-php mysql-server php-mysql

## 2. Installation des paquets complémentaires
    sudo apt install php-curl php-gd php-intl php-json php-mbstring php-xml php-zip

## 3. Autoriser les droits sur le dossier 
Pour autoriser les droits sur le dossier /var/www/html

    cd /
    sudo chown mic /var/www/html/ -R
**mic** ou tout autre nom d'utilisateur (login)

## 4. Test phpinfo et "Hello world!"
Dans un navigateur tapez : localhost
Et vous devez voir : Ubuntu Logo Apache2 Ubuntu Default Page 
Cela confirme l'installation réussie d'Apache2
On crée un fichier *phpinfo*

    cd /var/www/html
    sudo echo "<?php phpinfo();?>" > info.php   
Dans un navigateur : **localhost/info.php**
#
## 5. Configurer MySQL
Entrer dans mysql

    sudo mysql

Lister les utilisateurs

    select user,host from mysql.user;
    // ou en SQL
    SELECT user, host, plugin, authentication_string FROM mysql.user;
Lister les bases de données

    show databases;

Sortir

    quit

## 6. Ajouter un super utilisateur à MySQL
Entrer dans mysql

    sudo mysql
Lister les utilisateurs

    SELECT user, host, plugin, authentication_string FROM mysql.user;

Créer un nouvel utilisateur

    CREATE USER 'proot'@'localhost' IDENTIFIED BY 'kkproot';

Avec tous les privilèges d'un SU

    GRANT ALL PRIVILEGES ON * . * TO 'proot'@'localhost';

On applique les privilèges immédiatement

    FLUSH PRIVILEGES;

On vérifie la liste des utilisateurs

    SELECT user, host, plugin, authentication_string FROM mysql.user;

Sortir

    quit
#
## 7. Installer phpMyAdmin
COnsuilter le documentation sur PHPmyAdmin : [https://doc.ubuntu-fr.org/phpmyadmin](https://doc.ubuntu-fr.org/phpmyadmin)

    sudo apt install phpmyadmin
- OK
- Mot de passe
- Mot de passe confirmation
- Barre d'espace pour sélectionner [ * ] apache2
- OK

## 8. Test de connexion à la base de données
Dans un navigateur : [http://localhost/phpmyadmin/](localhost/phpmyadmin/)
- login : proot
- pass : kkproot

Créer une base de données
    Onglet base de données "**zodiaque**" en **utf8_general_ci**

- Sélectionner zodiaque > onglet importer > parcourir : zodiaque-signes.sql > exécuter

- Sélectionnez la table "signes" dans zodiaque (menu gauche) : on peut voir le contenu de la table.

Copier le dossier **zodiaque/** dans **/var/www/html/**

- Dans un navigateur : [http://localhost/zodiaque/page.php](localhost/zodiaque/page.php)

- Si la liste des signes du zodiaque apparaît c'est que la connexion à la base de donnée fonctionne.