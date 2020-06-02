CREATE DATABASE  IF NOT EXISTS `Spotify` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Spotify`;
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Album`
--

LOCK TABLES `Album` WRITE;
/*!40000 ALTER TABLE `Album` DISABLE KEYS */;
INSERT INTO `Album` VALUES (11,'The Eminem Show','2019-08-30','Hip Hop',1),(12,'Revival','2021-02-05','Pop',2),(13,'Lemonade','2020-10-03','R&B',3),(14,'Sweetener','2020-02-05','Pop',4),(15,'Purpose','2019-09-23','Pop',5),(16,'Greatest hits','2019-09-16','Soul',6),(17,'I Wanna Thank Me','2021-04-06','Hip Hop',7),(18,'Loose Change','2020-12-07','Pop',8),(19,'Damn','2019-08-04','Soul',9),(20,'When It\'s Dark Out','2021-03-01','Hip Hop',10),(21,'The Eminem Show','2019-08-30','Hip Hop',1),(22,'Revival','2021-02-05','Pop',2),(23,'Lemonade','2020-10-03','R&B',3),(24,'Sweetener','2020-02-05','Pop',4),(25,'Purpose','2019-09-23','Pop',5),(26,'Greatest hits','2019-09-16','Soul',6),(27,'I Wanna Thank Me','2021-04-06','Hip Hop',7),(28,'Loose Change','2020-12-07','Pop',8),(29,'Damn','2019-08-04','Soul',9),(30,'When It\'s Dark Out','2021-03-01','Hip Hop',10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artista`
--

LOCK TABLES `Artista` WRITE;
/*!40000 ALTER TABLE `Artista` DISABLE KEYS */;
INSERT INTO `Artista` VALUES (1,'Eminem'),(2,'Selena Gomez'),(3,'Beyoncé'),(4,'Ariana Grande'),(5,'Justin  Bieber'),(6,'Adele'),(7,'Snoop Dog'),(8,'Ed Sheeran'),(9,'Kendrick Lamar'),(10,'Geazy');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cancion`
--

LOCK TABLES `Cancion` WRITE;
/*!40000 ALTER TABLE `Cancion` DISABLE KEYS */;
INSERT INTO `Cancion` VALUES (1,'Sing for the moment','03:44:00',1),(2,'Lose you to love me','03:21:00',2),(3,'Halo','03:01:00',3),(4,'7 rings','03:10:00',4),(5,'Company','02:56:00',5),(6,'Someone like you','03:19:00',6),(7,'Who am I','02:54:00',7),(8,'Perfect','03:00:00',8),(9,'Humble','04:01:00',9),(10,'Sober','03:39:00',10);
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contrasena`
--

LOCK TABLES `Contrasena` WRITE;
/*!40000 ALTER TABLE `Contrasena` DISABLE KEYS */;
INSERT INTO `Contrasena` VALUES (1,'Muis34a'),(2,'Suis34a'),(3,'Ruis34a'),(4,'Auis34a'),(5,'Cuis34a'),(6,'Fuis34a'),(7,'Cuis34a'),(8,'Suis34a'),(9,'Quis34a'),(10,'Iuis34a'),(11,'Tuis34a'),(12,'Puis34a'),(13,'Euis34a'),(14,'Muis34a'),(15,'Guis34a'),(16,'Yuis34a'),(17,'Luis34a'),(18,'Puis34a'),(19,'Yuis34a'),(20,'Puis34a'),(21,'Auis34a'),(22,'Cuis34a'),(23,'Ouis34a'),(24,'Juis34a'),(25,'Vuis34a'),(26,'Huis34a'),(27,'Auis34a'),(28,'Juis34a'),(29,'Tuis34a'),(30,'Wuis34a'),(31,'Vuis34a'),(32,'Cuis34a'),(33,'Puis34a'),(34,'Yuis34a'),(35,'Kuis34a'),(36,'Xuis34a'),(37,'Yuis34a'),(38,'Xuis34a'),(39,'Duis34a'),(40,'Nuis34a'),(41,'Ruis34a'),(42,'Suis34a'),(43,'Guis34a'),(44,'Auis34a'),(45,'Nuis34a'),(46,'Nuis34a'),(47,'Cuis34a'),(48,'Cuis34a'),(49,'Huis34a'),(50,'Auis34a'),(51,'Huis34a'),(52,'Zuis34a'),(53,'Zuis34a'),(54,'Huis34a'),(55,'Quis34a'),(56,'Quis34a'),(57,'Quis34a'),(58,'Duis34a'),(59,'Ouis34a'),(60,'Cuis34a'),(61,'Tuis34a'),(62,'Suis34a'),(63,'Xuis34a'),(64,'Suis34a'),(65,'Guis34a'),(66,'Auis34a'),(67,'Suis34a'),(68,'Huis34a'),(69,'Juis34a'),(70,'Puis34a'),(71,'Luis34a'),(72,'Ruis34a'),(73,'Auis34a'),(74,'Auis34a'),(75,'Cuis34a'),(76,'Buis34a'),(77,'Duis34a'),(78,'Luis34a'),(79,'Ouis34a'),(80,'Zuis34a'),(81,'Tuis34a'),(82,'Iuis34a'),(83,'Auis34a'),(84,'Iuis34a'),(85,'Juis34a'),(86,'Xuis34a'),(87,'Huis34a'),(88,'Nuis34a'),(89,'Uuis34a'),(90,'Suis34a'),(91,'Juis34a'),(92,'Tuis34a'),(93,'Cuis34a'),(94,'Duis34a'),(95,'Duis34a'),(96,'Juis34a'),(97,'Xuis34a'),(98,'Uuis34a'),(99,'Ruis34a'),(100,'Tuis34a'),(101,'MDFTR*');
/*!40000 ALTER TABLE `Contrasena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingresos`
--

DROP TABLE IF EXISTS `Ingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ingresos` (
  `id_auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `procedimiento` varchar(100) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `entrada` time DEFAULT NULL,
  `salida` time DEFAULT NULL,
  `CodUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_auditoria`),
  KEY `CodUser` (`CodUser`),
  CONSTRAINT `Ingresos_ibfk_1` FOREIGN KEY (`CodUser`) REFERENCES `Usuario` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingresos`
--

LOCK TABLES `Ingresos` WRITE;
/*!40000 ALTER TABLE `Ingresos` DISABLE KEYS */;
INSERT INTO `Ingresos` VALUES (1,'ekgemgtt','2019-01-25','11:05:20','12:05:20',11),(2,'amemvfmgtt','2020-01-23','10:05:20','12:05:20',12),(3,'eifmeef','2020-01-22','09:05:20','12:05:20',13),(4,'lkiokd','2019-02-25','11:05:20','12:05:20',14),(5,'ekewrett','2020-03-30','11:05:00','12:00:20',15);
/*!40000 ALTER TABLE `Ingresos` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Podcasts`
--

