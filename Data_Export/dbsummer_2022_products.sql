CREATE DATABASE  IF NOT EXISTS `dbsummer_2022` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_romanian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbsummer_2022`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbsummer_2022
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `code` varchar(15) COLLATE utf8mb3_romanian_ci NOT NULL,
  `name` varchar(70) COLLATE utf8mb3_romanian_ci NOT NULL,
  `description` text COLLATE utf8mb3_romanian_ci NOT NULL,
  `stock` smallint NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_romanian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('24085','Paine 7 Seminte feliata','Este expresia perfectei imbinari intre aroma distincta data de semintele de in si susan si savoarea poruncitoare a macului, totul scaldat in familiara poveste pe care de atata vreme ne-o spune floarea soarelui.',30,9.75),('24216','Apa plata','Aqua carpatica apa minerala plata 1 l.',40,2.69),('28665','Baton Oreo','Ciocolata cu lapte alpin umpluta (35%) cu crema cu lapte cu aroma de vanilie si bucatele (15%) de biscuiti cu cacao.',10,1.54),('2939','Twix','Baton de biscuit (25%) si caramel (32%) invelit in ciocolata cu lapte (35%).',16,3.18),('70026','Ciocolata cu lapte','Schogetten - Ciocolata cu lapte 100g',10,3.49),('72924','Bomboane cu fructe','Bomboane gumate cu arome de fructe, in glazura crocanta de zahar Skittles.',20,1.79),('84532','Bicuiti cu mere','Delhaize - Biscuiti cu mere (umplutura 35%) 300g',10,7.69),('88381','Boromir Croissant','Croissant crema cu lapte',15,1.79),('92900','Iaurt grecesc','Olympus - Iaurt grecesc 10% grasime 350g',25,6.24),('94105','Musli Crunchy Choco','Musli crocant fara adaos de zahar, cu ciocolata, alune de padure si indulcitori derivati din stevie, bogat in fibre.',10,14.99),('96991','Fulgi de cereale Fitness','Fulgi de cereale integrale cu ciocolata 425g',12,15.19);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-27 17:28:26
