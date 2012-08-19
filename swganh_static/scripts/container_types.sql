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
-- Table structure for table `container_types`
--

DROP TABLE IF EXISTS `container_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `container_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_string` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'unknown',
  `file` varchar(255) NOT NULL DEFAULT 'container_n',
  `details_file` varchar(255) NOT NULL DEFAULT 'container_detail',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_containers_objstr` (`object_string`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `container_types`
--

LOCK TABLES `container_types` WRITE;
/*!40000 ALTER TABLE `container_types` DISABLE KEYS */;
INSERT INTO `container_types` VALUES (1,'object/tangible/container/loot/shared_placable_loot_crate.iff','placable_loot_crate','container_name','container_detail'),
(2,'object/tangible/container/loot/shared_placable_loot_crate_trashpile.iff','placable_loot_crate_trashpile','container_name','container_detail'),
(3,'object/tangible/container/loot/shared_placable_loot_crate_skeleton_bith.iff','placable_loot_crate_skeleton','container_name','container_detail'),
(4,'object/tangible/container/loot/shared_placable_loot_crate_skeleton_human.iff','placable_loot_crate_skeleton','container_name','container_detail'),
(5,'object/tangible/container/loot/shared_placable_loot_crate_skeleton_ithorian.iff','placable_loot_crate_skeleton','container_name','container_detail'),
(6,'object/tangible/container/drum/shared_warren_reactor_core.iff','treasure_drum','container_name','container_detail'),
(7,'object/tangible/container/loot/shared_placable_loot_crate_tech_armoire.iff','tech_armoire','container_name','container_detail'),
(8,'object/tangible/container/loot/shared_placable_loot_crate_tech_chest.iff','tech_chest','container_name','container_detail'),
(9,'object/tangible/container/drum/shared_warren_drum_skeleton.iff','warren_skeleton','container_name','container_detail'),
(10,'object/tangible/container/drum/shared_warren_drum_loot.iff','treasure_drum','container_name','container_detail'),
(11,'object/tangible/container/drum/shared_tatt_drum_1.iff','tatt_drum','container_name','container_detail'),
(12,'object/tangible/container/drum/shared_warren_drum_tech_chest.iff','warren_tech_chest','container_name','container_detail'),
(13,'object/tangible/container/drum/shared_warren_drum_tech_armoire.iff','warren_tech_armoire','container_name','container_detail');
/*!40000 ALTER TABLE `container_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-18 22:39:41