LOCK TABLES `Podcasts` WRITE;
/*!40000 ALTER TABLE `Podcasts` DISABLE KEYS */;
INSERT INTO `Podcasts` VALUES (5,'Conanr'),(1,'Fisher'),(8,'Hirames'),(2,'Klein'),(9,'Macaulope'),(3,'Russo'),(4,'Salinas'),(10,'Thorray'),(6,'Watkins'),(7,'Xamolina');
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
INSERT INTO `Tarjeta` VALUES (1,428665378,'2021-01-03',604),(2,430500116,'2020-08-13',156),(3,471647231,'2020-11-18',645),(4,40240071,'2020-08-31',761),(5,453937853,'2020-06-16',294),(6,4569362,'2021-03-26',498),(7,47165927,'2020-11-10',424),(8,4559032,'2021-02-28',714),(9,4539259,'2020-08-23',760),(10,4262987,'2020-12-22',994);
/*!40000 ALTER TABLE `Tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contrasenia` int(11) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `contrasenia` (`contrasenia`),
  CONSTRAINT `Usuario_ibfk_1` FOREIGN KEY (`contrasenia`) REFERENCES `Contrasena` (`idContrasena`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (11,'Maria','maria@bbb.hotmail',1,'2012-01-25','F'),(12,'Julia','julio@bbb.hotmail',2,'2012-10-25','F'),(13,'Frank','frank@bbb.hotmail',3,'2012-12-25','M'),(14,'Elias','Elias@bbb.hotmail',4,'2012-11-25','M'),(15,'Ernesto','ernesto@bbb.hotmail',5,'2012-09-25','M');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favSong`
--

LOCK TABLES `favSong` WRITE;
/*!40000 ALTER TABLE `favSong` DISABLE KEYS */;
INSERT INTO `favSong` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,6),(7,7,7,7),(8,8,8,8),(9,9,9,9),(10,10,10,10),(11,1,1,1),(12,2,2,2),(13,3,3,3),(14,4,4,4),(15,5,5,5),(16,6,6,6),(17,7,7,7),(18,8,8,8),(19,9,9,9),(20,10,10,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playList`
--

LOCK TABLES `playList` WRITE;
/*!40000 ALTER TABLE `playList` DISABLE KEYS */;
INSERT INTO `playList` VALUES (8,'Acline'),(5,'Buckminster'),(1,'Galvinlist'),(10,'Hip Hop 2020'),(3,'listHarrison'),(2,'listTaylor'),(7,'Marshalllist'),(4,'Pricelist'),(9,'sadsongs'),(6,'Shaw');
/*!40000 ALTER TABLE `playList` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recentlyListened`
--

LOCK TABLES `recentlyListened` WRITE;
/*!40000 ALTER TABLE `recentlyListened` DISABLE KEYS */;
INSERT INTO `recentlyListened` VALUES (121,11,1,1),(122,12,2,2),(123,13,3,3),(124,14,4,4),(125,15,5,5),(126,16,6,6),(127,17,7,7),(128,18,8,8),(129,19,9,9),(130,20,10,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songsPlaylist`
--

LOCK TABLES `songsPlaylist` WRITE;
/*!40000 ALTER TABLE `songsPlaylist` DISABLE KEYS */;
INSERT INTO `songsPlaylist` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,6),(7,7,7,7),(8,8,8,8),(9,9,9,9),(10,10,10,10);
/*!40000 ALTER TABLE `songsPlaylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vista_Nombre_Usuario2`
--

DROP TABLE IF EXISTS `vista_Nombre_Usuario2`;
/*!50001 DROP VIEW IF EXISTS `vista_Nombre_Usuario2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vista_Nombre_Usuario2` (
  `id_user` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `contrasenia` tinyint NOT NULL,
  `fecha_nacimiento` tinyint NOT NULL,
  `sexo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_reporteIngresoUsuario`
--

DROP TABLE IF EXISTS `vista_reporteIngresoUsuario`;
/*!50001 DROP VIEW IF EXISTS `vista_reporteIngresoUsuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vista_reporteIngresoUsuario` (
  `username` tinyint NOT NULL,
  `ultima_fecha_ingreso` tinyint NOT NULL,
  `entrada` tinyint NOT NULL,
  `salida` tinyint NOT NULL,
  `cantidad_ingreso` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'Spotify'
--

--
-- Dumping routines for database 'Spotify'
--

--
-- Final view structure for view `vista_Nombre_Usuario2`
--

/*!50001 DROP TABLE IF EXISTS `vista_Nombre_Usuario2`*/;
/*!50001 DROP VIEW IF EXISTS `vista_Nombre_Usuario2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_Nombre_Usuario2` AS select `Usuario`.`id_user` AS `id_user`,`Usuario`.`username` AS `username`,`Usuario`.`email` AS `email`,`Usuario`.`contrasenia` AS `contrasenia`,`Usuario`.`fecha_nacimiento` AS `fecha_nacimiento`,`Usuario`.`sexo` AS `sexo` from `Usuario` where `Usuario`.`username` like 'J%' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_reporteIngresoUsuario`
--

/*!50001 DROP TABLE IF EXISTS `vista_reporteIngresoUsuario`*/;
/*!50001 DROP VIEW IF EXISTS `vista_reporteIngresoUsuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_reporteIngresoUsuario` AS select `Usuario`.`username` AS `username`,max(`Ingresos`.`fecha_ingreso`) AS `ultima_fecha_ingreso`,`Ingresos`.`entrada` AS `entrada`,`Ingresos`.`salida` AS `salida`,count(`Ingresos`.`CodUser`) AS `cantidad_ingreso` from (`Usuario` join `Ingresos` on(`Usuario`.`id_user` = `Ingresos`.`CodUser`)) group by `Usuario`.`id_user` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-01 22:31:02
