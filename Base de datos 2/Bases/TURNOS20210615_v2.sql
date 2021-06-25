-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: turnos
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `mascota`
--

DROP TABLE IF EXISTS `mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascota` (
  `id_mascota` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `raza` varchar(100) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `id_persona` int DEFAULT NULL,
  `especie` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_mascota`),
  KEY `FK_PERSONA_idx` (`id_persona`),
  CONSTRAINT `PERSONA_FK` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascota`
--

LOCK TABLES `mascota` WRITE;
/*!40000 ALTER TABLE `mascota` DISABLE KEYS */;
INSERT INTO `mascota` VALUES (1,'Hachiko','SIN RAZA','2009-05-01',6,'GATO'),(2,'Beethoven','SIN RAZA','2009-07-01',6,'GATO'),(3,'Dama y Golfo','SIN RAZA','2009-09-01',7,'PERRO'),(4,'Scooby Doo','CANICHE','2009-07-01',8,'PERRO'),(5,'Rex','SIN RAZA','2010-05-01',9,'PERRO'),(6,'Ayudante de Santa Claus','SIN RAZA','2010-07-01',10,'GATO'),(7,'Laika','SIAMÉS','2010-09-01',11,'GATO'),(8,'Pluto','SIN RAZA','2010-11-01',12,'PERRO'),(9,'Odie','SIN RAZA','2010-05-11',13,'PERRO'),(10,'Bruno','PUG','2010-07-23',14,'PERRO'),(11,'Snoppy','SIN RAZA','2011-05-01',15,'GATO'),(12,'Lassie','SIN RAZA','2011-07-01',16,'GATO'),(13,'Milú','BULLDOG','2011-09-01',17,'PERRO'),(14,'Niebla','POODLE','2013-01-08',18,'PERRO'),(15,'Goofy','POODLE','2011-05-07',19,'PERRO'),(16,'Colmillo blanco','SIN RAZA','2011-07-23',20,'GATO'),(17,'Brian','SIN RAZA','2012-05-01',21,'GATO'),(18,'Idefix','CANICHE','2012-07-01',22,'PERRO'),(19,'Marley','SIN RAZA','2012-09-01',23,'PERRO'),(20,'Pancho','SIN RAZA','2012-11-01',24,'PERRO'),(21,'Seymour','SIN RAZA','2012-05-11',25,'GATO'),(22,'Ran Tan Plan','SIN RAZA','2012-07-23',26,'GATO'),(23,'Pongo','CANICHE','2012-07-01',27,'PERRO'),(24,'Perdita','SIN RAZA','2012-09-01',28,'PERRO'),(25,'Max','CANICHE','2012-11-01',29,'PERRO'),(26,'Yeims','SIN RAZA','2012-05-11',29,'GATO'),(27,'Cloro','SIAMÉS','2013-02-08',30,'GATO'),(28,'Cilindro','BULLDOG','2011-05-17',31,'PERRO');
/*!40000 ALTER TABLE `mascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id_persona` int NOT NULL COMMENT 'Número de Historia Clínica',
  `DOCUMENTO` int DEFAULT NULL COMMENT 'Documento: DNI, CUIL, Pasaporte. ',
  `APELLIDO` varchar(100) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `DOMICILIO` varchar(200) DEFAULT NULL,
  `TELEFONO` varchar(20) DEFAULT NULL,
  `TIPO_PERSONA` varchar(1) DEFAULT NULL COMMENT 'P - PELUQUERO/A\nV - VETERINARIO/A\nC - CLIENTE',
  PRIMARY KEY (`id_persona`),
  KEY `TIPO_PERSONA_FK_idx` (`TIPO_PERSONA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,11111111,'Murphy ','Aiko','AV. INDEPENDENCIA NO. 241','91(287)5-25-37','V'),(2,22222222,'Kelly ','Akiko','AV. INDEPENDENCIA NO. 779','91-(287)- 5-35-07','V'),(3,33333333,'Byrne ','Akina','AV. 20 DE NOVIEMBRE NO.1024','5-27-51','P'),(4,44444444,'Walsh ','Akira','CARRETERA A LOMA ALTA S/N.','01 287 5 08 86','P'),(5,55555555,'Ryan ','Ame','AV. 20 DE NOVIEMBRE NO. 1060','91-(287)-5-40-46','P'),(6,66666666,'OBrien ','Aneko','CALLE ZARAGOZA NO. 1010','91 287 5 23 06','C'),(7,77777777,'OConnor ','Aoi','CALLE MATAMOROS NO. 310','91-( 287 )5-23-06','C'),(8,88888888,'OSullivan ','Azami','AV. 20 DE NOVIEMBRE NO.859-B','91-(287)-5-05-11','C'),(9,99999999,'Doyle ','Asa','AV. 20 DE NOVIEMBRE NO 1053','91-(287)5-27-57','C'),(10,11111110,'Lynch ','Chihiro','BLVD. BENITO JUAREZ NO. 1466-A','91-(287)-5-03-90 88','C'),(11,22222221,'McCarthy ','Chiyo','CALLE MATAMOROS NO.280','91 287 5 03 32','C'),(12,33333332,'ONeill ','Dai','AV. INDEPENDENCIA NO. 545','50616','C'),(13,44444443,'Brennan ','Fuyu','AV. INDEPENDENCIA NO. 1282-A','54868','C'),(14,55555554,'Dunne ','Gen','CALLE MATAMOROS NO. 127','91-(287)-5-18-43','C'),(15,66666665,'Murray ','Hanae','AV.INDEPENDENCIA NO.1010','91-(287)-5-236','C'),(16,77777776,'Burke ','Hanako','AV. 5 DE MAYO NO. 1652',' ','C'),(17,88888887,'Smith ','Haruko','AV. 5 DE MAYO NO. 1108','91287-514','C'),(18,99999998,'Daly ','Hiroko','AV. INDEPENDENCIA NO. 748','91287-53688','C'),(19,1111109,'Nolan ','Hoshi','AV. INDEPENDENCIA NO. 985-A','01 287 5 18 02 -359','C'),(20,2222221,'Kennedy ','Ishi','AV. INDEPENDENCIA NO. 985-A','91-(287)-5-36-88','C'),(21,3333333,'FitzGerald ','Jin','BLVD. BENITO JUAREZ S / N','91-(287)-5-10-37','C'),(22,4444445,'Gallagher ','Kaede','MATAMOROS NO 149',' ','C'),(23,5555557,'Flynn ','Kai','AV. 5 DE MAYO NO 1100-A','50511','C'),(24,6666669,'Collins ','Kairi','AV. 20 DE NOVIEMBRE NO 1540','01 287 5 07 77','C'),(25,7777781,'Power ','Kaori','AV. 5 DE MAYO NO 1253','91287-52827','C'),(26,8888893,'Quinn ','Kasumi','CALLE OCAMPO NO 14','50643','C'),(27,10000005,'Farrell ','Katana','BLVD. BENITO JUAREZ ESQ. 20 DE NOVIEMBRE S/N','91-(287)-5-14-63','C'),(28,11111117,'Carroll ','Kazumi','CALLE ALDAMA NO 156','91-(287)-5-20-24','C'),(29,12222229,'Kavanagh ','Keiko','MATAMOROS NO 85 ESQ. 20 DE NOVIEMBRE','9128750886','C'),(30,13333341,'Connolly ','Kiki','AV. 20 DE NOVIEMBRE NO 1320','01 287 5 04 38','C'),(31,14444453,'OReilly ','Michiko','CALLE OCAMPO NO. 254',' ','C'),(32,15555565,'Healy ','Midori','AV.INDEPENDENCIA NO. 678','91-(287)53354','C');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_turno`
--

DROP TABLE IF EXISTS `tipo_turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_turno` (
  `ID_TIPO_TURNO` int NOT NULL,
  `DESC_TIPO_TURNO` varchar(200) NOT NULL,
  `DURACION_TURNO` int DEFAULT NULL COMMENT 'Duración del turno en minutos.',
  PRIMARY KEY (`ID_TIPO_TURNO`),
  UNIQUE KEY `DESC_TIPO_TURNO_UNIQUE` (`DESC_TIPO_TURNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_turno`
--

LOCK TABLES `tipo_turno` WRITE;
/*!40000 ALTER TABLE `tipo_turno` DISABLE KEYS */;
INSERT INTO `tipo_turno` VALUES (1,'CORTE PELO',60),(2,'BAÑO',90),(3,'CONSULTA VETERINARIO',20),(4,'VACUNACION',10);
/*!40000 ALTER TABLE `tipo_turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turno` (
  `ID_TURNO` int NOT NULL AUTO_INCREMENT,
  `FECHA_TURNO` date DEFAULT NULL,
  `HORA_TURNO` time DEFAULT NULL,
  `ID_PROFESIONAL` int NOT NULL,
  `ID_TIPO_TURNO` int NOT NULL,
  `ESTADO` varchar(50) NOT NULL COMMENT 'VIGENTE/ATENDIDO/CANCELADO/AUSENTE',
  `ID_MASCOTA` int NOT NULL,
  PRIMARY KEY (`ID_TURNO`),
  KEY `PROFESIONAL_FK_idx` (`ID_PROFESIONAL`),
  KEY `TIPO_TURNO_FK_idx` (`ID_TIPO_TURNO`),
  KEY `MASCOTA_FK_idx` (`ID_MASCOTA`),
  CONSTRAINT `MASCOTA_FK` FOREIGN KEY (`ID_MASCOTA`) REFERENCES `mascota` (`id_mascota`),
  CONSTRAINT `PROFESIONAL_FK` FOREIGN KEY (`ID_PROFESIONAL`) REFERENCES `persona` (`id_persona`),
  CONSTRAINT `TIPO_TURNO_FK` FOREIGN KEY (`ID_TIPO_TURNO`) REFERENCES `tipo_turno` (`ID_TIPO_TURNO`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES (1,'2021-01-15','09:00:00',3,1,'TERMINADO',4),(2,'2021-01-15','09:00:00',4,1,'TERMINADO',18),(3,'2021-04-15','09:00:00',3,1,'TERMINADO',4),(4,'2021-05-11','10:30:00',3,1,'ANULADO',18),(5,'2021-06-21','12:00:00',3,1,'VIGENTE',23),(6,'2021-06-21','13:00:00',3,1,'VIGENTE',25),(7,'2021-07-15','10:30:00',1,3,'VIGENTE',1),(8,'2021-07-15','12:00:00',2,3,'VIGENTE',2),(9,'2021-07-15','13:00:00',1,3,'VIGENTE',6),(10,'2021-05-11','10:30:00',2,4,'ANULADO',7),(11,'2021-06-21','12:00:00',1,4,'VIGENTE',11),(12,'2021-06-21','13:00:00',1,4,'VIGENTE',12),(13,'2021-07-15','09:00:00',1,3,'VIGENTE',16),(14,'2021-07-11','09:00:00',2,3,'VIGENTE',17),(15,'2021-07-15','10:30:00',1,3,'VIGENTE',1),(16,'2021-07-15','12:00:00',2,3,'VIGENTE',2),(17,'2021-07-15','13:00:00',1,3,'VIGENTE',6),(18,'2021-05-11','10:30:00',2,4,'ANULADO',7),(19,'2021-06-21','12:00:00',1,4,'VIGENTE',11),(20,'2021-06-21','13:00:00',1,4,'VIGENTE',12),(21,'2021-07-15','09:00:00',1,3,'VIGENTE',16),(22,'2021-07-11','09:00:00',2,3,'VIGENTE',17),(23,'2021-07-15','10:30:00',1,3,'VIGENTE',1),(24,'2021-07-15','12:00:00',2,3,'VIGENTE',2),(25,'2021-07-15','13:00:00',1,3,'VIGENTE',6),(26,'2021-05-11','10:30:00',2,4,'ANULADO',7),(27,'2021-06-21','12:00:00',1,4,'VIGENTE',11),(28,'2021-06-21','13:00:00',1,4,'VIGENTE',12),(29,'2021-07-15','09:00:00',1,3,'VIGENTE',16),(30,'2021-07-11','09:00:00',2,3,'VIGENTE',17);
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-15 21:12:22
