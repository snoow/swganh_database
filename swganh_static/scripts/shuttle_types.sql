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
-- Table structure for table `shuttle_types`
--

DROP TABLE IF EXISTS `shuttle_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuttle_types` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_string` char(255) NOT NULL DEFAULT 'object/creature/npc/theme_park/shared_player_shuttle.iff',
  `name` char(255) DEFAULT 'shuttle',
  `file` char(255) NOT NULL DEFAULT 'theme_park_name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuttle_types`
--

LOCK TABLES `shuttle_types` WRITE;
/*!40000 ALTER TABLE `shuttle_types` DISABLE KEYS */;
INSERT INTO `shuttle_types` VALUES (1,'object/creature/npc/theme_park/shared_player_shuttle.iff','shuttle','theme_park_name'),
(2,'object/creature/npc/theme_park/shared_lambda_shuttle.iff','shuttle','theme_park_name'),
(3,'object/creature/npc/theme_park/shared_player_transport.iff','transport','theme_park_name'),
(4,'object/creature/npc/theme_park/shared_player_transport_theed_hangar.iff','transport','theme_park_name');
/*!40000 ALTER TABLE `shuttle_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-18 22:39:43
