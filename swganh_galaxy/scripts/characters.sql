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

USE swganh_galaxy;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters` (
  `id` bigint(20) unsigned NOT NULL COMMENT 'Unique ID',
  `account_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Ties to the ACCOUNT Table',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'Character Firstname',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'Character Lastname',
  `gender` int(11) DEFAULT '0' COMMENT 'Character Gender',
  `bornyear` varchar(8) DEFAULT NULL COMMENT 'Year character was created',
  `jedistate` int(11) unsigned NOT NULL DEFAULT '0',
  `race_id` int(11) unsigned DEFAULT '0' COMMENT 'Character Race',
  `galaxy_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Ties to the GALAXY Table',
  `planet_id` int(11) DEFAULT NULL COMMENT 'Current Planet - Defualt Corellia',
  `parent_id` bigint(20) unsigned DEFAULT '0' COMMENT 'Ties to ... (Cell)',
  `total_playtime` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Unique ID',
  `x` float(10,6) DEFAULT NULL COMMENT 'Character X Location',
  `y` float(10,6) DEFAULT NULL COMMENT 'Character Y Location',
  `z` float(10,6) DEFAULT NULL COMMENT 'Character Z Location',
  `oX` float(10,6) DEFAULT NULL COMMENT 'Character Cell X Location',
  `oY` float(10,6) DEFAULT NULL COMMENT 'Character Cell Y Location',
  `oZ` float(10,6) DEFAULT NULL COMMENT 'Character Cell Z Location',
  `oW` float(10,6) DEFAULT NULL COMMENT 'Character Cell Orientation',
  `deletiondate` date DEFAULT NULL COMMENT 'DATE to be deleted',
  `archived` int(11) unsigned DEFAULT '0' COMMENT '0 = active / 1 = scheduled to be deleted',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `character_galaxy_id` (`galaxy_id`),
  KEY `character_planet_id` (`planet_id`),
  KEY `character_race_id` (`race_id`),
  KEY `character_account_id` (`account_id`),
  CONSTRAINT `character_account_id` FOREIGN KEY (`account_id`) REFERENCES `swganh_galaxy_manager`.`account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `character_galaxy_id` FOREIGN KEY (`galaxy_id`) REFERENCES `swganh_galaxy_manager`.`galaxy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `character_planet_id` FOREIGN KEY (`planet_id`) REFERENCES `swganh_static`.`planet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `character_race` FOREIGN KEY (`race_id`) REFERENCES `swganh_static`.`race` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Characters';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-27  9:42:58
