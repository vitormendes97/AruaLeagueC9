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
-- Table structure for table `jogo`
--

DROP TABLE IF EXISTS `jogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jogo` (
  `id_jogo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `home` int(10) unsigned NOT NULL,
  `away` int(10) unsigned NOT NULL,
  `data_jogo` date NOT NULL,
  `rodada` int(10) unsigned NOT NULL,
  `local_jogo` varchar(30) NOT NULL,
  `liga` int(10) unsigned NOT NULL,
  `horario` varchar(10) NOT NULL,
  PRIMARY KEY (`id_jogo`),
  KEY `FK_HOME` (`home`),
  KEY `FK_AWAY` (`away`),
  KEY `FK_RODADA` (`rodada`),
  KEY `FK_LIGA_JOGO` (`liga`),
  CONSTRAINT `FK_AWAY` FOREIGN KEY (`away`) REFERENCES `clube` (`id_clube`),
  CONSTRAINT `FK_HOME` FOREIGN KEY (`home`) REFERENCES `clube` (`id_clube`),
  CONSTRAINT `FK_LIGA_JOGO` FOREIGN KEY (`liga`) REFERENCES `liga` (`id_liga`),
  CONSTRAINT `FK_RODADA` FOREIGN KEY (`rodada`) REFERENCES `rodada` (`id_rodada`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogo`
--

LOCK TABLES `jogo` WRITE;
/*!40000 ALTER TABLE `jogo` DISABLE KEYS */;
INSERT INTO `jogo` VALUES (1,1,2,'2016-07-07',1,'Campo da Chacara',2,'7:00'),(2,3,4,'2016-07-07',1,'Campo da Chacara',2,'8:00'),(3,5,6,'2016-07-08',1,'Campo da Chacara',1,'9:00');
/*!40000 ALTER TABLE `jogo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-04 14:56:23
