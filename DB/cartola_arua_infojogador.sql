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
-- Table structure for table `infojogador`
--

DROP TABLE IF EXISTS `infojogador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infojogador` (
  `id_info` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `idade` int(10) unsigned NOT NULL,
  `posicao` varchar(10) NOT NULL,
  `picture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_info`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infojogador`
--

LOCK TABLES `infojogador` WRITE;
/*!40000 ALTER TABLE `infojogador` DISABLE KEYS */;
INSERT INTO `infojogador` VALUES (1,'Lucas Lima',23,'MEIA','Santos/Meia/lucaslima.png'),(2,'Gabriel Barbosa',20,'ATACANTE','Santos/Atacante/gabigol.png'),(3,'Arrascaeta',25,'MEIA','Santos/Meia/Arrascaeta.png'),(4,'Paolo Guerreiro',28,'ATACANTE','Santos/Meia/guerreiro.png'),(5,'Cleiton Xavier',26,'MEIA','Santos/Meia/cleiton_xavier.png'),(6,'Robinho',31,'Atacante','Santos/Meia/robinho.png'),(7,'Vanderlei',26,'Goleiro','Santos/Goleiro/vanderlei.png');
/*!40000 ALTER TABLE `infojogador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-04 14:56:22
