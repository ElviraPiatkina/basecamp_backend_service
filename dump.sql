-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tvshows
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `episode`
--

DROP TABLE IF EXISTS `episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `episode` (
  `id_episode` int(11) NOT NULL AUTO_INCREMENT,
  `Episode_name` varchar(100) NOT NULL,
  `Episode_number` int(11) NOT NULL,
  `id_show` int(11) NOT NULL,
  `id_season` int(11) NOT NULL,
  `Long_description` varchar(500) NOT NULL,
  `Short_description` varchar(100) NOT NULL,
  `Featured_image` blob NOT NULL,
  `Date_of_publish` datetime NOT NULL,
  `Last_modified_date` datetime NOT NULL,
  `Video_fragment_url` varchar(255) NOT NULL,
  `Users_rating` float NOT NULL,
  PRIMARY KEY (`id_episode`),
  UNIQUE KEY `Episode_name_UNIQUE` (`Episode_name`),
  KEY `id_season_idx` (`id_season`),
  KEY `id_show_FK_idx` (`id_show`),
  CONSTRAINT `id_season_FK` FOREIGN KEY (`id_season`) REFERENCES `season` (`id_season`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_show_FK` FOREIGN KEY (`id_show`) REFERENCES `show` (`id_show`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episode`
--

LOCK TABLES `episode` WRITE;
/*!40000 ALTER TABLE `episode` DISABLE KEYS */;
/*!40000 ALTER TABLE `episode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `season` (
  `id_season` int(11) NOT NULL AUTO_INCREMENT,
  `Season_name` varchar(100) NOT NULL,
  `Season_number` int(11) NOT NULL,
  `id_show` int(11) NOT NULL,
  `Long_description` varchar(500) NOT NULL,
  `Short_description` varchar(100) NOT NULL,
  `Featured_image` blob NOT NULL,
  `Date_of_publish` datetime NOT NULL,
  `Last_modified_date` datetime NOT NULL,
  `Video_fragment_url` varchar(255) NOT NULL,
  `Users_rating` float NOT NULL,
  PRIMARY KEY (`id_season`),
  UNIQUE KEY `Season_name_UNIQUE` (`Season_name`),
  KEY `id_show_idx` (`id_show`),
  CONSTRAINT `id_show_FK_` FOREIGN KEY (`id_show`) REFERENCES `show` (`id_show`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show`
--

DROP TABLE IF EXISTS `show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `show` (
  `id_show` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Subtitle` varchar(200) NOT NULL,
  `Date_of_start` datetime NOT NULL,
  `Poster_image` blob NOT NULL,
  `Long_Description` varchar(500) NOT NULL,
  `Short_description` varchar(150) NOT NULL,
  `Priority` tinyint(4) NOT NULL,
  `Date_of_publish` datetime NOT NULL,
  `Last_modified_date` datetime NOT NULL,
  `Video_fragment_url` varchar(255) NOT NULL,
  `Users_rating` float NOT NULL,
  PRIMARY KEY (`id_show`),
  UNIQUE KEY `Title_UNIQUE` (`Title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show`
--

LOCK TABLES `show` WRITE;
/*!40000 ALTER TABLE `show` DISABLE KEYS */;
/*!40000 ALTER TABLE `show` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-13 11:33:48
