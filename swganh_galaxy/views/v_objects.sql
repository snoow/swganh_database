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
-- Table structure for view `v_objects`
--

DROP TABLE IF EXISTS `v_objects`;
/*!50001 DROP VIEW IF EXISTS `v_objects`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_objects` (
  `id` bigint(20) unsigned,
  `planet_id` bigint(20),
  `parent_id` bigint(20),
  `iff_template_text` varchar(255),
  `x` float,
  `y` float,
  `z` float,
  `oX` float,
  `oY` float,
  `oZ` float,
  `oW` float,
  `complexity` bigint(20),
  `stf_name_file_id` varchar(255),
  `stf_name_string_id` varchar(255),
  `custom_name` varchar(255),
  `volume` bigint(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

USE `swganh_galaxy`;

--
-- Final view structure for view `v_objects`
--

/*!50001 DROP TABLE IF EXISTS `v_objects`*/;
/*!50001 DROP VIEW IF EXISTS `v_objects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`snow`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_objects` AS select `swganh_galaxy`.`characters`.`id` AS `id`,`swganh_galaxy`.`characters`.`planet_id` AS `planet_id`,`swganh_galaxy`.`characters`.`parent_id` AS `parent_id`,`swganh_static`.`objects`.`object_string` AS `iff_template_text`,`swganh_galaxy`.`characters`.`x` AS `x`,`swganh_galaxy`.`characters`.`y` AS `y`,`swganh_galaxy`.`characters`.`z` AS `z`,`swganh_galaxy`.`characters`.`oX` AS `oX`,`swganh_galaxy`.`characters`.`oY` AS `oY`,`swganh_galaxy`.`characters`.`oZ` AS `oZ`,`swganh_galaxy`.`characters`.`oW` AS `oW`,0 AS `complexity`,`swganh_static`.`objects`.`objectName_1` AS `stf_name_file_id`,`swganh_static`.`objects`.`objectName_2` AS `stf_name_string_id`,concat(`swganh_galaxy`.`characters`.`firstname`,' ',`swganh_galaxy`.`characters`.`lastname`) AS `custom_name`,0 AS `volume` from ((`swganh_galaxy`.`characters` left join `swganh_galaxy`.`character_attributes` on((`swganh_galaxy`.`characters`.`id` = `swganh_galaxy`.`character_attributes`.`character_id`))) left join `swganh_static`.`objects` on((`swganh_galaxy`.`character_attributes`.`object_template_id` = `swganh_static`.`objects`.`id`))) union select `swganh_galaxy`.`characters`.`player_id` AS `id`,`swganh_galaxy`.`characters`.`planet_id` AS `planet_id`,`swganh_galaxy`.`characters`.`id` AS `parent_id`,`swganh_static`.`objects`.`object_string` AS `iff_template_text`,`swganh_galaxy`.`characters`.`x` AS `x`,`swganh_galaxy`.`characters`.`y` AS `y`,`swganh_galaxy`.`characters`.`z` AS `z`,`swganh_galaxy`.`characters`.`oX` AS `oX`,`swganh_galaxy`.`characters`.`oY` AS `oY`,`swganh_galaxy`.`characters`.`oZ` AS `oZ`,`swganh_galaxy`.`characters`.`oW` AS `oW`,0 AS `complexity`,`swganh_static`.`objects`.`objectName_1` AS `stf_name_file_id`,`swganh_static`.`objects`.`objectName_2` AS `stf_name_string_id`,concat(`swganh_galaxy`.`characters`.`firstname`,' ',`swganh_galaxy`.`characters`.`lastname`) AS `custom_name`,0 AS `volume` from ((`swganh_galaxy`.`characters` left join `swganh_galaxy`.`character_attributes` on((`swganh_galaxy`.`characters`.`id` = `swganh_galaxy`.`character_attributes`.`character_id`))) left join `swganh_static`.`objects` on((`swganh_galaxy`.`character_attributes`.`object_template_id` = `swganh_static`.`objects`.`id`))) union select `swganh_galaxy`.`character_appearance`.`hair_id` AS `id`,`swganh_galaxy`.`characters`.`planet_id` AS `planet_id`,`swganh_galaxy`.`characters`.`id` AS `parent_id`,`swganh_static`.`objects`.`object_string` AS `iff_template_text`,`swganh_galaxy`.`characters`.`x` AS `x`,`swganh_galaxy`.`characters`.`y` AS `y`,`swganh_galaxy`.`characters`.`z` AS `z`,`swganh_galaxy`.`characters`.`oX` AS `oX`,`swganh_galaxy`.`characters`.`oY` AS `oY`,`swganh_galaxy`.`characters`.`oZ` AS `oZ`,`swganh_galaxy`.`characters`.`oW` AS `oW`,0 AS `complexity`,`swganh_static`.`objects`.`objectName_1` AS `stf_name_file_id`,`swganh_static`.`objects`.`objectName_2` AS `stf_name_string_id`,concat(`swganh_galaxy`.`characters`.`firstname`,' ',`swganh_galaxy`.`characters`.`lastname`) AS `custom_name`,0 AS `volume` from ((`swganh_galaxy`.`characters` left join `swganh_galaxy`.`character_appearance` on((`swganh_galaxy`.`characters`.`id` = `swganh_galaxy`.`character_appearance`.`character_id`))) left join `swganh_static`.`objects` on((`swganh_galaxy`.`character_appearance`.`hair_model` = `swganh_static`.`objects`.`id`))) union select `swganh_galaxy`.`inventories`.`id` AS `id`,0 AS `planet_id`,`swganh_galaxy`.`inventories`.`parent_id` AS `parent_id`,`swganh_static`.`objects`.`object_string` AS `iff_template_text`,0 AS `x`,0 AS `y`,0 AS `z`,0 AS `oX`,0 AS `oY`,0 AS `oZ`,0 AS `oW`,0 AS `complexity`,`swganh_static`.`objects`.`objectName_1` AS `stf_name_file_id`,`swganh_static`.`objects`.`objectName_2` AS `stf_name_string_id`,'' AS `custom_name`,0 AS `volume` from (`swganh_galaxy`.`inventories` left join `swganh_static`.`objects` on((`swganh_galaxy`.`inventories`.`inventory_type` = `swganh_static`.`objects`.`id`))) union select `swganh_galaxy`.`datapads`.`id` AS `id`,0 AS `planet_id`,`swganh_galaxy`.`datapads`.`parent_id` AS `parent_id`,`swganh_static`.`objects`.`object_string` AS `iff_template_text`,0 AS `x`,0 AS `y`,0 AS `z`,0 AS `oX`,0 AS `oY`,0 AS `oZ`,0 AS `oW`,0 AS `complexity`,`swganh_static`.`objects`.`objectName_1` AS `stf_name_file_id`,`swganh_static`.`objects`.`objectName_2` AS `stf_name_string_id`,'' AS `custom_name`,0 AS `volume` from (`swganh_galaxy`.`datapads` left join `swganh_static`.`objects` on((`swganh_galaxy`.`datapads`.`datapad_type` = `swganh_static`.`objects`.`id`))) union select `swganh_galaxy`.`items`.`id` AS `id`,`swganh_galaxy`.`items`.`planet_id` AS `planet_id`,`swganh_galaxy`.`items`.`parent_id` AS `parent_id`,`swganh_static`.`item_types`.`object_string` AS `iff_template_text`,`swganh_galaxy`.`items`.`x` AS `x`,`swganh_galaxy`.`items`.`y` AS `y`,`swganh_galaxy`.`items`.`z` AS `z`,`swganh_galaxy`.`items`.`oX` AS `oX`,`swganh_galaxy`.`items`.`oY` AS `oY`,`swganh_galaxy`.`items`.`oZ` AS `oZ`,`swganh_galaxy`.`items`.`oW` AS `oW`,0 AS `complexity`,`swganh_static`.`item_types`.`stf_file` AS `stf_name_file_id`,`swganh_static`.`item_types`.`stf_name` AS `stf_name_string_id`,`swganh_galaxy`.`items`.`custom_name` AS `custom_name`,1 AS `volume` from (`swganh_galaxy`.`items` left join `swganh_static`.`item_types` on((`swganh_galaxy`.`items`.`item_type` = `swganh_static`.`item_types`.`id`))) */;
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