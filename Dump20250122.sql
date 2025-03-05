CREATE DATABASE  IF NOT EXISTS `gestion_des_cours` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestion_des_cours`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: gestion_des_cours
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id_categorie` int NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(100) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Développement Web'),(2,'Développement Mobile'),(3,'Data Science'),(4,'Intelligence Artificielle'),(5,'Design Graphique'),(6,'Marketing Digital'),(7,'Cybersécurité'),(8,'Gestion de Projet'),(9,'Réseaux Sociaux'),(10,'Photographie');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cours`
--

DROP TABLE IF EXISTS `cours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cours` (
  `id_cours` int NOT NULL AUTO_INCREMENT,
  `id_categorie` int NOT NULL,
  `titre_cours` varchar(100) NOT NULL,
  `description_cours` text NOT NULL,
  `prix_cours` decimal(6,3) NOT NULL,
  `image_cours` varchar(200) NOT NULL,
  PRIMARY KEY (`id_cours`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cours`
--

LOCK TABLES `cours` WRITE;
/*!40000 ALTER TABLE `cours` DISABLE KEYS */;
INSERT INTO `cours` VALUES (1,1,'Introduction au HTML','Apprenez les bases du HTML et créez votre première page web.',49.990,'../assets/img/cours/introduction_au_html.jpg'),(2,1,'CSS Avancé','Maîtrisez le CSS pour créer des designs modernes et responsives.',59.990,'../assets/img/cours/css_avance.jpg'),(3,2,'Développement d\'applications Android','Créez des applications Android avec Java et Kotlin.',79.990,'../assets/img/cours/développement_d_applications_android.jpg'),(4,2,'Développement iOS avec Swift','Apprenez à développer des applications iOS avec Swift.',79.990,'../assets/img/cours/développement_ios_avec_swift.jpg'),(5,3,'Analyse de données avec Python','Utilisez Python pour analyser et visualiser des données.',89.990,'../assets/img/cours/analyse_de_données_avec_python.jpg'),(6,4,'Machine Learning pour débutants','Introduction aux concepts de base du machine learning.',99.990,'../assets/img/cours/machine_learning_pour_débutants.jpg'),(7,5,'Photoshop pour débutants','Apprenez à utiliser Photoshop pour retoucher vos photos.',49.990,'../assets/img/cours/photoshop_pour_débutants.jpg'),(8,6,'SEO pour les nuls','Comprenez les bases du SEO et améliorez votre visibilité en ligne.',39.990,'../assets/img/cours/seo_pour_les_nuls.jpg'),(9,7,'Sécurité des réseaux informatiques','Apprenez les fondamentaux de la cybersécurité.',69.990,'../assets/img/cours/sécurité_des_réseaux_informatiques.jpg'),(10,8,'Gestion de projet agile','Découvrez les principes de la gestion de projet agile.',59.990,'../assets/img/cours/gestion_de_projet_agile.jpg'),(11,9,'Marketing sur les réseaux sociaux','Stratégies pour promouvoir votre entreprise sur les réseaux sociaux.',49.990,'../assets/img/cours/marketing_sur_les_réseaux_sociaux.jpg'),(12,10,'Photographie numérique pour débutants','Apprenez les bases de la photographie numérique.',39.990,'../assets/img/cours/photographie_numérique_pour_débutants.jpg'),(13,1,'Création d\'un site e-commerce avec WordPress','Développez un site e-commerce fonctionnel en utilisant WordPress.',79.990,'../assets/img/cours/création_d\'un_site_e-commerce_avec_wordpress.jpg'),(14,1,'Développement d\'API RESTful avec Node.js','Créez des API RESTful avec Node.js et Express.',89.990,'../assets/img/cours/développement_d\'api_restful_avec_node.js.jpg'),(15,3,'Data Visualization avec Tableau','Utilisez Tableau pour créer des visualisations de données interactives.',69.990,'../assets/img/cours/data_visualization_avec_tableau.jpg'),(16,4,'Introduction à l\'Intelligence Artificielle','Comprendre les concepts clés de l\'IA et son application.',89.990,'../assets/img/cours/introduction_à_l\'intelligence_artificielle.jpg'),(17,5,'Design UI/UX pour débutants','Apprenez à concevoir des interfaces utilisateur efficaces.',59.990,'../assets/img/cours/design_ui/ux_pour_débutants.jpg'),(18,6,'Publicité en ligne : Google Ads','Maîtrisez Google Ads pour vos campagnes publicitaires.',79.990,'../assets/img/cours/publicité_en_ligne_:_google_ads.jpg'),(19,7,'Cryptographie et sécurité des données','Introduction aux concepts de cryptographie et leur application.',69.990,'../assets/img/cours/cryptographie_et_sécurité_des_données.jpg'),(20,8,'Scrum Master Certification Training','Préparez-vous à devenir un Scrum Master certifié.',89.990,'../assets/img/cours/scrum_master_certification_training.jpg'),(21,6,'Stratégies avancées de marketing par e-mail','Optimisez vos campagnes par e-mail pour un meilleur engagement.',39.990,'../assets/img/cours/stratégies_avancées_de_marketing_par_e-mail.jpg'),(22,5,'Création d\'un portfolio en ligne','Construisez un portfolio en ligne qui attire l\'attention des employeurs.',49.990,'../assets/img/cours/création_d\'un_portfolio_en_ligne.jpg'),(23,9,'Rédaction web : Techniques et astuces','Améliorez vos compétences en rédaction pour le web.',29.990,'../assets/img/cours/rédaction_web_:_techniques_et_astuces.jpg'),(24,4,'Introduction à la blockchain','Découvrez comment fonctionne la blockchain et ses applications.',79.990,'../assets/img/cours/introduction_à_la_blockchain.jpg'),(25,8,'Gestion du temps et productivité','Techniques pour mieux gérer votre temps et augmenter votre productivité.',39.990,'../assets/img/cours/gestion_du_temps_et_productivité.jpg'),(26,1,'Création d\'un blog avec WordPress','Lancez votre propre blog facilement avec WordPress.',49.990,'../assets/img/cours/création_d\'un_blog_avec_wordpress.jpg'),(27,2,'Développement Web avec React','Apprenez à créer des applications web interactives avec React.js.',69.990,'../assets/img/cours/développement_web_avec_react.jpg'),(28,3,'Statistiques pour Data Science','Comprendre les statistiques essentielles utilisées en Data Science.',59.990,'../assets/img/cours/statistiques_pour_data_science.jpg'),(29,4,'Deep Learning avec TensorFlow','Plongez dans le Deep Learning avec TensorFlow et Keras.',89.990,'../assets/img/cours/deep_learning_avec_tensorflow.jpg'),(30,5,'Création de vidéos professionnelles','Apprenez à créer des vidéos professionnelles avec Adobe Premiere Pro.',49.990,'../assets/img/cours/création_de_vidéos_professionnelles.jpg');
/*!40000 ALTER TABLE `cours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formateurs`
--

DROP TABLE IF EXISTS `formateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formateurs` (
  `id_formateur` int NOT NULL AUTO_INCREMENT,
  `id_cours` int NOT NULL,
  `nom_formateur` varchar(100) NOT NULL,
  `image_formateur` varchar(100) NOT NULL,
  PRIMARY KEY (`id_formateur`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formateurs`
--

LOCK TABLES `formateurs` WRITE;
/*!40000 ALTER TABLE `formateurs` DISABLE KEYS */;
INSERT INTO `formateurs` VALUES (1,1,'Alice Dupont','../assets/img/trainers/trainer-1.jpg'),(2,2,'Marc Lefèvre','../assets/img/trainers/trainer-2.jpg'),(3,3,'Sophie Martin','../assets/img/trainers/trainer-3.jpg'),(4,4,'Thomas Bernard','../assets/img/trainers/trainer-4.jpg'),(5,5,'Claire Dubois','../assets/img/trainers/trainer-5.jpg'),(6,6,'Julien Petit','../assets/img/trainers/trainer-6.jpg'),(7,7,'Laura Girard','../assets/img/trainers/trainer-7.jpg'),(8,8,'François Moreau','../assets/img/trainers/trainer-8.jpg'),(9,9,'Émilie Simon','../assets/img/trainers/trainer-9.jpg'),(10,10,'Nicolas Roche','../assets/img/trainers/trainer-10.jpg');
/*!40000 ALTER TABLE `formateurs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-22 13:29:04
