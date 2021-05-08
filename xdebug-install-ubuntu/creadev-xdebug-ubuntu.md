Fiche Développement Web

[![CreaDev](../lamp-install-ubuntu/logo-creadev-210207-R-200.png)](http://www.creadev.ninja/)

Technologies en jeux : PHP

Vous avez besoin de l'OS Ubuntu 20 installé avec un environnement LAMP. 

# Installer Xdebug sur Ubuntu

Il est nécéssaire d'avoir déjà installer la pile LAMP (Linux Apache MySQL PHP) dans votre environnement GNU Linux et de péférence pour avoir le même que dans ce tutoriel : Ubuntu 20.4.1 . 

Voir la documentation pour l’installation Linux sur : [http://xdebug.org/docs/install#linux](http://xdebug.org/docs/install#linux)

Installation en ligne de commande de Xdebug pour PHP 7.4

    sudo apt-get install php-xdebug

Une petite recherche pour savoir où est **xdebug.so** et on place ce chemin (path) de côté.

    sudo find -name *xdebug.so

./usr/lib/php/20190902/xdebug.so

On recherche où se trouve le fichier php.ini de la configuration d’Apache2 (pas celui du cli)

    CD /
    sudo find -name php.ini

/etc/php/7.4/apache2/php.ini

Ouvrir le fichier php.ini

    sudo nano /etc/php/7.4/apache2/php.ini

Parcourrez le fichier jusqu’à « **Error handling and logging** »
Vérifiez si les paramètres sont bien activés comme suit :

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Error handling and logging ;
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    error_reporting = E_ALL & ~E_DEPRECATED & ~E_STRICT
    display_errors = On
    display_startup_errors = On 

Ensuite filez à la fin du fichier avec le chemin (path) mis de côté plus haut.

Ajouter la ligne : *zend_extension=CHEMIN_ABSOLU_VERS_L_EXTENSION* (le path mis de côté)

    ;;;;;;;;;;
    ; XDEBUG ;
    ;;;;;;;;;;
    [xdebug]
    zend_extension=/usr/lib/php/20190902/xdebug.so
    xdebug.show_local_vars=1

J’ai ajouté la dernière ligne pour afficher les variables, si vous trouvez que c’est trop commentez là en la précédant d’un point virgule (;).

**Ctrl+x** pour sortir de **nano**, **o** pour enregistrer les modifications, et **entrée** pour sortir du fichier.

On redémarre apache2 pour prendre les modifications en compte

    sudo service apache2 restart

Il n’y a plus qu’à vérifier avec faisant des erreurs volontaires dans un fichier PHP :-D



## Après installation de Xdebug

Télécharger la page de test : [Téléchargez la page de test](test.php)

Une capture d'écran ([Screenshot_xdebug-test.png](Screenshot_xdebug-test.png)) de ce que est sensé afficher cette page. 

Placer la page de test à cet emplecement : **var/www/html/test/test.php**

Consultable à cette URL dans le navigateur : [http://localhost/test/test.php](http://localhost/test/test.php)

----
Pour aller plus loin :

Configuration de Xdebug : [https://blog.pascal-martin.fr/post/xdebug-installation-premiers-pas/](https://blog.pascal-martin.fr/post/xdebug-installation-premiers-pas/)