/*
---------------------------------------------------------------------------------------
This source file is part of SWG:ANH (Star Wars Galaxies - A New Hope - Server Emulator)

For more information, visit http://www.swganh.com

Copyright (c) 2006 - 2012 The SWG:ANH Team
---------------------------------------------------------------------------------------
This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
---------------------------------------------------------------------------------------
*/

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

--
-- Table structure for view `v_creatures`
--

DROP TABLE IF EXISTS `v_creatures`;
/*!50001 DROP VIEW IF EXISTS `v_creatures`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_creatures` (
  `id` bigint(20) unsigned,
  `parent_id` bigint(20),
  `musician_id` int(1),
  `credits_bank` bigint(20),
  `credits_cash` bigint(20),
  `posture` int(1),
  `faction_rank` int(11),
  `scale` int(11) unsigned,
  `battle_fatigue` int(11),
  `acceleration_base` float,
  `speed_base` float,
  `speed_modifier` float,
  `run_speed` float,
  `slope_modifier_angle` float,
  `slope_modifier_percent` float,
  `turn_radius` float,
  `walking_speed` float,
  `water_modifier_percent` float,
  `combat_level` int(1),
  `animation` varchar(9),
  `group_id` varchar(8),
  `guild_id` varchar(8),
  `weapon_id` varchar(9),
  `mood_id` int(11) unsigned,
  `performance_id` int(1),
  `disguise_id` int(1),
  `health_wounds` int(11),
  `strength_wounds` int(11),
  `constitution_wounds` int(11),
  `action_wounds` int(11),
  `quickness_wounds` int(11),
  `stamina_wounds` int(11),
  `mind_wounds` int(11),
  `focus_wounds` int(11),
  `willpower_wounds` int(11),
  `health_encumberance` int(1),
  `strength_encumberance` int(1),
  `constitution_encumberance` int(1),
  `action_encumberance` int(1),
  `quickness_encumberance` int(1),
  `stamina_encumberance` int(1),
  `mind_encumberance` int(1),
  `focus_encumberance` int(1),
  `willpower_encumberance` int(1),
  `health_current` int(11),
  `strength_current` int(11),
  `constitution_current` int(11),
  `action_current` int(11),
  `quickness_current` int(11),
  `stamina_current` int(11),
  `mind_current` int(11),
  `focus_current` int(11),
  `willpower_current` int(11),
  `health_max` int(11),
  `strength_max` int(11),
  `constitution_max` int(11),
  `action_max` int(11),
  `quickness_max` int(11),
  `stamina_max` int(11),
  `mind_max` int(11),
  `focus_max` int(11),
  `willpower_max` int(11),
  `customization` blob,
  `options_bitmask` int(11),
  `incap_timer` int(1),
  `condition_damage` int(1),
  `condition_max` int(1),
  `is_static` int(1),
  `planet_id` int(11),
  `x` float,
  `y` float,
  `z` float,
  `oX` float,
  `oY` float,
  `oZ` float,
  `oW` float,
  `complexity` int(1),
  `volume` int(1),
  `custom_name` varchar(81),
  `object_template_id` int(11) unsigned,
  `stf_name_file_id` int(11),
  `stf_name_string_id` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

USE `swganh_galaxy`;

--
-- Final view structure for view `v_creatures`
--

/*!50001 DROP TABLE IF EXISTS `v_creatures`*/;
/*!50001 DROP VIEW IF EXISTS `v_creatures`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`snow`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_creatures` AS select `characters`.`id` AS `id`,`characters`.`parent_id` AS `parent_id`,0 AS `musician_id`,`character_credits`.`credits_bank` AS `credits_bank`,`character_credits`.`credits_cash` AS `credits_cash`,0 AS `posture`,`character_attributes`.`faction_rank` AS `faction_rank`,`character_appearance`.`scale` AS `scale`,`character_attributes`.`battle_fatigue` AS `battle_fatigue`,`character_attributes`.`acceleration_base` AS `acceleration_base`,`character_attributes`.`speed_base` AS `speed_base`,`character_attributes`.`speed_modifier` AS `speed_modifier`,`character_attributes`.`run_speed` AS `run_speed`,`character_attributes`.`slope_modifier_angle` AS `slope_modifier_angle`,`character_attributes`.`slope_modifier_percent` AS `slope_modifier_percent`,`character_attributes`.`turn_radius` AS `turn_radius`,`character_attributes`.`walking_speed` AS `walking_speed`,`character_attributes`.`water_modifier_percent` AS `water_modifier_percent`,0 AS `combat_level`,'animation' AS `animation`,'group_id' AS `group_id`,'guild_id' AS `guild_id`,'weapon_id' AS `weapon_id`,`character_appearance`.`mood_id` AS `mood_id`,0 AS `performance_id`,0 AS `disguise_id`,`character_attributes`.`health_wounds` AS `health_wounds`,`character_attributes`.`strength_wounds` AS `strength_wounds`,`character_attributes`.`constitution_wounds` AS `constitution_wounds`,`character_attributes`.`action_wounds` AS `action_wounds`,`character_attributes`.`quickness_wounds` AS `quickness_wounds`,`character_attributes`.`stamina_wounds` AS `stamina_wounds`,`character_attributes`.`mind_wounds` AS `mind_wounds`,`character_attributes`.`focus_wounds` AS `focus_wounds`,`character_attributes`.`willpower_wounds` AS `willpower_wounds`,0 AS `health_encumberance`,0 AS `strength_encumberance`,0 AS `constitution_encumberance`,0 AS `action_encumberance`,0 AS `quickness_encumberance`,0 AS `stamina_encumberance`,0 AS `mind_encumberance`,0 AS `focus_encumberance`,0 AS `willpower_encumberance`,`character_attributes`.`health_current` AS `health_current`,`character_attributes`.`strength_current` AS `strength_current`,`character_attributes`.`constitution_current` AS `constitution_current`,`character_attributes`.`action_current` AS `action_current`,`character_attributes`.`quickness_current` AS `quickness_current`,`character_attributes`.`stamina_current` AS `stamina_current`,`character_attributes`.`mind_current` AS `mind_current`,`character_attributes`.`focus_current` AS `focus_current`,`character_attributes`.`willpower_current` AS `willpower_current`,`character_attributes`.`health_max` AS `health_max`,`character_attributes`.`strength_max` AS `strength_max`,`character_attributes`.`constitution_max` AS `constitution_max`,`character_attributes`.`action_max` AS `action_max`,`character_attributes`.`quickness_max` AS `quickness_max`,`character_attributes`.`stamina_max` AS `stamina_max`,`character_attributes`.`mind_max` AS `mind_max`,`character_attributes`.`focus_max` AS `focus_max`,`character_attributes`.`willpower_max` AS `willpower_max`,`character_appearance`.`customization` AS `customization`,`character_attributes`.`options_bitmask` AS `options_bitmask`,0 AS `incap_timer`,0 AS `condition_damage`,0 AS `condition_max`,0 AS `is_static`,`characters`.`planet_id` AS `planet_id`,`characters`.`x` AS `x`,`characters`.`y` AS `y`,`characters`.`z` AS `z`,`characters`.`oX` AS `oX`,`characters`.`oY` AS `oY`,`characters`.`oZ` AS `oZ`,`characters`.`oW` AS `oW`,0 AS `complexity`,0 AS `volume`,concat(`characters`.`firstname`,' ',`characters`.`lastname`) AS `custom_name`,`character_attributes`.`object_template_id` AS `object_template_id`,`character_attributes`.`stf_name_file_id` AS `stf_name_file_id`,`character_attributes`.`stf_name_string_id` AS `stf_name_string_id` from (((`characters` left join `character_appearance` on((`characters`.`id` = `character_appearance`.`character_id`))) left join `character_attributes` on((`characters`.`id` = `character_attributes`.`character_id`))) left join `character_credits` on((`characters`.`id` = `character_credits`.`character_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;