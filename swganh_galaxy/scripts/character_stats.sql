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
-- Table structure for table `character_stats`
--

DROP TABLE IF EXISTS `character_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_stats` (
  `character_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character ID',
  `health_max` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Health Max',
  `strength_max` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Strength Max',
  `constitution_max` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Constitution Max',
  `action_max` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Action Max',
  `quickness_max` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Quickness Max',
  `stamina_max` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Stamina Max',
  `mind_max` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Mind Max',
  `focus_max` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Focus Max',
  `willpower_max` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Willpower Max',
  `health_current` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Health Fill',
  `strength_current` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Strength Fill',
  `constitution_current` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Constitution Fill',
  `action_current` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Action Fill',
  `quickness_current` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Quickness Fill',
  `stamina_current` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Stamina Fill',
  `mind_current` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Mind Fill',
  `focus_current` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Focus Fill',
  `willpower_current` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Willpower Fill',
  `health_wounds` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Health Wounds',
  `strength_wounds` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Strength Wounds',
  `constitution_wounds` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Constitution Wounds',
  `action_wounds` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Action Wounds',
  `quickness_wounds` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Quickness Wounds',
  `stamina_wounds` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Stamina wounds',
  `mind_wounds` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Mind wounds',
  `focus_wounds` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Focus Wounds',
  `willpower_wounds` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Willpower Wounds',
  `force_max` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Force Max',
  `force_current` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Character - Force Current',
  KEY `stats_character_id` (`character_id`),
  CONSTRAINT `stats_character_id` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Character Stats (HAM)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_stats`
--

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-27  9:42:58
