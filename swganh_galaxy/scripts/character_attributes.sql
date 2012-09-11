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
-- Table structure for table `character_attributes`
--

DROP TABLE IF EXISTS `character_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_attributes` (
  `character_id` bigint(20) unsigned NOT NULL COMMENT 'Character ID',
  `health_current` int(11) NOT NULL,
  `strength_current` int(11) NOT NULL,
  `constitution_current` int(11) NOT NULL,
  `action_current` int(11) NOT NULL,
  `quickness_current` int(11) NOT NULL,
  `stamina_current` int(11) NOT NULL,
  `mind_current` int(11) NOT NULL,
  `focus_current` int(11) NOT NULL,
  `willpower_current` int(11) NOT NULL,
  `health_max` int(11) NOT NULL,
  `strength_max` int(11) NOT NULL,
  `constitution_max` int(11) NOT NULL,
  `action_max` int(11) NOT NULL,
  `quickness_max` int(11) NOT NULL,
  `stamina_max` int(11) NOT NULL,
  `mind_max` int(11) NOT NULL,
  `focus_max` int(11) NOT NULL,
  `willpower_max` int(11) NOT NULL,
  `health_wounds` int(11) NOT NULL DEFAULT '0',
  `strength_wounds` int(11) NOT NULL DEFAULT '0',
  `constitution_wounds` int(11) NOT NULL DEFAULT '0',
  `action_wounds` int(11) NOT NULL DEFAULT '0',
  `quickness_wounds` int(11) NOT NULL DEFAULT '0',
  `stamina_wounds` int(11) NOT NULL DEFAULT '0',
  `mind_wounds` int(11) NOT NULL DEFAULT '0',
  `focus_wounds` int(11) NOT NULL DEFAULT '0',
  `willpower_wounds` int(11) NOT NULL DEFAULT '0',
  `force_current` int(11) NOT NULL DEFAULT '0',
  `force_max` int(11) NOT NULL DEFAULT '0',
  `stomach_current` int(11) NOT NULL DEFAULT '0',
  `stomach_max` int(11) NOT NULL DEFAULT '0',
  `drink_current` int(11) NOT NULL DEFAULT '0',
  `drink_max` int(11) NOT NULL DEFAULT '0',
  `battle_fatigue` int(11) NOT NULL DEFAULT '0',
  `acceleration_base` float DEFAULT NULL,
  `acceleration_modifier` float DEFAULT NULL,
  `speed_base` float DEFAULT NULL,
  `speed_modifier` float DEFAULT NULL,
  `run_speed` float DEFAULT NULL,
  `slope_modifier_angle` float DEFAULT NULL,
  `slope_modifier_percent` float DEFAULT NULL,
  `turn_radius` float DEFAULT NULL,
  `walking_speed` float DEFAULT NULL,
  `water_modifier_percent` float DEFAULT NULL,
  `options_bitmask` int(11) NOT NULL DEFAULT '0',
  `faction_rank` int(11) DEFAULT NULL,
  `profession_tag` varchar(50) DEFAULT NULL,
  `current_language` int(11) DEFAULT NULL,
  `object_template_id` int(11) unsigned NOT NULL,
  `stf_name_file_id` int(11) DEFAULT NULL,
  `stf_name_string_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`character_id`),
  KEY `FK_character_attributes_swganh_static.object_models` (`object_template_id`),
  CONSTRAINT `FK_character_attributes_character_id` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_character_attributes_swganh_static.object_models` FOREIGN KEY (`object_template_id`) REFERENCES `swganh_static`.`object_models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_attributes`
--

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-27  9:42:58
