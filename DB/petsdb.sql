-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema petsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `petsdb` ;

-- -----------------------------------------------------
-- Schema petsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `petsdb` DEFAULT CHARACTER SET utf8 ;
USE `petsdb` ;

-- -----------------------------------------------------
-- Table `dog`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dog` ;

CREATE TABLE IF NOT EXISTS `dog` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `age` VARCHAR(45) NULL,
  `breed` VARCHAR(45) NULL,
  `weight` DECIMAL(5,2) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS petsuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'petsuser'@'localhost' IDENTIFIED BY 'petsuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'petsuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `dog`
-- -----------------------------------------------------
START TRANSACTION;
USE `petsdb`;
INSERT INTO `dog` (`id`, `name`, `age`, `breed`, `weight`) VALUES (1, 'haley', '3', 'siberian husky', 76.66);
INSERT INTO `dog` (`id`, `name`, `age`, `breed`, `weight`) VALUES (2, 'randy', '9', 'golden retriever', 70.50);
INSERT INTO `dog` (`id`, `name`, `age`, `breed`, `weight`) VALUES (3, 'rachel', '2', 'labrador retriever', 72.00);
INSERT INTO `dog` (`id`, `name`, `age`, `breed`, `weight`) VALUES (4, 'sunny', '5', 'german shepherd', 80.16);
INSERT INTO `dog` (`id`, `name`, `age`, `breed`, `weight`) VALUES (6, 'ben', '4', 'bulldog', 40.88);
INSERT INTO `dog` (`id`, `name`, `age`, `breed`, `weight`) VALUES (7, 'ruby', '10', 'rottweiler', 66.00);
INSERT INTO `dog` (`id`, `name`, `age`, `breed`, `weight`) VALUES (8, 'dash', '6', 'dobermann', 65.32);
INSERT INTO `dog` (`id`, `name`, `age`, `breed`, `weight`) VALUES (9, 'hadi', '8', 'siberian husky', 80.50);

COMMIT;

