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
-- Table structure for table `tabela`
--

DROP TABLE IF EXISTS `tabela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabela` (
  `id_tabela` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `liga` int(10) unsigned NOT NULL,
  `clube` int(10) unsigned NOT NULL,
  `pontos` int(10) unsigned DEFAULT '0',
  `vitoria` int(11) DEFAULT NULL,
  `empate` int(11) DEFAULT NULL,
  `derrota` int(11) DEFAULT NULL,
  `gol_pro` int(11) DEFAULT NULL,
  `gol_contra` int(11) DEFAULT NULL,
  `saldo_gol` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tabela`),
  KEY `FK_LIGA_ID` (`liga`),
  KEY `FK_CLUBE_ID` (`clube`),
  CONSTRAINT `FK_CLUBE_ID` FOREIGN KEY (`clube`) REFERENCES `clube` (`id_clube`),
  CONSTRAINT `FK_LIGA_ID` FOREIGN KEY (`liga`) REFERENCES `liga` (`id_liga`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela`
--

LOCK TABLES `tabela` WRITE;
/*!40000 ALTER TABLE `tabela` DISABLE KEYS */;
INSERT INTO `tabela` VALUES (1,1,12,10,3,1,1,14,9,5),(2,1,13,10,3,1,1,11,6,5),(3,1,8,9,3,0,2,16,11,5),(4,1,9,9,3,0,2,12,11,1),(5,1,14,7,2,1,2,9,10,-1),(6,1,10,6,2,0,4,14,19,-5),(7,1,11,1,0,1,4,9,19,-10);
/*!40000 ALTER TABLE `tabela` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-04 14:56:20
