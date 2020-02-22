-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: creaciones
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
-- Table structure for table `ofertas`
--

DROP TABLE IF EXISTS `ofertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ofertas` (
  `id_ofertas` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ofertas` varchar(45) DEFAULT NULL,
  `des_ofertas` text,
  `img_ofertas` varchar(45) DEFAULT NULL,
  `img1_ofertas` varchar(45) DEFAULT NULL,
  `img2_ofertas` varchar(45) DEFAULT NULL,
  `pre_ofertas` varchar(45) DEFAULT NULL,
  `ofer_ofertas` varchar(45) DEFAULT NULL,
  `car_ofertas` text,
  PRIMARY KEY (`id_ofertas`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofertas`
--

LOCK TABLES `ofertas` WRITE;
/*!40000 ALTER TABLE `ofertas` DISABLE KEYS */;
INSERT INTO `ofertas` VALUES (4,'Vestido de fiesta Eva Brazzi beige cinta','Vestido de fiesta para ocasiÃ³n especial','images/1086444371 (1).jpg','images/1086444371_1p.jpg','images/1086444371_2p.jpg','2399','1599','AplicaciÃ³n: Jareta\r\n\r\nCorte ropa: LÃ­nea A\r\n\r\nCuello: CorazÃ³n\r\n\r\nMarca: EVA BRAZZI\r\n\r\nLargo: Largo\r\n\r\nManga: Corta\r\n\r\nMaterial: PoliÃ©ster\r\n\r\nOcasiÃ³n: Fiesta\r\n\r\nInstrucciones de Lavado: Lavar en seco'),(5,'Vestido de fiesta Rimini Couture amarillo','Vestido de fiesta para ocasiÃ³n especial','images/segundo.jpg','images/segundo2.jpg','images/segundo3.jpg','1799','1079','AplicaciÃ³n: Liso\r\n\r\nCorte ropa: Semi-A\r\n\r\nCuello: Halter\r\n\r\nMarca: RIMINI COUTURE\r\n\r\nLargo: Largo\r\n\r\nManga: Sin manga\r\n\r\nMaterial: PoliÃ©ster\r\n\r\nOcasiÃ³n: Fiesta\r\n\r\nOtra InformaciÃ³n: Tela sintÃ©tica\r\n\r\nInstrucciones de Lavado: Lavar en seco'),(6,'Vestido liso Bridesmaids Collection','confeccionado con el toque de romanticismo que no podrÃ¡ faltar en una mÃ¡gica boda','images/tercero.jpg','images/tercero2.jpg','images/tercero3.jpg','2599','1559','AplicaciÃ³n: Transparencia\r\n\r\nCuello: V\r\n\r\nMarca: BRIDESMAIDS COLLECTION\r\n\r\nLargo: Largo\r\n\r\nMaterial: PoliÃ©ster\r\n\r\nInstrucciones de Lavado: Lavar en seco'),(7,'vestido bmorado','aprovecho esta oferta','images/quinto.jpg','images/quinto2.jpg','images/quinto3.jpg','3435','224','vestido de noche');
/*!40000 ALTER TABLE `ofertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL AUTO_INCREMENT,
  `usu` varchar(45) DEFAULT NULL,
  `contra` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'cris','1234');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `id_ventas` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cli` varchar(45) DEFAULT NULL,
  `app_cli` varchar(45) DEFAULT NULL,
  `apm_cli` varchar(45) DEFAULT NULL,
  `edo_cli` varchar(45) DEFAULT NULL,
  `ciu_cli` varchar(45) DEFAULT NULL,
  `tel_cli` varchar(45) DEFAULT NULL,
  `id_pro` varchar(45) DEFAULT NULL,
  `nom_pro` varchar(45) DEFAULT NULL,
  `pre_pro` varchar(45) DEFAULT NULL,
  `can_pro` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_ventas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'cristobal','zaldivar','mzariego','veracrux','oluta','9241424544','2','Vestido de dama','34','2','listo'),(2,'tony','kndked','kj','jhjh','jhjh','53554','4','Vestido de fiesta Eva Brazzi beige cinta','1599','1',NULL),(3,'esther','morales','vazquez','veraxr','acayucan','53554','4','Vestido de fiesta Eva Brazzi beige cinta','1599','1','listo');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-22 13:26:32
