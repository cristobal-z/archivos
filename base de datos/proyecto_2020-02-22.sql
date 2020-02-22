-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: proyecto
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
-- Table structure for table `control_interno`
--

DROP TABLE IF EXISTS `control_interno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_interno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siniga` bigint(20) DEFAULT NULL,
  `arete_` varchar(45) DEFAULT NULL,
  `hato` varchar(45) DEFAULT NULL,
  `boton` varchar(45) DEFAULT NULL,
  `bandera` varchar(45) DEFAULT NULL,
  `event` varchar(45) DEFAULT NULL,
  `fec_` date DEFAULT NULL,
  `clav_upp` varchar(45) DEFAULT NULL,
  `control_interno` varchar(45) DEFAULT NULL,
  `fec_ins` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_control_interno_1_idx` (`siniga`),
  CONSTRAINT `fk_control_interno_1` FOREIGN KEY (`siniga`) REFERENCES `registro_con_siniga` (`siniga`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_interno`
--

LOCK TABLES `control_interno` WRITE;
/*!40000 ALTER TABLE `control_interno` DISABLE KEYS */;
INSERT INTO `control_interno` VALUES (1,3061107172,'PENDIENTE','VACA','E','E','----',NULL,'---','---','2020-01-21');
/*!40000 ALTER TABLE `control_interno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_leche`
--

DROP TABLE IF EXISTS `control_leche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_leche` (
  `id_lec` int(11) NOT NULL AUTO_INCREMENT,
  `siniga` bigint(20) DEFAULT NULL,
  `fec_` date DEFAULT NULL,
  `lit` int(11) DEFAULT NULL,
  `obs` text,
  PRIMARY KEY (`id_lec`),
  KEY `fk_control_leche_1_idx` (`siniga`),
  CONSTRAINT `fk_control_leche_1` FOREIGN KEY (`siniga`) REFERENCES `registro_con_siniga` (`siniga`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_leche`
--

LOCK TABLES `control_leche` WRITE;
/*!40000 ALTER TABLE `control_leche` DISABLE KEYS */;
INSERT INTO `control_leche` VALUES (1,3061107172,'2020-01-21',5,'');
/*!40000 ALTER TABLE `control_leche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_rancho`
--

DROP TABLE IF EXISTS `datos_rancho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos_rancho` (
  `clave_ran` varchar(45) NOT NULL,
  `nom_ran` varchar(150) DEFAULT NULL,
  `local_ran` varchar(50) DEFAULT NULL,
  `num_ran` varchar(45) DEFAULT NULL,
  `propi_ran` varchar(100) DEFAULT NULL,
  `tel_ran` varchar(45) DEFAULT NULL,
  `dir_ran` varchar(100) DEFAULT NULL,
  `cor_ran` varchar(45) DEFAULT NULL,
  `como_ran` text,
  `clave_upp` varchar(45) DEFAULT NULL,
  `num_hect` varchar(45) DEFAULT NULL,
  `tip_pas` varchar(100) DEFAULT NULL,
  `img_fierro` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`clave_ran`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_rancho`
--

LOCK TABLES `datos_rancho` WRITE;
/*!40000 ALTER TABLE `datos_rancho` DISABLE KEYS */;
INSERT INTO `datos_rancho` VALUES ('301720006','Rancho La Magdalena','17.927704,-94.821963','24 4 6115','Guillermo Hernandez Dominguez','9242428242','Carretera Texistepec km 3.5','rancho_lamagdalena@hotmail.com','DesviaciÃ³n  a Texistepec, entre poblado Colombia y puente la autopista','30-172-2532-002','100','MG5, Insurgente, Mombasa, Caiman, Estrella y Humidicola','MD');
/*!40000 ALTER TABLE `datos_rancho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motivo_baja_upp`
--

DROP TABLE IF EXISTS `motivo_baja_upp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motivo_baja_upp` (
  `no_cvo` int(11) NOT NULL AUTO_INCREMENT,
  `siniga` bigint(20) DEFAULT NULL,
  `muerte_rancho` date DEFAULT NULL,
  `sacrificio_rastro` date DEFAULT NULL,
  `vent_engor` varchar(45) DEFAULT NULL,
  `cesion` varchar(45) DEFAULT NULL,
  `robo` varchar(45) DEFAULT NULL,
  `vent_recria` varchar(45) DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no_cvo`),
  KEY `fk_motivo_baja_upp_1_idx` (`siniga`),
  CONSTRAINT `fk_motivo_baja_upp_1` FOREIGN KEY (`siniga`) REFERENCES `registro_con_siniga` (`siniga`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivo_baja_upp`
--

LOCK TABLES `motivo_baja_upp` WRITE;
/*!40000 ALTER TABLE `motivo_baja_upp` DISABLE KEYS */;
INSERT INTO `motivo_baja_upp` VALUES (1,3070152165,NULL,NULL,'2019-11-15','','','','BECERRO'),(2,3070152161,NULL,NULL,'2019-10-17','','','','BECERRO'),(3,3070152147,NULL,NULL,'2019-09-12','','','','BECERRO'),(4,3070152143,NULL,NULL,'2019-11-08','','','','BECERRO'),(5,3068809907,NULL,NULL,'2020-01-21','','','','VACA'),(6,2323454,'2020-01-22',NULL,'','','','','BECERRO'),(7,417775,NULL,NULL,'','x','','',''),(8,3068809904,NULL,NULL,'2020-01-28','','','','');
/*!40000 ALTER TABLE `motivo_baja_upp` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`cristobal`@`localhost`*/ /*!50003 trigger baja_upp after insert on motivo_baja_upp
for each row
begin
UPDATE  registro_con_siniga SET estado = 'BAJA' WHERE siniga = new.siniga;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `partos`
--

DROP TABLE IF EXISTS `partos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partos` (
  `idpartos` int(11) NOT NULL AUTO_INCREMENT,
  `siniga` bigint(20) DEFAULT NULL,
  `fec_ini` date DEFAULT NULL,
  `fec_fin` date DEFAULT NULL,
  `promedio` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpartos`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partos`
--

LOCK TABLES `partos` WRITE;
/*!40000 ALTER TABLE `partos` DISABLE KEYS */;
INSERT INTO `partos` VALUES (14,3064847103,'2020-02-21','2020-02-23',0),(15,3065562737,'2020-02-21','2020-05-13',0),(17,3061107172,'2020-02-21','2020-03-21',0),(18,3061107172,'2020-05-21','2020-09-21',2),(19,3061107172,'2020-10-21','2021-02-19',1),(20,3064847103,'2020-04-23','2020-06-17',2),(21,3061107172,'2022-04-16','2022-06-23',1),(22,3064847103,'2020-12-21','2021-02-11',6),(23,3064847103,'2021-11-25','2022-04-14',9),(24,3064847103,'2023-04-14','2023-06-22',0),(25,3064847103,'2024-05-22','2024-07-25',11),(26,3064847103,'2025-08-25','2025-10-24',1),(27,3061768459,'2020-02-22','2020-09-25',0),(28,3061768459,'2021-09-25','2021-12-24',12),(29,3061768459,'2022-01-30','2022-03-17',1);
/*!40000 ALTER TABLE `partos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`cristobal`@`localhost`*/ /*!50003 trigger alta after insert on partos
for each row
begin
UPDATE  registro_con_siniga SET edo_ani = 'CARGADA' WHERE siniga = new.siniga;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`cristobal`@`localhost`*/ /*!50003 trigger baja_emba before update on partos
for each row
begin
UPDATE  registro_con_siniga SET edo_ani = 'VACIA' WHERE siniga = new.siniga;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recordatorios`
--

DROP TABLE IF EXISTS `recordatorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recordatorios` (
  `id_recor` int(11) NOT NULL AUTO_INCREMENT,
  `id_siniga` bigint(20) DEFAULT NULL,
  `fec` date DEFAULT NULL,
  `nom_rec` varchar(45) DEFAULT NULL,
  `car` text,
  `edo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_recor`),
  KEY `fk_recordatorios_1_idx` (`id_siniga`),
  CONSTRAINT `fk_recordatorios_1` FOREIGN KEY (`id_siniga`) REFERENCES `registro_con_siniga` (`siniga`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recordatorios`
--

LOCK TABLES `recordatorios` WRITE;
/*!40000 ALTER TABLE `recordatorios` DISABLE KEYS */;
INSERT INTO `recordatorios` VALUES (1,3061107172,'2020-01-21','vacuna','rtyfghfgh','REALIZADO'),(2,3061768458,'2020-01-21','vacuna','','REALIZADO'),(3,3061768458,'2020-01-21','vitaminas','','REALIZADO'),(4,3061107172,'2020-01-21','vacuna','eytjtrntrbytjbtrnyjbrjnp','REALIZADO'),(5,3061107172,'2020-01-22','vacuna','jfjghjghj','REALIZADO'),(6,3061768459,'2020-01-25','vacuna','','ACTIVO'),(7,3065562737,'2020-01-25','vacuna','','ACTIVO');
/*!40000 ALTER TABLE `recordatorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_con_siniga`
--

DROP TABLE IF EXISTS `registro_con_siniga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_con_siniga` (
  `siniga` bigint(20) NOT NULL,
  `idrancho` varchar(45) DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `fec_na` date DEFAULT NULL,
  `col` varchar(45) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `fec_aretado` date DEFAULT NULL,
  `raz` varchar(45) DEFAULT NULL,
  `obs` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `nac_por` varchar(45) DEFAULT NULL,
  `img_ani` varchar(100) DEFAULT NULL,
  `edo_ani` varchar(45) DEFAULT NULL,
  `pdf_fact` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`siniga`),
  KEY `fk_registro_con_siniga_1_idx` (`idrancho`),
  CONSTRAINT `fk_registro_con_siniga_1` FOREIGN KEY (`idrancho`) REFERENCES `datos_rancho` (`clave_ran`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_con_siniga`
--

LOCK TABLES `registro_con_siniga` WRITE;
/*!40000 ALTER TABLE `registro_con_siniga` DISABLE KEYS */;
INSERT INTO `registro_con_siniga` VALUES (53633,NULL,'Brunoa','2020-01-28','cafe','Macho','2020-01-28','cebu','','ACTIVO','MN',NULL,'preñada',NULL),(417775,'301720006','dfdfdf','2020-01-24','cafe','Macho','2020-01-24','cebu','','BAJA',NULL,NULL,'VACIA',NULL),(2323454,'301720006','Claudio','2020-01-22','cafe','Macho','2020-01-22','Suiza','','BAJA',NULL,NULL,'VACIA',NULL),(3025342,'301720006','carlos','2019-11-06','cafe','Macho','2020-01-28','cebu','','ACTIVO','MN','img/3025342','VACIA',NULL),(123342523,NULL,'VANESA','2020-01-24','Hosca','Hembra','2020-01-28','Suiza','','ACTIVO','MN',NULL,NULL,NULL),(3061107172,'301720006','Lety','2019-06-12','Hosca','Hembra','2019-09-18','Suiza','','ACTIVO','MN','img/Lety.jpg','VACIA','facturas/3061107172'),(3061768458,'301720006','Cochina','2019-11-05','Hosca','Hembra','2019-11-05','Suiza','','ACTIVO','MN','img/Cochina.jpg','CARGADA','facturas/3061768458'),(3061768459,'301720006','Mariposa','2019-06-06','Sarda','Hembra','2019-10-10','Suisbu','','ACTIVO','MN','img/Mariposa-8458.jpg','VACIA',NULL),(3064847103,'301720006','Manzanita','2019-08-16','Pinta','Hembra','2019-08-23','Holandez','','ACTIVO','MN','img/Manzanita-7103.jpg','VACIA',NULL),(3065562737,'301720006','Zury','2019-06-06','Sarda','Hembra','2019-09-12','Suisbu','','ACTIVO','MN','img/Zury-2737.jpg','VACIA',NULL),(3065562747,'301720006','Lupita','2019-10-10','Hosca','Hembra','2019-08-28','Suiza','','ACTIVO','MN','img/Lupita-2747.jpg','VACIA',NULL),(3065562759,'301720006','Lagatija','2019-08-16','Hosca','Hembra','2019-07-05','Suiza','','ACTIVO','MN','img/Lagartija-2759.jpg','VACIA',NULL),(3065562764,'301720006','Poposquela','2019-09-06','Hosca','Hembra','2019-09-12','Suiza','','ACTIVO','MN','img/Poposquela-2764.jpg','VACIA',NULL),(3068809904,'301720006','Papaya','2019-06-06','Hosca','Hembra','2019-07-11','Suiza','','BAJA','MN','img/Papaya-9904.jpg','VACIA',NULL),(3068809907,'301720006','Cebolla','2019-02-14','Hosca','Hembra','2019-08-23','Suiza','','BAJA','MN','img/Cebolla-9907.jpg','VACIA',NULL),(3068809913,'301720006','Ballena','2019-10-09','Hosca','Hembra','2019-06-06','Suiza','','ACTIVO','MN','img/Ballena-9913.jpg','VACIA',NULL),(3068809922,'301720006','Jitana','2019-08-23','Sarda','Hembra','2019-08-23','Suisbu','','ACTIVO','MN','img/Jitana-9922.jpg','VACIA',NULL),(3068809941,'301720006','Pony','2019-06-13','Blanca','Hembra','2019-09-12','Suisbu','','ACTIVO','MN','img/Pony-9941.jpg','VACIA',NULL),(3068809949,'301720006','Dora','2019-06-12','Sarda','Hembra','2019-08-15','Suisbu','','ACTIVO','MN','img/Dora-9949.jpg','VACIA',NULL),(3068809957,'301720006','Citlali','2019-02-14','Hosca','Hembra','2019-06-22','Suiza','','ACTIVO','MN','img/Citlali-9957.jpg','VACIA',NULL),(3069460143,'301720006','Yahir','2019-09-12','Sardo','Macho','2019-10-16','Cebu','','ACTIVO','MN','img/Yahir-0143.jpg','VACIA',NULL),(3070152143,'301720006','Cristobal','2019-06-12','Negro','Macho','2019-07-03','cebu','','BAJA','IA',NULL,'VACIA',NULL),(3070152147,'301720006','Carlos','2019-06-05','Blanco','Macho','2019-07-11','Cebu','','BAJA','IA',NULL,'VACIA',NULL),(3070152161,'301720006','Beto','2019-09-05','Negro','Macho','2019-10-09','cebu','','BAJA','IA',NULL,'VACIA',NULL),(3070152165,'301720006','Pepe','2019-04-10','Pinto','Macho','2019-07-12','cebu','','BAJA','MN',NULL,'VACIA',NULL),(3070152175,'301720006','Bailarina','2019-05-15','Pinta','Hembra','2019-09-12','Holstein','','ACTIVO','MN','img/Bailarina-2175.jpg','VACIA',NULL),(3071287489,'301720006','nube','2012-05-15','Hosca','Hembra','2020-01-22','Suiza','','ACTIVO','MN',NULL,'VACIA',NULL),(3071287496,'301720006','principe','2019-12-27','cafe','Macho','2020-01-22','cebu','','ACTIVO',NULL,'img/2234.jpg','VACIA',NULL),(9241424544,'301720006','ejemplo','2020-01-21','cafe','Macho','2020-01-21','cebu','','ACTIVO',NULL,'img/9241424544','VACIA','facturas/9241424544'),(30627221201,'301720006','Barby','2019-06-20','Hosca','Hembra','2019-08-09','Suiza','','ACTIVO','MN','img/Barby-1201.jpg','VACIA',NULL);
/*!40000 ALTER TABLE `registro_con_siniga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_nac`
--

DROP TABLE IF EXISTS `registro_nac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_nac` (
  `id_reg` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `fec_na` date DEFAULT NULL,
  `pes_na` int(11) DEFAULT NULL,
  `pes_act` int(11) DEFAULT NULL,
  `fec_pes` date DEFAULT NULL,
  `siniga_tor` bigint(20) DEFAULT NULL,
  `siniga_vac` bigint(20) DEFAULT NULL,
  `col` varchar(45) DEFAULT NULL,
  `raz` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `obs` varchar(45) DEFAULT NULL,
  `siniga` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_reg`),
  KEY `fk_registro_nac_1_idx` (`siniga_vac`),
  CONSTRAINT `fk_registro_nac_1` FOREIGN KEY (`siniga_vac`) REFERENCES `registro_con_siniga` (`siniga`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_nac`
--

LOCK TABLES `registro_nac` WRITE;
/*!40000 ALTER TABLE `registro_nac` DISABLE KEYS */;
INSERT INTO `registro_nac` VALUES (1,'ejemplo','2020-01-21',30,NULL,NULL,3061768458,3061768458,'cafe','cebu','Macho','','9241424544'),(2,'Claudio','2020-01-22',40,NULL,NULL,3061107172,3061107172,'cafe','Suiza','Macho','','2323454'),(3,'principe','2019-12-27',40,NULL,NULL,3070694357,3071287489,'cafe','cebu','Macho','','3071287496'),(4,'dfdfdf','2020-01-24',30,NULL,NULL,9241424544,3061768458,'cafe','cebu','Macho','','417775'),(5,'VANESA','2020-01-24',30,NULL,NULL,NULL,3061768458,'Hosca','Suiza','Hembra','','123342523'),(6,'Bruno','2020-01-28',30,NULL,NULL,NULL,3061768458,'cafe','cebu','Macho','','53633'),(7,'Lamberto','2020-01-28',30,NULL,NULL,NULL,3061768459,'cafe','cebu','Macho','',NULL);
/*!40000 ALTER TABLE `registro_nac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usu` varchar(45) DEFAULT NULL,
  `pas` varchar(45) DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `ape_pa` varchar(45) DEFAULT NULL,
  `ape` varchar(45) DEFAULT NULL,
  `dir` varchar(45) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='  ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cristobal@gmail.com','1234','Luis Cristobal','zaldivar','mazariego','enriquez 108 entre allende','img/wal2.jpg'),(2,'vane@hotmail.com','1234','Vanessa','Rodriguez','Arias','','img/Logo.jpeg');
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

-- Dump completed on 2020-02-22 13:28:31
