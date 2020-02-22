-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: escolar
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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

--
-- Table structure for table `alu`
--

DROP TABLE IF EXISTS `alu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alu` (
  `id_alu` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `ape` varchar(45) DEFAULT NULL,
  `fec_nac` date DEFAULT NULL,
  `sem` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_alu`)
) ENGINE=InnoDB AUTO_INCREMENT=54412 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alu`
--

LOCK TABLES `alu` WRITE;
/*!40000 ALTER TABLE `alu` DISABLE KEYS */;
INSERT INTO `alu` VALUES (1,'Luis Cristobal','Zaldivar Mazariego','1995-08-06','9'),(2,'Esther','Morales','1995-02-25','9'),(51,'Yoselin','Mazariego','2019-11-07','2'),(150,'cristina','zaldivar','1994-09-05','4'),(224,'Roberto Carlos','Ramon','1993-06-09','5'),(344,'dfdfd','mazariego enriquez','2019-11-21','4'),(27362,'Ana MarÃ­a ','Ramirez Orlando','2019-11-21','4'),(54411,'Ana Gabriela','Enriquez Ramos','2019-11-09','4');
/*!40000 ALTER TABLE `alu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conducta`
--

DROP TABLE IF EXISTS `conducta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conducta` (
  `idconducta` int(11) NOT NULL AUTO_INCREMENT,
  `id_alu` int(11) DEFAULT NULL,
  `fec_` date DEFAULT NULL,
  `obs` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idconducta`),
  KEY `fk_conducta_1_idx` (`id_alu`),
  CONSTRAINT `fk_conducta_1` FOREIGN KEY (`id_alu`) REFERENCES `alu` (`id_alu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conducta`
--

LOCK TABLES `conducta` WRITE;
/*!40000 ALTER TABLE `conducta` DISABLE KEYS */;
INSERT INTO `conducta` VALUES (1,1,'2019-11-18','le pegÃ³ a un compaÃ±ero'),(2,2,'2019-11-12','le gritÃ³ a la maestra'),(3,1,'2019-11-20','ofendio a un campeñero de clases'),(4,51,'2019-11-21','se portÃ³ mal'),(5,54411,'2019-11-21','jgjtjtyjtytyjtyjyt');
/*!40000 ALTER TABLE `conducta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidad` (
  `id_es` int(11) NOT NULL AUTO_INCREMENT,
  `nom_esp` varchar(45) DEFAULT NULL,
  `id_alu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_es`),
  KEY `fk_especialidad_1_idx` (`id_alu`),
  CONSTRAINT `fk_especialidad_1` FOREIGN KEY (`id_alu`) REFERENCES `alu` (`id_alu`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES (3,'informatica',1),(4,'humanidades',2),(8,'informatica',51),(9,'ciencias exactas',54411),(10,'computacion',224),(11,'informÃ¡tica',27362);
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faltas`
--

DROP TABLE IF EXISTS `faltas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faltas` (
  `idfaltas` int(11) NOT NULL AUTO_INCREMENT,
  `id_alu` int(11) DEFAULT NULL,
  `fec_` date DEFAULT NULL,
  `obs` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idfaltas`),
  KEY `fk_faltas_1_idx` (`id_alu`),
  CONSTRAINT `fk_faltas_1` FOREIGN KEY (`id_alu`) REFERENCES `alu` (`id_alu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faltas`
--

LOCK TABLES `faltas` WRITE;
/*!40000 ALTER TABLE `faltas` DISABLE KEYS */;
INSERT INTO `faltas` VALUES (1,1,'2019-11-04','No entro a la clase de matematicas'),(2,51,'2019-11-21','kkhlkh');
/*!40000 ALTER TABLE `faltas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_celular`
--

DROP TABLE IF EXISTS `rep_celular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_celular` (
  `folio` int(11) NOT NULL AUTO_INCREMENT,
  `id_alu` int(11) DEFAULT NULL,
  `fec_rep` date DEFAULT NULL,
  `fec_ent` date DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`folio`),
  KEY `fk_rep_celular_1_idx` (`id_alu`),
  CONSTRAINT `fk_rep_celular_1` FOREIGN KEY (`id_alu`) REFERENCES `alu` (`id_alu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_celular`
--

LOCK TABLES `rep_celular` WRITE;
/*!40000 ALTER TABLE `rep_celular` DISABLE KEYS */;
INSERT INTO `rep_celular` VALUES (1,1,'2019-11-09','2019-11-16','estaba jugando al fornite'),(2,2,'2019-11-09','2019-11-16','estaba jugando al fornite'),(3,51,'2019-11-09','2019-11-16','estaba mandando mensajes '),(4,1,'2019-11-09','2019-11-09','fghgh'),(5,51,'2019-11-14','2019-11-01','utyutyu'),(6,51,'2019-11-05','2019-11-02','tyutyuytu'),(7,54411,'2019-10-29','2019-11-02','tyutyu'),(8,54411,'2019-11-14','2019-11-15','rttyghdfghdfg'),(9,2,'2019-11-21','2019-11-24','ertrtetet'),(10,1,'2019-11-29','2019-11-29','Jajaja\r\n');
/*!40000 ALTER TABLE `rep_celular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_justificantes`
--

DROP TABLE IF EXISTS `rep_justificantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_justificantes` (
  `folio` int(11) NOT NULL AUTO_INCREMENT,
  `id_alu` int(11) DEFAULT NULL,
  `fec_` date DEFAULT NULL,
  `obs` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`folio`),
  KEY `fk_rep_justificantes_1_idx` (`id_alu`),
  CONSTRAINT `fk_rep_justificantes_1` FOREIGN KEY (`id_alu`) REFERENCES `alu` (`id_alu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_justificantes`
--

LOCK TABLES `rep_justificantes` WRITE;
/*!40000 ALTER TABLE `rep_justificantes` DISABLE KEYS */;
INSERT INTO `rep_justificantes` VALUES (1,1,'2019-11-10','le dio gripa'),(2,51,'2019-11-21','Jhghj');
/*!40000 ALTER TABLE `rep_justificantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_uniformes`
--

DROP TABLE IF EXISTS `rep_uniformes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rep_uniformes` (
  `folio` int(11) NOT NULL AUTO_INCREMENT,
  `id_alu` int(11) DEFAULT NULL,
  `fec_` date DEFAULT NULL,
  `obs` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`folio`),
  KEY `fk_rep_uniformes_1_idx` (`id_alu`),
  CONSTRAINT `fk_rep_uniformes_1` FOREIGN KEY (`id_alu`) REFERENCES `alu` (`id_alu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_uniformes`
--

LOCK TABLES `rep_uniformes` WRITE;
/*!40000 ALTER TABLE `rep_uniformes` DISABLE KEYS */;
INSERT INTO `rep_uniformes` VALUES (1,54411,'2019-11-10','no trajo la camisa'),(2,2,'2019-11-07','gfhfhfh'),(3,1,'2019-11-10','no trajo el pantalon del uniforme');
/*!40000 ALTER TABLE `rep_uniformes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tareas`
--

DROP TABLE IF EXISTS `tareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tareas` (
  `idtareas` int(11) NOT NULL AUTO_INCREMENT,
  `id_alu` int(11) DEFAULT NULL,
  `fec_` date DEFAULT NULL,
  `obs` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtareas`),
  KEY `fk_tareas_1_idx` (`id_alu`),
  CONSTRAINT `fk_tareas_1` FOREIGN KEY (`id_alu`) REFERENCES `alu` (`id_alu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tareas`
--

LOCK TABLES `tareas` WRITE;
/*!40000 ALTER TABLE `tareas` DISABLE KEYS */;
INSERT INTO `tareas` VALUES (1,1,'2019-11-01','No hizo la tarea de espaÃ±ol');
/*!40000 ALTER TABLE `tareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutores`
--

DROP TABLE IF EXISTS `tutores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutores` (
  `id_tut` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `ape` varchar(60) DEFAULT NULL,
  `dir` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `id_alu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tut`),
  KEY `fk_tutores_1_idx` (`id_alu`),
  CONSTRAINT `fk_tutores_1` FOREIGN KEY (`id_alu`) REFERENCES `alu` (`id_alu`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutores`
--

LOCK TABLES `tutores` WRITE;
/*!40000 ALTER TABLE `tutores` DISABLE KEYS */;
INSERT INTO `tutores` VALUES (1,'maria','enriquez','reforma','9241424544',1),(18,'emila','clark','dragonstone','92452485',2),(19,'sdsd','sds','sd','9241424544',51),(20,'Dante','Hernandez','conocida','018002023',54411),(21,'Luis Miguel','Ramirez Orlando','conocida','92837372',27362);
/*!40000 ALTER TABLE `tutores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-22 13:27:20
