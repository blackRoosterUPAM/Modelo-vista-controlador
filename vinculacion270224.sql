-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: vinculacion
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumnodocs`
--

DROP TABLE IF EXISTS `alumnodocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnodocs` (
  `Matricula` bigint NOT NULL,
  `CV` longblob,
  `FechaCreación` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `Matricula` (`Matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnodocs`
--

LOCK TABLES `alumnodocs` WRITE;
/*!40000 ALTER TABLE `alumnodocs` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnodocs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `Matricula` bigint NOT NULL,
  `NombreA` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ApellidoP` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ApellidoM` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Telefono` bigint NOT NULL,
  `CorreoE` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Carrera` int DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Proceso` tinyint(1) NOT NULL DEFAULT '0',
  `idProceso` int DEFAULT NULL,
  `idPeriodo` int NOT NULL,
  PRIMARY KEY (`Matricula`),
  KEY `idPeriodo` (`idPeriodo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (10101050,'Luis Benito','Vargas','García',2215982344,'lsc.luisvargas@gmail.com',3,0,0,1,4),(18030200,'Jaqueline Aurora','Priego','Lerista',22222222,'j.priegol@upam.edu.mx',3,0,0,1,4);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnosede`
--

DROP TABLE IF EXISTS `alumnosede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnosede` (
  `IdSede` int NOT NULL,
  `NombreSede` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `Matricula` bigint NOT NULL,
  `NombrePE` int NOT NULL,
  `FechaInicio` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idProceso` int DEFAULT NULL,
  `Aceptado` tinyint NOT NULL DEFAULT '0',
  KEY `Matricula` (`Matricula`),
  KEY `IdSede` (`IdSede`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnosede`
--

LOCK TABLES `alumnosede` WRITE;
/*!40000 ALTER TABLE `alumnosede` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnosede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrera` (
  `IdCarrera` int NOT NULL AUTO_INCREMENT,
  `nombreCarrera` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`IdCarrera`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Ingeniería Automotriz'),(2,'Ingeniería en Energía'),(3,'Ingeniería en Software'),(4,'Ingeniería en Tecnologías'),(5,'Licenciatura en Terapia F'),(6,'Licenciatura en Administr');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigos_recuperacion`
--

DROP TABLE IF EXISTS `codigos_recuperacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codigos_recuperacion` (
  `idUsuario` int NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigos_recuperacion`
--

LOCK TABLES `codigos_recuperacion` WRITE;
/*!40000 ALTER TABLE `codigos_recuperacion` DISABLE KEYS */;
INSERT INTO `codigos_recuperacion` VALUES (23456789,'433472');
/*!40000 ALTER TABLE `codigos_recuperacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenios`
--

DROP TABLE IF EXISTS `convenios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convenios` (
  `IdSede` int NOT NULL,
  `Convenio` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFinal` date NOT NULL,
  PRIMARY KEY (`Convenio`),
  KEY `IdSede` (`IdSede`),
  CONSTRAINT `convenios_ibfk_1` FOREIGN KEY (`IdSede`) REFERENCES `sede` (`IdSede`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenios`
--

LOCK TABLES `convenios` WRITE;
/*!40000 ALTER TABLE `convenios` DISABLE KEYS */;
/*!40000 ALTER TABLE `convenios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docalumnoperiodo`
--

DROP TABLE IF EXISTS `docalumnoperiodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docalumnoperiodo` (
  `Matricula` bigint NOT NULL,
  `IdValidacion` int NOT NULL AUTO_INCREMENT,
  `IdProceso` int NOT NULL,
  `IdDocumento` int NOT NULL,
  `DocumentoPDF` longblob,
  `EstatusPtc` tinyint(1) NOT NULL,
  `EstatusVinc` tinyint(1) NOT NULL,
  `IdPeriodo` int NOT NULL,
  PRIMARY KEY (`IdValidacion`),
  KEY `Matricula` (`Matricula`),
  KEY `IdProceso` (`IdProceso`),
  KEY `IdDocumento` (`IdDocumento`),
  KEY `IdPeriodo` (`IdPeriodo`),
  CONSTRAINT `docalumnoperiodo_ibfk_2` FOREIGN KEY (`IdProceso`) REFERENCES `proceso` (`IdProceso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `docalumnoperiodo_ibfk_3` FOREIGN KEY (`IdDocumento`) REFERENCES `documentacion` (`IdDocumento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `docalumnoperiodo_ibfk_4` FOREIGN KEY (`IdPeriodo`) REFERENCES `periodo` (`IdPeriodo`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docalumnoperiodo`
--

LOCK TABLES `docalumnoperiodo` WRITE;
/*!40000 ALTER TABLE `docalumnoperiodo` DISABLE KEYS */;
/*!40000 ALTER TABLE `docalumnoperiodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentacion`
--

DROP TABLE IF EXISTS `documentacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentacion` (
  `IdDocumento` int NOT NULL,
  `NombreDoc` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`IdDocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentacion`
--

LOCK TABLES `documentacion` WRITE;
/*!40000 ALTER TABLE `documentacion` DISABLE KEYS */;
INSERT INTO `documentacion` VALUES (1,'RVIN'),(2,'Carta Aceptación'),(3,'Evaluación Final'),(4,'Carta Liberación'),(5,'Acuse de Carta de Presentación');
/*!40000 ALTER TABLE `documentacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodo`
--

DROP TABLE IF EXISTS `periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `periodo` (
  `IdPeriodo` int NOT NULL,
  `Meses` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `Año` int NOT NULL,
  `estatus` tinyint NOT NULL,
  PRIMARY KEY (`IdPeriodo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo`
--

LOCK TABLES `periodo` WRITE;
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
INSERT INTO `periodo` VALUES (1,'Septiembre-Diciembre',2023,1),(2,'Enero-Abril',2023,1),(3,'Enero-Abril',2024,1),(4,'Enero-Abril',2024,1),(5,'Mayo-Agosto',2024,1),(6,'Enero-Abril',2021,0);
/*!40000 ALTER TABLE `periodo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `incrementar_id` BEFORE INSERT ON `periodo` FOR EACH ROW BEGIN
    DECLARE nuevo_id INT;
   
    SELECT IFNULL(MAX(IdPeriodo), 0) + 1 INTO nuevo_id FROM periodo;
   
    SET NEW.IdPeriodo = nuevo_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pliberación`
--

DROP TABLE IF EXISTS `pliberación`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pliberación` (
  `IdProceso` int NOT NULL,
  `IdValidación` int NOT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Matricula` bigint NOT NULL,
  KEY `Matricula` (`Matricula`),
  KEY `IdValidación` (`IdValidación`),
  KEY `IdProceso` (`IdProceso`),
  CONSTRAINT `pliberación_ibfk_2` FOREIGN KEY (`IdValidación`) REFERENCES `docalumnoperiodo` (`IdValidacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pliberación_ibfk_3` FOREIGN KEY (`IdProceso`) REFERENCES `proceso` (`IdProceso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pliberación`
--

LOCK TABLES `pliberación` WRITE;
/*!40000 ALTER TABLE `pliberación` DISABLE KEYS */;
/*!40000 ALTER TABLE `pliberación` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proceso`
--

DROP TABLE IF EXISTS `proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proceso` (
  `IdProceso` int NOT NULL AUTO_INCREMENT,
  `NombrePE` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`IdProceso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proceso`
--

LOCK TABLES `proceso` WRITE;
/*!40000 ALTER TABLE `proceso` DISABLE KEYS */;
INSERT INTO `proceso` VALUES (1,'Estancia 1'),(2,'Estancia 2'),(3,'Estadía'),(4,'Práctica 1'),(5,'Práctica 2'),(6,'Práctica 3'),(7,'Práctica 4'),(8,'Servicio Social');
/*!40000 ALTER TABLE `proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptc`
--

DROP TABLE IF EXISTS `ptc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ptc` (
  `idPtc` bigint NOT NULL AUTO_INCREMENT,
  `nombrePtc` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `APaternoPtc` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `AMaternoPtc` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `IdCarrera` int NOT NULL,
  PRIMARY KEY (`idPtc`),
  KEY `IdCarrera` (`IdCarrera`) USING BTREE,
  CONSTRAINT `ptc_ibfk_1` FOREIGN KEY (`IdCarrera`) REFERENCES `carrera` (`IdCarrera`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptc`
--

LOCK TABLES `ptc` WRITE;
/*!40000 ALTER TABLE `ptc` DISABLE KEYS */;
INSERT INTO `ptc` VALUES (214,'raul','raul','raul','raul@gmail.com',3),(1150,'Luis Benito','Vargas','García','luis.vargas@upamozoc.edu.mx',2),(1211,'prueba','prueba','prueba','prueba@gmail.com',1),(12111,'prueba2','prueba2','prueba2','prueba2@gmail.com',1);
/*!40000 ALTER TABLE `ptc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `idRol` int NOT NULL AUTO_INCREMENT,
  `nombreRol` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'SuperAdmin'),(2,'Escolares'),(3,'Vinculacion'),(4,'Estudiante'),(5,'Sede'),(6,'Director'),(7,'PTC'),(8,'Graficas');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sede`
--

DROP TABLE IF EXISTS `sede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sede` (
  `IdSede` int NOT NULL,
  `NombreSede` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Dirección` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `CorreoContacto` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Telefono` bigint NOT NULL,
  `tiposede` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Logo` longblob,
  PRIMARY KEY (`IdSede`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sede`
--

LOCK TABLES `sede` WRITE;
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
INSERT INTO `sede` VALUES (1211,'kautilab2.2','ahasgsad','comoestamigente@gmail.com',2131231231,'Privada',''),(1234,'GenSoft','Cd modelo puebla','lsc.luisvargas@gmail.com',2215982344,'Privada',''),(1357,'Prueba','qwertyu','prueba@gmail.com',2215982344,'Privada',''),(5615,'Prueba','Prueba','b.rodriguezt@upam.edu.mx',2216171616,'Privada',''),(51713,'Diego','Gajabd','Diego@upam.edu.mx',1673813781,'Privada',''),(456511,'Kautilab','fafafa','kautilab@gmail.com',2212122122,'Publica',''),(21032026,'aerobot','san patrcio ','comoestamigente@gmail.com',1231231111,'Publica','');
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `IdUsuario` bigint NOT NULL AUTO_INCREMENT,
  `CorreoE` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Contraseña` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idRol` int NOT NULL,
  `NombreU` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `APaternoU` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `AMaternoU` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`IdUsuario`),
  KEY `idRol` (`idRol`),
  CONSTRAINT `idRol` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=210326191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (10,'g@g.g','202cb962ac59075b964b07152d234b70',8,'Graphics','G','G'),(1150,'serviciosescolares@upamozoc.edu.mx','6ebe76c9fb411be97b3b0d48b791a7c9',2,'Vinculación',' ',' '),(1211,'comoestamigente@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',5,'Diego_2','d','d'),(1357,'prueba@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',5,'luis','vargas','garcía'),(9001,'vinculacion@upamozoc.edu.mx','6ebe76c9fb411be97b3b0d48b791a7c9',3,'Vinculacion','Vinculacion','Viculacion'),(9002,'superadmin@upamozoc.edu.mx','6ebe76c9fb411be97b3b0d48b791a7c9',1,'Super','Admin','istrador'),(9003,'director@upamozoc.edu.mx','6ebe76c9fb411be97b3b0d48b791a7c9',6,'Director','Director','Director'),(9004,'escolares@upamozoc.edu.mx','6ebe76c9fb411be97b3b0d48b791a7c9',2,'servicios','escolares','escolares'),(12065,'prueba_es6@gmail.com','202cb962ac59075b964b07152d234b70',3,'prueba6','prueba6','prueba6'),(12098,'prueba_es@gmail.com','202cb962ac59075b964b07152d234b70',4,'prueba1','prueba1','prueba1'),(12111,'prueba2@gmail.com','202cb962ac59075b964b07152d234b70',7,'prueba2','prueba2','prueba2'),(51713,'Diego@upam.edu.mx','81dc9bdb52d04dc20036dbd8313ed055',5,'Diego','Diego','Diego'),(10101050,'lsc.luisvargas@gmail.com','da8bb5e14420eba3643fc3ca752ff99a',4,'Luis Benito','Vargas','García');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacantes`
--

DROP TABLE IF EXISTS `vacantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacantes` (
  `IdSede` int NOT NULL,
  `IdCarrera` int NOT NULL,
  `IdProceso` int NOT NULL,
  `IdPeriodo` int NOT NULL,
  `Perfil` text COLLATE utf8mb4_general_ci NOT NULL,
  `Beneficios` text COLLATE utf8mb4_general_ci NOT NULL,
  `NumVacantes` int NOT NULL,
  `NumPostulados` int NOT NULL,
  `totalVacantes` int NOT NULL,
  KEY `IdSede` (`IdSede`),
  KEY `IdCarrera` (`IdCarrera`),
  KEY `IdProceso` (`IdProceso`),
  KEY `IdPeriodo` (`IdPeriodo`),
  CONSTRAINT `vacantes_ibfk_1` FOREIGN KEY (`IdSede`) REFERENCES `sede` (`IdSede`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vacantes_ibfk_2` FOREIGN KEY (`IdCarrera`) REFERENCES `carrera` (`IdCarrera`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vacantes_ibfk_3` FOREIGN KEY (`IdProceso`) REFERENCES `proceso` (`IdProceso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vacantes_ibfk_4` FOREIGN KEY (`IdPeriodo`) REFERENCES `periodo` (`IdPeriodo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacantes`
--

LOCK TABLES `vacantes` WRITE;
/*!40000 ALTER TABLE `vacantes` DISABLE KEYS */;
INSERT INTO `vacantes` VALUES (1211,1,1,4,'buscamos nuevos talentos','desayunos',2,2,2);
/*!40000 ALTER TABLE `vacantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-27 23:07:17
