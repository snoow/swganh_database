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
-- Table structure for table `schematic_groups`
--

DROP TABLE IF EXISTS `schematic_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schematic_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_schematicgroups_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schematic_groups`
--

LOCK TABLES `schematic_groups` WRITE;
/*!40000 ALTER TABLE `schematic_groups` DISABLE KEYS */;
INSERT INTO `schematic_groups` VALUES (8,'craftAdvancedCreatureGroup'),(7,'craftAdvancedTissueGroup'),(9,'craftAggressiveCreatureGroupA'),(10,'craftAggressiveCreatureGroupB'),(213,'craftApplyDiseaseAreaGroupA'),(214,'craftApplyDiseaseAreaGroupB'),(13,'craftApplyDiseaseAreaGroupC'),(227,'craftApplyDiseaseGroupA'),(229,'craftApplyDiseaseGroupB'),(12,'craftApplyDiseaseGroupC'),(211,'craftApplyPoisonAreaGroupA'),(212,'craftApplyPoisonAreaGroupB'),(11,'craftApplyPoisonAreaGroupC'),(208,'craftApplyPoisonGroupA'),(209,'craftApplyPoisonGroupB'),(210,'craftApplyPoisonGroupC'),(14,'craftArmorLightLayersGroupA'),(15,'craftArmorLightLayersGroupB'),(16,'craftArmorLightLayersGroupC'),(17,'craftArmorLightLayersGroupD'),(18,'craftArmorLightLayersGroupE'),(19,'craftArmorPersonalGroupA'),(20,'craftArmorPersonalGroupB'),(21,'craftArmorPersonalGroupC'),(22,'craftArmorPersonalGroupD'),(23,'craftArmorPersonalGroupE'),(24,'craftArmorPersonalGroupF'),(25,'craftArmorShieldsGroupA'),(26,'craftArmorShieldsGroupB'),(27,'craftArmorShieldsGroupC'),(28,'craftArmorShieldsGroupD'),(29,'craftArtisanDomesticGroupA'),(30,'craftArtisanDomesticGroupB'),(31,'craftArtisanDomesticGroupC'),(32,'craftArtisanDomesticGroupD'),(33,'craftArtisanEngineeringGroupA'),(34,'craftArtisanEngineeringGroupB'),(35,'craftArtisanEngineeringGroupC'),(36,'craftArtisanEngineeringGroupD'),(222,'craftArtisanMasterGroupA'),(219,'craftArtisanNewbieGroupA'),(220,'craftArtisanNewbieGroupB'),(221,'craftArtisanSurveyGroupA'),(37,'craftArtisanToolGroupA'),(223,'craftArtisanVehicle'),(39,'craftBasicCreatureGroup'),(38,'craftBasicTissueGroup'),(40,'craftClothingCasualGroupA'),(41,'craftClothingCasualGroupB'),(42,'craftClothingCasualGroupC'),(43,'craftClothingCasualGroupD'),(44,'craftClothingFieldGroupA'),(45,'craftClothingFieldGroupB'),(46,'craftClothingFieldGroupC'),(47,'craftClothingFieldGroupD'),(48,'craftClothingFormalGroupA'),(49,'craftClothingFormalGroupB'),(50,'craftClothingFormalGroupC'),(51,'craftClothingFormalGroupD'),(231,'craftClothingMaster'),(52,'craftClothingNoviceGroupA'),(53,'craftClothingNoviceGroupB'),(54,'craftClothingNoviceGroupC'),(55,'craftCureDiseaseGroupA'),(131,'craftCureDiseaseGroupB'),(142,'craftCureDiseaseGroupC'),(58,'craftCurePoisonGroupA'),(140,'craftCurePoisonGroupB'),(141,'craftCurePoisonGroupC'),(60,'craftDomesticCreatureGroupA'),(61,'craftDomesticCreatureGroupB'),(236,'craftDroidDamageRepairA'),(237,'craftDroidDamageRepairB'),(238,'craftDroidDamageRepairC'),(239,'craftDroidDamageRepairD'),(74,'craftDroiddefmodGroupA'),(66,'craftDroiddefmodGroupB'),(67,'craftDroiddefmodGroupC'),(68,'craftDroiddefmodGroupD'),(69,'craftDroiddefmodGroupE'),(84,'craftdroiddefmodGroupF'),(75,'craftdroidgenmodGroupA'),(70,'craftdroidgenmodGroupB'),(71,'craftdroidgenmodGroupC'),(72,'craftdroidgenmodGroupD'),(269,'craftdroidgenmodGroupDD'),(73,'craftdroidgenmodGroupE'),(83,'craftdroidgenmodGroupF'),(77,'craftdroidGroupA'),(78,'craftdroidGroupB'),(79,'craftdroidGroupC'),(80,'craftdroidGroupD'),(81,'craftdroidGroupE'),(82,'craftdroidGroupF'),(76,'craftDroidRepairCompA'),(85,'craftDroidRepairCompB'),(62,'craftDroidWoundRepairA'),(63,'craftDroidWoundRepairB'),(64,'craftDroidWoundRepairC'),(65,'craftDroidWoundRepairD'),(86,'craftFoodDessertGroupA'),(87,'craftFoodDessertGroupB'),(88,'craftFoodDessertGroupC'),(89,'craftFoodDessertGroupD'),(90,'craftFoodDishGroupA'),(91,'craftFoodDishGroupB'),(92,'craftFoodDishGroupC'),(93,'craftFoodDishGroupD'),(94,'craftFoodDrinkGroupA'),(95,'craftFoodDrinkGroupB'),(96,'craftFoodDrinkGroupC'),(97,'craftFoodDrinkGroupD'),(230,'craftFoodMaster'),(98,'craftFoodNoviceGroupA'),(99,'craftFoodNoviceGroupB'),(100,'craftFoodNoviceGroupC'),(3,'craftFoodTool'),(101,'craftFurnitureGroupA'),(105,'craftFurnitureGroupAA'),(102,'craftFurnitureGroupB'),(103,'craftFurnitureGroupC'),(104,'craftFurnitureGroupD'),(185,'craftFurnitureGroupE'),(270,'craftGrenadeGroupA'),(271,'craftGrenadeGroupB'),(272,'craftGrenadeGroupC'),(108,'craftInstallationGroupA'),(107,'craftInstallationGroupAA'),(109,'craftInstallationGroupB'),(110,'craftInstallationGroupC'),(111,'craftInstallationGroupD'),(1,'craftInstrumentGroupA'),(2,'craftInstrumentGroupB'),(224,'craftInstrumentGroupC'),(4,'craftInstrumentGroupD'),(5,'craftInstrumentGroupE'),(6,'craftInstrumentGroupF'),(273,'craftJediStuff'),(249,'craftJediTool'),(112,'craftMedicineComponentGroupA'),(113,'craftMedicineComponentGroupB'),(114,'craftMedicineComponentGroupC'),(115,'craftMedicineComponentGroupD'),(228,'craftMedicineComponentGroupE'),(116,'craftMedicineStimpackGroupA'),(117,'craftMedicineStimpackGroupB'),(118,'craftMedicineStimpackGroupC'),(119,'craftMedicineStimpackGroupD'),(120,'craftMedicineStimpackGroupE'),(135,'craftMedpackBEnhanceGroupA'),(136,'craftMedpackBEnhanceGroupB'),(137,'craftMedpackBEnhanceGroupC'),(138,'craftMedpackBEnhanceGroupD'),(139,'craftMedpackBEnhanceGroupE'),(126,'craftMedpackBGroupA'),(127,'craftMedpackBGroupB'),(128,'craftMedpackBGroupC'),(129,'craftMedpackBGroupD'),(130,'craftMedpackBGroupE'),(56,'craftMedpackEnhanceGroupA'),(225,'craftMedpackEnhanceGroupB'),(132,'craftMedpackEnhanceGroupC'),(133,'craftMedpackEnhanceGroupD'),(134,'craftMedpackEnhanceGroupE'),(121,'craftMedpackGroupA'),(122,'craftMedpackGroupB'),(123,'craftMedpackGroupC'),(124,'craftMedpackGroupD'),(125,'craftMedpackGroupE'),(143,'craftMunitionsGroupA'),(144,'craftMunitionsGroupB'),(145,'craftMunitionsGroupC'),(146,'craftMunitionsGroupD'),(147,'craftMunitionsGroupE'),(226,'craftMunitionsGroupF'),(232,'craftPlayerCityA'),(233,'craftPlayerCityB'),(234,'craftPlayerCityC'),(235,'craftPlayerCityD'),(186,'craftPlayerCityE'),(148,'craftRangerCamoGroupA'),(149,'craftRangerCamoGroupB'),(150,'craftRangerCamoGroupC'),(151,'craftRangerCamoGroupD'),(152,'craftRangerCamoGroupMaster'),(153,'craftRangerCampGroupA'),(154,'craftRangerCampGroupB'),(155,'craftRangerCampGroupC'),(156,'craftRangerTrapGroupA'),(157,'craftRangerTrapGroupB'),(266,'craftSaberMaster'),(265,'craftSaberNovice'),(250,'craftSaberOneHand1'),(251,'craftSaberOneHand2'),(252,'craftSaberOneHand3'),(253,'craftSaberOneHand4'),(254,'craftSaberOneHand5'),(260,'craftSaberPolearm1'),(261,'craftSaberPolearm2'),(262,'craftSaberPolearm3'),(263,'craftSaberPolearm4'),(264,'craftSaberPolearm5'),(267,'craftSaberTraining'),(255,'craftSaberTwoHand1'),(256,'craftSaberTwoHand2'),(257,'craftSaberTwoHand3'),(258,'craftSaberTwoHand4'),(259,'craftSaberTwoHand5'),(159,'craftScoutCampGroupA'),(160,'craftScoutCampGroupB'),(161,'craftScoutCampGroupC'),(162,'craftScoutCampGroupD'),(215,'craftScoutTrapGroupA'),(216,'craftScoutTrapGroupB'),(217,'craftScoutTrapGroupC'),(218,'craftScoutTrapGroupD'),(158,'craftScoutTrapGroupNovice'),(163,'craftShipwrightDefenseGroupA'),(164,'craftShipwrightDefenseGroupB'),(165,'craftShipwrightDefenseGroupC'),(166,'craftShipwrightDefenseGroupD'),(167,'craftShipwrightEngGroupA'),(168,'craftShipwrightEngGroupB'),(169,'craftShipwrightEngGroupC'),(170,'craftShipwrightEngGroupD'),(268,'craftShipwrightMaster'),(171,'craftShipwrightNoviceGroupA'),(172,'craftShipwrightPropulsionGroupA'),(173,'craftShipwrightPropulsionGroupB'),(174,'craftShipwrightPropulsionGroupC'),(175,'craftShipwrightPropulsionGroupD'),(176,'craftShipwrightSystemsGroupA'),(177,'craftShipwrightSystemsGroupB'),(178,'craftShipwrightSystemsGroupC'),(179,'craftShipwrightSystemsGroupD'),(244,'craftSmugglerSpiceA'),(245,'craftSmugglerSpiceB'),(246,'craftSmugglerSpiceC'),(247,'craftSmugglerSpiceD'),(240,'craftSmugglerSpiceNovice'),(241,'craftSmugglerToolsA'),(242,'craftSmugglerToolsB'),(243,'craftSmugglerToolsC'),(203,'craftStimpackRangeGroupA'),(204,'craftStimpackRangeGroupB'),(205,'craftStimpackRangeGroupC'),(206,'craftStimpackRangeGroupD'),(207,'craftStimpackRangeGroupE'),(59,'craftStimpackStateGroupA'),(57,'craftStimpackStateGroupB'),(180,'craftStructureGroupA'),(106,'craftStructureGroupAA'),(181,'craftStructureGroupB'),(182,'craftStructureGroupC'),(183,'craftStructureGroupD'),(184,'craftStructureGroupE'),(187,'craftTissueGroupA'),(188,'craftTissueGroupB'),(189,'craftTissueGroupC'),(190,'craftTissueGroupD'),(191,'craftWeaponMeleeGroupA'),(192,'craftWeaponMeleeGroupB'),(193,'craftWeaponMeleeGroupC'),(194,'craftWeaponMeleeGroupD'),(195,'craftWeaponMeleeGroupE'),(202,'craftWeaponMeleeGroupF'),(196,'craftWeaponRangedGroupA'),(197,'craftWeaponRangedGroupB'),(198,'craftWeaponRangedGroupC'),(199,'craftWeaponRangedGroupD'),(200,'craftWeaponRangedGroupE'),(201,'craftWeaponRangedGroupF'),(248,'craftWookieItems'),(275,'schem_tool_loot'),(274,'schem_tool_quest'),(276,'schem_tool_village');
/*!40000 ALTER TABLE `schematic_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-18 21:34:20