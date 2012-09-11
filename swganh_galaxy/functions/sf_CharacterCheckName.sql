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

CREATE FUNCTION `sf_CharacterCheckName`(`firstname` VARCHAR(32), `lastname` VARCHAR(32), `species` INT(11), `acc_id` INT(11)) RETURNS int(11)
checkName:BEGIN

  -- Declare var(s)
  DECLARE error_id INT;
  DECLARE check_value_fs00 INT DEFAULT 0;
  DECLARE check_value_ls00 INT DEFAULT 0;
  DECLARE check_value_fs01 INT DEFAULT 0;
  DECLARE check_value_ls01 INT DEFAULT 0;
  DECLARE check_value_fs02 INT DEFAULT 0;
  DECLARE check_value_ls02 INT DEFAULT 0;
  DECLARE check_value_fs03 INT DEFAULT 0;
  DECLARE check_value_ls03 INT DEFAULT 0;
  DECLARE check_value_fs04 INT DEFAULT 0;
  DECLARE check_value_ls04 INT DEFAULT 0;
  DECLARE check_value_fs09 INT DEFAULT 0;
  DECLARE check_value_ls09 INT DEFAULT 0;
  DECLARE check_value_fs10 INT DEFAULT 0;
  DECLARE check_value_ls10 INT DEFAULT 0;
  DECLARE check_value_fs12 INT DEFAULT 0;
  DECLARE check_value_ls12 INT DEFAULT 0;

  DECLARE check_dashes INT DEFAULT 0;
  DECLARE check_hyphen INT DEFAULT 0;
  DECLARE total INT DEFAULT 0;

  -- begin

  SELECT COUNT(*) FROM swganh_static.name_developer WHERE name LIKE LOWER(firstname) INTO check_value_fs00;
  SELECT COUNT(*) FROM swganh_static.name_developer WHERE name LIKE LOWER(lastname) INTO check_value_ls00;

  SELECT CHAR_LENGTH(firstname) INTO check_value_fs01;

  SELECT COUNT(*) FROM swganh_static.name_reserved WHERE name LIKE LOWER(firstname) INTO check_value_fs02;
  SELECT COUNT(*) FROM swganh_static.name_reserved WHERE name LIKE LOWER(lastname) INTO check_value_ls02;

  SELECT COUNT(*) FROM characters WHERE characters.firstname = firstname INTO check_value_fs03;
  -- SELECT COUNT(*) FROM swganh_galaxy.`characters` WHERE lastname LIKE LOWER(lastname) INTO check_value_ls03;

  SELECT LOWER(firstname) REGEXP '[0-9]' INTO check_value_fs09;
  SELECT LOWER(lastname) REGEXP '[0-9]' INTO check_value_ls09;

  SELECT COUNT(*) FROM swganh_static.name_profane WHERE name LIKE LOWER(firstname) INTO check_value_fs10;
  SELECT COUNT(*) FROM swganh_static.name_profane WHERE name LIKE LOWER(lastname) INTO check_value_ls10;

  SELECT COUNT(*) FROM swganh_static.name_reserved WHERE name LIKE LOWER(firstname) INTO check_value_fs10;
  SELECT COUNT(*) FROM swganh_static.name_reserved WHERE name LIKE LOWER(lastname) INTO check_value_ls10;

  -- 00 - name_declined_developer
  IF check_value_fs00 > 0 THEN SET error_id = 0;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  IF check_value_ls00 > 0 THEN SET error_id = 0;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  -- 01 - name_declined_empty
  IF check_value_fs01 = 0 THEN SET error_id = 1;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  -- 02 - name_declined_fictionally_reserved
  IF check_value_fs02 > 0 THEN SET error_id = 2;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  IF check_value_ls02 > 0 THEN SET error_id = 2;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  -- 03 - name_declined_in_use
  IF check_value_fs03 = 1 THEN SET error_id = 3;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  -- 04 - name_declined_internal_error (not used)

  -- 05 - name_declined_no_name_generator (not used)

  -- 06 - name_declined_no_template (not used)

  -- 07 - name_declined_not_authorized_for_species (not_used)

  -- 08 - name_declined_not_creature_template (not used)

  -- 09 - name_declined_number
  IF check_value_fs09 > 0 THEN SET error_id = 9;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  IF check_value_ls09 > 0 THEN SET error_id = 9;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  -- 10 - name_declined_profane
  IF check_value_fs10 > 0 THEN SET error_id = 10;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  IF check_value_ls10 > 0 THEN SET error_id = 10;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  -- 11 - name_declined_racially_inappropriate
  IF length(firstname) < 3 OR length(firstname) > 15 THEN SET error_id = 11;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  IF length(lastname) > 30 THEN SET error_id = 11;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  SELECT LENGTH(firstname) - LENGTH(REPLACE(firstname, '-', '')) INTO check_dashes;
  SELECT LENGTH(firstname) - LENGTH(REPLACE(firstname, '\'', '')) INTO check_hyphen;

  SET total = check_dashes + check_hyphen;

  IF species = 0 AND total > 1 THEN SET error_id = 11;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  IF species = 6 AND total > 1 THEN SET error_id = 11;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  SET total = 0;

  SELECT LENGTH(lastname) - LENGTH(REPLACE(lastname, '-', '')) INTO check_dashes;
  SELECT LENGTH(lastname) - LENGTH(REPLACE(lastname, '\'', '')) INTO check_hyphen;

  SET total = check_dashes + check_hyphen;

  IF species = 0 AND total > 1 THEN SET error_id = 11;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  IF species = 6 AND total > 1 THEN SET error_id = 11;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  SET total = 0;

  SELECT LENGTH(firstname) - LENGTH(REPLACE(firstname, '-', '')) INTO total;

  IF species = 3 AND total > 1 THEN SET error_id = 11;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  SET total = 0;

  SELECT LENGTH(lastname) - LENGTH(REPLACE(lastname, '-', '')) INTO total;

  IF species = 3 AND total > 1 THEN SET error_id = 11;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  IF species = 4 AND length(lastname) > 0 THEN SET error_id = 11;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  -- 12 - name_declined_reserved
  IF check_value_fs12 > 0 THEN SET error_id = 12;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  IF check_value_ls12 > 0 THEN SET error_id = 12;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  -- 13 - name_declined_retry (not used)

  -- 14 - name_declined_syntax

  SET total = 0;

  SELECT firstname REGEXP('[^[:alnum:]\'-]') INTO total;

  IF total = 1 THEN SET error_id = 14;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  SET total = 0;

  SELECT lastname REGEXP('[^[:alnum:]\'-]') INTO total;

  IF total = 1 THEN SET error_id = 14;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  SET total = 0;

  SELECT BINARY(firstname) REGEXP('[a-z]*[A-Z][a-z]*[A-Z][a-z]*') INTO total;

  IF total = 1 THEN SET error_id = 14;
    RETURN error_id;
    LEAVE checkName;
  END IF;


  SET total = 0;
  SELECT BINARY(lastname) REGEXP('[a-z]*[A-Z][a-z]*[A-Z][a-z]*') INTO total;

  IF total = 1 THEN SET error_id = 14;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  -- 15 - name_declined_too_fast (set to 1 minute now, server setting @ launch should be 15 minutes)

  SET total = 0;
  SELECT created_at FROM swganh_galaxy.`characters` WHERE created_at > NOW() - INTERVAL 1 MINUTE AND account_id = acc_id INTO total;

  IF total > 0 THEN SET error_id = 15;
    RETURN error_id;
    LEAVE checkName;
  END IF;

  -- 16 - name_declined_cant_create_avatar (not used)

  -- 17 - name_declined_internal_error (not used)

  -- Return our error and exit
  SET error_id = 666;
  RETURN error_id;

END;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;