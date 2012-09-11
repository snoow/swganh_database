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
-- Table structure for view `v_players`
--

DROP TABLE IF EXISTS `v_players`;
/*!50001 DROP VIEW IF EXISTS `v_players`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_players` (
  `id` bigint(20) unsigned,
  `profession_tag` varchar(50),
  `born_date` date,
  `total_playtime` bigint(20) unsigned,
  `csr_tag` int(10) unsigned,
  `current_force` int(11),
  `max_force` int(11),
  `experimentation_enabled` bigint(20) unsigned,
  `crafting_stage` bigint(20) unsigned,
  `nearest_crafting_station` bigint(20) unsigned,
  `experimentation_points` bigint(20) unsigned,
  `accomplishment_counter` bigint(20) unsigned,
  `current_language` int(11),
  `current_stomach` int(11),
  `max_stomach` int(11),
  `current_drink` int(11),
  `max_drink` int(11),
  `jedi_state` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

USE swganh_galaxy;

--
-- Final view structure for view `v_players`
--

/*!50001 DROP TABLE IF EXISTS `v_players`*/;
/*!50001 DROP VIEW IF EXISTS `v_players`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`snow`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_players` AS select `characters`.`player_id` AS `id`,`character_attributes`.`profession_tag` AS `profession_tag`,`characters`.`born_date` AS `born_date`,`characters`.`total_playtime` AS `total_playtime`,`characters`.`csr` AS `csr_tag`,`character_attributes`.`force_current` AS `current_force`,`character_attributes`.`force_max` AS `max_force`,`character_flags`.`experimentation_enabled` AS `experimentation_enabled`,`character_flags`.`crafting_stage` AS `crafting_stage`,`character_flags`.`nearest_crafting_station` AS `nearest_crafting_station`,`character_flags`.`experimentation_points` AS `experimentation_points`,`character_flags`.`accomplishment_counter` AS `accomplishment_counter`,`character_attributes`.`current_language` AS `current_language`,`character_attributes`.`stomach_current` AS `current_stomach`,`character_attributes`.`stomach_max` AS `max_stomach`,`character_attributes`.`drink_current` AS `current_drink`,`character_attributes`.`drink_max` AS `max_drink`,`characters`.`jedi_state` AS `jedi_state` from (((`characters` left join `character_appearance` on((`characters`.`id` = `character_appearance`.`character_id`))) left join `character_attributes` on((`characters`.`id` = `character_attributes`.`character_id`))) left join `character_flags` on((`characters`.`id` = `character_flags`.`character_id`))) */;
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