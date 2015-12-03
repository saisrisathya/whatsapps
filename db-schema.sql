-- MySQL dump 10.13  Distrib 5.6.25, for osx10.10 (x86_64)
--
-- Host: localhost    Database: rescue_mission
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `phone` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `timestamp` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES ('918124994446','#support food',1449168046),('918124994446','#support food',1449168299),('918124994446','#support food',1449168320),('918124994446','#support food',1449168386),('918754758134','#food',1449168886),('919629323672','#location 19.02236,72.84977 919629323672',1449171221),('919629323672','#food adayar',1449171403),('919629323672','#food Thiruvotriyur',1449171447),('919629323672-1449136345','##',1449172251),('919629323672-1449136345','#location 19.02235,72.84976 919629323672-1449136345',1449174203),('919629323672','#location 19.02236,72.84981 919629323672',1449174203),('919629323672-1449136345','#sos bhi rakhte hain',1449174203),('919629323672-1449136345','#food',1449174203),('919629323672-1449136345','#food Anna Nagar',1449174317),('919629323672-1449136345','#food Korattur',1449174422),('919629323672-1449136345','#feedback make the location work',1449174700),('919629323672-1449136345','#feedback you guys are awesome!',1449174782),('919629323672-1449136345','#like',1449174792),('919629323672-1449136345','#status Adayar',1449175081),('919629323672-1449136345','#location 12.93178,77.68938 919629323672-1449136345',1449175114),('919629323672-1449136345','#location 12.93178,77.68938 919629323672-1449136345',1449175120),('919629323672-1449136345','#location 12.93178,77.68938 919629323672-1449136345',1449175140),('919629323672-1449136345','#location 12.93178,77.68938 919629323672-1449136345',1449175230),('919629323672-1449136345','#location 12.93178,77.68938 919629323672-1449136345',1449175255),('919629323672-1449136345','#location 12.93178,77.68938 919629323672-1449136345',1449175310),('919629323672-1449136345','#like',1449175422),('919629323672-1449136345','#like',1449175434),('919629323672-1449136345','#location 12.93178,77.68938 919629323672-1449136345',1449175448);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `phone` varchar(255) DEFAULT NULL,
  `feedback` text,
  `timestamp` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('919629323672-1449136345','#feedback make the location work',1449174700),('919629323672-1449136345','#feedback you guys are awesome!',1449174782);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_available`
--

DROP TABLE IF EXISTS `food_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_available` (
  `phone_number` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_available`
--

LOCK TABLES `food_available` WRITE;
/*!40000 ALTER TABLE `food_available` DISABLE KEYS */;
INSERT INTO `food_available` VALUES ('8124994446','chennai'),('918124994446',' ');
/*!40000 ALTER TABLE `food_available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_needed`
--

DROP TABLE IF EXISTS `food_needed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_needed` (
  `phone_number` varchar(255) NOT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_needed`
--

LOCK TABLES `food_needed` WRITE;
/*!40000 ALTER TABLE `food_needed` DISABLE KEYS */;
INSERT INTO `food_needed` VALUES ('918754758134',1449168886,' '),('919629323672',1449171403,' '),('919629323672',1449171447,' '),('919629323672-1449136345',1449174203,' '),('919629323672-1449136345',1449174317,' '),('919629323672-1449136345',1449174422,' ');
/*!40000 ALTER TABLE `food_needed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_needed`
--

DROP TABLE IF EXISTS `help_needed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_needed` (
  `phone_number` varchar(255) NOT NULL,
  `timestamp` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_needed`
--

LOCK TABLES `help_needed` WRITE;
/*!40000 ALTER TABLE `help_needed` DISABLE KEYS */;
/*!40000 ALTER TABLE `help_needed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `phone` varchar(255) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES ('919629323672-1449136345',1449175140),('919629323672-1449136345',1449175230),('919629323672-1449136345',1449175255),('919629323672-1449136345',1449175310),('919629323672-1449136345',1449175422),('919629323672-1449136345',1449175434);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_available`
--

DROP TABLE IF EXISTS `money_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_available` (
  `phone_number` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_available`
--

LOCK TABLES `money_available` WRITE;
/*!40000 ALTER TABLE `money_available` DISABLE KEYS */;
/*!40000 ALTER TABLE `money_available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_needed`
--

DROP TABLE IF EXISTS `money_needed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_needed` (
  `phone_number` varchar(255) NOT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_needed`
--

LOCK TABLES `money_needed` WRITE;
/*!40000 ALTER TABLE `money_needed` DISABLE KEYS */;
/*!40000 ALTER TABLE `money_needed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sos`
--

DROP TABLE IF EXISTS `sos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sos` (
  `phone` varchar(255) DEFAULT NULL,
  `last_known_location` varchar(255) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sos`
--

LOCK TABLES `sos` WRITE;
/*!40000 ALTER TABLE `sos` DISABLE KEYS */;
INSERT INTO `sos` VALUES ('919629323672-1449136345','12.93178,77.68938',1449175448);
/*!40000 ALTER TABLE `sos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_available`
--

DROP TABLE IF EXISTS `transport_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport_available` (
  `phone_number` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_available`
--

LOCK TABLES `transport_available` WRITE;
/*!40000 ALTER TABLE `transport_available` DISABLE KEYS */;
/*!40000 ALTER TABLE `transport_available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_needed`
--

DROP TABLE IF EXISTS `transport_needed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport_needed` (
  `phone_number` varchar(255) NOT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_needed`
--

LOCK TABLES `transport_needed` WRITE;
/*!40000 ALTER TABLE `transport_needed` DISABLE KEYS */;
/*!40000 ALTER TABLE `transport_needed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `water_available`
--

DROP TABLE IF EXISTS `water_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `water_available` (
  `phone_number` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water_available`
--

LOCK TABLES `water_available` WRITE;
/*!40000 ALTER TABLE `water_available` DISABLE KEYS */;
/*!40000 ALTER TABLE `water_available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `water_needed`
--

DROP TABLE IF EXISTS `water_needed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `water_needed` (
  `phone_number` varchar(255) NOT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water_needed`
--

LOCK TABLES `water_needed` WRITE;
/*!40000 ALTER TABLE `water_needed` DISABLE KEYS */;
/*!40000 ALTER TABLE `water_needed` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-04  2:14:59
