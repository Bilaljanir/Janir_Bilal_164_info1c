-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: MACCAUD_OLIVIER_INFO1X_FILMS_164_2023

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS JANIR_BILAL_INFO1C_BUDGET_164_2023;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS JANIR_BILAL_INFO1C_BUDGET_164_2023;

-- Utilisation de cette base de donnée

USE JANIR_BILAL_INFO1C_BUDGET_164_2023;


DROP TABLE IF EXISTS `t_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_categories` (
  `id_categorie` int NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_categories`
--

LOCK TABLES `t_categories` WRITE;
/*!40000 ALTER TABLE `t_categories` DISABLE KEYS */;
INSERT INTO `t_categories` VALUES (1,'longement'),(2,'tetete'),(3,'rere'),(4,'bilal'),(5,'weqewe'),(6,'allslslldad');
/*!40000 ALTER TABLE `t_categories` ENABLE KEYS */;
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
  `date_depense` date NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id_depense`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_depense`
--

LOCK TABLES `t_depense` WRITE;
/*!40000 ALTER TABLE `t_depense` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_depense` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_categories_depense`
--

LOCK TABLES `t_categories_depense` WRITE;
/*!40000 ALTER TABLE `t_categories_depense` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_categories_depense` ENABLE KEYS */;
UNLOCK TABLES;



-- Dump completed on 2023-06-02  8:40:22
