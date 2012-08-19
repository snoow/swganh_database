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
-- Table structure for table `skillmods`
--

DROP TABLE IF EXISTS `skillmods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skillmods` (
  `skillmod_id` int(11) unsigned NOT NULL,
  `skillmod_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`skillmod_id`),
  UNIQUE KEY `pk_skillmods_name` (`skillmod_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skillmods`
--

LOCK TABLES `skillmods` WRITE;
/*!40000 ALTER TABLE `skillmods` DISABLE KEYS */;
INSERT INTO `skillmods` VALUES (196,'advanced_assembly'),(203,'advanced_ship_experimentation'),(214,'aim'),(69,'alert'),(239,'anti_shock'),(111,'armor_assembly'),(28,'armor_customization'),(112,'armor_experimentation'),(56,'berserk'),(108,'bio_engineer_assembly'),(109,'bio_engineer_experimentation'),(73,'blind_defense'),(70,'block'),(237,'body'),(191,'booster_assembly'),(200,'booster_experimentation'),(128,'bounty_mission_level'),(15,'burst_run'),(99,'camouflage'),(11,'camp'),(61,'carbine_accuracy'),(219,'carbine_aim'),(218,'carbine_hit_while_moving'),(62,'carbine_speed'),(51,'center_of_being_duration_onehandmelee'),(53,'center_of_being_duration_polearm'),(52,'center_of_being_duration_twohandmelee'),(50,'center_of_being_duration_unarmed'),(193,'chassis_assembly'),(197,'chassis_experimentation'),(117,'clothing_assembly'),(27,'clothing_customization'),(118,'clothing_experimentation'),(82,'combat_equillibrium'),(143,'combat_healing_ability'),(146,'combat_medicine_assembly'),(142,'combat_medicine_experimentation'),(144,'combat_medic_effectiveness'),(80,'counterattack'),(13,'creature_harvesting'),(17,'creature_hit_bonus'),(12,'creature_knowledge'),(204,'defense_reverse'),(74,'dizzy_defense'),(110,'dna_harvesting'),(75,'dodge'),(121,'droid_assembly'),(122,'droid_customization'),(225,'droid_experimentation'),(134,'droid_find_chance'),(135,'droid_find_speed'),(132,'droid_tracks'),(133,'droid_track_chance'),(136,'droid_track_speed'),(86,'empty1'),(93,'empty2'),(94,'empty3'),(163,'empty4'),(164,'empty5'),(187,'empty6'),(188,'empty7'),(147,'empty8'),(206,'engineering_reverse'),(190,'engine_assembly'),(199,'engine_experimentation'),(8,'face'),(125,'feign_death'),(115,'food_assembly'),(116,'food_experimentation'),(9,'foraging'),(277,'forceintimidate_accuracy'),(252,'forceknockdown_accuracy'),(258,'forcelightning_accuracy'),(251,'forcethrow_accuracy'),(261,'forceweaken_accuracy'),(272,'force_assembly'),(288,'force_choke'),(285,'force_control_dark'),(281,'force_control_light'),(280,'force_defense'),(271,'force_experimentation'),(274,'force_failure_reduction'),(276,'force_luck'),(286,'force_manipulation_dark'),(283,'force_manipulation_light'),(275,'force_persuade'),(284,'force_power_dark'),(282,'force_power_light'),(273,'force_repair_bonus'),(269,'force_vehicle_control'),(270,'force_vehicle_speed'),(25,'general_assembly'),(26,'general_experimentation'),(149,'ground_ranged_defense'),(150,'group_burst_run'),(148,'group_melee_defense'),(238,'group_ranged_defense'),(151,'group_slope_move'),(6,'hair'),(19,'healing_ability'),(5,'healing_dance_ability'),(87,'healing_dance_mind'),(222,'healing_dance_shock'),(2,'healing_dance_wound'),(21,'healing_injury_speed'),(18,'healing_injury_treatment'),(4,'healing_music_ability'),(89,'healing_music_mind'),(88,'healing_music_shock'),(3,'healing_music_wound'),(145,'healing_range'),(141,'healing_range_speed'),(96,'healing_wound_speed'),(97,'healing_wound_treatment'),(232,'heavy_acid_beam_accuracy'),(231,'heavy_acid_beam_speed'),(137,'heavy_flame_thrower_accuracy'),(235,'heavy_flame_thrower_speed'),(234,'heavy_lightning_beam_accuracy'),(233,'heavy_lightning_beam_speed'),(229,'heavy_particle_beam_accuracy'),(230,'heavy_particle_beam_speed'),(138,'heavy_rifle_acid_accuracy'),(236,'heavy_rifle_acid_speed'),(129,'heavy_rifle_lightning_accuracy'),(130,'heavy_rifle_lightning_speed'),(140,'heavy_rocket_launcher_accuracy'),(228,'heavy_rocket_launcher_speed'),(30,'hiring'),(90,'instrument_assembly'),(55,'intimidate'),(220,'intimidate_defense'),(243,'jedi_force_power_max'),(244,'jedi_force_power_regen'),(245,'jedi_saber_assembly'),(290,'jedi_saber_experimentation'),(278,'jedi_state_defense'),(279,'jedi_toughness'),(102,'keep_creature'),(79,'knockdown_defense'),(124,'language_all_comprehend'),(264,'language_basic_comprehend'),(1,'language_basic_speak'),(174,'language_bothan_comprehend'),(173,'language_bothan_speak'),(182,'language_ithorian_comprehend'),(181,'language_ithorian_speak'),(180,'language_lekku_comprehend'),(179,'language_lekku_speak'),(170,'language_moncalamari_comprehend'),(169,'language_moncalamari_speak'),(166,'language_rodian_comprehend'),(165,'language_rodian_speak'),(184,'language_sullustan_comprehend'),(183,'language_sullustan_speak'),(168,'language_trandoshan_comprehend'),(167,'language_trandoshan_speak'),(176,'language_twilek_comprehend'),(175,'language_twilek_speak'),(172,'language_wookiee_comprehend'),(171,'language_wookiee_speak'),(178,'language_zabrak_comprehend'),(177,'language_zabrak_speak'),(186,'leadership'),(289,'lightsaber_toughness'),(29,'manage_vendor'),(7,'markings'),(16,'mask_scent'),(20,'medical_foraging'),(22,'medicine_assembly'),(23,'medicine_experimentation'),(221,'meditate'),(267,'melee_accuracy'),(68,'melee_defense'),(268,'melee_speed'),(253,'mindblast_accuracy'),(209,'missile_launching'),(246,'onehandlightsaber_accuracy'),(247,'onehandlightsaber_speed'),(249,'onehandlightsaber_toughness'),(37,'onehandmelee_accuracy'),(48,'onehandmelee_center_of_being_efficacy'),(38,'onehandmelee_speed'),(212,'onehandmelee_toughness'),(208,'pilot_special_tactics'),(57,'pistol_accuracy'),(217,'pistol_accuracy_while_standing'),(77,'pistol_aim'),(76,'pistol_hit_while_moving'),(58,'pistol_speed'),(260,'polearmlightsaber_accuracy'),(259,'polearmlightsaber_speed'),(262,'polearmlightsaber_toughness'),(35,'polearm_accuracy'),(47,'polearm_center_of_being_efficacy'),(36,'polearm_speed'),(211,'polearm_toughness'),(78,'posture_change_down_defense'),(71,'posture_change_up_defense'),(194,'power_systems'),(201,'power_systems_experimentation'),(98,'private_areatrack'),(64,'private_carbine_combat_difficulty'),(294,'private_carbine_difficulty'),(46,'private_center_of_being_efficacy'),(105,'private_creature_empathy'),(106,'private_creature_handling'),(223,'private_creature_management'),(107,'private_creature_training'),(263,'private_force_lightning_cone_power'),(257,'private_force_lightning_single_power'),(131,'private_heavyweapon_combat_difficulty'),(240,'private_innate_equilibrium'),(189,'private_innate_regeneration'),(296,'private_innate_roar'),(241,'private_innate_vitalize'),(250,'private_jedi_difficulty'),(83,'private_med_dot'),(85,'private_med_wound'),(291,'private_onehandlightsaber_combat_difficulty'),(41,'private_onehandmelee_combat_difficulty'),(65,'private_pistol_combat_difficulty'),(295,'private_pistol_difficulty'),(155,'private_place_bank'),(91,'private_place_cantina'),(154,'private_place_cityhall'),(157,'private_place_cloning'),(162,'private_place_exotic_garden'),(158,'private_place_garage'),(95,'private_place_hospital'),(161,'private_place_large_garden'),(160,'private_place_medium_garden'),(226,'private_place_merchant_tent'),(156,'private_place_shuttleport'),(159,'private_place_small_garden'),(92,'private_place_theater'),(293,'private_polearmlightsaber_combat_difficulty'),(44,'private_polearm_combat_difficulty'),(63,'private_rifle_combat_difficulty'),(292,'private_twohandlightsaber_combat_difficulty'),(42,'private_twohandmelee_combat_difficulty'),(43,'private_unarmed_combat_difficulty'),(205,'propulsion_reverse'),(265,'ranged_accuracy'),(67,'ranged_defense'),(266,'ranged_speed'),(100,'rescue'),(59,'rifle_accuracy'),(216,'rifle_aim'),(66,'rifle_concealment_chance'),(215,'rifle_hit_while_moving'),(60,'rifle_speed'),(248,'saber_block'),(195,'shields_assembly'),(202,'shields_experimentation'),(123,'shop_sign'),(14,'slope_move'),(126,'spice_assembly'),(127,'spice_experimentation'),(152,'steadyaim'),(101,'stored_pets'),(119,'structure_assembly'),(120,'structure_experimentation'),(72,'stun_defense'),(24,'surveying'),(207,'systems_reverse'),(185,'take_cover'),(224,'tame_aggro'),(242,'tame_bonus'),(104,'tame_level'),(103,'tame_non_aggro'),(45,'taunt'),(139,'thrown_accuracy'),(227,'thrown_speed'),(10,'trapping'),(254,'twohandlightsaber_accuracy'),(255,'twohandlightsaber_speed'),(256,'twohandlightsaber_toughness'),(39,'twohandmelee_accuracy'),(49,'twohandmelee_center_of_being_efficacy'),(40,'twohandmelee_speed'),(213,'twohandmelee_toughness'),(32,'unarmed_accuracy'),(210,'unarmed_center_of_being_efficacy'),(33,'unarmed_damage'),(84,'unarmed_passive_defense'),(34,'unarmed_speed'),(81,'unarmed_toughness'),(31,'vendor_item_limit'),(153,'volley'),(54,'warcry'),(198,'weapons_systems_experimentation'),(113,'weapon_assembly'),(114,'weapon_experimentation'),(192,'weapon_systems'),(287,'weapon_systems_experimentation');
/*!40000 ALTER TABLE `skillmods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-18 21:34:21
