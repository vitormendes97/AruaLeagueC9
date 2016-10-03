-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cartola_arua
-- ------------------------------------------------------
-- Server version	5.5.50

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clube`
--

DROP TABLE IF EXISTS `clube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clube` (
  `id_clube` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `liga` int(10) unsigned NOT NULL,
  `nome_clube` varchar(30) NOT NULL,
  `team_picture` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_clube`),
  KEY `FK_LIGA` (`liga`),
  CONSTRAINT `FK_LIGA` FOREIGN KEY (`liga`) REFERENCES `liga` (`id_liga`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clube`
--

LOCK TABLES `clube` WRITE;
/*!40000 ALTER TABLE `clube` DISABLE KEYS */;
INSERT INTO `clube` VALUES (1,2,'Arsenal','arsenal60x60.png'),(2,2,'Chelsea','chelsea60x60.png'),(3,2,'Liverpool','liverpool_fc_60x60.png'),(4,2,'Man City','manchester_city_60x60.png'),(5,2,'Man United','manchester_united_60x60.png'),(6,2,'New Castle','newCastle60x60.png'),(7,2,'Tottenham','tottenham_60x60.png'),(8,1,'Arsenal','arsenal60x60.png'),(9,1,'Chelsea','chelsea60x60.png'),(10,1,'Liverpool','liverpool_fc_60x60.png'),(11,1,'Man City','manchester_city_60x60.png'),(12,1,'Man United','manchester_united_60x60.png'),(13,1,'New Castle','newCastle60x60.png'),(14,1,'Tottenham','tottenham_60x60.png');
/*!40000 ALTER TABLE `clube` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-04 14:56:21
