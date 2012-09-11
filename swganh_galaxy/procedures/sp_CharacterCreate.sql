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

CREATE PROCEDURE `sp_CharacterCreate`(IN `account_id` INT, IN `galaxy_id` INT, IN `firstname` char(30), IN `lastname` char(50), IN `profession` char(64), IN `city` char(32), IN `scale` FLOAT, IN `biography` text(2048), IN `appearance_customization` BLOB, IN `hair_model` CHAR(64), IN `hair_customization` BLOB, IN `base_model_string` CHAR(64)
    )
charCreate:BEGIN

  -- Declare Var(s)

  DECLARE gender INT;
  DECLARE nameCheck INT;
  DECLARE shortSpecies VARCHAR(32);
  DECLARE character_id BIGINT;
  DECLARE new_player_id BIGINT;
  DECLARE inventory_id BIGINT;
  DECLARE datapad_id BIGINT;
  DECLARE bank_id BIGINT;
  DECLARE spawn_x FLOAT;
  DECLARE spawn_y FLOAT;
  DECLARE spawn_z FLOAT;
  DECLARE planet INT;
  DECLARE race_id INT;
  DECLARE health INT;
  DECLARE strength INT;
  DECLARE constitution INT;
  DECLARE action INT;
  DECLARE quickness INT;
  DECLARE stamina INT;
  DECLARE mind INT;
  DECLARE focus INT;
  DECLARE willpower INT;
  DECLARE profession_id INT;
  DECLARE object_type_id INT;
  DECLARE hair_type_id INT;
  DECLARE hair_id BIGINT;

  DECLARE t_id INT;
  DECLARE t_species VARCHAR(16);
  DECLARE t_profession VARCHAR(16);
  DECLARE longHair VARCHAR(64);
  
  -- get our short species name
  SELECT sf_speciesShort(base_model_string) INTO shortSpecies;

  -- get our race id
  SELECT id FROM swganh_static.race WHERE race.name like shortSpecies into race_id;

  -- get our gender
  IF base_model_string LIKE '%female%' THEN
    SET gender = 0;
  ELSE
    SET gender = 1;
  END IF;

  -- check if our firstname & lastname is valid
  SELECT sf_CharacterCheckName(firstname, lastname, race_id, account_id) INTO nameCheck;

  IF nameCheck <> 666 THEN
    SELECT(nameCheck);
    LEAVE charCreate;
  END IF;

  -- get our new creature id
  SELECT MAX(id) FROM swganh_galaxy.characters INTO character_id;

  SET character_id = character_id + 10;

  IF character_id IS NULL OR character_id < 8589934592 THEN
    SET character_id = 8589934593;
  END IF;
  
  -- get our player id
  SELECT MAX(player_id) FROM swganh_galaxy.characters INTO new_player_id;

  IF new_player_id IS NULL OR new_player_id < 17179869184 THEN
    SET new_player_id = 17179869184;
  END IF;
  
  SET new_player_id = new_player_id + 1;

  -- get our other required IDs (inventory, datapad, hair)
  SET inventory_id = character_id + 2;
  SET datapad_id = character_id + 4;
  SET hair_id = character_id + 6;

  -- get our object_type_id
  SELECT id FROM swganh_static.objects WHERE object_string LIKE REPLACE('object/creature/player/twilek_male.iff', 'object/creature/player/', 'object/creature/player/shared_') INTO object_type_id;
  
  -- create our character hair
  IF hair_model != '' THEN
    SET longHair = REPLACE(hair_model, '/hair_', '/shared_hair_');  	
    SELECT id FROM swganh_static.objects WHERE swganh_static.objects.object_string LIKE longHair INTO hair_type_id;
	END IF;

  -- get our location details
  SELECT planet_id, x, y, z FROM swganh_static.starting_location WHERE location LIKE city INTO planet, spawn_x, spawn_y, spawn_z;

  -- get our starting HAM details
  SELECT * FROM swganh_static.starting_attributes WHERE starting_attributes.species = shortSpecies AND starting_attributes.profession = profession INTO t_id, t_species, t_profession, health, strength, constitution, action, quickness, stamina, mind, focus, willpower;

  -- create our character
  INSERT INTO characters VALUES (character_id, new_player_id, account_id, 1, firstname, lastname, gender, race_id, planet, 0, spawn_x, spawn_y, spawn_z, 0, 0, 0, 0, NOW(), 0, 0, 0, NOW(), NOW());
  INSERT INTO character_appearance VALUES (character_id, scale, appearance_customization, hair_type_id, hair_id, hair_customization, 0);
  INSERT INTO character_attributes VALUES (character_id, health, strength, constitution, action, quickness, stamina, mind, focus, willpower, health, strength, constitution, action, quickness, stamina, mind, focus, willpower, 0, 0 ,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 100, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, profession, 0, object_type_id, object_type_id, object_type_id);
  INSERT INTO character_flags VALUES (character_id, 0, 0, 0, 0, 0);
  INSERT INTO character_credits VALUES (character_id, 0, 10000, 10000);
  
  -- create our biography
  INSERT INTO character_biographies VALUES (character_id, biography);

  -- create our character additional data
  INSERT INTO character_guild VALUES (character_id, 0);
  INSERT INTO character_faction VALUES (character_id, 2, 0);  -- rebel
  INSERT INTO character_faction VALUES (character_id, 3, 0);  -- imperial

  -- create our inventory / datapad
  INSERT INTO inventories VALUES (inventory_id, character_id, 10708);
  INSERT INTO datapads VALUES (datapad_id, character_id, 7233);

  -- get our starting skill (profession)
  SELECT skill_id FROM swganh_static.skills WHERE skills.skill_name like profession INTO profession_id;

  IF city <> 'tutorial' THEN
    SET profession_id = profession_id + 1;
    CALL sp_CharacterCreateSkills(character_id, profession_id, race_id);
    CALL sp_CharacterCreateXP(character_id, profession_id);
  END IF;

  -- create the starting items
  SELECT inventory_id, race_id, profession_id, gender;
  CALL sp_CharacterCreateStartingItems(inventory_id, race_id, profession_id - 1, gender);

  -- Debug
  -- SELECT 'Character ID --> ', character_id;
  -- SELECT 'Species -------> ', shortSpecies;
  -- SELECT 'Profession ----> ', profession;
  -- SELECT 'Gender --------> ', gender;
  -- SELECT 'Location ------> ', planet, spawn_x, spawn_y, spawn_z;
  -- SELECT 'HAM -----------> ', health, strength, constitution, action, quickness, stamina, mind, focus, willpower;

  SELECT character_id;

END;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;