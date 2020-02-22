-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: estadistica
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_ad` int(11) NOT NULL AUTO_INCREMENT,
  `cor` varchar(45) DEFAULT NULL,
  `con` varchar(45) DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `tip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_ad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'cristo@algo.com','1234','Cristobal','admin'),(2,'yicseki@hotmail.com','1234','Yicseli','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alta_escuelas`
--

DROP TABLE IF EXISTS `alta_escuelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alta_escuelas` (
  `cdt_esc` varchar(45) NOT NULL,
  `tip` varchar(45) DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `dom` varchar(45) DEFAULT NULL,
  `loc` varchar(45) DEFAULT NULL,
  `nom_dir` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cdt_esc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alta_escuelas`
--

LOCK TABLES `alta_escuelas` WRITE;
/*!40000 ALTER TABLE `alta_escuelas` DISABLE KEYS */;
INSERT INTO `alta_escuelas` VALUES ('05DPR0505I','PRIMARIA','Pro. Rafael Ramirez CastaÃ±eda','Enriquez','OLUT','Cristobal zaldivar'),('CPOZ','PREESCOLAR','josefa ortiz de dominguez','conocida','Oluta',NULL),('LE09','PREESCOLAR','Aron Garza','conocido','Acayucan',NULL);
/*!40000 ALTER TABLE `alta_escuelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alta_maestros`
--

DROP TABLE IF EXISTS `alta_maestros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alta_maestros` (
  `id_mae` int(11) NOT NULL AUTO_INCREMENT,
  `cdt` varchar(45) NOT NULL,
  `rfc` varchar(45) NOT NULL,
  `cur` varchar(45) DEFAULT NULL,
  `cp` varchar(45) DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `ape_pa` varchar(45) DEFAULT NULL,
  `cor` varchar(80) DEFAULT NULL,
  `con` varchar(45) DEFAULT NULL,
  `tip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_mae`),
  KEY `fk_alta_maestros_1_idx` (`cdt`),
  CONSTRAINT `fk_alta_maestros_1` FOREIGN KEY (`cdt`) REFERENCES `alta_escuelas` (`cdt_esc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alta_maestros`
--

LOCK TABLES `alta_maestros` WRITE;
/*!40000 ALTER TABLE `alta_maestros` DISABLE KEYS */;
INSERT INTO `alta_maestros` VALUES (1,'05DPR0505I','gdfgdf85','fdfgdgdg','515125','Luis','Zaldivar','cris@gmail.com','1234',''),(2,'05DPR0505I','1223s','sdsdsd','32332sdsx','Yiceseli','Hernandez','yic@hotmail.com','1234',NULL),(5,'CPOZ','wer23','sdf','95850','Maria','Mazareigo','maria@hotmail.com','1234',NULL),(6,'LE09','gocy930109f57','fghfg','95930','pablo ','castillo','poblocast@hotmail.com','456',NULL);
/*!40000 ALTER TABLE `alta_maestros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `altas_alumnos`
--

DROP TABLE IF EXISTS `altas_alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `altas_alumnos` (
  `folio` int(11) NOT NULL AUTO_INCREMENT,
  `cdt_esc` varchar(45) DEFAULT NULL,
  `gra` varchar(45) DEFAULT NULL,
  `gru` varchar(45) DEFAULT NULL,
  `id_mae` int(11) DEFAULT NULL,
  `cic_esc` varchar(60) DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `ape` varchar(45) DEFAULT NULL,
  `eda` int(11) DEFAULT NULL,
  `cur` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`folio`),
  KEY `fk_altas_alumnos_1_idx` (`cdt_esc`),
  KEY `fk_altas_alumnos_2_idx` (`id_mae`),
  CONSTRAINT `fk_altas_alumnos_1` FOREIGN KEY (`cdt_esc`) REFERENCES `alta_escuelas` (`cdt_esc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_altas_alumnos_2` FOREIGN KEY (`id_mae`) REFERENCES `alta_maestros` (`id_mae`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `altas_alumnos`
--

LOCK TABLES `altas_alumnos` WRITE;
/*!40000 ALTER TABLE `altas_alumnos` DISABLE KEYS */;
INSERT INTO `altas_alumnos` VALUES (1,'05DPR0505I','1','B',1,'Agosto19-Julio 2020','Andres','Enriqez',10,'assdk54ad','masculino'),(2,'05DPR0505I','2','a',2,'aggg','Ana','Perez',23,'sdasdasdasd','femenino'),(3,'05DPR0505I','3','B',1,'Agosto19-Julio 2020','Cris','sdsd',11,'sdsdsd','masculino'),(4,'05DPR0505I','1','B',1,'Agosto19-Julio 2020','Laura','Hernandez',23,'xcxc','femenino'),(5,'05DPR0505I','1','B',1,'Agosto19-Julio 2020','Yoselin','Mazariego',19,'vxcvxcvxcv','femenino'),(6,'05DPR0505I','1','A',1,'Agosto19-Julio 2020','Gloria P','Flores',22,'sdfsdfsf','femenino'),(7,'05DPR0505I','2','B',2,NULL,'Ana','Guillen',21,'ZAML950806HDFLZS09','femenino'),(8,'05DPR0505I','2','a',1,'2019-2020','Luis Cristobal','mazariego enriquez',23,'sdasdasdasd','masculino'),(9,'05DPR0505I','3','A',1,'2019-2020','Luis Cristobal','mazariego enriquez',23,'sdasdasdasd','masculino'),(10,'05DPR0505I','3','A',1,NULL,'ad','ssd',23,'sd','femenino'),(11,'05DPR0505I','4','A',2,'2019-2020','VANESA','pozos rios',23,'ZAML950806HDFLZS09','femenino'),(12,'05DPR0505I','4','B',2,'2019-2020','Ana','mazariego enriquez',23,'ZAML950806HDFLZS09','femenino'),(13,'05DPR0505I','5','A',2,'2019-2020','VANESA','mazariego enriquez',23,'fghfgh','femenino'),(14,'05DPR0505I','5','B',2,'2019-2020','VANESA','pozos rios',23,'hjkjkhg','femenino'),(15,'05DPR0505I','4','B',2,'2019-2020','Luis Cristobal','mazariego enriquez',23,'ZAML950806HDFLZS09','masculino'),(16,'05DPR0505I','4','A',2,'2019-2020','Luis Cristobal','mazariego enriquez',23,'fghfgh','masculino'),(17,'05DPR0505I','3','B',2,'2019-2020','VANESA','Dominguez',23,'ZAML950806HDFLZS09','femenino'),(18,'05DPR0505I','6','A',2,'2019-2020','VANESA','mazariego enriquez',23,'hjkjkhg','femenino'),(19,'05DPR0505I','6','B',2,'2019-2020','VANESA','mazariego enriquez',23,'asdasd2','femenino'),(20,'05DPR0505I','1','A',2,NULL,'Rosi','Gonzales',11,'sdfsf','masculino'),(21,'CPOZ','1','A',5,'2019-2020','VANESA','mazariego enriquez',23,'dfs','femenino'),(22,'CPOZ','1','B',5,'2019-2020','VANESA','mazariego enriquez',23,'hjkjkhg','femenino'),(23,'CPOZ','2','A',5,'2019-2020','VANESA','mazariego enriquez',23,'hjkjkhg','femenino'),(24,'CPOZ','2','B',5,'2019-2020','Maria','mazariego enriquez',23,'fghfgh','femenino'),(25,'CPOZ','3','A',5,'2019-2020','VANESA','mazariego enriquez',23,'ZAML950806HDFLZS09','femenino'),(26,'CPOZ','3','B',5,'2019-2020','VANESA','mazariego enriquez',23,'hjkjkhg','femenino'),(27,'CPOZ','1','A',5,'2019-2020','Luis Cristobal','mazariego enriquez',21,'ZAML950806HDFLZS09','masculino'),(28,'CPOZ','1','B',5,'2019-2020','Luis Cristobal','mazariego enriquez',23,'hjhg','masculino'),(29,'CPOZ','2','A',5,'2019-2020','Luis Cristobal','mazariego enriquez',23,'asdasd2','masculino'),(30,'CPOZ','2','B',5,'2019-2020','Claudio','pozos rios',23,'hjhg','masculino'),(31,'CPOZ','3','A',5,'2019-2020','Claudio','pozos rios',22,'fghfgh','masculino'),(32,'CPOZ','3','B',5,'2019-2020','Luis Cristobal','pozos rios',23,'hjhg','masculino'),(33,'CPOZ','2','B',5,'2019-2020','VANESA','mazariego enriquez',23,'asdasd2','femenino'),(34,'05DPR0505I','1','A',2,'2019-2020','Laura ','Hernandez Cruz',22,'ZAML950806HDFLZS09','femenino'),(35,'05DPR0505I','6','B',2,'2019-2020','Claudio','mazariego enriquez',23,'hjhg','masculino');
/*!40000 ALTER TABLE `altas_alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traslados`
--

DROP TABLE IF EXISTS `traslados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traslados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folio` int(11) DEFAULT NULL,
  `cdt_pro` varchar(45) DEFAULT NULL,
  `fec_baj` date DEFAULT NULL,
  `cdt_rec` varchar(45) DEFAULT NULL,
  `gru` varchar(45) DEFAULT NULL,
  `fec_alt` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_traslados_1_idx` (`folio`),
  CONSTRAINT `fk_traslados_1` FOREIGN KEY (`folio`) REFERENCES `altas_alumnos` (`folio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traslados`
--

LOCK TABLES `traslados` WRITE;
/*!40000 ALTER TABLE `traslados` DISABLE KEYS */;
/*!40000 ALTER TABLE `traslados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-22 13:27:58
