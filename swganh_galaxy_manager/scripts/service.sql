-- ---------------------------------------------------------------------------------------
-- This source file is part of SWG:ANH (Star Wars Galaxies - A New Hope - Server Emulator)
--
-- For more information, visit http://www.swganh.com
--
-- Copyright (c) 2006 - 2012 The SWG:ANH Team
-- ---------------------------------------------------------------------------------------
-- This library is free software; you can redistribute it and/or
-- modify it under the terms of the GNU Lesser General Public
-- License as published by the Free Software Foundation; either
-- version 2.1 of the License, or (at your option) any later version.
--
-- This library is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-- Lesser General Public License for more details.
--
-- You should have received a copy of the GNU Lesser General Public
-- License along with this library; if not, write to the Free Software
-- Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
-- ---------------------------------------------------------------------------------------

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

USE swganh_galaxy_manager;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `galaxy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `service_name` varchar(255) NOT NULL DEFAULT '',
  `service_type` varchar(255) NOT NULL DEFAULT '',
  `service_address` bigint(20) unsigned NOT NULL DEFAULT '0',
  `tcp_port` int(10) unsigned NOT NULL DEFAULT '0',
  `udp_port` int(10) unsigned NOT NULL DEFAULT '0',
  `ping_port` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `last_heartbeat` decimal(17,0) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `service_galaxy_id` (`galaxy_id`),
  CONSTRAINT `service_galaxy_id` FOREIGN KEY (`galaxy_id`) REFERENCES `galaxy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES
 (1,1,'ANH Character Service','character',2130706433,0,0,0,0,2,'20120812234537','2011-08-12 23:45:37','2011-08-12 23:45:37'),
 (2,1,'ANH Chat Service','chat',2130706433,0,0,0,0,2,'20120812234537','2011-08-12 23:45:37','2011-08-12 23:45:37'),
 (3,1,'ANH Social Service','social',2130706433,0,0,0,0,2,'20120812234537','2011-08-12 23:45:37','2011-08-12 23:45:37'),
 (4,1,'ANH Combat Service','combat',2130706433,0,0,0,0,2,'20120812234537','2011-08-12 23:45:37','2011-08-12 23:45:37'),
 (5,1,'ANH Command Service','command',2130706433,0,0,0,0,2,'20120812234537','2011-08-12 23:45:37','2011-08-12 23:45:37'),
 (6,1,'ANH Connection Service','connection',2130706433,0,44463,44462,0,2,'20120812234537','2011-08-12 23:45:37','2011-08-12 23:45:37'),
 (7,1,'ANH Galaxy Service','galaxy',2130706433,0,0,0,0,2,'20120812234537','2011-08-12 23:45:37','2011-08-12 23:45:37'),
 (8,1,'ANH Login Service','login',2130706433,0,44453,0,0,2,'20120812234537','2011-08-12 23:45:37','2011-08-12 23:45:37'),
 (9,1,'ANH Player Service','player',2130706433,0,0,0,0,2,'20120812234537','2011-08-12 23:45:37','2011-08-12 23:45:37'),
 (10,1,'ANH Simulation Service','simulation',2130706433,0,0,0,0,2,'20120812234537','2011-08-12 23:45:37','2011-08-12 23:45:37');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-27  9:44:09
