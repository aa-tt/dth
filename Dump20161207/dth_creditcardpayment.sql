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
-- Table structure for table `creditcardpayment`
--

DROP TABLE IF EXISTS `creditcardpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditcardpayment` (
  `creditcardno` varchar(20) DEFAULT NULL,
  `expirymonth` varchar(15) DEFAULT NULL,
  `expiryyear` int(11) DEFAULT NULL,
  `creditcardpaymentid` int(11) NOT NULL,
  PRIMARY KEY (`creditcardpaymentid`),
  KEY `FK32E6145D41924EF1` (`creditcardpaymentid`),
  CONSTRAINT `FK32E6145D41924EF1` FOREIGN KEY (`creditcardpaymentid`) REFERENCES `payment` (`paymentid`),
  CONSTRAINT `FK7teqce5yg4uok0kmt8n6r01` FOREIGN KEY (`creditcardpaymentid`) REFERENCES `payment` (`paymentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditcardpayment`
--

LOCK TABLES `creditcardpayment` WRITE;
/*!40000 ALTER TABLE `creditcardpayment` DISABLE KEYS */;
INSERT INTO `creditcardpayment` VALUES ('CC-226','January',2033,2),('CC-393','January',2068,3),('CC-90','January',2020,5),('CC-623','January',2057,6);
/*!40000 ALTER TABLE `creditcardpayment` ENABLE KEYS */;
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
