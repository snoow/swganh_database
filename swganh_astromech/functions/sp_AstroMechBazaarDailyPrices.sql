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

USE swganh_astromech;

--
-- `sp_AstroMechBazaarDailyPrices`
--

DROP FUNCTION IF EXISTS `sp_AstroMechBazaarDailyPrices`;
CREATE FUNCTION `sp_AstroMechBazaarDailyPrices`() RETURNS int(5)
BEGIN

  -- Declare our var(s)
  DECLARE item_id INT;
  DECLARE item_min INT;
  DECLARE item_max INT;
  DECLARE item_avg INT;
  DECLARE item_count INT;
  DECLARE item_total INT;
  DECLARE loop_counter INT(5);
  DECLARE current_item INT;
  DECLARE item_name CHAR(255);
  DECLARE mtime BIGINT(22);

  SELECT COUNT(*) FROM swganh_static.item_types INTO item_total;
  SET loop_counter = 1;

	loop1: LOOP
    SELECT
      swganh_static.items.item_type,
      swganh_static.item_types.object_string,
      MAX(swganh_galaxy.commerce_auction.price),
      MIN(swganh_galaxy.commerce_auction.price),
      AVG(swganh_galaxy.commerce_auction.price),
      COUNT(swganh_galaxy.commerce_auction.price),
      UNIX_TIMESTAMP(CURRENT_DATE())
      FROM swganh_galaxy.commerce_auction
        INNER JOIN swganh_galaxy.items ON (swganh_galaxy.commerce_auction.auction_id = swganh_galaxy.items.id)
        INNER JOIN swganh_static.item_types ON (swganh_galaxy.items.item_type = swganh_static.item_types.id)
      WHERE swganh_static.item_types.id = loop_counter INTO item_id, item_name, item_min, item_max, item_avg, item_count, mtime;

	
    INSERT INTO `swganh_astromech`.`AstromMechBazaarDailyPrices` VALUES (item_id, item_name, item_min, item_max, item_avg, item_count, mtime);

    IF loop_counter = item_total THEN
       LEAVE loop1;
       ELSE SET loop_counter = loop_counter + 1;
    END IF;

  END LOOP loop1;
END;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
-- Dump completed on 2012-08-27  9:42:08
