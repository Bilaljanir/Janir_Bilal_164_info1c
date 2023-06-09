-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: JANIR_BILAL_INFO1C_BUDGET_164_2023
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_adresse`
--

DROP TABLE IF EXISTS `t_adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_adresse` (
  `id_adresse` int NOT NULL AUTO_INCREMENT,
  `npa` varchar(10) NOT NULL,
  `rue` varchar(100) NOT NULL,
  `numero_rue` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `pays` varchar(100) NOT NULL,
  PRIMARY KEY (`id_adresse`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_adresse`
--

LOCK TABLES `t_adresse` WRITE;
/*!40000 ALTER TABLE `t_adresse` DISABLE KEYS */;
INSERT INTO `t_adresse` VALUES (1,'1400','rue de lausannw','53','yverdon','swiss'),(2,'199','ruebdedeoijd','32','dqwoijdqj','djwpioad');
/*!40000 ALTER TABLE `t_adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_categories`
--

DROP TABLE IF EXISTS `t_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_categories` (
  `id_categorie` int NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_categories`
--

LOCK TABLES `t_categories` WRITE;
/*!40000 ALTER TABLE `t_categories` DISABLE KEYS */;
INSERT INTO `t_categories` VALUES (2,'Alimentation'),(3,'Transport'),(4,'Santé'),(5,'Divertissement'),(6,'Éducation'),(7,'Vêtements'),(8,'Longement'),(10,'service public');
/*!40000 ALTER TABLE `t_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_categories_depense`
--

DROP TABLE IF EXISTS `t_categories_depense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_categories_depense` (
  `id_categories_depense` int NOT NULL AUTO_INCREMENT,
  `fk_categories` int DEFAULT NULL,
  `fk_depense` int DEFAULT NULL,
  PRIMARY KEY (`id_categories_depense`),
  KEY `fk_categories` (`fk_categories`),
  KEY `fk_depense` (`fk_depense`),
  CONSTRAINT `fk_categories` FOREIGN KEY (`fk_categories`) REFERENCES `t_categories` (`id_categorie`),
  CONSTRAINT `fk_depense` FOREIGN KEY (`fk_depense`) REFERENCES `t_depense` (`id_depense`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_categories_depense`
--

LOCK TABLES `t_categories_depense` WRITE;
/*!40000 ALTER TABLE `t_categories_depense` DISABLE KEYS */;
INSERT INTO `t_categories_depense` VALUES (1,3,1),(4,7,1),(5,3,4),(6,10,1),(7,8,1);
/*!40000 ALTER TABLE `t_categories_depense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_depense`
--

DROP TABLE IF EXISTS `t_depense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_depense` (
  `id_depense` int NOT NULL AUTO_INCREMENT,
  `montant` decimal(10,2) NOT NULL,
  `date_depense` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_depense`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_depense`
--

LOCK TABLES `t_depense` WRITE;
/*!40000 ALTER TABLE `t_depense` DISABLE KEYS */;
INSERT INTO `t_depense` VALUES (1,10000.00,'2023-06-14','test'),(2,2500.00,'2023-06-21','teste'),(3,6000.00,'2023-06-06','teste'),(4,4100.00,'2023-06-20','teest'),(5,3500.00,'2023-06-30','tetst'),(6,2050.00,'2023-06-21','testet'),(7,2223.00,'2023-06-28','fs');
/*!40000 ALTER TABLE `t_depense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_email`
--

DROP TABLE IF EXISTS `t_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_email` (
  `id_email` int NOT NULL AUTO_INCREMENT,
  `adresse_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_email`
--

LOCK TABLES `t_email` WRITE;
/*!40000 ALTER TABLE `t_email` DISABLE KEYS */;
INSERT INTO `t_email` VALUES (1,'bilal@gmail.com'),(2,'test@gmail.com');
/*!40000 ALTER TABLE `t_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_num_tel`
--

DROP TABLE IF EXISTS `t_num_tel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_num_tel` (
  `id_num_tel` int NOT NULL AUTO_INCREMENT,
  `num_tel` varchar(20) NOT NULL,
  PRIMARY KEY (`id_num_tel`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_num_tel`
--

LOCK TABLES `t_num_tel` WRITE;
/*!40000 ALTER TABLE `t_num_tel` DISABLE KEYS */;
INSERT INTO `t_num_tel` VALUES (1,'0779524042');
/*!40000 ALTER TABLE `t_num_tel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_personne`
--

DROP TABLE IF EXISTS `t_personne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_personne` (
  `id_personne` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `fk_email` int DEFAULT NULL,
  `fk_adresse` int DEFAULT NULL,
  `fk_num_tel` int DEFAULT NULL,
  PRIMARY KEY (`id_personne`),
  KEY `fk_email` (`fk_email`),
  KEY `fk_adresse` (`fk_adresse`),
  KEY `fk_num_tel` (`fk_num_tel`),
  CONSTRAINT `t_personne_ibfk_1` FOREIGN KEY (`fk_email`) REFERENCES `t_email` (`id_email`),
  CONSTRAINT `t_personne_ibfk_2` FOREIGN KEY (`fk_adresse`) REFERENCES `t_adresse` (`id_adresse`),
  CONSTRAINT `t_personne_ibfk_3` FOREIGN KEY (`fk_num_tel`) REFERENCES `t_num_tel` (`id_num_tel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_personne`
--

LOCK TABLES `t_personne` WRITE;
/*!40000 ALTER TABLE `t_personne` DISABLE KEYS */;
INSERT INTO `t_personne` VALUES (1,'bilal','janit',1,1,1),(3,'darria','bara',2,2,NULL);
/*!40000 ALTER TABLE `t_personne` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-09 19:30:57
