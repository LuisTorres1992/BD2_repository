-- MySQL dump 10.17  Distrib 10.3.23-MariaDB, for Win64 (AMD64)
--
-- Host: 64.227.4.17    Database: Spotify
-- ------------------------------------------------------
-- Server version	10.3.23-MariaDB-log

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
-- Table structure for table `Album`
--

DROP TABLE IF EXISTS `Album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Album` (
  `id_album` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `anio` date DEFAULT NULL,
  `genero` varchar(30) DEFAULT NULL,
  `interprete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_album`),
  KEY `interprete` (`interprete`),
  CONSTRAINT `Album_ibfk_1` FOREIGN KEY (`interprete`) REFERENCES `Artista` (`id_artista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Album`
--

LOCK TABLES `Album` WRITE;
/*!40000 ALTER TABLE `Album` DISABLE KEYS */;
/*!40000 ALTER TABLE `Album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Artista`
--

DROP TABLE IF EXISTS `Artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Artista` (
  `id_artista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_artista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artista`
--

LOCK TABLES `Artista` WRITE;
/*!40000 ALTER TABLE `Artista` DISABLE KEYS */;
/*!40000 ALTER TABLE `Artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cancion`
--

DROP TABLE IF EXISTS `Cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cancion` (
  `id_cancion` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `duración` time DEFAULT NULL,
  `interprete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cancion`),
  KEY `interprete` (`interprete`),
  CONSTRAINT `Cancion_ibfk_1` FOREIGN KEY (`interprete`) REFERENCES `Artista` (`id_artista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cancion`
--

LOCK TABLES `Cancion` WRITE;
/*!40000 ALTER TABLE `Cancion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contrasena`
--

DROP TABLE IF EXISTS `Contrasena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contrasena` (
  `idContrasena` int(11) NOT NULL AUTO_INCREMENT,
  `c_contrasenia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idContrasena`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contrasena`
--

LOCK TABLES `Contrasena` WRITE;
/*!40000 ALTER TABLE `Contrasena` DISABLE KEYS */;
INSERT INTO `Contrasena` VALUES (1,'Muis34a'),(2,'Suis34a'),(3,'Ruis34a'),(4,'Auis34a'),(5,'Cuis34a'),(6,'Fuis34a'),(7,'Cuis34a'),(8,'Suis34a'),(9,'Quis34a'),(10,'Iuis34a'),(11,'Tuis34a'),(12,'Puis34a'),(13,'Euis34a'),(14,'Muis34a'),(15,'Guis34a'),(16,'Yuis34a'),(17,'Luis34a'),(18,'Puis34a'),(19,'Yuis34a'),(20,'Puis34a'),(21,'Auis34a'),(22,'Cuis34a'),(23,'Ouis34a'),(24,'Juis34a'),(25,'Vuis34a'),(26,'Huis34a'),(27,'Auis34a'),(28,'Juis34a'),(29,'Tuis34a'),(30,'Wuis34a'),(31,'Vuis34a'),(32,'Cuis34a'),(33,'Puis34a'),(34,'Yuis34a'),(35,'Kuis34a'),(36,'Xuis34a'),(37,'Yuis34a'),(38,'Xuis34a'),(39,'Duis34a'),(40,'Nuis34a'),(41,'Ruis34a'),(42,'Suis34a'),(43,'Guis34a'),(44,'Auis34a'),(45,'Nuis34a'),(46,'Nuis34a'),(47,'Cuis34a'),(48,'Cuis34a'),(49,'Huis34a'),(50,'Auis34a'),(51,'Huis34a'),(52,'Zuis34a'),(53,'Zuis34a'),(54,'Huis34a'),(55,'Quis34a'),(56,'Quis34a'),(57,'Quis34a'),(58,'Duis34a'),(59,'Ouis34a'),(60,'Cuis34a'),(61,'Tuis34a'),(62,'Suis34a'),(63,'Xuis34a'),(64,'Suis34a'),(65,'Guis34a'),(66,'Auis34a'),(67,'Suis34a'),(68,'Huis34a'),(69,'Juis34a'),(70,'Puis34a'),(71,'Luis34a'),(72,'Ruis34a'),(73,'Auis34a'),(74,'Auis34a'),(75,'Cuis34a'),(76,'Buis34a'),(77,'Duis34a'),(78,'Luis34a'),(79,'Ouis34a'),(80,'Zuis34a'),(81,'Tuis34a'),(82,'Iuis34a'),(83,'Auis34a'),(84,'Iuis34a'),(85,'Juis34a'),(86,'Xuis34a'),(87,'Huis34a'),(88,'Nuis34a'),(89,'Uuis34a'),(90,'Suis34a'),(91,'Juis34a'),(92,'Tuis34a'),(93,'Cuis34a'),(94,'Duis34a'),(95,'Duis34a'),(96,'Juis34a'),(97,'Xuis34a'),(98,'Uuis34a'),(99,'Ruis34a'),(100,'Tuis34a');
/*!40000 ALTER TABLE `Contrasena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Explorar`
--

DROP TABLE IF EXISTS `Explorar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Explorar` (
  `id_explorar` int(11) NOT NULL AUTO_INCREMENT,
  `codExplorar` int(11) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `mood` varchar(45) DEFAULT NULL,
  `codPodcasts` int(11) DEFAULT NULL,
  `exitos` varchar(45) DEFAULT NULL,
  `novedades` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_explorar`),
  KEY `codExplorar` (`codExplorar`),
  KEY `codPodcasts` (`codPodcasts`),
  CONSTRAINT `Explorar_ibfk_1` FOREIGN KEY (`codExplorar`) REFERENCES `premiumUser` (`id_premiumUser`),
  CONSTRAINT `Explorar_ibfk_2` FOREIGN KEY (`codPodcasts`) REFERENCES `premiumUser` (`id_premiumUser`),
  CONSTRAINT `Explorar_ibfk_3` FOREIGN KEY (`codExplorar`) REFERENCES `basicUser` (`id_basicUser`),
  CONSTRAINT `Explorar_ibfk_4` FOREIGN KEY (`codPodcasts`) REFERENCES `basicUser` (`id_basicUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Explorar`
--

LOCK TABLES `Explorar` WRITE;
/*!40000 ALTER TABLE `Explorar` DISABLE KEYS */;
/*!40000 ALTER TABLE `Explorar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Podcasts`
--

DROP TABLE IF EXISTS `Podcasts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Podcasts` (
  `id_podcasts` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_podcasts`),
  UNIQUE KEY `titulo` (`titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Podcasts`
--

LOCK TABLES `Podcasts` WRITE;
/*!40000 ALTER TABLE `Podcasts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Podcasts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tarjeta`
--

DROP TABLE IF EXISTS `Tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tarjeta` (
  `idTarjeta` int(11) NOT NULL,
  `NumTarjeta` int(11) NOT NULL,
  `FechaExpTarjeta` date NOT NULL,
  `cvcTarjeta` int(11) NOT NULL,
  PRIMARY KEY (`idTarjeta`),
  UNIQUE KEY `NumTarjeta` (`NumTarjeta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tarjeta`
--

LOCK TABLES `Tarjeta` WRITE;
/*!40000 ALTER TABLE `Tarjeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminUser`
--

DROP TABLE IF EXISTS `adminUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminUser` (
  `id_adminUser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contrasenia` int(11) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_adminUser`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `contrasenia` (`contrasenia`),
  CONSTRAINT `adminUser_ibfk_1` FOREIGN KEY (`contrasenia`) REFERENCES `Contrasena` (`idContrasena`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminUser`
--

LOCK TABLES `adminUser` WRITE;
/*!40000 ALTER TABLE `adminUser` DISABLE KEYS */;
INSERT INTO `adminUser` VALUES (11,'Maria','maria@bbb.hotmail',1,'2012-01-25','F'),(12,'Julia','julio@bbb.hotmail',2,'2012-10-25','F'),(13,'Frank','frank@bbb.hotmail',3,'2012-12-25','M'),(14,'Elias','Elias@bbb.hotmail',4,'2012-11-25','M'),(15,'Ernesto','ernesto@bbb.hotmail',5,'2012-09-25','M');
/*!40000 ALTER TABLE `adminUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basicUser`
--

DROP TABLE IF EXISTS `basicUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basicUser` (
  `id_basicUser` int(11) NOT NULL AUTO_INCREMENT,
  `CodbasicUser` int(11) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contrasenia` int(11) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_basicUser`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `contrasenia` (`contrasenia`),
  KEY `CodbasicUser` (`CodbasicUser`),
  CONSTRAINT `basicUser_ibfk_1` FOREIGN KEY (`contrasenia`) REFERENCES `Contrasena` (`idContrasena`),
  CONSTRAINT `basicUser_ibfk_2` FOREIGN KEY (`CodbasicUser`) REFERENCES `adminUser` (`id_adminUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basicUser`
--

LOCK TABLES `basicUser` WRITE;
/*!40000 ALTER TABLE `basicUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `basicUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favSong`
--

DROP TABLE IF EXISTS `favSong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favSong` (
  `id_favSong` int(11) NOT NULL AUTO_INCREMENT,
  `idcancion` int(11) DEFAULT NULL,
  `interprete` int(11) DEFAULT NULL,
  `idplaylist` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_favSong`),
  KEY `idcancion` (`idcancion`),
  KEY `interprete` (`interprete`),
  KEY `idplaylist` (`idplaylist`),
  CONSTRAINT `favSong_ibfk_1` FOREIGN KEY (`idcancion`) REFERENCES `Cancion` (`id_cancion`),
  CONSTRAINT `favSong_ibfk_2` FOREIGN KEY (`interprete`) REFERENCES `Artista` (`id_artista`),
  CONSTRAINT `favSong_ibfk_3` FOREIGN KEY (`idplaylist`) REFERENCES `playList` (`id_playList`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favSong`
--

LOCK TABLES `favSong` WRITE;
/*!40000 ALTER TABLE `favSong` DISABLE KEYS */;
/*!40000 ALTER TABLE `favSong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playList`
--

DROP TABLE IF EXISTS `playList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playList` (
  `id_playList` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_playList`),
  UNIQUE KEY `titulo` (`titulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playList`
--

LOCK TABLES `playList` WRITE;
/*!40000 ALTER TABLE `playList` DISABLE KEYS */;
/*!40000 ALTER TABLE `playList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premiumUser`
--

DROP TABLE IF EXISTS `premiumUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `premiumUser` (
  `id_premiumUser` int(11) NOT NULL AUTO_INCREMENT,
  `CodpremiumUser` int(11) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contrasenia` int(11) DEFAULT NULL,
  `tarjet` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` char(1) DEFAULT NULL,
  `tipoPremUser` varchar(45) NOT NULL,
  `NumDescargas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_premiumUser`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `tarjet` (`tarjet`),
  KEY `CodpremiumUser` (`CodpremiumUser`),
  KEY `contrasenia` (`contrasenia`),
  CONSTRAINT `premiumUser_ibfk_1` FOREIGN KEY (`CodpremiumUser`) REFERENCES `adminUser` (`id_adminUser`),
  CONSTRAINT `premiumUser_ibfk_2` FOREIGN KEY (`contrasenia`) REFERENCES `Contrasena` (`idContrasena`),
  CONSTRAINT `premiumUser_ibfk_3` FOREIGN KEY (`tarjet`) REFERENCES `Tarjeta` (`idTarjeta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premiumUser`
--

LOCK TABLES `premiumUser` WRITE;
/*!40000 ALTER TABLE `premiumUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `premiumUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recentlyListened`
--

DROP TABLE IF EXISTS `recentlyListened`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recentlyListened` (
  `id_recentlyListened` int(11) NOT NULL AUTO_INCREMENT,
  `idalbum` int(11) DEFAULT NULL,
  `idcancion` int(11) DEFAULT NULL,
  `idplaylist` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_recentlyListened`),
  KEY `idalbum` (`idalbum`),
  KEY `idcancion` (`idcancion`),
  KEY `idplaylist` (`idplaylist`),
  CONSTRAINT `recentlyListened_ibfk_1` FOREIGN KEY (`idalbum`) REFERENCES `Album` (`id_album`),
  CONSTRAINT `recentlyListened_ibfk_2` FOREIGN KEY (`idcancion`) REFERENCES `Cancion` (`id_cancion`),
  CONSTRAINT `recentlyListened_ibfk_3` FOREIGN KEY (`idplaylist`) REFERENCES `playList` (`id_playList`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recentlyListened`
--

LOCK TABLES `recentlyListened` WRITE;
/*!40000 ALTER TABLE `recentlyListened` DISABLE KEYS */;
/*!40000 ALTER TABLE `recentlyListened` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songsPlaylist`
--

DROP TABLE IF EXISTS `songsPlaylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songsPlaylist` (
  `id_songsPlaylist` int(11) NOT NULL AUTO_INCREMENT,
  `idplaylist` int(11) DEFAULT NULL,
  `interprete` int(11) DEFAULT NULL,
  `idcancion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_songsPlaylist`),
  KEY `idplaylist` (`idplaylist`),
  KEY `interprete` (`interprete`),
  KEY `idcancion` (`idcancion`),
  CONSTRAINT `songsPlaylist_ibfk_1` FOREIGN KEY (`idplaylist`) REFERENCES `playList` (`id_playList`),
  CONSTRAINT `songsPlaylist_ibfk_2` FOREIGN KEY (`interprete`) REFERENCES `Artista` (`id_artista`),
  CONSTRAINT `songsPlaylist_ibfk_3` FOREIGN KEY (`idcancion`) REFERENCES `Cancion` (`id_cancion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songsPlaylist`
--

LOCK TABLES `songsPlaylist` WRITE;
/*!40000 ALTER TABLE `songsPlaylist` DISABLE KEYS */;
/*!40000 ALTER TABLE `songsPlaylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Spotify'
--

--
-- Dumping routines for database 'Spotify'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-29 13:48:26
