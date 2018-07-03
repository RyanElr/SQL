--Installer SQL :
sudo apt install mysql-server
--Démarrer SQL :
sudo systemctl start mysql
--Redémarrer SQL :
sudo systemctl restart mysql
--Configurer SQL :
sudo systemctl reload mysql
--Arrêter SQL :
sudo systemctl stop mysql
--Voir la présente version de SQL :
mysqld "--version"
--Lancer SQL :
sudo mysql -uroot
--Créer une database :
create database
--Selectionner une database :
use "database"
--Regarder les tableaux :
show tables
--Selectionner une classe spéciale
SELECT * FROM departements
-- Selectionner des villes dans le code postal 60
SELECT * FROM villes dep = "60" order by ville
-- Selectionner les 3 premières villes du code postal 60400
SELECT * FROM villes cp = 60400 limit 3
--Selectionner une ville
select * from villes where ville ='Saint';
--Compter le nombre de villes qu'il y a dans les départements de France
SELECT nom_dep,COUNT(*) FROM villes INNER JOIN departements ON departements.dep = villes.dep GROUP BY nom_dep;
--Afficher les villes ayant comme région "Picardie"
SELECT * FROM villes INNER JOIN regions ON villes.region = regions.region WHERE regions.nom_region='Picardie';
--Afficher le nombre de villes par départements et par régions
SELECT nom_dep,COUNT(*) FROM villes INNER JOIN departements ON departements.dep = villes.dep GROUP BY nom_dep UNION SELECT nom_region,COUNT(*) FROM villes INNER JOIN regions ON villes.region = regions.region GROUP BY nom_region;
