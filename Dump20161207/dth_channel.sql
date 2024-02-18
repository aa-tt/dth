CREATE DATABASE  IF NOT EXISTS `dth` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dth`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: dth
-- ------------------------------------------------------
-- Server version	5.6.19

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
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel` (
  `channelno` int(11) NOT NULL AUTO_INCREMENT,
  `channelname` varchar(255) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  PRIMARY KEY (`channelno`),
  KEY `FK2C0B7D039D1D2CD` (`packageid`),
  CONSTRAINT `FK2C0B7D039D1D2CD` FOREIGN KEY (`packageid`) REFERENCES `package` (`packageid`),
  CONSTRAINT `FK9m8xxeoas9geop2f3r8bwfaf3` FOREIGN KEY (`packageid`) REFERENCES `package` (`packageid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT INTO `channel` VALUES (1,'Channel-114',1),(2,'Channel-260',1),(3,'Channel-237',1),(4,'Channel-191',2),(5,'Channel-13',2),(6,'Channel-15',2),(7,'Channel-112',3),(8,'Channel-273',3),(9,'Channel-13',3),(10,'Channel-291',4),(11,'Channel-83',4),(12,'Channel-213',4),(13,'Channel-240',5),(14,'Channel-127',5),(15,'Channel-148',5),(16,'Channel-128',6),(17,'Channel-135',6),(18,'Channel-267',6);
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-07 21:08:31
