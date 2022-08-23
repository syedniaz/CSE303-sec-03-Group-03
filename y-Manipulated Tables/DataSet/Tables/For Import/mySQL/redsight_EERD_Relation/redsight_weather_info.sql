CREATE DATABASE  IF NOT EXISTS `redsight` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `redsight`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: redsight
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `weather_info`
--

DROP TABLE IF EXISTS `weather_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_info` (
  `wInfoID` varchar(10) NOT NULL,
  `date` text,
  `time` text,
  `season` text,
  `pm25` text,
  `rainPrec` text,
  `cloudCover` text,
  `windSpeed` text,
  `relHumid` text,
  `visibility` text,
  `mean` text,
  `routeID` varchar(10) DEFAULT NULL,
  `locID` varchar(10) DEFAULT NULL,
  `stationID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`wInfoID`),
  KEY `stationInfo_idx` (`stationID`),
  KEY `locInfo_idx` (`locID`),
  KEY `routeIndo_idx` (`routeID`),
  CONSTRAINT `locInfo` FOREIGN KEY (`locID`) REFERENCES `location` (`locID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `routeIndo` FOREIGN KEY (`routeID`) REFERENCES `route` (`routeID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `stationInfo` FOREIGN KEY (`stationID`) REFERENCES `station` (`stationID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_info`
--

LOCK TABLES `weather_info` WRITE;
/*!40000 ALTER TABLE `weather_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `weather_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-24  0:10:45
