-- CREATE DATABASE  IF NOT EXISTS `artists` /*!40100 DEFAULT CHARACTER SET latin1 */;
-- USE `artists`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: artists
-- ------------------------------------------------------
-- Server version	5.5.34-MariaDB-log

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
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artists` (
  `idArtists` int(11) NOT NULL AUTO_INCREMENT,
  `idGenre` int(11) DEFAULT NULL,
  `idPeriod` int(11) DEFAULT NULL,
  `idStyle` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder` varchar(45) NOT NULL,
  PRIMARY KEY (`idArtists`),
  KEY `fk_Artists_Genre_idx` (`idGenre`),
  KEY `fk_Artists_Style1_idx` (`idStyle`),
  KEY `fk_Artists_Period1_idx` (`idPeriod`),
  CONSTRAINT `fk_Artists_Genre` FOREIGN KEY (`idGenre`) REFERENCES `genre` (`idGenre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Artists_Period1` FOREIGN KEY (`idPeriod`) REFERENCES `period` (`idPeriod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Artists_Style1` FOREIGN KEY (`idStyle`) REFERENCES `style` (`idStyle`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (589,1,5,1,'Albrecht D','Albrecht_D'),(590,1,9,7,'Alexandre_Cabanel','Alexandre_Cabanel'),(592,1,9,8,'Ary_Scheffer','Ary_Scheffer'),(598,1,9,9,'Dante Gabriel Rossetti','Dante_Gabriel_Rossetti'),(600,1,9,1,'Delaunay','Delaunay'),(602,1,9,4,'Edouard Degas','Edouard_Degas'),(603,1,10,5,'Edward Hopper','Edward_Hopper'),(605,1,9,5,'G._Richmond - Watercolours','GeorgeRichmond_Watercolours'),(608,1,8,5,'George Romney','GeorgeRomney'),(609,1,9,5,'Gustave Courbet','GustaveCourbet'),(610,1,9,5,'Gustave_dore','GustaveDore'),(611,1,6,1,'Hans Holbein, the Younger','Hans Holbein, the Younger'),(613,1,8,14,'Jacques-Louis_David','Jacques_Louis_David'),(615,1,7,5,'Johne Richardson','Johne_Richardson'),(616,1,9,14,'Joseph Karl Stieler','Joseph_Karl_Stieler'),(617,1,8,15,'Joshua Reynolds','Joshua_Reynolds'),(620,1,5,1,'Leonardo Da Vinci','Leonardo_Da_Vinci'),(623,1,11,16,'michael_hussar','Michael_Hussar'),(624,1,5,1,'Michelangelo Buonarotti','Michelangelo_Buonarotti'),(625,1,11,5,'Moebius - Jean Giraud','Moebius_Jean_Giraud'),(626,1,7,2,'Domenico Morelli','Domenico Morelli'),(627,1,6,2,'Nicolas Poussin','Nicolas_Poussin'),(630,1,11,5,'Paul Emsley','Paul_Emsley'),(632,1,6,2,'Peter Paul Rubens','PeterPaul_Rubens'),(633,1,9,4,'Pierre-Auguste Renoir','Pierre_Auguste_Renoir'),(634,1,6,2,'Pieter Bruegel the Elder','Pieter_Bruegel_the_Elder'),(635,1,7,10,'Pietro Francavilla','Pietro Francavilla'),(637,1,6,2,'Raffaello Sanzio da Urbinol','Raffael'),(640,1,11,5,'S. Silva - Ball Point Pen','SteveSilva_Ball_Point_Pen'),(646,1,7,2,'Van Loo','Van_Loo'),(649,1,9,5,'William-Adolphe_Bouguereau','William_Adolphe_Bouguereau'),(650,1,9,5,'Winslow Homer','Winslow_Homer'),(651,1,11,2,'Zoe lacchei','Zoe_lacchei'),(654,NULL,NULL,NULL,NULL,'Caravaggio'),(655,NULL,NULL,NULL,NULL,'M');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `completeartist`
--

DROP TABLE IF EXISTS `completeartist`;
/*!50001 DROP VIEW IF EXISTS `completeartist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `completeartist` (
  `idArtists` tinyint NOT NULL,
  `folder` tinyint NOT NULL,
  `artist` tinyint NOT NULL,
  `genre` tinyint NOT NULL,
  `period` tinyint NOT NULL,
  `style` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `completework`
--

DROP TABLE IF EXISTS `completework`;
/*!50001 DROP VIEW IF EXISTS `completework`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `completework` (
  `idWorks` tinyint NOT NULL,
  `idArtists` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `folder` tinyint NOT NULL,
  `imageName` tinyint NOT NULL,
  `artist` tinyint NOT NULL,
  `genre` tinyint NOT NULL,
  `period` tinyint NOT NULL,
  `style` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `idGenre` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idGenre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Historical'),(2,'Portrait'),(3,'Genre'),(4,'landscape'),(5,'Animal Painting'),(6,'Still Life');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `period`
--

DROP TABLE IF EXISTS `period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `period` (
  `idPeriod` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idPeriod`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period`
--

LOCK TABLES `period` WRITE;
/*!40000 ALTER TABLE `period` DISABLE KEYS */;
INSERT INTO `period` VALUES (1,'10 century'),(2,'11 Century'),(3,'12 Century'),(4,'13 Century'),(5,'14 Century'),(6,'15 Century'),(7,'16 Century'),(8,'17 Century'),(9,'18 Century'),(10,'19 Century'),(11,'20 Century'),(999,'not applicable');
/*!40000 ALTER TABLE `period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_version`
--

DROP TABLE IF EXISTS `schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_version` (
  `version_rank` int(11) NOT NULL,
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`version`),
  KEY `schema_version_vr_idx` (`version_rank`),
  KEY `schema_version_ir_idx` (`installed_rank`),
  KEY `schema_version_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_version`
--

LOCK TABLES `schema_version` WRITE;
/*!40000 ALTER TABLE `schema_version` DISABLE KEYS */;
INSERT INTO `schema_version` VALUES (1,1,'1','artists','SQL','V1__artists.sql',105425756,'root','2014-06-12 17:00:45',623,1);
/*!40000 ALTER TABLE `schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `style`
--

DROP TABLE IF EXISTS `style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `style` (
  `idStyle` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idStyle`)
) ENGINE=InnoDB AUTO_INCREMENT=889 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `style`
--

LOCK TABLES `style` WRITE;
/*!40000 ALTER TABLE `style` DISABLE KEYS */;
INSERT INTO `style` VALUES (1,'Renaisance'),(2,'Baroque'),(3,'Rococo'),(4,'Impressionism'),(5,'Realism'),(6,'Post Impressionism'),(7,'Academicism'),(8,'Romanticism'),(9,'Pre-Raphaelite'),(10,'Manerist'),(11,'Pop Art'),(12,'Cubism'),(13,'Expressionism'),(14,'Neoclassicism'),(15,'Grand Manner '),(16,'American Baroque'),(888,'Not applicable');
/*!40000 ALTER TABLE `style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works` (
  `idWorks` int(11) NOT NULL AUTO_INCREMENT,
  `idArtists` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `imageName` varchar(255) NOT NULL,
  PRIMARY KEY (`idWorks`,`idArtists`),
  KEY `fk_Works_Artists1_idx` (`idArtists`),
  CONSTRAINT `fk_Works_Artists1` FOREIGN KEY (`idArtists`) REFERENCES `artists` (`idArtists`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (1,589,'','Albrecht_D.jpg'),(2,589,'','Durer_selfporitrait.jpg'),(3,589,'','Self_portrait_at_13_by_Albrecht_D.jpg'),(4,590,'','1863_Alexandre_Cabanel_-_The_Birth_of_Venus.jpg'),(5,592,'','Ary_Scheffer_-_The_Temptation_of_Christ_(1854).jpg'),(6,654,'','bacchus.jpg'),(7,654,'','calling_of_st_matthew.jpg'),(8,654,'','decapitation.jpg'),(9,654,'','emmaus.jpg'),(10,654,'','Narcissus-Caravaggio_1594_96_edited.jpg'),(11,598,'','Dante-Gabriel-Rossetti.jpg'),(12,598,'','Dante_Gabriel_Rossetti_-_Proserpine.jpg'),(13,598,'','Jane-morris-blue-silk.jpg'),(14,600,'','Franco_Prussian_War_Students_Going_to_Man_the_Barricades_Illustrated_London_News_Oct_1_1870.jpg'),(15,600,'','Madame_Georges_Bizet_by_Jules_'),(16,602,'','Edgar_Degas_self_portrait_1855.jpg'),(17,603,'','Nighthawks_by_Edward_Hopper_1942.jpg'),(18,603,'','Nighthawks_invoice_Ed_Hopper_1942.jpg'),(19,608,'','ArchibaldCampbell.jpg'),(20,608,'','George_Romney_Lady_Hamilton_as_a_Bacchante.jpg'),(21,608,'','George_Romney_Lady_Hamilton_as_Circe.jpg'),(22,608,'','Granville_Leveson_Gower_children.jpg'),(23,609,'','Courbet_Seaside.jpg'),(24,609,'','Gustave_Courbet_-_A_Burial_at_Ornans_-_Google_Art_Project_2-1.jpg'),(25,609,'','Gustave_Courbet_auto_retrato.jpg'),(26,609,'','Gustave_Courbet_Bonjoure_Ms_Courbet.jpg'),(27,609,'','Gustave_Courbet_Burial_at_Ornans.jpg'),(28,610,'','Gustave_dore_crusades_death_of_frederick_of_germany.jpg'),(29,611,'','Ambrosius_and_Hans_Holbein_by_Hans_Holbein_the_Elder.jpg'),(30,611,'','Hans_Holbein_d_J_032b.jpg'),(31,611,'','Hans_Holbein_Jane_Small.jpg'),(32,611,'','Hans_Holbein_the_Younger_self-portrait.jpg'),(33,611,'','Hans_Holbein_the_Younger_Sir_Thomas_More.jpg'),(34,611,'','Hans_Holbein_the_Younger_The_Ambassadors.jpg'),(35,611,'','Holbein_the_elder.jpg'),(36,611,'','Lady_with_a_Squirrel.jpg'),(37,611,'','Lais_of_Corinth_by_Hans_Holbein_the_Younger.jpg'),(38,611,'','Study_for_portrait_of_the_More_family_by_Hans_Holbein_the_Younger.jpg'),(39,613,'','Cupid_and_psyche.jpg'),(40,613,'','David98.jpg'),(41,613,'','David_Self_Portrait.jpg'),(42,613,'','Death_of_Marat_by_David.jpg'),(43,613,'','Jacques_Louis_David_008.jpg'),(44,613,'','Jacques_Louis_David_Le_Serment_des_Horaces.jpg'),(45,613,'','Jacques_Louis_David_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries.jpg'),(46,613,'','Napoleon_in_His_Study.jpg'),(47,615,'','Johne_Richardson_Bandana.jpg'),(48,615,'','Johne_Richardson_Gwen.jpg'),(49,615,'','Johne_Richardson_Left_Behind.jpg'),(50,615,'','Johne_Richardson_Nary_Such_a_Thing.jpg'),(51,615,'','Johne_Richardson_Shadow_Upon_The_Land.jpg'),(52,615,'','Johne_Richardson_Up_Under_His_Hat.jpg'),(53,616,'','Joseph_Karl_Stieler_1820Beethoven.jpg'),(54,617,'','Elizabeth_Lady_Amherst_Joshua_Reynolds.jpg'),(55,617,'','George_K.H.Coussmaker_1782_Sir_Joshua_Reynolds_007.jpg'),(56,617,'','Joshua_Reynolds_by_Gilbert_Stuart_1784.jpg'),(57,617,'','Joshua_Reynolds_Lady_Elizabeth_Delm.jpg'),(58,617,'','Reynolds.clive.750pix.jpg'),(59,620,'','anghiari.jpg'),(60,620,'','arms.jpg'),(61,620,'','artillery.jpg'),(62,620,'','battle3.jpg'),(63,620,'','blue_head.jpg'),(64,620,'','blue_sforza.jpg'),(65,620,'','cari_man.jpg'),(66,620,'','coition.jpg'),(67,620,'','dragons_head.jpg'),(68,620,'','eddy.jpg'),(69,620,'','female.jpg'),(70,620,'','fetus.jpg'),(71,620,'','fly1.jpg'),(72,620,'','fly2.jpg'),(73,620,'','fly3.jpg'),(74,620,'','folding_boat.jpg'),(75,620,'','grotesque.jpg'),(76,620,'','hands.jpg'),(77,620,'','head.jpg'),(78,620,'','ldv_oldmen.jpg'),(79,620,'','leda.jpg'),(80,620,'','leda2.jpg'),(81,620,'','neck.jpg'),(82,620,'','oldmanwater.jpg'),(83,620,'','prisoner.jpg'),(84,620,'','saint_anne.jpg'),(85,620,'','sedge.jpg'),(86,620,'','self.jpg'),(87,620,'','skeletons.jpg'),(88,620,'','skull1.jpg'),(89,620,'','skull2.jpg'),(90,620,'','spectra.jpg'),(91,620,'','studyof_man.jpg'),(92,620,'','tuscan.jpg'),(93,620,'','ugly_couple.jpg'),(94,620,'','View_of_a_Skull_III.jpg'),(95,620,'','vitruvian.jpg'),(96,620,'','widget.jpg'),(97,620,'','womb.jpg'),(98,620,'','world.jpg'),(99,623,'','michael_hussar_1.jpg'),(100,623,'','michael_hussar_10.jpg'),(101,623,'','michael_hussar_12.jpg'),(102,623,'','michael_hussar_14.jpg'),(103,623,'','michael_hussar_15.jpg'),(104,623,'','michael_hussar_16.jpg'),(105,623,'','michael_hussar_17.jpg'),(106,623,'','michael_hussar_18.jpg'),(107,623,'','michael_hussar_2.jpg'),(108,623,'','michael_hussar_20.jpg'),(109,623,'','michael_hussar_21.jpg'),(110,623,'','michael_hussar_4.jpg'),(111,623,'','michael_hussar_5.jpg'),(112,623,'','michael_hussar_7.jpg'),(113,623,'','michael_hussar_8.jpg'),(114,623,'','michael_hussar_dgjournalrt5.jpg'),(115,624,'','Michelangelo_Pieta_5450_cropncleaned_edit.jpg'),(116,625,'','Air_Tight_Garage.jpg'),(117,625,'','Jean_Giraud_1071941544_015.jpg'),(118,625,'','Jean_Giraud_10_905.jpg'),(119,625,'','Jean_Giraud_12_905.jpg'),(120,625,'','Jean_Giraud_13_905.jpg'),(121,625,'','Jean_Giraud_1_905.jpg'),(122,625,'','Jean_Giraud_3507850335_bdaebac18c.jpg'),(123,625,'','Jean_Giraud_3508664964_f6f3bde172.jpg'),(124,625,'','Jean_Giraud_3510162593_62f2d003ff.jpg'),(125,625,'','Jean_Giraud_3510166671_58d1687677.jpg'),(126,625,'','Jean_Giraud_3510955910_e1b0eb290e.jpg'),(127,625,'','Jean_Giraud_3510963550_2f83b0e4e7.jpg'),(128,625,'','Jean_Giraud_3515965393_157d948ce5.jpg'),(129,625,'','Jean_Giraud_3516775004_59c7636228.jpg'),(130,625,'','Jean_Giraud_3_905.jpg'),(131,625,'','Jean_Giraud_4_905.jpg'),(132,625,'','Jean_Giraud_5_905.jpg'),(133,625,'','Jean_Giraud_7_905.jpg'),(134,625,'','Jean_Giraud_9_905.jpg'),(135,625,'','jean_giraud__12_20120311_1919551068.jpg'),(136,625,'','jean_giraud__14_20120311_1730511675.jpg'),(137,625,'','jean_giraud__16_20120311_1351299944.jpg'),(138,625,'','jean_giraud__4_20120311_1537461172.jpg'),(139,625,'','jean_giraud__5_20120311_1998609741.jpg'),(140,625,'','jean_giraud__9_20120311_1028734743.jpg'),(141,625,'','min_starwatchercristalbleu.jpg'),(142,625,'','mobius_statue.jpg'),(143,625,'','moeb1.thumbnail.jpg'),(144,625,'','Moeb_7.jpg'),(145,625,'','moebius-portait.jpg'),(146,625,'','moebius1.jpg'),(147,625,'','moebius2.jpg'),(148,625,'','moebius_09.jpg'),(149,625,'','Moebius_Lodz_2008.jpg'),(150,625,'','moebius_thumbbig.jpg'),(151,625,'','MoebiusBull.jpg'),(152,625,'','MoebiusDesire.jpg'),(153,625,'','MoebiusSanta.jpg'),(154,625,'','MoebiusStarW.jpg'),(155,625,'','MoebiusWhale.jpg'),(156,625,'','Musee_de_Art_Thomas_Henry_B_affiche_25x60_TBF.jpg'),(157,655,'','IV_L'),(158,655,'','MorThanFeastofAttila.jpg'),(159,655,'','Stamp_Design_of_M'),(160,655,'','Than_M'),(161,655,'','Than_Young_Woman_Wearing_a_Renascence_Dress_1886.jpg'),(162,627,'','Nicolas_Poussin_078.jpg'),(163,627,'','Nicolas_Poussin_Helios_and_Phaeton_with_Saturn_and_the_Four_Seasons.jpg'),(164,627,'','Venus_and_Adonis_Poussin_1624_Texas_Fort_Worth_Kimbell_Art_Museum.jpg'),(165,630,'','Duchess_of_Cambridge.jpg'),(166,632,'','Peter_Paul_Rubens.jpg'),(167,632,'','Rubens_Self_portrait_1623.jpg'),(168,633,'','Pierre_Auguste_Renoir_La_loge_The_Theater_Box.jpg'),(169,637,'','Raffael_Sixtinska_madonnan.jpg'),(170,640,'','baby_cradled_in_dads_hands___bic_ballpoint_pen_by_vianaarts.jpg'),(171,640,'','girl_with_a_pearl_earring_ballpoint_pen_by_vianaarts.jpg'),(172,640,'','jaguar_ballpoint_pen_by_vianaarts.jpg'),(173,640,'','margay_cat_bic_ballpoint_pen_by_vianaarts.jpg'),(174,640,'','redhead_girl_ballpoint_pen_by_vianaarts.jpg'),(175,640,'','tiger_bic_ballpoint_pen_by_vianaarts.jpg'),(176,646,'','La_familia_de_Felipe_V_Van_Loo.jpg'),(177,649,'','William_Adolphe_Bouguereau_Homer_and_his_Guide_1874.jpg'),(178,649,'','William_Adolphe_Bouguereau_The_Shepherdess_1889.jpg'),(179,650,'','Camp_Fire_Winslow_Homer.jpg'),(180,650,'','Gloucester_Harbor_Winslow_Homer_1873.jpg'),(181,650,'','winslow_homer_the_new_novel_1877.jpg'),(182,651,'','illustrations_zoe_lacchei_sketches_big_08b.jpg'),(183,605,'','Charles_Darwin_by_G._Richmond.jpg'),(184,634,'','Pieter_Bruegel_the_Elder_-_The_Dutch_Proverbs.jpg');
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `completeartist`
--

/*!50001 DROP TABLE IF EXISTS `completeartist`*/;
/*!50001 DROP VIEW IF EXISTS `completeartist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE VIEW `completeartist` AS select `artists`.`idArtists` AS `idArtists`,`artists`.`folder` AS `folder`,`artists`.`name` AS `artist`,`genre`.`name` AS `genre`,`period`.`name` AS `period`,`style`.`name` AS `style` from (((`artists` join `period`) join `style`) join `genre`) where ((`artists`.`idGenre` = `genre`.`idGenre`) and (`artists`.`idPeriod` = `period`.`idPeriod`) and (`artists`.`idStyle` = `style`.`idStyle`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `completework`
--

/*!50001 DROP TABLE IF EXISTS `completework`*/;
/*!50001 DROP VIEW IF EXISTS `completework`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE VIEW `completework` AS select `works`.`idWorks` AS `idWorks`,`works`.`idArtists` AS `idArtists`,`works`.`name` AS `name`,`artists`.`folder` AS `folder`,`works`.`imageName` AS `imageName`,`artists`.`name` AS `artist`,`genre`.`name` AS `genre`,`period`.`name` AS `period`,`style`.`name` AS `style` from ((((`works` join `artists`) join `period`) join `style`) join `genre`) where ((`works`.`idArtists` = `artists`.`idArtists`) and (`artists`.`idGenre` = `genre`.`idGenre`) and (`artists`.`idPeriod` = `period`.`idPeriod`) and (`artists`.`idStyle` = `style`.`idStyle`)) */;
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

-- Dump completed on 2014-06-13 11:07:21
