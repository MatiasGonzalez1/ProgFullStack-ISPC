-- MySQL Script generated by MySQL Workbench
-- Sat Oct 22 20:02:36 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema app_viajeros_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `app_viajeros_db` ;

-- -----------------------------------------------------
-- Schema app_viajeros_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `app_viajeros_db` DEFAULT CHARACTER SET utf8 ;
USE `app_viajeros_db` ;

-- -----------------------------------------------------
-- Table `app_viajeros_db`.`rol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `app_viajeros_db`.`rol` ;

CREATE TABLE IF NOT EXISTS `app_viajeros_db`.`rol` (
  `id_rol` INT NOT NULL AUTO_INCREMENT,
  `nombre_rol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_rol`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app_viajeros_db`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `app_viajeros_db`.`usuario` ;

CREATE TABLE IF NOT EXISTS `app_viajeros_db`.`usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `id_rol` INT NOT NULL,
  `id_perfil` INT NOT NULL,
  `nombre_usuario` VARCHAR(45) NOT NULL,
  `contrasenia` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `rol_id_rol` INT NOT NULL,
  PRIMARY KEY (`id_usuario`),
  INDEX `id_rol_idx` (`id_rol` ASC) VISIBLE,
  CONSTRAINT `id_rol`
    FOREIGN KEY (`id_rol`)
    REFERENCES `app_viajeros_db`.`rol` (`id_rol`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app_viajeros_db`.`provincia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `app_viajeros_db`.`provincia` ;

CREATE TABLE IF NOT EXISTS `app_viajeros_db`.`provincia` (
  `id_provincia` INT NOT NULL AUTO_INCREMENT,
  `nombre_prov` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_provincia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app_viajeros_db`.`localidad`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `app_viajeros_db`.`localidad` ;

