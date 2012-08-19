-- MySQL dump 10.13  Distrib 5.1.61, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: swganh_static
-- ------------------------------------------------------
-- Server version	5.1.61

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

USE swganh_static;

--
-- Table structure for table `holoemote`
--

DROP TABLE IF EXISTS `holoemote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holoemote` (
  `id` int(10) NOT NULL DEFAULT '0' COMMENT 'Holoemote ID',
  `crc` int(10) unsigned NOT NULL COMMENT 'Holoemote CRC',
  `effect_id` int(10) unsigned NOT NULL COMMENT 'Holoemote Effect ID',
  `name` varchar(45) NOT NULL COMMENT 'Holoemote Name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Entertainer - HoloEmotes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holoemote`
--

LOCK TABLES `holoemote` WRITE;
/*!40000 ALTER TABLE `holoemote` DISABLE KEYS */;
INSERT INTO `holoemote` VALUES (1,0,0,'all'),(2,271843963,666,'champagne'),(3,1016410324,673,'beehive'),(4,1031957463,674,'rebel'),(5,1689610579,680,'imperial'),(6,1855276851,683,'blossom'),(7,2206631595,684,'hearts'),(8,2353730135,685,'hologlitter'),(9,2976881337,690,'technokitty'),(10,3751481095,692,'phonytail'),(11,3877296148,693,'haunted'),(12,3965423840,694,'sparky'),(13,3980353984,695,'bubblehead'),(14,3986851258,696,'holonotes'),(15,4220169270,699,'butterflies'),(16,4289766731,700,'brainstorm');
/*!40000 ALTER TABLE `holoemote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-18 21:34:20
