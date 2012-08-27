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
-- Table structure for table `name_profane`
--

DROP TABLE IF EXISTS `name_profane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `name_profane` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `name_profane`
--

LOCK TABLES `name_profane` WRITE;
/*!40000 ALTER TABLE `name_profane` DISABLE KEYS */;
INSERT INTO `name_profane` VALUES (1,'anal'),
(4,'ass'),
(5,'asshole'),
(6,'assmunch'),
(7,'asshole'),
(8,'biatch'),
(9,'bitch'),
(10,'boob'),
(11,'christ'),
(12,'clit'),
(13,'cock'),
(14,'cocklick'),
(15,'cocks'),
(16,'cocksucker'),
(17,'cum'),
(18,'cumbubble'),
(19,'cumlicker'),
(20,'cunt'),
(21,'damn'),
(22,'devil'),
(23,'dick'),
(24,'dildo'),
(25,'dingleberry'),
(26,'dong'),
(27,'dumb'),
(28,'dumbass'),
(29,'fag'),
(30,'faggot'),
(31,'fagot'),
(32,'fuck'),
(33,'fuk'),
(34,'fuxxor'),
(35,'george lucas'),
(36,'gook'),
(37,'hater'),
(38,'hooker'),
(39,'jackoff'),
(40,'jesus'),
(41,'jizz'),
(42,'kike'),
(43,'kunt'),
(44,'labia'),
(45,'lust'),
(46,'masterbait'),
(47,'masterbate'),
(48,'masturbait'),
(49,'nazi'),
(50,'negro'),
(51,'nigga'),
(52,'nigger'),
(53,'nipple'),
(54,'nude'),
(55,'nudity'),
(56,'penis'),
(57,'piss'),
(58,'prick'),
(59,'prostitute'),
(60,'pussy'),
(61,'rape'),
(62,'rapist'),
(63,'satan'),
(64,'sex'),
(65,'shit'),
(66,'skank'),
(67,'slut'),
(68,'sodomy'),
(69,'spankthemonkey'),
(70,'spick'),
(71,'sucks'),
(72,'tit'),
(73,'tits'),
(74,'titt'),
(75,'topless'),
(76,'twat'),
(77,'vagina'),
(78,'whore'),
(79,'wtf');
/*!40000 ALTER TABLE `name_profane` ENABLE KEYS */;
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
