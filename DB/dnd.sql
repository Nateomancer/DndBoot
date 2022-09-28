-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dndwebdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `dndwebdb` ;

-- -----------------------------------------------------
-- Schema dndwebdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dndwebdb` DEFAULT CHARACTER SET utf8 ;
USE `dndwebdb` ;

-- -----------------------------------------------------
-- Table `dnd_race`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dnd_race` ;

CREATE TABLE IF NOT EXISTS `dnd_race` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `size` VARCHAR(45) NULL,
  `speed` VARCHAR(45) NULL,
  `short_description` VARCHAR(45) NULL,
  `long_description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `job_class`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `job_class` ;

CREATE TABLE IF NOT EXISTS `job_class` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `job_class_name` VARCHAR(45) NULL,
  `hit_dice` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `alignment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `alignment` ;

CREATE TABLE IF NOT EXISTS `alignment` (
  `id` INT NOT NULL,
  `alignment` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `personality_trait`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `personality_trait` ;

CREATE TABLE IF NOT EXISTS `personality_trait` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `trait` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `background`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `background` ;

CREATE TABLE IF NOT EXISTS `background` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `equipment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `equipment` ;

CREATE TABLE IF NOT EXISTS `equipment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `equipment_name` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(200) NULL,
  `last_name` VARCHAR(200) NULL,
  `phone` VARCHAR(45) NULL,
  `email` VARCHAR(200) NULL,
  `username` VARCHAR(200) NULL,
  `password` VARCHAR(200) NULL,
  `date_created` DATETIME NULL,
  `date_updated` DATETIME NULL,
  `role` VARCHAR(45) NULL,
  `active` TINYINT NULL,
  `profile_picture_url` VARCHAR(2000) NULL,
  `player_type` VARCHAR(200) NULL,
  `status` VARCHAR(200) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dnd_character`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dnd_character` ;

CREATE TABLE IF NOT EXISTS `dnd_character` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `strength` INT NULL,
  `dexterity` INT NULL,
  `constitution` INT NULL,
  `intelligence` INT NULL,
  `wisdom` INT NULL,
  `charisma` INT NULL,
  `gender` VARCHAR(45) NULL,
  `char_level` VARCHAR(45) NULL,
  `date_created` VARCHAR(45) NULL DEFAULT 'CURRENT_TIMESTAMP',
  `date_updated` DATETIME NULL,
  `status` VARCHAR(45) NULL,
  `initiative` INT NULL,
  `armor_class` INT NULL,
  `character_image` VARCHAR(2000) NULL,
  `dnd_race_id` INT NULL,
  `job_class_id` INT NULL,
  `alignment_id` INT NULL,
  `personality_trait_id` INT NULL,
  `background_id` INT NULL,
  `equipment_id` INT NULL,
  `user_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_dnd_character_dnd_race_idx` (`dnd_race_id` ASC),
  INDEX `fk_dnd_character_job_class1_idx` (`job_class_id` ASC),
  INDEX `fk_dnd_character_alignment1_idx` (`alignment_id` ASC),
  INDEX `fk_dnd_character_personality_trait1_idx` (`personality_trait_id` ASC),
  INDEX `fk_dnd_character_background1_idx` (`background_id` ASC),
  INDEX `fk_dnd_character_equipment1_idx` (`equipment_id` ASC),
  INDEX `fk_dnd_character_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_dnd_character_dnd_race`
    FOREIGN KEY (`dnd_race_id`)
    REFERENCES `dnd_race` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dnd_character_job_class1`
    FOREIGN KEY (`job_class_id`)
    REFERENCES `job_class` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dnd_character_alignment1`
    FOREIGN KEY (`alignment_id`)
    REFERENCES `alignment` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dnd_character_personality_trait1`
    FOREIGN KEY (`personality_trait_id`)
    REFERENCES `personality_trait` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dnd_character_background1`
    FOREIGN KEY (`background_id`)
    REFERENCES `background` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dnd_character_equipment1`
    FOREIGN KEY (`equipment_id`)
    REFERENCES `equipment` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dnd_character_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spell`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `spell` ;

CREATE TABLE IF NOT EXISTS `spell` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `spell_name` VARCHAR(45) NULL,
  `spell_level` VARCHAR(45) NULL,
  `spell_school` VARCHAR(45) NULL,
  `casting_time` VARCHAR(45) NULL,
  `components` VARCHAR(45) NULL,
  `spell_range` VARCHAR(45) NULL,
  `spell_duration` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `language`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `language` ;

CREATE TABLE IF NOT EXISTS `language` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `language_name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tool_proficiency`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tool_proficiency` ;

CREATE TABLE IF NOT EXISTS `tool_proficiency` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tool_name` VARCHAR(45) NULL,
  `tool_description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `skill_proficiency`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `skill_proficiency` ;

CREATE TABLE IF NOT EXISTS `skill_proficiency` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `skill_name` VARCHAR(45) NULL,
  `skill_description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `armor_proficiency`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `armor_proficiency` ;

CREATE TABLE IF NOT EXISTS `armor_proficiency` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `armor_name` VARCHAR(45) NULL,
  `armor_description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `saving_throw`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `saving_throw` ;

CREATE TABLE IF NOT EXISTS `saving_throw` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `saving_throw_name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dnd_character_has_job_class`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dnd_character_has_job_class` ;

CREATE TABLE IF NOT EXISTS `dnd_character_has_job_class` (
  `dnd_character_id` INT NOT NULL,
  `job_class_id` INT NOT NULL,
  PRIMARY KEY (`dnd_character_id`, `job_class_id`),
  INDEX `fk_dnd_character_has_job_class_job_class1_idx` (`job_class_id` ASC),
  INDEX `fk_dnd_character_has_job_class_dnd_character1_idx` (`dnd_character_id` ASC),
  CONSTRAINT `fk_dnd_character_has_job_class_dnd_character1`
    FOREIGN KEY (`dnd_character_id`)
    REFERENCES `dnd_character` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dnd_character_has_job_class_job_class1`
    FOREIGN KEY (`job_class_id`)
    REFERENCES `job_class` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `job_class_has_skill_proficiency`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `job_class_has_skill_proficiency` ;

CREATE TABLE IF NOT EXISTS `job_class_has_skill_proficiency` (
  `job_class_id` INT NOT NULL,
  `skill_proficiency_id` INT NOT NULL,
  PRIMARY KEY (`job_class_id`, `skill_proficiency_id`),
  INDEX `fk_job_class_has_skill_proficiency_skill_proficiency1_idx` (`skill_proficiency_id` ASC),
  INDEX `fk_job_class_has_skill_proficiency_job_class1_idx` (`job_class_id` ASC),
  CONSTRAINT `fk_job_class_has_skill_proficiency_job_class1`
    FOREIGN KEY (`job_class_id`)
    REFERENCES `job_class` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_job_class_has_skill_proficiency_skill_proficiency1`
    FOREIGN KEY (`skill_proficiency_id`)
    REFERENCES `skill_proficiency` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `job_class_has_tool_proficiency`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `job_class_has_tool_proficiency` ;

CREATE TABLE IF NOT EXISTS `job_class_has_tool_proficiency` (
  `job_class_id` INT NOT NULL,
  `tool_proficiency_id` INT NOT NULL,
  PRIMARY KEY (`job_class_id`, `tool_proficiency_id`),
  INDEX `fk_job_class_has_tool_proficiency_tool_proficiency1_idx` (`tool_proficiency_id` ASC),
  INDEX `fk_job_class_has_tool_proficiency_job_class1_idx` (`job_class_id` ASC),
  CONSTRAINT `fk_job_class_has_tool_proficiency_job_class1`
    FOREIGN KEY (`job_class_id`)
    REFERENCES `job_class` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_job_class_has_tool_proficiency_tool_proficiency1`
    FOREIGN KEY (`tool_proficiency_id`)
    REFERENCES `tool_proficiency` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `job_class_has_armor_proficiency`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `job_class_has_armor_proficiency` ;

CREATE TABLE IF NOT EXISTS `job_class_has_armor_proficiency` (
  `job_class_id` INT NOT NULL,
  `armor_proficiency_id` INT NOT NULL,
  PRIMARY KEY (`job_class_id`, `armor_proficiency_id`),
  INDEX `fk_job_class_has_armor_proficiency_armor_proficiency1_idx` (`armor_proficiency_id` ASC),
  INDEX `fk_job_class_has_armor_proficiency_job_class1_idx` (`job_class_id` ASC),
  CONSTRAINT `fk_job_class_has_armor_proficiency_job_class1`
    FOREIGN KEY (`job_class_id`)
    REFERENCES `job_class` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_job_class_has_armor_proficiency_armor_proficiency1`
    FOREIGN KEY (`armor_proficiency_id`)
    REFERENCES `armor_proficiency` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `job_class_has_saving_throw`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `job_class_has_saving_throw` ;

CREATE TABLE IF NOT EXISTS `job_class_has_saving_throw` (
  `job_class_id` INT NOT NULL,
  `saving_throw_id` INT NOT NULL,
  PRIMARY KEY (`job_class_id`, `saving_throw_id`),
  INDEX `fk_job_class_has_saving_throw_saving_throw1_idx` (`saving_throw_id` ASC),
  INDEX `fk_job_class_has_saving_throw_job_class1_idx` (`job_class_id` ASC),
  CONSTRAINT `fk_job_class_has_saving_throw_job_class1`
    FOREIGN KEY (`job_class_id`)
    REFERENCES `job_class` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_job_class_has_saving_throw_saving_throw1`
    FOREIGN KEY (`saving_throw_id`)
    REFERENCES `saving_throw` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dnd_character_has_language`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dnd_character_has_language` ;

CREATE TABLE IF NOT EXISTS `dnd_character_has_language` (
  `dnd_character_id` INT NOT NULL,
  `language_id` INT NOT NULL,
  PRIMARY KEY (`dnd_character_id`, `language_id`),
  INDEX `fk_dnd_character_has_language_language1_idx` (`language_id` ASC),
  INDEX `fk_dnd_character_has_language_dnd_character1_idx` (`dnd_character_id` ASC),
  CONSTRAINT `fk_dnd_character_has_language_dnd_character1`
    FOREIGN KEY (`dnd_character_id`)
    REFERENCES `dnd_character` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dnd_character_has_language_language1`
    FOREIGN KEY (`language_id`)
    REFERENCES `language` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `feature`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `feature` ;

CREATE TABLE IF NOT EXISTS `feature` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `job_class_has_feature`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `job_class_has_feature` ;

CREATE TABLE IF NOT EXISTS `job_class_has_feature` (
  `job_class_id` INT NOT NULL,
  `feature_id` INT NOT NULL,
  PRIMARY KEY (`job_class_id`, `feature_id`),
  INDEX `fk_job_class_has_feature_feature1_idx` (`feature_id` ASC),
  INDEX `fk_job_class_has_feature_job_class1_idx` (`job_class_id` ASC),
  CONSTRAINT `fk_job_class_has_feature_job_class1`
    FOREIGN KEY (`job_class_id`)
    REFERENCES `job_class` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_job_class_has_feature_feature1`
    FOREIGN KEY (`feature_id`)
    REFERENCES `feature` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dnd_race_has_feature`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dnd_race_has_feature` ;

CREATE TABLE IF NOT EXISTS `dnd_race_has_feature` (
  `dnd_race_id` INT NOT NULL,
  `feature_id` INT NOT NULL,
  PRIMARY KEY (`dnd_race_id`, `feature_id`),
  INDEX `fk_dnd_race_has_feature_feature1_idx` (`feature_id` ASC),
  INDEX `fk_dnd_race_has_feature_dnd_race1_idx` (`dnd_race_id` ASC),
  CONSTRAINT `fk_dnd_race_has_feature_dnd_race1`
    FOREIGN KEY (`dnd_race_id`)
    REFERENCES `dnd_race` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dnd_race_has_feature_feature1`
    FOREIGN KEY (`feature_id`)
    REFERENCES `feature` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dnd_race_has_spell`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dnd_race_has_spell` ;

CREATE TABLE IF NOT EXISTS `dnd_race_has_spell` (
  `dnd_race_id` INT NOT NULL,
  `spell_id` INT NOT NULL,
  PRIMARY KEY (`dnd_race_id`, `spell_id`),
  INDEX `fk_dnd_race_has_spell_spell1_idx` (`spell_id` ASC),
  INDEX `fk_dnd_race_has_spell_dnd_race1_idx` (`dnd_race_id` ASC),
  CONSTRAINT `fk_dnd_race_has_spell_dnd_race1`
    FOREIGN KEY (`dnd_race_id`)
    REFERENCES `dnd_race` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dnd_race_has_spell_spell1`
    FOREIGN KEY (`spell_id`)
    REFERENCES `spell` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `job_class_has_spell`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `job_class_has_spell` ;

CREATE TABLE IF NOT EXISTS `job_class_has_spell` (
  `job_class_id` INT NOT NULL,
  `spell_id` INT NOT NULL,
  PRIMARY KEY (`job_class_id`, `spell_id`),
  INDEX `fk_job_class_has_spell_spell1_idx` (`spell_id` ASC),
  INDEX `fk_job_class_has_spell_job_class1_idx` (`job_class_id` ASC),
  CONSTRAINT `fk_job_class_has_spell_job_class1`
    FOREIGN KEY (`job_class_id`)
    REFERENCES `job_class` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_job_class_has_spell_spell1`
    FOREIGN KEY (`spell_id`)
    REFERENCES `spell` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `timestamps`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `timestamps` ;

CREATE TABLE IF NOT EXISTS `timestamps` (
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL);


-- -----------------------------------------------------
-- Table `user_1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_1` ;

CREATE TABLE IF NOT EXISTS `user_1` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP);

SET SQL_MODE = '';
DROP USER IF EXISTS dungeonadmin@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'dungeonadmin'@'localhost' IDENTIFIED BY 'dungeonadmin';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'dungeonadmin'@'localhost';
SET SQL_MODE = '';
DROP USER IF EXISTS admin@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'admin'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `dnd_race`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `dnd_race` (`id`, `name`, `size`, `speed`, `short_description`, `long_description`) VALUES (1, 'Human', 'Medium', 'Fast', 'Human Stuff', 'Long Human Stuff');
INSERT INTO `dnd_race` (`id`, `name`, `size`, `speed`, `short_description`, `long_description`) VALUES (2, 'Orc', 'Big', 'Slow', 'Orc Stuff', 'Long Orc Stuff');

COMMIT;


-- -----------------------------------------------------
-- Data for table `job_class`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `job_class` (`id`, `job_class_name`, `hit_dice`) VALUES (1, 'Barbarian', '3');
INSERT INTO `job_class` (`id`, `job_class_name`, `hit_dice`) VALUES (2, 'Warlock', '5');

COMMIT;


-- -----------------------------------------------------
-- Data for table `alignment`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `alignment` (`id`, `alignment`) VALUES (1, 'Good');
INSERT INTO `alignment` (`id`, `alignment`) VALUES (2, 'Bad');

COMMIT;


-- -----------------------------------------------------
-- Data for table `personality_trait`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `personality_trait` (`id`, `trait`) VALUES (1, 'Nice');
INSERT INTO `personality_trait` (`id`, `trait`) VALUES (2, 'Mean');

COMMIT;


-- -----------------------------------------------------
-- Data for table `background`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `background` (`id`, `name`, `description`) VALUES (1, 'Adventuer', 'Went on adventures');
INSERT INTO `background` (`id`, `name`, `description`) VALUES (2, 'Cultist', 'Summoned Demons');

COMMIT;


-- -----------------------------------------------------
-- Data for table `equipment`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `equipment` (`id`, `equipment_name`, `description`) VALUES (1, 'Big Ax', 'A Very Big Ax');
INSERT INTO `equipment` (`id`, `equipment_name`, `description`) VALUES (2, 'Staff', 'A Magic Staff');

COMMIT;


-- -----------------------------------------------------
-- Data for table `user`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `user` (`id`, `first_name`, `last_name`, `phone`, `email`, `username`, `password`, `date_created`, `date_updated`, `role`, `active`, `profile_picture_url`, `player_type`, `status`) VALUES (1, 'Nathan', 'Hafley', '847-372-5302', 'hafleynathan@gmail.com', 'Nateomancer', 'Nateomancer', NULL, NULL, 'Admin', 1, NULL, 'Dungeon Master', NULL);
INSERT INTO `user` (`id`, `first_name`, `last_name`, `phone`, `email`, `username`, `password`, `date_created`, `date_updated`, `role`, `active`, `profile_picture_url`, `player_type`, `status`) VALUES (2, 'TEMP', 'TEMP', '123-456-7890', 'temp@gmail.com', 'Temp', 'Temp', NULL, NULL, 'Admin', 1, NULL, 'Dungeon Master', NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `dnd_character`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `dnd_character` (`id`, `name`, `strength`, `dexterity`, `constitution`, `intelligence`, `wisdom`, `charisma`, `gender`, `char_level`, `date_created`, `date_updated`, `status`, `initiative`, `armor_class`, `character_image`, `dnd_race_id`, `job_class_id`, `alignment_id`, `personality_trait_id`, `background_id`, `equipment_id`, `user_id`) VALUES (1, 'Nateomancer', 14, 8, 10, 14, 10, 15, 'Male', '3', NULL, NULL, 'Alive', 10, 20, NULL, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `dnd_character` (`id`, `name`, `strength`, `dexterity`, `constitution`, `intelligence`, `wisdom`, `charisma`, `gender`, `char_level`, `date_created`, `date_updated`, `status`, `initiative`, `armor_class`, `character_image`, `dnd_race_id`, `job_class_id`, `alignment_id`, `personality_trait_id`, `background_id`, `equipment_id`, `user_id`) VALUES (2, 'Dragonaut ', 15, 14, 14, 8, 10, 10, 'Male', '2', NULL, NULL, 'Alive', 11, 22, NULL, 2, 2, 2, 2, 2, 2, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `spell`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `spell` (`id`, `spell_name`, `spell_level`, `spell_school`, `casting_time`, `components`, `spell_range`, `spell_duration`, `description`) VALUES (1, 'Fireball', '1', 'Fire School', '1 minutes', 'None', '20 Feet', '2 Minutes', 'Cast a Huge Fire Ball');
INSERT INTO `spell` (`id`, `spell_name`, `spell_level`, `spell_school`, `casting_time`, `components`, `spell_range`, `spell_duration`, `description`) VALUES (2, 'Iceball', '1', 'Ice School', '2 minutes', 'Some', '30 feet', NULL, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `language`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `language` (`id`, `language_name`) VALUES (1, 'English');
INSERT INTO `language` (`id`, `language_name`) VALUES (2, 'Spanish');

COMMIT;


-- -----------------------------------------------------
-- Data for table `armor_proficiency`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `armor_proficiency` (`id`, `armor_name`, `armor_description`) VALUES (1, 'Leather', 'Leather Armor');
INSERT INTO `armor_proficiency` (`id`, `armor_name`, `armor_description`) VALUES (2, 'Cloth', 'Cloth Armor');

COMMIT;


-- -----------------------------------------------------
-- Data for table `saving_throw`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `saving_throw` (`id`, `saving_throw_name`) VALUES (1, 'Saving Throw Place Holder');

COMMIT;


-- -----------------------------------------------------
-- Data for table `dnd_character_has_job_class`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `dnd_character_has_job_class` (`dnd_character_id`, `job_class_id`) VALUES (1, 1);
INSERT INTO `dnd_character_has_job_class` (`dnd_character_id`, `job_class_id`) VALUES (2, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `job_class_has_armor_proficiency`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `job_class_has_armor_proficiency` (`job_class_id`, `armor_proficiency_id`) VALUES (1, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `job_class_has_saving_throw`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `job_class_has_saving_throw` (`job_class_id`, `saving_throw_id`) VALUES (1, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `dnd_character_has_language`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `dnd_character_has_language` (`dnd_character_id`, `language_id`) VALUES (1, 1);
INSERT INTO `dnd_character_has_language` (`dnd_character_id`, `language_id`) VALUES (2, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `feature`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `feature` (`id`, `name`, `description`) VALUES (1, 'Big Ax', 'Swing BIg Ax');
INSERT INTO `feature` (`id`, `name`, `description`) VALUES (2, 'Big Demon', 'Swing Big Demon');

COMMIT;


-- -----------------------------------------------------
-- Data for table `job_class_has_feature`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `job_class_has_feature` (`job_class_id`, `feature_id`) VALUES (1, 1);
INSERT INTO `job_class_has_feature` (`job_class_id`, `feature_id`) VALUES (2, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `dnd_race_has_feature`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `dnd_race_has_feature` (`dnd_race_id`, `feature_id`) VALUES (1, 1);
INSERT INTO `dnd_race_has_feature` (`dnd_race_id`, `feature_id`) VALUES (2, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `dnd_race_has_spell`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `dnd_race_has_spell` (`dnd_race_id`, `spell_id`) VALUES (1, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `job_class_has_spell`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndwebdb`;
INSERT INTO `job_class_has_spell` (`job_class_id`, `spell_id`) VALUES (1, 1);
INSERT INTO `job_class_has_spell` (`job_class_id`, `spell_id`) VALUES (2, 1);

COMMIT;

