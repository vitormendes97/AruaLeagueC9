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
-- Table structure for table `folga`
--

DROP TABLE IF EXISTS `folga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folga` (
  `id_folga` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clube` int(10) unsigned NOT NULL,
  `rodada` int(10) unsigned NOT NULL,
  `liga` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_folga`),
  KEY `FK_FOLGA` (`clube`),
  KEY `FK_RODADA_FOLGA` (`rodada`),
  KEY `FK_LIGA_FOLGA` (`liga`),
  CONSTRAINT `FK_FOLGA` FOREIGN KEY (`clube`) REFERENCES `clube` (`id_clube`),
  CONSTRAINT `FK_LIGA_FOLGA` FOREIGN KEY (`liga`) REFERENCES `liga` (`id_liga`),
  CONSTRAINT `FK_RODADA_FOLGA` FOREIGN KEY (`rodada`) REFERENCES `rodada` (`id_rodada`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folga`
--

LOCK TABLES `folga` WRITE;
/*!40000 ALTER TABLE `folga` DISABLE KEYS */;
INSERT INTO `folga` VALUES (1,7,1,2),(2,1,1,1);
/*!40000 ALTER TABLE `folga` ENABLE KEYS */;
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
