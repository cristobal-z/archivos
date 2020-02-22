-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: diana
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
-- Table structure for table `directores`
--

DROP TABLE IF EXISTS `directores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directores` (
  `id_dir` int(11) NOT NULL AUTO_INCREMENT,
  `nom_dir` varchar(99) DEFAULT NULL,
  `ape_dir` varchar(99) DEFAULT NULL,
  `tel_dir` varchar(45) DEFAULT NULL,
  `cct` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_dir`),
  KEY `fk_directores_1_idx` (`cct`),
  CONSTRAINT `fk_directores_1` FOREIGN KEY (`cct`) REFERENCES `escuelas` (`cct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directores`
--

LOCK TABLES `directores` WRITE;
/*!40000 ALTER TABLE `directores` DISABLE KEYS */;
INSERT INTO `directores` VALUES (1,'Claudio','Pozos Rios','9241424545','30DTV0117P'),(2,'Facundo ','Hernandez Cruz','9241424544','30DTV0142O'),(3,'Luis Cristobal','mazariego enriquez','9241424544','30DTV0612P'),(4,'Evelyn','Ferral Laraq','9241024056','30DTV0281P');
/*!40000 ALTER TABLE `directores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escuelas`
--

DROP TABLE IF EXISTS `escuelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escuelas` (
  `cct` varchar(45) NOT NULL,
  `nom_cct` varchar(100) DEFAULT NULL,
  `dir_cct` varchar(130) DEFAULT NULL,
  `loc_cct` varchar(120) DEFAULT NULL,
  `mun_cct` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escuelas`
--

LOCK TABLES `escuelas` WRITE;
/*!40000 ALTER TABLE `escuelas` DISABLE KEYS */;
INSERT INTO `escuelas` VALUES ('30DTV0117P','Miguel Hidalgo Y Costilla','Lazaro Cardenas  S/N, Col. Centro, C.P. 96945','Hermanos Cedillo ','Uxpanapa'),('30DTV0142O','Sor Juana Ines De La Cruz','Carretera a Adolfo López Mateos S/N, Col. Centro, C.P. 96158','Medias Aguas','Sayula De Aleman'),('30DTV0281P','Alfonso Arroyo Flores','Frente a la Iglesia S/N,  Col. Centro, C.P 96926','Helio Garcia Alfaro','Uxpanapa'),('30DTV0612P','Leona Vicario','Fernando Lopez Arías S/N, Col. Centro, C.P. 96153','El Progreso Mixe','Sayula De Aleman'),('30DTV0659J','Jose Maria Morelos Y Pavon','Jesus Carranza S/N, Col. Centro, C.P. 96950','Buenavista','Jesus Carranza'),('30DTV0660Z','Alfonso Arroyo Flores','California S/N, Col. Centro, C.P. 96950','Modelo Dos Rios (Las Flores)  ','Jesus Carranza'),('30DTV0702H','Enrique C. Rébsamen','Francisco Villa S/N, esquina 26 de Agosto, Col. Rafael Murillo Vidal, C.P. 96250','Jaltipan De Morelos','Jáltipan '),('30DTV0741J','Jaime Nuno Roca','A un costado de la Esc. Primaria S/N, Col. Centro, C.P.96200','Ranchoapan','Jáltipan '),('30DTV0744G','Gustavo Díaz Ordaz','Benito Juárez S/N, Col. Centro, C.P.  96998','La Horqueta','Uxpanapa'),('30DTV0948A','Luis Donaldo Colosio Murrieta','Salida carretera a Tecolotepec S/N, Col. Centro, C.P 96950','El Tepache','Jesus Carranza'),('30DTV0949Z','Ignacio Zaragoza','Fco. I Madero No. 104, Col. Centro, C.P. 96977','Veinticuatro De Febrero','Jesus Carranza'),('30DTV0950P','Ignacio Zaragoza','Av. Independencia S/N, Col. Centro, C.P. 96970',' Suchilapn Del Rio','Jesus Carranza'),('30DTV0951O','Francisco Javier Clavijero','Reforma Agraria S/N, Col. Centro, C.P. 96950','Chalchijapan','Jesus Carranza'),('30DTV1000X','Lic. Adolfo López Mateos','Carretera a Romero Rubio S/N, Col. Centro, C.P. 92105','Adolfo López Mateos',' Sayula De Alemán'),('30DTV1090F','Niños Heroes','Emiliano Zapata S/N, Col. Centro, C.P. 96950','Emiliano Zapata S/N, Col. Centro, C.P. 96950','Jesus Carranza'),('30DTV1239G','Emiliano Zapata','Nicolas Bravo S/N, Col. Centro, C.P.   96901','Poblado Cinco',' Uxpanapa'),('30DTV1248O','Benito Juarez García','Colombia Land S/N, Col. Centro, C.P. 96950','Dieciséis De Septiembre',' Jesus Carranza'),('30DTV1370P','Juan Escutia','Prolongación Salida Francisco I. Madero S/N, Col. Centro, C.P. 96998   ','Niños Héroes (Los Juanes)','Uxpanapa'),('30DTV1399U','Antonio Martínez De Castro','Calle Benito Juárez S/N, Col. Centro, C.P. 96901  ','Las Carolinas ','Uxpanapa'),('30DTV1447N','Lazaro Cárdenas Del Río','Murillo Vidal S/N, Col. Centro, C.P.  96901','Fernando Lopez Arias','Uxpanapa'),('30DTV1448M','Telesecundaria','Junto a la Primaria S/N, Col. Centro, C.P. 96901  ','Fernando Lopez Arias ','Uxpanapa'),('30DTV1506M','Jose Vasconcelos Calderon','Boulevard esquina Hermosa S/N, Col. Centro, C.P. 96945','Jorge L. Tamayo','Uxpanapa'),('30DTV1555V','Renato Leduc','Revolución S/N, Col. Centro, C.P. 96950','Nueva Esperanza',' Jesus Carranza'),('30DTV1573K','Justo Sierra','Dante Delgado Ranauro S/N, Col. Centro, C.P. 96200','Ixpuchapan','Jaltipan '),('30DTV1804L','Justo Sierra Méndez','16 de Septiembre S/N, Col. Centro, C.P. 96950  ','Nuevo Zacualpan','Jesus Carranza'),('30DTV1805K','Margarita Eustaquia Maza Parada','16 de Septiembre S/N, Col. Centro, C.P. 96901','El Progreso',' Uxpanapa'),('30DTV1808H','Ricardo Flores Magón ','Libano S/N, Col. Centro, C.P.  96901','Narciso Mendoza','Uxpanapa'),('30DTV1900O','Rafael  Ramirez Castañeda','Benito Juárez S/N, Col. Centro, C.P. 96988   ','Benito Juárez (Poblado Uno)','Uno'),('30DTV1906I','Telesecundaria','Calle Principal S/N, Col. Centro, C.P. 96940','Rio Azul (Licenciado Rafael Murillo Vidal)','Uxpanapa'),('30DTV2023O','Telesecundaria','Marcelino García Barragán S/N, Col. Centro, C.P. 96973','Josefa Ortiz De Domínguez (Tronconada)','Jesus Carranza');
/*!40000 ALTER TABLE `escuelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maestros`
--

DROP TABLE IF EXISTS `maestros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maestros` (
  `id_ma` int(11) NOT NULL AUTO_INCREMENT,
  `nom_` varchar(45) DEFAULT NULL,
  `ape` varchar(45) DEFAULT NULL,
  `dir` varchar(45) DEFAULT NULL,
  `cdt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_ma`),
  KEY `fk_maestros_1_idx` (`cdt`),
  CONSTRAINT `fk_maestros_1` FOREIGN KEY (`cdt`) REFERENCES `escuelas` (`cct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maestros`
--

LOCK TABLES `maestros` WRITE;
/*!40000 ALTER TABLE `maestros` DISABLE KEYS */;
INSERT INTO `maestros` VALUES (1,'Luis Cristobal','Zaldivar ','enriquez 107','30DTV0142O'),(2,'VANESA','mazariego enriquez','enriquez 107','30DTV0142O'),(3,'Jonas','Dominguez','enriquez 107','30DTV0142O'),(4,'Claudio','fgh','enriquez 108','30DTV0142O');
/*!40000 ALTER TABLE `maestros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias_1`
--

DROP TABLE IF EXISTS `materias_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias_1` (
  `idmaterias_1` int(11) NOT NULL AUTO_INCREMENT,
  `espanol1` varchar(45) DEFAULT NULL,
  `matematicas1` varchar(45) DEFAULT NULL,
  `biologia1` varchar(45) DEFAULT NULL,
  `quimica1` varchar(45) DEFAULT NULL,
  `ingles1` varchar(45) DEFAULT NULL,
  `mat_alu` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmaterias_1`),
  KEY `fk_materias_1_1_idx` (`mat_alu`),
  CONSTRAINT `fk_materias_1_1` FOREIGN KEY (`mat_alu`) REFERENCES `primero` (`mat`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_1`
--

LOCK TABLES `materias_1` WRITE;
/*!40000 ALTER TABLE `materias_1` DISABLE KEYS */;
INSERT INTO `materias_1` VALUES (1,'8','8','8','8','8',2362),(2,'6','7','5','8','9',24221),(3,'6','8','9','10','8',4532);
/*!40000 ALTER TABLE `materias_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias_2`
--

DROP TABLE IF EXISTS `materias_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias_2` (
  `idmaterias_2` int(11) NOT NULL AUTO_INCREMENT,
  `espanol2` varchar(45) DEFAULT NULL,
  `matematicas2` varchar(45) DEFAULT NULL,
  `biologia2` varchar(45) DEFAULT NULL,
  `quimica2` varchar(45) DEFAULT NULL,
  `ingles2` varchar(45) DEFAULT NULL,
  `mat_alu` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmaterias_2`),
  KEY `fk_materias_2_1_idx` (`mat_alu`),
  CONSTRAINT `fk_materias_2_1` FOREIGN KEY (`mat_alu`) REFERENCES `segundo` (`mat`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_2`
--

LOCK TABLES `materias_2` WRITE;
/*!40000 ALTER TABLE `materias_2` DISABLE KEYS */;
INSERT INTO `materias_2` VALUES (1,'9','9','9','9','9',221),(2,'5','8','6','5','4',252);
/*!40000 ALTER TABLE `materias_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias_3`
--

DROP TABLE IF EXISTS `materias_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias_3` (
  `idmaterias_3` int(11) NOT NULL AUTO_INCREMENT,
  `espanol3` varchar(45) DEFAULT NULL,
  `matematicas3` varchar(45) DEFAULT NULL,
  `biologia3` varchar(45) DEFAULT NULL,
  `quimica3` varchar(45) DEFAULT NULL,
  `ingles3` varchar(45) DEFAULT NULL,
  `mat_alu` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmaterias_3`),
  KEY `fk_materias_3_1_idx` (`mat_alu`),
  CONSTRAINT `fk_materias_3_1` FOREIGN KEY (`mat_alu`) REFERENCES `tercero` (`mat`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_3`
--

LOCK TABLES `materias_3` WRITE;
/*!40000 ALTER TABLE `materias_3` DISABLE KEYS */;
INSERT INTO `materias_3` VALUES (1,'8','8','8','8','8',123),(2,'8','8','7','9','10',242);
/*!40000 ALTER TABLE `materias_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `primero`
--

DROP TABLE IF EXISTS `primero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `primero` (
  `mat` int(11) NOT NULL AUTO_INCREMENT,
  `cct` varchar(45) DEFAULT NULL,
  `nom_` varchar(45) DEFAULT NULL,
  `ape` varchar(45) DEFAULT NULL,
  `curp` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `gru` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mat`),
  KEY `fk_primero_1_idx` (`cct`),
  CONSTRAINT `fk_primero_1` FOREIGN KEY (`cct`) REFERENCES `escuelas` (`cct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24222 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primero`
--

LOCK TABLES `primero` WRITE;
/*!40000 ALTER TABLE `primero` DISABLE KEYS */;
INSERT INTO `primero` VALUES (232,'30DTV0117P','Luis Cristobal','mazariego enriquez','ZAML950806HDFLZS09','HOMBRE','A'),(322,'30DTV0117P','ana','guillen','sdfsdfs2234','MUJER','A'),(2362,'30DTV0281P','Luis','zaldivar','DFS','HOMBRE','A'),(3423,'30DTV0142O','dfdfdf','mazariego enriquez','sdasdasdasd','HOMBRE','A'),(4532,'30DTV0117P','VANESA','pozos rios','sdasdasdasd','MUJER','A'),(24221,'30DTV0117P','Jonas','Dominguez','sdasdasdasd','HOMBRE','A');
/*!40000 ALTER TABLE `primero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segundo`
--

DROP TABLE IF EXISTS `segundo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segundo` (
  `mat` int(11) NOT NULL AUTO_INCREMENT,
  `cct` varchar(45) DEFAULT NULL,
  `nom_` varchar(45) DEFAULT NULL,
  `ape` varchar(45) DEFAULT NULL,
  `curp` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `gru` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mat`),
  KEY `fk_primero_1_idx` (`cct`),
  CONSTRAINT `fk_primero_10` FOREIGN KEY (`cct`) REFERENCES `escuelas` (`cct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segundo`
--

LOCK TABLES `segundo` WRITE;
/*!40000 ALTER TABLE `segundo` DISABLE KEYS */;
INSERT INTO `segundo` VALUES (221,'30DTV0117P','Diana Julia ','carrasco Rita','asdad747','MUJER','B'),(252,'30DTV0117P','Allen','orta toledo','asdsdf24','HOMBRE','C');
/*!40000 ALTER TABLE `segundo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tercero`
--

DROP TABLE IF EXISTS `tercero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tercero` (
  `mat` int(11) NOT NULL AUTO_INCREMENT,
  `cct` varchar(45) DEFAULT NULL,
  `nom_` varchar(45) DEFAULT NULL,
  `ape` varchar(45) DEFAULT NULL,
  `curp` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `gru` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mat`),
  KEY `fk_tercero_1_idx` (`cct`),
  CONSTRAINT `fk_tercero_1` FOREIGN KEY (`cct`) REFERENCES `escuelas` (`cct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24213 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tercero`
--

LOCK TABLES `tercero` WRITE;
/*!40000 ALTER TABLE `tercero` DISABLE KEYS */;
INSERT INTO `tercero` VALUES (123,'30DTV0117P','Esther A','Morales','skfsdf22','MUJER','C'),(242,'30DTV0117P','jorge Martin','basurto','skfds3','HOMBRE','A'),(2321,'30DTV0117P','Naty','bustos','dfr346','HOMBRE','b'),(24212,'30DTV0612P','VANESA','mazariego enriquez','ZAML950806HDFLZS09','MUJER','A');
/*!40000 ALTER TABLE `tercero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `idusers` int(11) NOT NULL AUTO_INCREMENT,
  `nom_user` varchar(45) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `pas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Diana','diana@hotmail.com','1234');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-22 13:27:00
