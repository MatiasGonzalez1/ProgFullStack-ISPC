-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: app_viajeros_db
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `id_comentarios` int NOT NULL AUTO_INCREMENT,
  `texto` varchar(450) NOT NULL,
  `valoracion` int NOT NULL,
  `usuario_id_usuario` int NOT NULL,
  `viajeros_id_publ_viajeros` int NOT NULL,
  PRIMARY KEY (`id_comentarios`,`usuario_id_usuario`),
  KEY `fk_comentarios_usuario1_idx` (`usuario_id_usuario`),
  KEY `fk_comentarios_viajeros1_idx` (`viajeros_id_publ_viajeros`),
  CONSTRAINT `fk_comentarios_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `fk_comentarios_viajeros1` FOREIGN KEY (`viajeros_id_publ_viajeros`) REFERENCES `viajeros` (`id_publ_viajeros`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_paquete`
--

DROP TABLE IF EXISTS `compra_paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_paquete` (
  `id_compra_paquete` int NOT NULL AUTO_INCREMENT,
  `usuario_id_usuario` int NOT NULL,
  `venta_paquete_id_venta_paquete` int NOT NULL,
  PRIMARY KEY (`id_compra_paquete`,`usuario_id_usuario`),
  KEY `fk_compra_paquete_usuario1_idx` (`usuario_id_usuario`),
  KEY `fk_compra_paquete_venta_paquete1_idx` (`venta_paquete_id_venta_paquete`),
  CONSTRAINT `fk_compra_paquete_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `fk_compra_paquete_venta_paquete1` FOREIGN KEY (`venta_paquete_id_venta_paquete`) REFERENCES `venta_paquete` (`id_venta_paquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_paquete`
--

LOCK TABLES `compra_paquete` WRITE;
/*!40000 ALTER TABLE `compra_paquete` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacto` (
  `id_contacto` int NOT NULL AUTO_INCREMENT,
  `correo` varchar(45) NOT NULL,
  `nombre_contacto` varchar(45) NOT NULL,
  `apellido_contacto` varchar(45) NOT NULL,
  `mensaje` varchar(450) NOT NULL,
  `telefono` int NOT NULL,
  PRIMARY KEY (`id_contacto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pago`
--

DROP TABLE IF EXISTS `forma_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_pago` (
  `id_forma_pago` int NOT NULL AUTO_INCREMENT,
  `nombre_forma_pao` varchar(45) NOT NULL,
  `venta_paquete_id_venta_paquete` int NOT NULL,
  PRIMARY KEY (`id_forma_pago`),
  KEY `fk_forma_pago_venta_paquete1_idx` (`venta_paquete_id_venta_paquete`),
  CONSTRAINT `fk_forma_pago_venta_paquete1` FOREIGN KEY (`venta_paquete_id_venta_paquete`) REFERENCES `venta_paquete` (`id_venta_paquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pago`
--

LOCK TABLES `forma_pago` WRITE;
/*!40000 ALTER TABLE `forma_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `forma_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidad`
--

DROP TABLE IF EXISTS `localidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localidad` (
  `id_localidad` int NOT NULL AUTO_INCREMENT,
  `nombre_localidad` varchar(45) NOT NULL,
  `provincia_id_provincia` int NOT NULL,
  PRIMARY KEY (`id_localidad`),
  KEY `fk_localidad_provincia1_idx` (`provincia_id_provincia`),
  CONSTRAINT `fk_localidad_provincia1` FOREIGN KEY (`provincia_id_provincia`) REFERENCES `provincia` (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidad`
--

LOCK TABLES `localidad` WRITE;
/*!40000 ALTER TABLE `localidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `localidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_usuario`
--

DROP TABLE IF EXISTS `perfil_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_usuario` (
  `id_perfil` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `usuario_id_usuario` int NOT NULL,
  `localidad_id_localidad` int NOT NULL,
  PRIMARY KEY (`id_perfil`),
  KEY `fk_perfil_usuario_usuario_idx` (`usuario_id_usuario`),
  KEY `fk_perfil_usuario_localidad1_idx` (`localidad_id_localidad`),
  CONSTRAINT `fk_perfil_usuario_localidad1` FOREIGN KEY (`localidad_id_localidad`) REFERENCES `localidad` (`id_localidad`),
  CONSTRAINT `fk_perfil_usuario_usuario` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_usuario`
--

LOCK TABLES `perfil_usuario` WRITE;
/*!40000 ALTER TABLE `perfil_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincia` (
  `id_provincia` int NOT NULL AUTO_INCREMENT,
  `nombre_prov` varchar(45) NOT NULL,
  PRIMARY KEY (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(45) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_asunto`
--

DROP TABLE IF EXISTS `tipo_asunto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_asunto` (
  `id_tipo_asunto` int NOT NULL AUTO_INCREMENT,
  `nombre_asunto` varchar(45) NOT NULL,
  `contacto_id_contacto` int NOT NULL,
  PRIMARY KEY (`id_tipo_asunto`),
  KEY `fk_tipo_asunto_contacto1_idx` (`contacto_id_contacto`),
  CONSTRAINT `fk_tipo_asunto_contacto1` FOREIGN KEY (`contacto_id_contacto`) REFERENCES `contacto` (`id_contacto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_asunto`
--

LOCK TABLES `tipo_asunto` WRITE;
/*!40000 ALTER TABLE `tipo_asunto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_asunto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_paquete`
--

DROP TABLE IF EXISTS `tipo_paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_paquete` (
  `id_tipo_paquete` int NOT NULL AUTO_INCREMENT,
  `nombre_paquete` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_paquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_paquete`
--

LOCK TABLES `tipo_paquete` WRITE;
/*!40000 ALTER TABLE `tipo_paquete` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(45) NOT NULL,
  `contrasenia` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `rol_id_rol` int NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `fk_usuario_rol1_idx` (`rol_id_rol`),
  CONSTRAINT `fk_usuario_rol1` FOREIGN KEY (`rol_id_rol`) REFERENCES `rol` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_paquete`
--

DROP TABLE IF EXISTS `venta_paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_paquete` (
  `id_venta_paquete` int NOT NULL AUTO_INCREMENT,
  `imagen_prod` varchar(250) NOT NULL,
  `descrip_prod` varchar(450) NOT NULL,
  `precio` double NOT NULL,
  `plazo_paquete` date NOT NULL,
  `fecha_operacion` date NOT NULL,
  `usuario_id_usuario` int NOT NULL,
  `tipo_paquete_id_tipo_paquete` int NOT NULL,
  PRIMARY KEY (`id_venta_paquete`),
  KEY `fk_venta_paquete_usuario1_idx` (`usuario_id_usuario`),
  KEY `fk_venta_paquete_tipo_paquete1_idx` (`tipo_paquete_id_tipo_paquete`),
  CONSTRAINT `fk_venta_paquete_tipo_paquete1` FOREIGN KEY (`tipo_paquete_id_tipo_paquete`) REFERENCES `tipo_paquete` (`id_tipo_paquete`),
  CONSTRAINT `fk_venta_paquete_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_paquete`
--

LOCK TABLES `venta_paquete` WRITE;
/*!40000 ALTER TABLE `venta_paquete` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta_paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajeros`
--

DROP TABLE IF EXISTS `viajeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajeros` (
  `id_publ_viajeros` int NOT NULL AUTO_INCREMENT,
  `nombre_publ` varchar(45) NOT NULL,
  `descripc_publ` varchar(450) NOT NULL,
  `imagen_publ` varchar(45) NOT NULL,
  `usuario_id_usuario` int NOT NULL,
  `localidad_id_localidad` int NOT NULL,
  PRIMARY KEY (`id_publ_viajeros`),
  KEY `fk_viajeros_usuario1_idx` (`usuario_id_usuario`),
  KEY `fk_viajeros_localidad1_idx` (`localidad_id_localidad`),
  CONSTRAINT `fk_viajeros_localidad1` FOREIGN KEY (`localidad_id_localidad`) REFERENCES `localidad` (`id_localidad`),
  CONSTRAINT `fk_viajeros_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajeros`
--

LOCK TABLES `viajeros` WRITE;
/*!40000 ALTER TABLE `viajeros` DISABLE KEYS */;
/*!40000 ALTER TABLE `viajeros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-06 11:20:05
