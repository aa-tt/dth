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
-- Table structure for table `additionalchannel`
--

DROP TABLE IF EXISTS `additionalchannel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additionalchannel` (
  `channel_no` int(11) NOT NULL DEFAULT '0',
  `customer_no` int(11) NOT NULL DEFAULT '0',
  `fromdate` datetime DEFAULT NULL,
  `tilldate` datetime DEFAULT NULL,
  PRIMARY KEY (`channel_no`,`customer_no`),
  KEY `FK59F15AFC3432354D` (`customer_no`),
  KEY `FK59F15AFC17B94E33` (`channel_no`),
  CONSTRAINT `FK3v8frq6oyhb2wtpu0by0axp04` FOREIGN KEY (`customer_no`) REFERENCES `customer` (`customerid`),
  CONSTRAINT `FK59F15AFC17B94E33` FOREIGN KEY (`channel_no`) REFERENCES `channel` (`channelno`),
  CONSTRAINT `FK59F15AFC3432354D` FOREIGN KEY (`customer_no`) REFERENCES `customer` (`customerid`),
  CONSTRAINT `FKe0qfrgyxymctkvx52qjs3f1hh` FOREIGN KEY (`channel_no`) REFERENCES `channel` (`channelno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additionalchannel`
--

LOCK TABLES `additionalchannel` WRITE;
/*!40000 ALTER TABLE `additionalchannel` DISABLE KEYS */;
INSERT INTO `additionalchannel` VALUES (4,1,'2016-08-08 23:40:42','2016-08-08 23:40:42');
/*!40000 ALTER TABLE `additionalchannel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-07 21:08:30
