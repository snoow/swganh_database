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
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` bigint(20) unsigned NOT NULL COMMENT 'Item ID',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Owner ID',
  `item_family` int(11) unsigned DEFAULT '5' COMMENT 'Item Family ID',
  `item_type` int(11) unsigned NOT NULL DEFAULT '1' COMMENT 'Item Type ID',
  `privateowner_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `oX` float NOT NULL DEFAULT '0',
  `oY` float NOT NULL DEFAULT '0',
  `oZ` float NOT NULL DEFAULT '0',
  `oW` float NOT NULL DEFAULT '0',
  `planet_id` int(2) NOT NULL DEFAULT '0',
  `customName` char(255) DEFAULT NULL COMMENT 'Item Custom Name',
  `maxCondition` int(11) unsigned NOT NULL DEFAULT '100' COMMENT 'Item Condition MAX',
  `currentCondition` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Condition Current',
  `dynamicInt32` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Tool (DO NOT REMOVE)',
  PRIMARY KEY (`id`),
  KEY `item_family_id` (`item_family`),
  KEY `item_type_id` (`item_type`),
  CONSTRAINT `item_family_id` FOREIGN KEY (`item_family`) REFERENCES `swganh_static`.`item_families` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_type_id` FOREIGN KEY (`item_type`) REFERENCES `swganh_static`.`item_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-27  9:42:58
