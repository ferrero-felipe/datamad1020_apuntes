-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sara
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sara
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sara` DEFAULT CHARACTER SET utf8 ;
USE `sara` ;

-- -----------------------------------------------------
-- Table `sara`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sara`.`customer` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `date_of_birth` DATETIME NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sara`.`sale`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sara`.`sale` (
  `sale_id` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NOT NULL,
  `customer_id` INT NOT NULL,
  PRIMARY KEY (`sale_id`),
  INDEX `fk_sale_customer1_idx` (`customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_sale_customer1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `sara`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sara`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sara`.`category` (
  `category_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sara`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sara`.`product` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `price` DECIMAL(2) NOT NULL,
  `category_id` INT NOT NULL,
  `quantity_in_stock` INT NULL,
  PRIMARY KEY (`product_id`),
  INDEX `fk_product_category_idx` (`category_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_category`
    FOREIGN KEY (`category_id`)
    REFERENCES `sara`.`category` (`category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sara`.`sale_product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sara`.`sale_product` (
  `sale_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`sale_id`, `product_id`),
  INDEX `fk_sale_has_product_product1_idx` (`product_id` ASC) VISIBLE,
  INDEX `fk_sale_has_product_sale1_idx` (`sale_id` ASC) VISIBLE,
  CONSTRAINT `fk_sale_has_product_sale1`
    FOREIGN KEY (`sale_id`)
    REFERENCES `sara`.`sale` (`sale_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sale_has_product_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `sara`.`product` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sara`.`social_media`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sara`.`social_media` (
  `customer_customer_id` INT NOT NULL,
  `facebook` VARCHAR(45) NULL,
  `instagram` VARCHAR(45) NULL,
  `google` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_customer_id`),
  INDEX `fk_table1_customer1_idx` (`customer_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_table1_customer1`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `sara`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sara`.`address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sara`.`address` (
  `address_id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `street` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `postal_code` VARCHAR(45) NULL,
  PRIMARY KEY (`address_id`),
  INDEX `fk_address_customer1_idx` (`customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_address_customer1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `sara`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
