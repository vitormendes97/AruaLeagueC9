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
-- Table structure for table `estatistica_jogador`
--

DROP TABLE IF EXISTS `estatistica_jogador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estatistica_jogador` (
  `id_estatistica` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jogador` int(10) unsigned NOT NULL DEFAULT '0',
  `gol` int(10) unsigned DEFAULT '0',
  `assistencia` int(10) unsigned DEFAULT '0',
  `cartao_amarelo` int(10) unsigned NOT NULL DEFAULT '0',
  `cartao_vermelho` int(10) unsigned NOT NULL DEFAULT '0',
  `rodada` int(10) unsigned NOT NULL,
  `gol_sofrido` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_estatistica`),
  KEY `FK_P` (`jogador`),
  KEY `FK_R` (`rodada`),
  CONSTRAINT `FK_P` FOREIGN KEY (`jogador`) REFERENCES `jogador` (`id_player`),
  CONSTRAINT `FK_R` FOREIGN KEY (`rodada`) REFERENCES `rodada` (`id_rodada`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatistica_jogador`
--

LOCK TABLES `estatistica_jogador` WRITE;
/*!40000 ALTER TABLE `estatistica_jogador` DISABLE KEYS */;
INSERT INTO `estatistica_jogador` VALUES (1,1,4,0,0,0,1,NULL),(2,2,2,1,1,0,1,NULL),(3,3,3,1,2,0,1,NULL),(4,4,8,0,0,2,1,NULL),(5,5,1,2,4,0,1,NULL),(6,6,2,0,0,0,1,NULL),(7,4,2,0,0,0,2,NULL);
/*!40000 ALTER TABLE `estatistica_jogador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-04 14:56:24
