-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: recetas
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `chefs`
--

DROP TABLE IF EXISTS `chefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chefs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(10) DEFAULT NULL,
  `nombre` varchar(8) DEFAULT NULL,
  `nacionalidad` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chefs`
--

LOCK TABLES `chefs` WRITE;
/*!40000 ALTER TABLE `chefs` DISABLE KEYS */;
INSERT INTO `chefs` VALUES (1,'Garre','Jorge','Argentina'),(2,'Chido','Sergio','Argentina'),(3,'Telembique','Nestor','Uruguaya'),(4,'Russo','Cristian','Chilena'),(5,'Lemes','Daniela','Chilena');
/*!40000 ALTER TABLE `chefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientes`
--

DROP TABLE IF EXISTS `ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientes`
--

LOCK TABLES `ingredientes` WRITE;
/*!40000 ALTER TABLE `ingredientes` DISABLE KEYS */;
INSERT INTO `ingredientes` VALUES (1,'Arroz Blanco'),(2,'Arroz Integral'),(3,'Pollo'),(4,'Salmon Rosado'),(5,'Carne Picada'),(6,'Papa'),(7,'Zanahoria'),(8,'Huevos'),(9,'Lentejas'),(10,'Acelga');
/*!40000 ALTER TABLE `ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientes_recetas`
--

DROP TABLE IF EXISTS `ingredientes_recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredientes_recetas` (
  `id_ingrediente` int(11) NOT NULL,
  `id_receta` int(11) NOT NULL,
  `cantidad` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_ingrediente`,`id_receta`),
  KEY `id_receta` (`id_receta`),
  CONSTRAINT `ingredientes_recetas_ibfk_1` FOREIGN KEY (`id_ingrediente`) REFERENCES `ingredientes` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `ingredientes_recetas_ibfk_2` FOREIGN KEY (`id_receta`) REFERENCES `recetas` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientes_recetas`
--

LOCK TABLES `ingredientes_recetas` WRITE;
/*!40000 ALTER TABLE `ingredientes_recetas` DISABLE KEYS */;
INSERT INTO `ingredientes_recetas` VALUES (1,1,'200 gramos'),(1,2,'300 gramos'),(1,3,'200 gramos'),(1,4,'500 gramos'),(1,5,'500 gramos'),(1,6,'500 gramos'),(1,7,'200 gramos'),(1,8,'100 gramos'),(2,1,'200 gramos'),(2,2,'300 gramos'),(2,3,'200 gramos'),(2,4,'500 gramos'),(2,5,'500 gramos'),(2,6,'500 gramos'),(2,7,'200 gramos'),(2,8,'100 gramos'),(3,1,'200 gramos'),(3,2,'300 gramos'),(3,3,'200 gramos'),(3,4,'500 gramos'),(3,5,'500 gramos'),(3,6,'500 gramos'),(3,7,'200 gramos'),(4,1,'200 gramos'),(4,2,'300 gramos'),(4,3,'200 gramos'),(4,4,'500 gramos'),(4,5,'500 gramos'),(4,6,'500 gramos'),(4,8,'100 gramos'),(5,1,'200 gramos'),(5,2,'300 gramos'),(5,3,'200 gramos'),(5,4,'500 gramos'),(5,5,'500 gramos'),(5,7,'200 gramos'),(5,8,'100 gramos'),(6,1,'200 gramos'),(6,2,'300 gramos'),(6,3,'200 gramos'),(6,4,'500 gramos'),(6,6,'500 gramos'),(6,7,'200 gramos'),(6,8,'100 gramos'),(7,1,'200 gramos'),(7,2,'300 gramos'),(7,5,'500 gramos'),(7,6,'500 gramos'),(7,7,'200 gramos'),(7,8,'100 gramos'),(8,3,'2 unidades'),(8,4,'3 unidades'),(8,5,'4 unidades'),(8,6,'2 unidades'),(8,7,'2 unidades'),(8,8,'3 unidades'),(9,1,'200 gramos'),(9,2,'300 gramos'),(9,3,'200 gramos'),(9,4,'500 gramos'),(9,5,'200 gramos'),(10,2,'300 gramos'),(10,3,'200 gramos'),(10,4,'500 gramos'),(10,5,'500 gramos'),(10,6,'500 gramos');
/*!40000 ALTER TABLE `ingredientes_recetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetas`
--

DROP TABLE IF EXISTS `recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recetas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `id_chef_inventor` int(11) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_chef_inventor` (`id_chef_inventor`),
  CONSTRAINT `recetas_ibfk_1` FOREIGN KEY (`id_chef_inventor`) REFERENCES `chefs` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetas`
--

LOCK TABLES `recetas` WRITE;
/*!40000 ALTER TABLE `recetas` DISABLE KEYS */;
INSERT INTO `recetas` VALUES (1,'Cazuela de pompeya',1,'2012-03-02'),(2,'Risotto de la abuela',1,'2010-02-04'),(3,'Sopa del monte',2,'2011-03-04'),(4,'Guiso del chalten',3,'2014-08-08'),(5,'Manteca del bosque',4,'2013-02-24'),(6,'Delicia árabe',4,'2012-03-03'),(7,'Cazuela del litoral',2,'2011-02-04'),(8,'Tarta deliciosa',2,'2013-03-04'),(9,'Suffle cremoso',3,'2014-06-30'),(10,'Tiras de color',4,'2013-03-04');
/*!40000 ALTER TABLE `recetas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-01 11:34:07
