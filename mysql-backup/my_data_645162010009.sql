-- MySQL dump 10.13  Distrib 5.7.39, for Linux (x86_64)
--
-- Host: localhost    Database: CT519_Movie
-- ------------------------------------------------------
-- Server version	5.7.39-0ubuntu0.18.04.2

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
-- Current Database: `CT519_Movie`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `CT519_Movie` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `CT519_Movie`;

--
-- Table structure for table `Movie`
--

DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Code` tinyint(4) NOT NULL,
  `Director` varchar(50) NOT NULL,
  `Show_date` datetime NOT NULL,
  `Trailler` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

LOCK TABLES `Movie` WRITE;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (1,'Thor:Love and Thunder',7,'Taika Waititi','2022-07-23 00:00:00','https://www.youtube.com/watch?v=Go8nTmfrQd8'),(2,'Top GunMaverick',6,'Joseph Kosinski','2022-04-28 00:00:00','https://www.youtube.com/watch?v=y1vRDv7ngcQ'),(3,'Doctor Strang in the Multiverse of Madness',7,'Sam Raimi','2022-05-02 00:00:00','https://www.youtube.com/watch?v=mvRxgOX7Kes'),(4,'Hannibal The Silence of the Lambs',5,'Jonathan Demme','1991-01-30 00:00:00','https://www.youtube.com/watch?v=s3nIw30hn4U');
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie_Name`
--

DROP TABLE IF EXISTS `Movie_Name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie_Name` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(200) NOT NULL,
  `Director` varchar(100) NOT NULL,
  `Type` char(1) NOT NULL,
  `Tailer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie_Name`
--

LOCK TABLES `Movie_Name` WRITE;
/*!40000 ALTER TABLE `Movie_Name` DISABLE KEYS */;
INSERT INTO `Movie_Name` VALUES (1,'Top Gun Maverick','John Braaaa','1','https://www.youtube.com/watch?v=s3nIw30hn4U');
/*!40000 ALTER TABLE `Movie_Name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie_Type`
--

DROP TABLE IF EXISTS `Movie_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie_Type` (
  `Type` char(1) NOT NULL,
  `Detail` varchar(200) NOT NULL,
  PRIMARY KEY (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie_Type`
--

LOCK TABLES `Movie_Type` WRITE;
/*!40000 ALTER TABLE `Movie_Type` DISABLE KEYS */;
INSERT INTO `Movie_Type` VALUES ('1','Action-Drama');
/*!40000 ALTER TABLE `Movie_Type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-04 16:07:24
