-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

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
-- Table structure for table `spielkonsole`
--

DROP TABLE IF EXISTS `spielkonsole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spielkonsole` (
  `SpielkonsoleID` int(11) NOT NULL,
  `Bezeichnung` varchar(10) DEFAULT NULL,
  `Festplattenspeicher` int(11) DEFAULT NULL,
  `Erscheinungsjahr` int(11) DEFAULT NULL,
  `HerstellerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SpielkonsoleID`),
  KEY `SpielkonsoleHersteller` (`HerstellerID`),
  CONSTRAINT `SpielkonsoleHersteller` FOREIGN KEY (`HerstellerID`) REFERENCES `hersteller` (`HerstellerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spielkonsole`
--

LOCK TABLES `spielkonsole` WRITE;
/*!40000 ALTER TABLE `spielkonsole` DISABLE KEYS */;
INSERT INTO `spielkonsole` VALUES (1,'PS3',80,2007,1),(2,'PS4',500,2013,1),(3,'Xbox One',500,2013,2),(4,'Switch',32,2017,3);
/*!40000 ALTER TABLE `spielkonsole` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-15 16:15:38
