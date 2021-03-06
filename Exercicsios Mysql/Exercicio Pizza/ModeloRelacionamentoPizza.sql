-- MySQL Script generated by MySQL Workbench
-- Mon Feb 15 20:53:56 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_pizzaria_legal
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `db_pizzaria_legal` ;

-- -----------------------------------------------------
-- Schema db_pizzaria_legal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_pizzaria_legal` DEFAULT CHARACTER SET utf8 ;
USE `db_pizzaria_legal` ;

-- -----------------------------------------------------
-- Table `db_pizzaria_legal`.`tb_categoria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_pizzaria_legal`.`tb_categoria` ;

CREATE TABLE IF NOT EXISTS `db_pizzaria_legal`.`tb_categoria` (
  `idtb_categoria` INT NOT NULL AUTO_INCREMENT,
  `tipoDeAlimento` VARCHAR(45) NULL,
  PRIMARY KEY (`idtb_categoria`),
  UNIQUE INDEX `idtb_categoria_UNIQUE` (`idtb_categoria` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_pizzaria_legal`.`tb_pizza`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_pizzaria_legal`.`tb_pizza` ;

CREATE TABLE IF NOT EXISTS `db_pizzaria_legal`.`tb_pizza` (
  `idtb_pizza` INT NOT NULL AUTO_INCREMENT,
  `sabor` VARCHAR(45) NULL,
  `preco` DOUBLE NULL,
  `tb_categoria_idtb_categoria` INT NOT NULL,
  PRIMARY KEY (`idtb_pizza`, `tb_categoria_idtb_categoria`),
  UNIQUE INDEX `idtb_pizza_UNIQUE` (`idtb_pizza` ASC) VISIBLE,
  INDEX `fk_tb_pizza_tb_categoria_idx` (`tb_categoria_idtb_categoria` ASC) VISIBLE,
  CONSTRAINT `fk_tb_pizza_tb_categoria`
    FOREIGN KEY (`tb_categoria_idtb_categoria`)
    REFERENCES `db_pizzaria_legal`.`tb_categoria` (`idtb_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
