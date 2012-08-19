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
-- Table structure for table `datapad_types`
--

DROP TABLE IF EXISTS `datapad_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datapad_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_string` varchar(255) NOT NULL DEFAULT 'object/tangible/datapad/shared_character_datapad.iff',
  `name` varchar(255) NOT NULL DEFAULT 'datapad',
  `file` varchar(255) NOT NULL DEFAULT 'item_n',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_datapadtypes_objstr` (`object_string`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datapad_types`
--

LOCK TABLES `datapad_types` WRITE;
/*!40000 ALTER TABLE `datapad_types` DISABLE KEYS */;
INSERT INTO `datapad_types` VALUES (1,'object/tangible/datapad/shared_character_datapad.iff','datapad','item_n'),
(2,'object/tangible/datapad/shared_droid_datapad_1.iff','datapad','item_n'),
(3,'object/tangible/datapad/shared_droid_datapad_2.iff','datapad','item_n'),
(4,'object/tangible/datapad/shared_droid_datapad_3.iff','datapad','item_n'),
(5,'object/tangible/datapad/shared_droid_datapad_4.iff','datapad','item_n'),
(6,'object/tangible/datapad/shared_droid_datapad_5.iff','datapad','item_n'),
(7,'object/tangible/datapad/shared_droid_datapad_6.iff','datapad','item_n');
/*!40000 ALTER TABLE `datapad_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-18 22:39:42
