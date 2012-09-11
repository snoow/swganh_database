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

CREATE FUNCTION `sf_CreateDefaultItem`(`family_id` INT, `type_id` INT, `parent_id` BIGINT, `planet` INT, `in_x` FLOAT, `in_y` FLOAT, `in_z` FLOAT, `customName` VARCHAR(32)) RETURNS BIGINT(20)
BEGIN

  -- Declare our var(s)
  DECLARE item_id BIGINT(20);
  DECLARE attrib_id INT;
  DECLARE attrib_value VARCHAR(255);
  DECLARE attrib_order INT;
  DECLARE loopEnd INT DEFAULT 0;

  -- Declare our cursor (iterate through attributes)
  DECLARE cur1 CURSOR FOR
    SELECT
      swganh_static.item_family_attribute_defaults.attribute_id,
      swganh_static.item_family_attribute_defaults.attribute_value,
      swganh_static.item_family_attribute_defaults.attribute_order
    FROM swganh_static.item_family_attribute_defaults
    WHERE swganh_static.item_family_attribute_defaults.family_id = family_id AND swganh_static.item_family_attribute_defaults.item_type_id = type_id;
  DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET loopEnd = 1;

  -- get our next id for items
  SELECT MAX(swganh_galaxy.items.id) FROM swganh_galaxy.items INTO item_id;

  IF item_id IS NULL OR item_id < 281474976710655 THEN
    SET item_id = 281474976710656;
  END IF;

  SET item_id = item_id + 1;

  -- create our item
  INSERT INTO swganh_galaxy.items VALUES (item_id, parent_id, family_id, type_id, 99, in_x, in_y, in_z, 0, 0, 0, 1, 100, 0, customName);

  -- create our item attributes
  OPEN cur1;
    REPEAT
      FETCH cur1 INTO attrib_id, attrib_value, attrib_order;
        IF NOT loopEnd THEN
          INSERT INTO swganh_galaxy.item_attributes VALUES (NULL, item_id, attrib_id, attrib_value, attrib_order);
        END IF;
    UNTIL loopEnd END REPEAT;
  CLOSE cur1;

  -- Return our result and exit
  RETURN item_id;
  
END;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;