CREATE TABLE IF NOT EXISTS `app_viajeros_db`.`localidad` (
  `id_localidad` INT NOT NULL AUTO_INCREMENT,
  `id_provincia` INT NOT NULL,
  `nombre_localidad` VARCHAR(45) NOT NULL,
  `provincia_id_provincia` INT NOT NULL,
  PRIMARY KEY (`id_localidad`),
  INDEX `fk_localidad_provincia1_idx` (`provincia_id_provincia` ASC) VISIBLE,
  CONSTRAINT `fk_localidad_provincia1`
    FOREIGN KEY (`provincia_id_provincia`)
    REFERENCES `app_viajeros_db`.`provincia` (`id_provincia`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app_viajeros_db`.`perfil_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `app_viajeros_db`.`perfil_usuario` ;

CREATE TABLE IF NOT EXISTS `app_viajeros_db`.`perfil_usuario` (
  `id_perfil` INT NOT NULL AUTO_INCREMENT,
  `id_localidad` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `imagen` VARCHAR(250) NOT NULL,
  `usuario_id_usuario` INT NOT NULL,
  `localidad_id_localidad` INT NOT NULL,
  PRIMARY KEY (`id_perfil`),
  INDEX `fk_perfil_usuario_usuario_idx` (`usuario_id_usuario` ASC) VISIBLE,
  INDEX `fk_perfil_usuario_localidad1_idx` (`localidad_id_localidad` ASC) VISIBLE,
  CONSTRAINT `fk_perfil_usuario_usuario`
    FOREIGN KEY (`usuario_id_usuario`)
    REFERENCES `app_viajeros_db`.`usuario` (`id_usuario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_perfil_usuario_localidad1`
    FOREIGN KEY (`localidad_id_localidad`)
    REFERENCES `app_viajeros_db`.`localidad` (`id_localidad`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app_viajeros_db`.`viajeros`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `app_viajeros_db`.`viajeros` ;

CREATE TABLE IF NOT EXISTS `app_viajeros_db`.`viajeros` (
  `id_publicacion` INT NOT NULL AUTO_INCREMENT,
  `id_usuario` INT NOT NULL,
  `id_localidad` INT NOT NULL,
  `nombre_pub` VARCHAR(45) NOT NULL,
  `desc_pub` MEDIUMTEXT NOT NULL,
  `imagen_pub` VARCHAR(250) NOT NULL,
  `id_comentario` INT NOT NULL,
  `usuario_id_usuario` INT NOT NULL,
  `localidad_id_localidad` INT NOT NULL,
  PRIMARY KEY (`id_publicacion`),
  INDEX `fk_viajeros_usuario1_idx` (`usuario_id_usuario` ASC) VISIBLE,
  INDEX `fk_viajeros_localidad1_idx` (`localidad_id_localidad` ASC) VISIBLE,
  CONSTRAINT `fk_viajeros_usuario1`
    FOREIGN KEY (`usuario_id_usuario`)
    REFERENCES `app_viajeros_db`.`usuario` (`id_usuario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_viajeros_localidad1`
    FOREIGN KEY (`localidad_id_localidad`)
    REFERENCES `app_viajeros_db`.`localidad` (`id_localidad`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app_viajeros_db`.`comentarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `app_viajeros_db`.`comentarios` ;

CREATE TABLE IF NOT EXISTS `app_viajeros_db`.`comentarios` (
  `id_comentarios` INT NOT NULL AUTO_INCREMENT,
  `id_usuario` INT NOT NULL,
  `texto` VARCHAR(250) NOT NULL,
  `valoracion` INT NOT NULL,
  `usuario_id_usuario` INT NOT NULL,
  `viajeros_id_publicacion` INT NOT NULL,
  PRIMARY KEY (`id_comentarios`),
  INDEX `fk_comentarios_usuario1_idx` (`usuario_id_usuario` ASC) VISIBLE,
  INDEX `fk_comentarios_viajeros1_idx` (`viajeros_id_publicacion` ASC) VISIBLE,
  CONSTRAINT `fk_comentarios_usuario1`
    FOREIGN KEY (`usuario_id_usuario`)
    REFERENCES `app_viajeros_db`.`usuario` (`id_usuario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_comentarios_viajeros1`
    FOREIGN KEY (`viajeros_id_publicacion`)
    REFERENCES `app_viajeros_db`.`viajeros` (`id_publicacion`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app_viajeros_db`.`tipo_paquete`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `app_viajeros_db`.`tipo_paquete` ;

CREATE TABLE IF NOT EXISTS `app_viajeros_db`.`tipo_paquete` (
  `id_tipo_paquete` INT NOT NULL AUTO_INCREMENT,
  `nombre_paquete` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_tipo_paquete`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app_viajeros_db`.`venta_paquete`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `app_viajeros_db`.`venta_paquete` ;

CREATE TABLE IF NOT EXISTS `app_viajeros_db`.`venta_paquete` (
  `id_paquete` INT NOT NULL AUTO_INCREMENT,
  `id_usuario` INT NOT NULL,
  `id_tipo_paquete` INT NOT NULL,
  `id_forma_pago` INT NOT NULL,
  `imagen_pro` VARCHAR(250) NOT NULL,
  `desc_pro` VARCHAR(400) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `plazo_paquete` DATE NOT NULL,
  `fecha_oper` DATE NOT NULL,
  `tipo_paquete_id_tipo_paquete` INT NOT NULL,
  `usuario_id_usuario` INT NOT NULL,
  PRIMARY KEY (`id_paquete`),
  INDEX `fk_venta_paquete_tipo_paquete1_idx` (`tipo_paquete_id_tipo_paquete` ASC) VISIBLE,
  INDEX `fk_venta_paquete_usuario1_idx` (`usuario_id_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_venta_paquete_tipo_paquete1`
    FOREIGN KEY (`tipo_paquete_id_tipo_paquete`)
    REFERENCES `app_viajeros_db`.`tipo_paquete` (`id_tipo_paquete`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_venta_paquete_usuario1`
    FOREIGN KEY (`usuario_id_usuario`)
    REFERENCES `app_viajeros_db`.`usuario` (`id_usuario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app_viajeros_db`.`compra_paquete`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `app_viajeros_db`.`compra_paquete` ;

CREATE TABLE IF NOT EXISTS `app_viajeros_db`.`compra_paquete` (
  `id_compra` INT NOT NULL AUTO_INCREMENT,
  `id_usuario` INT NOT NULL,
  `id_paquete` INT NOT NULL,
  `usuario_id_usuario` INT NOT NULL,
  `venta_paquete_id_paquete` INT NOT NULL,
  PRIMARY KEY (`id_compra`),
  INDEX `fk_compra_paquete_usuario1_idx` (`usuario_id_usuario` ASC) VISIBLE,
  INDEX `fk_compra_paquete_venta_paquete1_idx` (`venta_paquete_id_paquete` ASC) VISIBLE,
  CONSTRAINT `fk_compra_paquete_usuario1`
    FOREIGN KEY (`usuario_id_usuario`)
    REFERENCES `app_viajeros_db`.`usuario` (`id_usuario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_compra_paquete_venta_paquete1`
    FOREIGN KEY (`venta_paquete_id_paquete`)
    REFERENCES `app_viajeros_db`.`venta_paquete` (`id_paquete`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app_viajeros_db`.`contacto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `app_viajeros_db`.`contacto` ;

CREATE TABLE IF NOT EXISTS `app_viajeros_db`.`contacto` (
  `id_contacto` INT NOT NULL AUTO_INCREMENT,
  `id_asunto` INT NOT NULL,
  `correo_contacto` VARCHAR(45) NOT NULL,
  `mensaje` VARCHAR(250) NOT NULL,
  `nombre_apellido` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_contacto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app_viajeros_db`.`tipo_asunto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `app_viajeros_db`.`tipo_asunto` ;

CREATE TABLE IF NOT EXISTS `app_viajeros_db`.`tipo_asunto` (
  `id_asunto` INT NOT NULL AUTO_INCREMENT,
  `nombre_asunto` VARCHAR(45) NOT NULL,
  `contacto_id_contacto` INT NOT NULL,
  PRIMARY KEY (`id_asunto`),
  INDEX `fk_tipo_asunto_contacto1_idx` (`contacto_id_contacto` ASC) VISIBLE,
  CONSTRAINT `fk_tipo_asunto_contacto1`
    FOREIGN KEY (`contacto_id_contacto`)
    REFERENCES `app_viajeros_db`.`contacto` (`id_contacto`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app_viajeros_db`.`forma_pago`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `app_viajeros_db`.`forma_pago` ;

CREATE TABLE IF NOT EXISTS `app_viajeros_db`.`forma_pago` (
  `id_forma_pago` INT NOT NULL AUTO_INCREMENT,
  `nombre_forma_pago` VARCHAR(45) NOT NULL,
  `venta_paquete_id_paquete` INT NOT NULL,
  PRIMARY KEY (`id_forma_pago`),
  INDEX `fk_forma_pago_venta_paquete1_idx` (`venta_paquete_id_paquete` ASC) VISIBLE,
  CONSTRAINT `fk_forma_pago_venta_paquete1`
    FOREIGN KEY (`venta_paquete_id_paquete`)
    REFERENCES `app_viajeros_db`.`venta_paquete` (`id_paquete`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;