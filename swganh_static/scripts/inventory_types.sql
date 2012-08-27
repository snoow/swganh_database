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

USE swganh_static;

--
-- Table structure for table `inventory_types`
--

DROP TABLE IF EXISTS `inventory_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Inventory Type ID',
  `object_string` varchar(255) NOT NULL DEFAULT 'object/tangible/inventory/shared_character_inventory.iff' COMMENT 'Inventory Object String',
  `slots` int(11) unsigned NOT NULL DEFAULT '50' COMMENT 'Inventory Slots',
  `name` varchar(255) NOT NULL DEFAULT 'inventory' COMMENT 'Inventory Name',
  `file` varchar(255) NOT NULL DEFAULT 'item_n' COMMENT 'Inventory File',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Inventory Types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_types`
--

LOCK TABLES `inventory_types` WRITE;
/*!40000 ALTER TABLE `inventory_types` DISABLE KEYS */;
INSERT INTO `inventory_types` VALUES (1,'object/tangible/inventory/shared_character_inventory.iff',80,'inventory','item_n'),
(2,'object/tangible/inventory/shared_creature_inventory.iff',50,'inventory','item_n'),
(3,'object/tangible/inventory/shared_creature_inventory_1.iff',50,'inventory','item_n'),
(4,'object/tangible/inventory/shared_creature_inventory_2.iff',50,'inventory','item_n'),
(5,'object/tangible/inventory/shared_creature_inventory_3.iff',50,'inventory','item_n'),
(6,'object/tangible/inventory/shared_creature_inventory_4.iff',50,'inventory','item_n'),
(7,'object/tangible/inventory/shared_creature_inventory_5.iff',50,'inventory','item_n'),
(8,'object/tangible/inventory/shared_creature_inventory_6.iff',50,'inventory','item_n'),
(9,'object/tangible/inventory/shared_vendor_inventory.iff',50,'inventory','item_n'),
(10,'object/tangible/inventory/shared_lightsaber_inventory_training.iff',50,'inventory','item_n'),
(11,'object/tangible/inventory/shared_lightsaber_inventory_1.iff',50,'inventory','item_n'),
(12,'object/tangible/inventory/shared_lightsaber_inventory_2.iff',50,'inventory','item_n'),
(13,'object/tangible/inventory/shared_lightsaber_inventory_3.iff',50,'inventory','item_n'),
(14,'object/tangible/inventory/shared_lightsaber_inventory_4.iff',50,'inventory','item_n');
/*!40000 ALTER TABLE `inventory_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-27  9:42:09
