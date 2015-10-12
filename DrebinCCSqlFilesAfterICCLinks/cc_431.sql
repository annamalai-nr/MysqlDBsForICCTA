-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_431
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.12.04.1

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
-- Table structure for table `ActionStrings`
--

DROP TABLE IF EXISTS `ActionStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ActionStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (11,'.ImageTestActivity'),(8,'.Myhall'),(14,'.Web'),(4,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(16,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_REMOVED'),(13,'android.intent.action.SEND'),(2,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(10,'com.android_osqxzyan.GameBootReceiver'),(12,'com.android_osqxzyan.ImageTestActivity'),(7,'com.android_osqxzyan.Myhall'),(15,'com.android_osqxzyan.Web'),(17,'mai.cckavsbh.wlqqshomsmi.TVKKnI12');
/*!40000 ALTER TABLE `ActionStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aliases`
--

DROP TABLE IF EXISTS `Aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  KEY `target_id` (`target_id`),
  CONSTRAINT `Aliases_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`),
  CONSTRAINT `Aliases_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aliases`
--

LOCK TABLES `Aliases` WRITE;
/*!40000 ALTER TABLE `Aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `Aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Applications`
--

DROP TABLE IF EXISTS `Applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.dgtmb.itf.gcpslr.hqfqipvmfsk',10037),(2,'com.ukgv.abanlmi',10046),(3,'com.android_osqxzyan',10021),(4,'nbakery.ttff',10042),(5,'com.tofjail.nnsj.gvgusfeugag',10033),(6,'vio.kbrakanbwb.lpbcjth',10042),(7,'mai.cckavsbh.wlqqshomsmi',18);
/*!40000 ALTER TABLE `Applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CategoryStrings`
--

DROP TABLE IF EXISTS `CategoryStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CategoryStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.DEFAULT'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.categroy.DEFUAULT');
/*!40000 ALTER TABLE `CategoryStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Classes`
--

DROP TABLE IF EXISTS `Classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `class_idx` (`class`) USING HASH,
  KEY `app_id_idx` (`app_id`) USING HASH,
  CONSTRAINT `Classes_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `Applications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.dgtmb.itf.gcpslr.hqfqipvmfsk.Applause'),(2,1,'com.dgtmb.itf.gcpslr.hqfqipvmfsk.OptionActivity'),(3,1,'com.kplkem.rmOpbJBlnCdg'),(4,1,'com.kplkem.fPssjlnU'),(5,1,'com.kplkem.OdQPUGkPEJvgUal'),(6,2,'com.ukgv.abanlmi.PushBoxActivity'),(7,1,'com.kplkem.mbwriEecLIQTii'),(8,1,'com.kplkem.astfMtFaOBRT'),(9,2,'com.ukgv.abanlmi.SelectLevel'),(10,1,'com.kplkem.MDVPJLIVPCm'),(11,2,'com.NrhqJJa.eeUcJGaorsN'),(12,1,'com.kplkem.userPermissionReceiver'),(13,2,'com.NrhqJJa.hpWRnuScciEi'),(14,3,'com.android_osqxzyan.Myhall'),(15,2,'com.NrhqJJa.EIbJgETwWrV'),(16,3,'com.android_osqxzyan.Web'),(17,3,'com.android_osqxzyan.NoDetail'),(18,3,'com.android_osqxzyan.HomeActivity'),(19,3,'com.android_osqxzyan.SortActivity1'),(20,3,'com.android_osqxzyan.SortActivity2'),(21,4,'nbakery.ttff.Mainmenu'),(22,4,'nbakery.ttff.Opening'),(23,3,'com.android_osqxzyan.SearchActivity'),(24,4,'nbakery.ttff.EndT'),(25,3,'com.android_osqxzyan.ManagerActivity'),(26,4,'nbakery.ttff.EndF'),(27,3,'com.android_osqxzyan.GameInfo'),(28,5,'com.tofjail.nnsj.gvgusfeugag.StartActivity'),(29,4,'nbakery.ttff.EndF2'),(30,3,'com.android_osqxzyan.TableClass'),(31,5,'com.tofjail.nnsj.gvgusfeugag.ToiletpaperActivity'),(32,4,'nbakery.ttff.Main'),(33,5,'com.tofjail.nnsj.gvgusfeugag.InputNameActivity'),(34,3,'com.android_osqxzyan.GameAlertDialog'),(35,5,'com.eutopia.game.moreapp.activity.MoreActivity'),(36,4,'nbakery.ttff.WeeklyReport'),(37,5,'com.scoreloop.android.coreui.HighscoresActivity'),(38,3,'com.android_osqxzyan.DevelopmentSettings'),(39,5,'com.KFFjIO.qsnCfjkBru'),(40,4,'nbakery.ttff.DisplaySetting'),(41,3,'com.android_osqxzyan.image.ImageTestActivity'),(42,5,'com.KFFjIO.akqlsUJkseCiE'),(43,4,'nbakery.ttff.DoTrial'),(44,5,'com.KFFjIO.ntpDurIhbwNACpL'),(45,3,'com.android_osqxzyan.image.ADactivity'),(46,5,'com.KFFjIO.phDWdatTa'),(47,4,'nbakery.ttff.Other'),(48,3,'com.android_osqxzyan.GameService'),(49,5,'com.KFFjIO.MsVNDlkAlpwabB'),(50,5,'com.KFFjIO.QBgCWkoDesFPUg'),(51,4,'nbakery.ttff.ShowRecipe'),(52,5,'com.KFFjIO.userPermissionReceiver'),(53,3,'com.android_osqxzyan.GameBootReceiver'),(54,4,'nbakery.ttff.ShowMaterial'),(55,4,'nbakery.ttff.ShowRanking'),(56,4,'com.FwFVdaWNn.JBKtHMvSweKBUVN'),(57,4,'com.FwFVdaWNn.WcBWoMpmjSP'),(58,4,'com.nd.dianjin.activity.OfferAppActivity'),(59,6,'vio.kbrakanbwb.lpbcjth.TitleScreen'),(60,6,'vio.kbrakanbwb.lpbcjth.Fishing'),(61,6,'vio.kbrakanbwb.lpbcjth.BaitSelector'),(62,6,'vio.kbrakanbwb.lpbcjth.BaitShop'),(63,6,'vio.kbrakanbwb.lpbcjth.LoadGameScreen'),(64,6,'vio.kbrakanbwb.lpbcjth.SaveGameScreen'),(65,6,'vio.kbrakanbwb.lpbcjth.EULA'),(66,6,'vio.kbrakanbwb.lpbcjth.About'),(67,6,'vio.kbrakanbwb.lpbcjth.LicenseAgreement'),(68,6,'com.oSqCqa.aNudJpGHIswUMFl'),(69,6,'com.waps.OffersWebView'),(70,6,'com.oSqCqa.AWMvFQEn'),(71,1,'com.kplkem.ah'),(72,1,'com.kplkem.p'),(73,1,'com.kplkem.af'),(74,7,'mai.cckavsbh.wlqqshomsmi.FruitPirate'),(75,7,'com.scoreloop.android.coreui.HighscoresActivity'),(76,7,'com.scoreloop.android.coreui.ProfileActivity'),(77,7,'com.scoreloop.android.coreui.AccountActivity'),(78,7,'com.scoreloop.android.coreui.BuddiesActivity'),(79,7,'com.scoreloop.android.coreui.BuddiesAddActivity'),(80,7,'com.scoreloop.android.coreui.GamesActivity'),(81,7,'com.scoreloop.android.coreui.GameActivity'),(82,7,'com.scoreloop.android.coreui.UserActivity'),(83,7,'com.scoreloop.android.coreui.PostScoreActivity'),(84,7,'fws.hqRRUc.TVKKnI8'),(85,7,'fws.hqRRUc.TVKKnI9'),(86,7,'fws.hqRRUc.TVKKnI2'),(87,7,'fws.hqRRUc.TVKKnI10'),(88,7,'fws.hqRRUc.TVKKnI11'),(89,7,'fws.hqRRUc.TVKKnI12'),(90,3,'ak'),(91,3,'cr'),(92,3,'bi'),(93,3,'q'),(94,3,'cq'),(95,5,'com.tofjail.nnsj.gvgusfeugag.StartActivity$1'),(96,5,'com.tofjail.nnsj.gvgusfeugag.StartActivity$3'),(97,5,'com.eutopia.game.moreapp.activity.MoreHelper'),(98,3,'dd'),(99,5,'com.tofjail.nnsj.gvgusfeugag.InputNameActivity$1'),(100,3,'dv'),(101,3,'k'),(102,5,'com.scoreloop.android.coreui.GameActivity$1'),(103,5,'com.KFFjIO.j'),(104,5,'com.scoreloop.android.coreui.GamesActivity$1'),(105,3,'al'),(106,5,'com.scoreloop.android.coreui.AccountActivity$2'),(107,5,'com.KFFjIO.ad'),(108,4,'nbakery.ttff.DoTrial$3'),(109,4,'com.nd.dianjin.DianJinPlatform'),(110,4,'nbakery.ttff.Mainmenu$6'),(111,5,'com.KFFjIO.ab'),(112,4,'nbakery.ttff.Main$2'),(113,6,'com.waps.SDKUtils'),(114,6,'com.waps.al'),(115,3,'dl'),(116,4,'nbakery.ttff.Mainmenu$2'),(117,4,'nbakery.ttff.DoTrial$2'),(118,6,'com.waps.g'),(119,4,'nbakery.ttff.Main$3'),(120,6,'com.waps.AppConnect'),(121,4,'nbakery.ttff.Main$4'),(122,4,'nbakery.ttff.Mainmenu$3'),(123,4,'nbakery.ttff.DisplaySetting$3'),(124,6,'com.waps.ao'),(125,6,'vio.kbrakanbwb.lpbcjth.FishingDialog'),(126,6,'com.waps.w'),(127,6,'com.waps.y'),(128,7,'com.scoreloop.android.coreui.GameActivity$1'),(129,7,'fws.hqRRUc.k'),(130,7,'com.scoreloop.android.coreui.BuddiesActivity$1'),(131,7,'com.scoreloop.android.coreui.GamesActivity$1'),(132,7,'mai.cckavsbh.wlqqshomsmi.states.GameState'),(133,7,'com.scoreloop.android.coreui.HighscoresActivity$2'),(134,7,'mai.cckavsbh.wlqqshomsmi.states.game.GameThread'),(135,7,'fws.hqRRUc.j'),(136,7,'com.scoreloop.client.android.core.controller.AddressBook'),(137,7,'fws.hqRRUc.f'),(138,7,'com.scoreloop.android.coreui.AccountActivity$2'),(139,7,'com.scoreloop.android.coreui.GamesActivity$2');
/*!40000 ALTER TABLE `Classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComponentExtras`
--

DROP TABLE IF EXISTS `ComponentExtras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComponentExtras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `extra` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `ComponentExtras_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'packageName'),(2,2,'ChangeTheme'),(3,5,'apkTitle'),(4,1,'Vibrate'),(5,10,'fileURL'),(6,15,''),(7,15,'(.*)'),(8,2,'Vibrate'),(9,5,'apkVersion'),(10,10,'fileName'),(11,8,'packageName'),(12,5,'apkURL'),(13,5,'detailFlag'),(14,1,'MatchSound'),(15,4,'np_app_key'),(16,7,'np_app_key'),(17,5,'np_app_key'),(18,3,'np_app_key'),(19,10,'np_app_key'),(20,5,'apkInfo'),(21,8,'fileURL'),(22,5,'imageURL'),(23,1,'ChangeTheme'),(24,5,'iconURL'),(25,2,'MatchSound'),(26,1,'GameMusic'),(27,5,'apkSoftID'),(28,5,'apkSize'),(29,2,'GameMusic'),(30,25,'icon'),(31,20,'package_name'),(32,34,'fromtable'),(33,25,'total'),(34,25,'package_name'),(35,25,'filepath'),(36,34,'content'),(37,27,'fromtype'),(38,23,'package_name'),(39,27,'from_table'),(40,34,'title'),(41,20,'status'),(42,25,'app_name'),(43,25,'completed'),(44,27,'title'),(45,34,'package_name'),(46,34,'btn_txt'),(47,31,'LeftOvalRect'),(48,31,'RollingRect'),(49,49,'packageName'),(50,44,'apkURL'),(51,25,'status'),(52,31,'RightOvalRect'),(53,31,'MiddleRect'),(54,44,'apkTitle'),(55,34,'version_code'),(56,16,'service_channel'),(57,33,'issavename'),(58,46,'np_app_key'),(59,39,'np_app_key'),(60,42,'np_app_key'),(61,44,'np_app_key'),(62,50,'np_app_key'),(63,25,'url'),(64,34,'url'),(65,44,'apkVersion'),(66,31,'isInputtingName'),(67,44,'apkInfo'),(68,44,'iconURL'),(69,27,'from_alert'),(70,31,'SmallOvalRect'),(71,31,'lasthistory'),(72,44,'packageName'),(73,44,'detailFlag'),(74,23,'status'),(75,25,'soft_id'),(76,14,'nextclassid'),(77,14,'service_channel'),(78,41,'service_channel'),(79,31,'LastUpdateTime'),(80,35,'ad'),(81,31,'isGameOver'),(82,49,'fileURL'),(83,27,'status'),(84,44,'apkSize'),(85,50,'fileName'),(86,50,'fileURL'),(87,27,'filepath'),(88,20,'nextclassid'),(89,31,'savedscoretime'),(90,44,'imageURL'),(91,44,'apkSoftID'),(92,69,'URL'),(93,69,'Offers_URL'),(94,68,'DEVICE_ID'),(95,60,'DEVICE_ID'),(96,61,'DEVICE_ID'),(97,70,'DEVICE_ID'),(98,68,'APP_PID'),(99,60,'APP_PID'),(100,61,'APP_PID'),(101,70,'APP_PID'),(102,69,'offers_webview_tag'),(103,69,'URL_PARAMS'),(104,68,'APP_ID'),(105,60,'APP_ID'),(106,61,'APP_ID'),(107,70,'APP_ID'),(108,23,'version_code'),(109,69,'ACTIVITY_FLAG'),(110,68,'WAPS_ID'),(111,60,'WAPS_ID'),(112,61,'WAPS_ID'),(113,70,'WAPS_ID'),(114,68,'CLIENT_PACKAGE'),(115,60,'CLIENT_PACKAGE'),(116,61,'CLIENT_PACKAGE'),(117,70,'CLIENT_PACKAGE'),(118,43,'recipe'),(119,17,'from'),(120,69,'SHWO_FLAG'),(121,69,'USER_ID'),(122,43,'material'),(123,48,'service_channel'),(124,40,'recipe'),(125,34,'apk_url'),(126,27,'game'),(127,17,'isDirectFromTable'),(128,69,'CLIENT_PACKAGE'),(129,69,'Notify_Url_Params'),(130,69,'Notify_Id'),(131,69,'UrlPath'),(132,68,'WAPS_PID'),(133,60,'WAPS_PID'),(134,61,'WAPS_PID'),(135,70,'WAPS_PID'),(136,69,'ADVIEW'),(137,68,'ADVIEW'),(138,60,'ADVIEW'),(139,63,'ADVIEW'),(140,61,'ADVIEW'),(141,70,'ADVIEW'),(142,64,'ADVIEW'),(143,69,'isFinshClose'),(144,84,'btn_txt'),(145,84,'version_code'),(146,81,'filepath'),(147,81,'game'),(148,81,'from_table'),(149,81,'title'),(150,84,'fromtable'),(151,83,'from'),(152,84,'title'),(153,84,'apk_url'),(154,81,'from_alert'),(155,83,'isDirectFromTable'),(156,81,'fromtype'),(157,81,'status'),(158,84,'package_name'),(159,84,'url'),(160,85,'service_channel'),(161,84,'content');
/*!40000 ALTER TABLE `ComponentExtras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Components`
--

DROP TABLE IF EXISTS `Components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `kind` char(1) COLLATE utf8mb4_bin NOT NULL,
  `exported` tinyint(1) NOT NULL,
  `permission` int(11) DEFAULT NULL,
  `missing` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `permission` (`permission`),
  CONSTRAINT `Components_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `Classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `Components_ibfk_2` FOREIGN KEY (`permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'s',1,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'r',0,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',1,NULL,NULL),(71,74,'a',1,NULL,NULL),(72,75,'a',0,NULL,NULL),(73,76,'a',0,NULL,NULL),(74,77,'a',0,NULL,NULL),(75,78,'a',0,NULL,NULL),(76,79,'a',0,NULL,NULL),(77,80,'a',0,NULL,NULL),(78,81,'a',0,NULL,NULL),(79,82,'a',0,NULL,NULL),(80,83,'a',0,NULL,NULL),(81,84,'a',1,NULL,NULL),(82,85,'a',1,NULL,NULL),(83,86,'a',1,NULL,NULL),(84,87,'a',0,NULL,NULL),(85,88,'s',1,NULL,NULL),(86,89,'r',1,NULL,NULL),(87,127,'r',1,NULL,NULL);
/*!40000 ALTER TABLE `Components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExitPointComponents`
--

DROP TABLE IF EXISTS `ExitPointComponents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExitPointComponents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `ExitPointComponents_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ExitPointComponents_ibfk_2` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,11),(2,2,3),(3,3,15),(4,4,4),(5,5,13),(6,6,11),(7,7,3),(8,8,12),(9,9,6),(10,10,5),(11,10,4),(12,11,13),(13,12,1),(14,13,5),(15,14,4),(16,15,4),(17,16,10),(18,17,4),(19,18,8),(20,19,3),(21,20,1),(22,21,3),(23,22,4),(24,22,5),(25,23,14),(26,24,45),(27,25,14),(28,26,14),(29,27,27),(30,28,27),(31,29,34),(32,30,20),(33,31,23),(34,32,41),(35,33,30),(36,34,45),(37,35,20),(38,36,42),(39,36,28),(40,37,44),(41,38,14),(42,39,45),(43,40,42),(44,40,28),(45,41,34),(46,42,42),(47,42,28),(48,43,23),(49,44,30),(50,44,17),(51,44,34),(52,45,49),(53,46,16),(54,47,42),(55,47,33),(56,47,37),(57,48,30),(58,49,50),(59,50,18),(60,51,42),(61,52,25),(62,53,39),(63,54,25),(64,55,42),(65,56,20),(66,57,42),(67,57,44),(68,58,20),(69,59,42),(70,60,42),(71,61,18),(72,62,37),(73,63,20),(74,64,42),(75,65,37),(76,66,14),(77,67,42),(78,68,53),(79,69,52),(80,70,56),(81,71,14),(82,72,39),(83,74,31),(84,73,26),(85,73,24),(86,73,29),(87,73,32),(88,73,36),(89,73,47),(90,73,40),(91,73,43),(92,73,55),(93,73,54),(94,73,22),(95,73,51),(96,73,21),(97,75,25),(98,76,40),(99,77,41),(100,78,39),(101,79,22),(102,80,66),(103,80,68),(104,80,70),(105,80,60),(106,80,61),(107,81,57),(108,83,42),(109,83,44),(110,82,59),(111,84,18),(112,85,57),(113,86,59),(114,87,42),(115,88,18),(116,89,47),(117,89,43),(118,89,40),(119,89,54),(120,89,21),(121,89,55),(122,89,22),(123,89,51),(124,89,29),(125,89,26),(126,89,24),(127,89,36),(128,89,32),(129,90,39),(130,91,43),(131,91,47),(132,91,21),(133,91,51),(134,91,22),(135,91,54),(136,91,24),(137,91,55),(138,91,29),(139,91,26),(140,91,32),(141,91,36),(142,91,40),(143,92,16),(144,93,70),(145,93,68),(146,93,60),(147,93,61),(148,94,40),(149,94,43),(150,94,32),(151,94,29),(152,94,36),(153,94,26),(154,94,55),(155,94,54),(156,94,22),(157,94,21),(158,94,24),(159,94,47),(160,94,51),(161,95,43),(162,96,68),(163,96,70),(164,96,61),(165,96,60),(166,97,27),(167,98,36),(168,98,40),(169,98,43),(170,98,47),(171,98,21),(172,98,51),(173,98,22),(174,98,24),(175,98,55),(176,98,54),(177,98,29),(178,98,32),(179,98,26),(180,99,36),(181,99,40),(182,99,43),(183,99,47),(184,99,51),(185,99,21),(186,99,24),(187,99,54),(188,99,55),(189,99,22),(190,99,29),(191,99,26),(192,99,32),(193,100,41),(194,101,47),(195,102,14),(196,103,43),(197,103,40),(198,103,51),(199,103,21),(200,103,47),(201,103,26),(202,103,29),(203,103,22),(204,103,24),(205,103,54),(206,103,55),(207,103,36),(208,103,32),(209,104,64),(210,104,63),(211,104,68),(212,104,70),(213,104,60),(214,104,61),(215,105,34),(216,106,54),(217,106,55),(218,106,24),(219,106,21),(220,106,51),(221,106,22),(222,106,47),(223,106,43),(224,106,36),(225,106,40),(226,106,26),(227,106,32),(228,106,29),(229,107,51),(230,108,27),(231,109,70),(232,110,32),(233,111,36),(234,111,32),(235,111,43),(236,111,40),(237,111,51),(238,111,21),(239,111,47),(240,111,29),(241,111,26),(242,111,55),(243,111,24),(244,111,54),(245,111,22),(246,112,32),(247,113,32),(248,114,59),(249,116,68),(250,116,70),(251,116,60),(252,116,59),(253,116,61),(254,115,47),(255,115,43),(256,115,40),(257,115,36),(258,115,32),(259,115,29),(260,115,26),(261,115,54),(262,115,24),(263,115,55),(264,115,22),(265,115,21),(266,115,51),(267,117,53),(268,118,32),(269,119,16),(270,120,68),(271,120,70),(272,120,60),(273,120,61),(274,121,53),(275,122,40),(276,122,36),(277,122,32),(278,122,29),(279,122,26),(280,122,22),(281,122,55),(282,122,21),(283,122,24),(284,122,54),(285,122,51),(286,122,47),(287,122,43),(288,123,34),(289,123,17),(290,123,30),(291,124,34),(292,125,18),(293,126,20),(294,127,27),(295,128,18),(296,129,61),(297,129,60),(298,129,59),(299,129,68),(300,129,70),(301,130,61),(302,130,60),(303,130,59),(304,130,68),(305,130,70),(306,131,70),(307,132,59),(308,133,68),(309,134,63),(310,134,64),(311,134,61),(312,134,68),(313,134,70),(314,134,69),(315,134,60),(316,135,59),(317,136,70),(318,136,68),(319,136,61),(320,136,60),(321,137,61),(322,137,60),(323,137,63),(324,137,64),(325,137,69),(326,137,68),(327,137,70),(328,138,69),(329,139,59),(330,139,61),(331,139,60),(332,139,70),(333,139,68),(334,140,61),(335,140,60),(336,140,70),(337,140,68),(338,141,84),(339,142,78),(340,143,81),(341,144,86),(342,145,75),(343,146,77),(344,147,71),(345,148,82),(346,149,81),(347,150,72),(348,151,71),(349,152,82),(350,153,71),(351,154,84),(352,154,83),(353,154,82),(354,155,84),(355,156,81),(356,157,76),(357,158,81),(358,159,73),(359,160,84),(360,161,84),(361,162,81),(362,163,74),(363,164,81),(364,165,72),(365,166,81),(366,167,86),(367,168,73),(368,169,77),(369,170,86),(370,171,72),(371,172,77),(372,173,77),(373,174,81);
/*!40000 ALTER TABLE `ExitPointComponents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExitPoints`
--

DROP TABLE IF EXISTS `ExitPoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExitPoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `method` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `instruction` mediumint(9) NOT NULL,
  `exit_kind` char(1) COLLATE utf8mb4_bin NOT NULL,
  `missing` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `ExitPoints_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `Classes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,11,'<com.NrhqJJa.eeUcJGaorsN: void b()>',12,'a',NULL),(2,3,'<com.kplkem.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',21,'a',NULL),(3,15,'<com.NrhqJJa.EIbJgETwWrV: void a(android.content.Context,java.lang.String)>',10,'a',NULL),(4,4,'<com.kplkem.fPssjlnU: void b()>',45,'a',NULL),(5,13,'<com.NrhqJJa.hpWRnuScciEi: void onRestart()>',7,'a',NULL),(6,11,'<com.NrhqJJa.eeUcJGaorsN: void onRestart()>',7,'a',NULL),(7,3,'<com.kplkem.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',31,'a',0),(8,71,'<com.kplkem.ah: void run()>',25,'s',NULL),(9,6,'<com.ukgv.abanlmi.PushBoxActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(10,72,'<com.kplkem.p: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(11,13,'<com.NrhqJJa.hpWRnuScciEi: void onRestart()>',14,'a',NULL),(12,1,'<com.dgtmb.itf.gcpslr.hqfqipvmfsk.Applause: void showMoreApp(int)>',9,'a',NULL),(13,5,'<com.kplkem.OdQPUGkPEJvgUal: void onCreate(android.os.Bundle)>',67,'a',NULL),(14,4,'<com.kplkem.fPssjlnU: void b()>',55,'a',NULL),(15,4,'<com.kplkem.fPssjlnU: void onBackPressed()>',5,'a',NULL),(16,10,'<com.kplkem.MDVPJLIVPCm: void c(android.content.Context)>',74,'a',NULL),(17,4,'<com.kplkem.fPssjlnU: void a()>',3,'a',NULL),(18,8,'<com.kplkem.astfMtFaOBRT: void a(java.lang.String)>',10,'a',NULL),(19,73,'<com.kplkem.af: void run()>',8,'s',NULL),(20,1,'<com.dgtmb.itf.gcpslr.hqfqipvmfsk.Applause: void showOptionDlg()>',12,'a',NULL),(21,3,'<com.kplkem.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',36,'a',NULL),(22,5,'<com.kplkem.OdQPUGkPEJvgUal: void a(com.kplkem.OdQPUGkPEJvgUal,android.content.Context,java.lang.String)>',5,'a',NULL),(23,90,'<ak: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(24,45,'<com.android_osqxzyan.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(25,90,'<ak: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(26,90,'<ak: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(27,27,'<com.android_osqxzyan.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(28,27,'<com.android_osqxzyan.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(29,34,'<com.android_osqxzyan.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(30,91,'<cr: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(31,23,'<com.android_osqxzyan.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(32,92,'<bi: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(33,30,'<com.android_osqxzyan.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(34,93,'<q: void onClick(android.view.View)>',6,'a',NULL),(35,94,'<cq: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(36,95,'<com.tofjail.nnsj.gvgusfeugag.StartActivity$1: void onClick(android.view.View)>',6,'a',NULL),(37,44,'<com.KFFjIO.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(38,14,'<com.android_osqxzyan.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(39,45,'<com.android_osqxzyan.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(40,96,'<com.tofjail.nnsj.gvgusfeugag.StartActivity$3: void onClick(android.view.View)>',6,'a',NULL),(41,34,'<com.android_osqxzyan.GameAlertDialog: void onClick(android.view.View)>',66,'a',NULL),(42,97,'<com.eutopia.game.moreapp.activity.MoreHelper: void showMoreGames(android.content.Context,com.eutopia.game.moreapp.Ad)>',5,'a',NULL),(43,23,'<com.android_osqxzyan.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(44,17,'<com.android_osqxzyan.NoDetail: void a(int,boolean)>',10,'s',NULL),(45,49,'<com.KFFjIO.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(46,98,'<dd: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(47,99,'<com.tofjail.nnsj.gvgusfeugag.InputNameActivity$1: void requestControllerDidReceiveResponse(com.scoreloop.client.android.core.controller.RequestController)>',13,'a',NULL),(48,30,'<com.android_osqxzyan.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(49,50,'<com.KFFjIO.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(50,100,'<dv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(51,42,'<com.KFFjIO.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(52,101,'<k: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(53,39,'<com.KFFjIO.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(54,101,'<k: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(55,102,'<com.scoreloop.android.coreui.GameActivity$1: void onClick(android.view.View)>',9,'a',NULL),(56,20,'<com.android_osqxzyan.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(57,103,'<com.KFFjIO.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(58,91,'<cr: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(59,42,'<com.KFFjIO.akqlsUJkseCiE: void b()>',55,'a',NULL),(60,42,'<com.KFFjIO.akqlsUJkseCiE: void a()>',3,'a',NULL),(61,18,'<com.android_osqxzyan.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(62,37,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(63,20,'<com.android_osqxzyan.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(64,104,'<com.scoreloop.android.coreui.GamesActivity$1: void onClick(android.view.View)>',9,'a',NULL),(65,37,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(66,105,'<al: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(67,106,'<com.scoreloop.android.coreui.AccountActivity$2: void onClick(android.view.View)>',9,'a',NULL),(68,53,'<com.android_osqxzyan.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(69,107,'<com.KFFjIO.ad: void run()>',25,'s',NULL),(70,56,'<com.FwFVdaWNn.JBKtHMvSweKBUVN: void b()>',3,'a',NULL),(71,14,'<com.android_osqxzyan.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(72,39,'<com.KFFjIO.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(73,108,'<nbakery.ttff.DoTrial$3: void onClick(android.view.View)>',6,'a',NULL),(74,31,'<com.tofjail.nnsj.gvgusfeugag.ToiletpaperActivity: void SaveScore(int)>',22,'a',NULL),(75,25,'<com.android_osqxzyan.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(76,40,'<nbakery.ttff.DisplaySetting: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(77,41,'<com.android_osqxzyan.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(78,39,'<com.KFFjIO.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(79,22,'<nbakery.ttff.Opening: boolean onTouchEvent(android.view.MotionEvent)>',8,'a',NULL),(80,66,'<vio.kbrakanbwb.lpbcjth.About: void displayLicenseAgreement()>',3,'a',NULL),(81,57,'<com.FwFVdaWNn.WcBWoMpmjSP: void a()>',3,'a',NULL),(82,59,'<vio.kbrakanbwb.lpbcjth.TitleScreen: void displayRocketmindApps()>',4,'a',NULL),(83,44,'<com.KFFjIO.ntpDurIhbwNACpL: void a(com.KFFjIO.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(84,100,'<dv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(85,109,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(86,59,'<vio.kbrakanbwb.lpbcjth.TitleScreen: void sendEmail(java.lang.String,java.lang.String,java.lang.String)>',12,'a',NULL),(87,42,'<com.KFFjIO.akqlsUJkseCiE: void b()>',45,'a',NULL),(88,18,'<com.android_osqxzyan.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(89,110,'<nbakery.ttff.Mainmenu$6: void onClick(android.view.View)>',19,'a',NULL),(90,111,'<com.KFFjIO.ab: void run()>',8,'s',NULL),(91,112,'<nbakery.ttff.Main$2: void onClick(android.view.View)>',6,'a',NULL),(92,16,'<com.android_osqxzyan.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(93,113,'<com.waps.SDKUtils: void openUrlByBrowser(java.lang.String,java.lang.String)>',18,'a',NULL),(94,32,'<nbakery.ttff.Main: void open()>',40,'a',NULL),(95,43,'<nbakery.ttff.DoTrial: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(96,114,'<com.waps.al: void onClick(android.view.View)>',84,'a',NULL),(97,115,'<dl: void onClick(android.view.View)>',218,'a',NULL),(98,116,'<nbakery.ttff.Mainmenu$2: void onClick(android.view.View)>',13,'a',NULL),(99,117,'<nbakery.ttff.DoTrial$2: void onClick(android.view.View)>',6,'a',NULL),(100,41,'<com.android_osqxzyan.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(101,47,'<nbakery.ttff.Other: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(102,90,'<ak: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(103,40,'<nbakery.ttff.DisplaySetting: void DisplayDialog2()>',3,'a',NULL),(104,118,'<com.waps.g: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(105,34,'<com.android_osqxzyan.GameAlertDialog: void onClick(android.view.View)>',84,'a',NULL),(106,119,'<nbakery.ttff.Main$3: void onClick(android.view.View)>',6,'a',NULL),(107,51,'<nbakery.ttff.ShowRecipe: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(108,115,'<dl: void onClick(android.view.View)>',239,'a',NULL),(109,120,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',14,'a',NULL),(110,32,'<nbakery.ttff.Main: void DoEvent()>',14,'a',NULL),(111,121,'<nbakery.ttff.Main$4: void onClick(android.view.View)>',6,'a',NULL),(112,32,'<nbakery.ttff.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(113,32,'<nbakery.ttff.Main: void DoEvent()>',22,'a',NULL),(114,59,'<vio.kbrakanbwb.lpbcjth.TitleScreen: void onActivityResult(int,int,android.content.Intent)>',10,'a',NULL),(115,122,'<nbakery.ttff.Mainmenu$3: void onClick(android.view.View)>',11,'a',NULL),(116,59,'<vio.kbrakanbwb.lpbcjth.TitleScreen: void startNewGame()>',5,'a',NULL),(117,53,'<com.android_osqxzyan.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(118,32,'<nbakery.ttff.Main: void DoEvent()>',9,'a',NULL),(119,16,'<com.android_osqxzyan.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(120,113,'<com.waps.SDKUtils: void goToTargetBrowser(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',6,'a',NULL),(121,53,'<com.android_osqxzyan.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(122,123,'<nbakery.ttff.DisplaySetting$3: void onClick(android.view.View)>',9,'a',NULL),(123,17,'<com.android_osqxzyan.NoDetail: void a(int,boolean)>',63,'a',NULL),(124,34,'<com.android_osqxzyan.GameAlertDialog: void onClick(android.view.View)>',75,'a',NULL),(125,18,'<com.android_osqxzyan.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(126,91,'<cr: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(127,27,'<com.android_osqxzyan.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(128,100,'<dv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(129,59,'<vio.kbrakanbwb.lpbcjth.TitleScreen: void onResumeGame()>',3,'a',NULL),(130,59,'<vio.kbrakanbwb.lpbcjth.TitleScreen: void onLoadGame()>',3,'a',NULL),(131,70,'<com.oSqCqa.AWMvFQEn: void a()>',3,'a',NULL),(132,59,'<vio.kbrakanbwb.lpbcjth.TitleScreen: boolean displayEULA()>',6,'a',NULL),(133,68,'<com.oSqCqa.aNudJpGHIswUMFl: void b()>',3,'a',NULL),(134,124,'<com.waps.ao: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(135,59,'<vio.kbrakanbwb.lpbcjth.TitleScreen: void displayAboutDialog()>',3,'a',NULL),(136,125,'<vio.kbrakanbwb.lpbcjth.FishingDialog: void displaySaveGameDialog()>',4,'a',NULL),(137,126,'<com.waps.w: java.lang.String a(java.lang.String[])>',137,'a',NULL),(138,69,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',56,'a',NULL),(139,59,'<vio.kbrakanbwb.lpbcjth.TitleScreen: void onTutorial()>',5,'a',NULL),(140,114,'<com.waps.al: void onClick(android.view.View)>',55,'a',NULL),(141,87,'<fws.hqRRUc.TVKKnI10: void onClick(android.view.View)>',53,'a',NULL),(142,128,'<com.scoreloop.android.coreui.GameActivity$1: void onClick(android.view.View)>',9,'a',NULL),(143,129,'<fws.hqRRUc.k: void onClick(android.view.View)>',242,'a',NULL),(144,89,'<fws.hqRRUc.TVKKnI12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(145,130,'<com.scoreloop.android.coreui.BuddiesActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(146,131,'<com.scoreloop.android.coreui.GamesActivity$1: void onClick(android.view.View)>',9,'a',NULL),(147,132,'<mai.cckavsbh.wlqqshomsmi.states.GameState: boolean onOptionsItemSelected(android.view.MenuItem)>',86,'a',NULL),(148,85,'<fws.hqRRUc.TVKKnI9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(149,129,'<fws.hqRRUc.k: void onClick(android.view.View)>',221,'a',NULL),(150,133,'<com.scoreloop.android.coreui.HighscoresActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(151,134,'<mai.cckavsbh.wlqqshomsmi.states.game.GameThread: void checkActorsIntersect(float,float,float,float,float)>',477,'a',NULL),(152,85,'<fws.hqRRUc.TVKKnI9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(153,134,'<mai.cckavsbh.wlqqshomsmi.states.game.GameThread: void checkActorsIntersect(float,float,float,float,float)>',470,'a',NULL),(154,86,'<fws.hqRRUc.TVKKnI2: void a(int,boolean)>',10,'s',NULL),(155,87,'<fws.hqRRUc.TVKKnI10: void onClick(android.view.View)>',84,'a',NULL),(156,135,'<fws.hqRRUc.j: void onClick(android.view.View)>',239,'a',NULL),(157,136,'<com.scoreloop.client.android.core.controller.AddressBook: java.util.List b(android.content.Context)>',5,'p',NULL),(158,137,'<fws.hqRRUc.f: void onClick(android.view.View)>',239,'a',NULL),(159,76,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(160,87,'<fws.hqRRUc.TVKKnI10: void onClick(android.view.View)>',66,'a',NULL),(161,87,'<fws.hqRRUc.TVKKnI10: void onClick(android.view.View)>',75,'a',NULL),(162,84,'<fws.hqRRUc.TVKKnI8: void onCreate(android.os.Bundle)>',33,'s',NULL),(163,138,'<com.scoreloop.android.coreui.AccountActivity$2: void onClick(android.view.View)>',9,'a',NULL),(164,137,'<fws.hqRRUc.f: void onClick(android.view.View)>',218,'a',NULL),(165,75,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(166,84,'<fws.hqRRUc.TVKKnI8: void onCreate(android.os.Bundle)>',84,'s',NULL),(167,89,'<fws.hqRRUc.TVKKnI12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(168,76,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(169,139,'<com.scoreloop.android.coreui.GamesActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(170,89,'<fws.hqRRUc.TVKKnI12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(171,75,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(172,80,'<com.scoreloop.android.coreui.GamesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(173,80,'<com.scoreloop.android.coreui.GamesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(174,135,'<fws.hqRRUc.j: void onClick(android.view.View)>',218,'a',NULL);
/*!40000 ALTER TABLE `ExitPoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Extras`
--

DROP TABLE IF EXISTS `Extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Extras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(512) NOT NULL,
  `type` varchar(512) DEFAULT NULL,
  `extra` varchar(512) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Extras`
--

LOCK TABLES `Extras` WRITE;
/*!40000 ALTER TABLE `Extras` DISABLE KEYS */;
/*!40000 ALTER TABLE `Extras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IActions`
--

DROP TABLE IF EXISTS `IActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IActions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `action` (`action`),
  CONSTRAINT `IActions_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IActions_ibfk_2` FOREIGN KEY (`action`) REFERENCES `ActionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,5),(2,2,5),(3,3,5),(4,5,5),(5,11,5),(6,13,5),(7,14,5),(8,15,5),(9,16,1),(10,17,1),(11,22,5),(12,26,1),(13,27,1),(14,29,5),(15,37,5),(16,38,1),(17,39,1),(18,43,1),(19,44,7),(20,45,1),(21,46,8),(22,49,5),(23,50,5),(24,54,5),(25,55,5),(26,61,1),(27,62,1),(28,64,9),(29,65,5),(30,67,5),(31,74,5),(32,75,5),(33,76,10),(34,84,11),(35,88,12),(36,90,5),(37,91,1),(38,93,1),(39,95,13),(40,101,14),(41,102,5),(42,104,15),(43,107,5),(44,110,5),(45,120,1),(46,123,1),(47,125,1),(48,127,1),(49,135,5),(50,136,10),(51,138,5),(52,140,5),(53,141,3),(54,142,5),(55,143,5),(56,144,5),(57,145,5),(58,146,5),(59,148,5),(60,154,5),(61,157,5),(62,158,1),(63,159,1),(64,162,1),(65,163,1),(66,165,5),(67,166,1),(68,167,1),(69,168,1),(70,169,1),(71,170,17),(72,175,5),(73,176,5),(74,178,5),(75,179,1),(76,180,1),(77,181,5),(78,184,1),(79,185,1),(80,186,1),(81,187,1),(82,188,1),(83,189,1),(84,190,1),(85,191,1),(86,192,5),(87,193,5),(88,194,3),(89,196,5),(90,197,5),(91,198,5),(92,202,17),(93,203,5),(94,204,5);
/*!40000 ALTER TABLE `IActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ICategories`
--

DROP TABLE IF EXISTS `ICategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ICategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `category` (`category`),
  CONSTRAINT `ICategories_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ICategories_ibfk_2` FOREIGN KEY (`category`) REFERENCES `CategoryStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,16,1),(2,17,2),(3,26,1),(4,27,2),(5,38,1),(6,39,2),(7,43,1),(8,45,2),(9,61,1),(10,62,2),(11,91,1),(12,93,2),(13,120,1),(14,123,2),(15,125,1),(16,127,2),(17,135,2),(18,135,4),(19,138,4),(20,138,1),(21,140,1),(22,140,4),(23,142,4),(24,142,2),(25,144,4),(26,146,4),(27,158,1),(28,159,2),(29,162,1),(30,163,2),(31,166,1),(32,167,2),(33,168,1),(34,169,2),(35,179,1),(36,180,2),(37,184,1),(38,185,2),(39,186,1),(40,187,2),(41,188,1),(42,189,2),(43,190,1),(44,191,2);
/*!40000 ALTER TABLE `ICategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IClasses`
--

DROP TABLE IF EXISTS `IClasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IClasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `class` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IClasses_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,4,'com/kplkem/fPssjlnU'),(2,6,'com/dgtmb/itf/gcpslr/hqfqipvmfsk/Applause'),(3,7,'com/NrhqJJa/EIbJgETwWrV'),(4,8,'com/NrhqJJa/EIbJgETwWrV'),(5,9,'com/kplkem/mbwriEecLIQTii'),(6,10,'com/ukgv/abanlmi/SelectLevel'),(7,12,'com/ukgv/abanlmi/PushBoxActivity'),(8,18,'com/dgtmb/itf/gcpslr/hqfqipvmfsk/Applause'),(9,19,'com/dgtmb/itf/gcpslr/hqfqipvmfsk/Applause'),(10,20,'com/kplkem/OdQPUGkPEJvgUal'),(11,21,'com/dgtmb/itf/gcpslr/hqfqipvmfsk/Applause'),(12,23,'com/kplkem/mbwriEecLIQTii'),(13,24,'com/dgtmb/itf/gcpslr/hqfqipvmfsk/OptionActivity'),(14,25,'com/kplkem/fPssjlnU'),(15,28,'com/android_osqxzyan/Myhall'),(16,30,'com/android_osqxzyan/Myhall'),(17,31,'com/android_osqxzyan/Myhall'),(18,32,'com/android_osqxzyan/Myhall'),(19,33,'com/android_osqxzyan/Myhall'),(20,34,'com/android_osqxzyan/GameInfo'),(21,35,'com/android_osqxzyan/GameInfo'),(22,36,'com/android_osqxzyan/GameInfo'),(23,40,'com/android_osqxzyan/image/ImageTestActivity'),(24,42,'com/tofjail/nnsj/gvgusfeugag/ToiletpaperActivity'),(25,41,'com/android_osqxzyan/Myhall'),(26,44,'com/android_osqxzyan/GameService'),(27,46,'com/android_osqxzyan/GameService'),(28,47,'com/android_osqxzyan/GameInfo'),(29,48,'com/scoreloop/android/coreui/HighscoresActivity'),(30,51,'com/eutopia/game/moreapp/activity/MoreActivity'),(31,52,'com/android_osqxzyan/GameService'),(32,53,'com/android_osqxzyan/GameService'),(33,56,'com/scoreloop/android/coreui/HighscoresActivity'),(34,57,'com/android_osqxzyan/GameInfo'),(35,58,'com/KFFjIO/ntpDurIhbwNACpL'),(36,59,'com/android_osqxzyan/GameInfo'),(37,60,'com/tofjail/nnsj/gvgusfeugag/StartActivity'),(38,63,'com/KFFjIO/akqlsUJkseCiE'),(39,66,'com/android_osqxzyan/GameService'),(40,69,'com/tofjail/nnsj/gvgusfeugag/StartActivity'),(41,68,'com/android_osqxzyan/Myhall'),(42,70,'com/tofjail/nnsj/gvgusfeugag/StartActivity'),(43,71,'com/android_osqxzyan/GameInfo'),(44,73,'com/scoreloop/android/coreui/GameActivity'),(45,72,'com/android_osqxzyan/GameInfo'),(46,76,'com/android_osqxzyan/GameService'),(47,77,'com/KFFjIO/phDWdatTa'),(48,78,'nbakery/ttff/Mainmenu'),(49,79,'com/android_osqxzyan/GameService'),(50,81,'nbakery/ttff/ShowMaterial'),(51,82,'com/android_osqxzyan/GameService'),(52,80,'com/tofjail/nnsj/gvgusfeugag/InputNameActivity'),(53,83,'nbakery/ttff/ShowRanking'),(54,85,'com/KFFjIO/akqlsUJkseCiE'),(55,84,'com/android_osqxzyan/GameService'),(56,86,'nbakery/ttff/Main'),(57,87,'vio/kbrakanbwb/lpbcjth/LicenseAgreement'),(58,88,'com/android_osqxzyan/GameService'),(59,89,'nbakery/ttff/Mainmenu'),(60,94,'com/nd/dianjin/activity/OfferAppActivity'),(61,92,'com/android_osqxzyan/Myhall'),(62,96,'com/tofjail/nnsj/gvgusfeugag/StartActivity'),(63,98,'nbakery/ttff/Opening'),(64,97,'com/android_osqxzyan/Myhall'),(65,99,'com/KFFjIO/phDWdatTa'),(66,100,'nbakery/ttff/DisplaySetting'),(67,101,'com/android_osqxzyan/GameService'),(68,103,'nbakery/ttff/WeeklyReport'),(69,104,'com/android_osqxzyan/GameService'),(70,105,'nbakery/ttff/ShowRanking'),(71,106,'(.*)'),(72,108,'nbakery/ttff/Main'),(73,109,'(.*)'),(74,111,'nbakery/ttff/ShowRecipe'),(75,112,'com/android_osqxzyan/GameService'),(76,113,'nbakery/ttff/ShowRanking'),(77,114,'com/android_osqxzyan/Myhall'),(78,115,'nbakery/ttff/ShowRecipe'),(79,118,'nbakery/ttff/DoTrial'),(80,116,'(.*)'),(81,117,'com/android_osqxzyan/GameAlertDialog'),(82,119,'nbakery/ttff/ShowRanking'),(83,121,'nbakery/ttff/EndT'),(84,122,'(.*)'),(85,124,'nbakery/ttff/Other'),(86,126,'nbakery/ttff/ShowRanking'),(87,128,'nbakery/ttff/EndF2'),(88,129,'vio/kbrakanbwb/lpbcjth/Fishing'),(89,130,'vio/kbrakanbwb/lpbcjth/Fishing'),(90,131,'nbakery/ttff/ShowRanking'),(91,132,'com/android_osqxzyan/GameService'),(92,133,'nbakery/ttff/EndF'),(93,134,'com/android_osqxzyan/GameService'),(94,137,'nbakery/ttff/ShowRecipe'),(95,136,'com/android_osqxzyan/GameService'),(96,139,'com/android_osqxzyan/image/ImageTestActivity'),(97,144,''),(98,147,'com/android_osqxzyan/GameService'),(99,146,''),(100,149,'vio/kbrakanbwb/lpbcjth/Fishing'),(101,150,'vio/kbrakanbwb/lpbcjth/LoadGameScreen'),(102,151,'vio/kbrakanbwb/lpbcjth/TitleScreen'),(103,152,'vio/kbrakanbwb/lpbcjth/EULA'),(104,153,'vio/kbrakanbwb/lpbcjth/TitleScreen'),(105,155,'vio/kbrakanbwb/lpbcjth/About'),(106,156,'vio/kbrakanbwb/lpbcjth/SaveGameScreen'),(107,160,'vio/kbrakanbwb/lpbcjth/Fishing'),(108,164,'fws/hqRRUc/TVKKnI8'),(109,170,'fws/hqRRUc/TVKKnI11'),(110,171,'com/scoreloop/android/coreui/UserActivity'),(111,172,'com/scoreloop/android/coreui/GameActivity'),(112,173,'com/scoreloop/android/coreui/HighscoresActivity'),(113,174,'fws/hqRRUc/TVKKnI8'),(114,177,'com/scoreloop/android/coreui/UserActivity'),(115,182,'fws/hqRRUc/TVKKnI11'),(116,183,'fws/hqRRUc/TVKKnI10'),(117,195,'fws/hqRRUc/TVKKnI11'),(118,199,'fws/hqRRUc/TVKKnI11'),(119,200,'fws/hqRRUc/TVKKnI11'),(120,201,'com/scoreloop/android/coreui/GameActivity'),(121,202,'fws/hqRRUc/TVKKnI11');
/*!40000 ALTER TABLE `IClasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IData`
--

DROP TABLE IF EXISTS `IData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `data` (`data`),
  CONSTRAINT `IData_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IData_ibfk_2` FOREIGN KEY (`data`) REFERENCES `UriData` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,3,3),(4,5,4),(5,11,5),(6,13,6),(7,14,7),(8,15,8),(9,22,9),(10,29,10),(11,37,11),(12,49,12),(13,50,13),(14,54,14),(15,55,15),(16,64,16),(17,65,17),(18,67,18),(19,74,19),(20,75,20),(21,90,21),(22,102,22),(23,107,23),(24,110,24),(25,135,25),(26,138,26),(27,140,27),(28,142,28),(29,143,29),(30,144,30),(31,145,31),(32,146,32),(33,148,33),(34,154,34),(35,157,35),(36,165,36),(37,175,37),(38,176,38),(39,178,39),(40,181,40),(41,192,42),(42,193,43),(43,196,44),(44,197,45),(45,198,46),(46,203,47),(47,204,48);
/*!40000 ALTER TABLE `IData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IExtras`
--

DROP TABLE IF EXISTS `IExtras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IExtras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `extra` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IExtras_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,20,'apkVersion'),(2,20,'apkURL'),(3,20,'apkInfo'),(4,20,'packageName'),(5,20,'apkSoftID'),(6,20,'apkTitle'),(7,20,'iconURL'),(8,20,'apkSize'),(9,20,'imageURL'),(10,24,'MatchSound'),(11,24,'GameMusic'),(12,24,'ChangeTheme'),(13,24,'Vibrate'),(14,28,'clicked'),(15,30,'clicked'),(16,31,'clicked'),(17,34,'id'),(18,34,'from_alert'),(19,34,'detail_flag'),(20,35,'title'),(21,35,'game'),(22,35,'fromtype'),(23,36,'game'),(24,36,'fromtype'),(25,41,'title'),(26,41,'nextclassid'),(27,41,'clicked'),(28,47,'game'),(29,47,'fromtype'),(30,51,'ad'),(31,57,'game'),(32,57,'fromtype'),(33,58,'apkVersion'),(34,58,'apkURL'),(35,58,'apkInfo'),(36,58,'packageName'),(37,58,'apkSoftID'),(38,58,'apkTitle'),(39,58,'iconURL'),(40,59,'title'),(41,58,'apkSize'),(42,59,'game'),(43,58,'imageURL'),(44,59,'fromtype'),(45,68,'title'),(46,68,'nextclassid'),(47,68,'clicked'),(48,71,'game'),(49,71,'fromtype'),(50,72,'title'),(51,72,'game'),(52,72,'fromtype'),(53,80,'level'),(54,80,'lasthistory'),(55,80,'issavename'),(56,80,'savescoretime'),(57,92,'title'),(58,92,'nextclassid'),(59,94,'oriention'),(60,92,'clicked'),(61,95,'android.intent.extra.TEXT'),(62,95,'android.intent.extra.SUBJECT'),(63,95,'android.intent.extra.EMAIL'),(64,97,'nextclassid'),(65,97,'clicked'),(66,106,'CLIENT_PACKAGE'),(67,106,'URL'),(68,106,'offers_webview_tag'),(69,109,'CLIENT_PACKAGE'),(70,109,'URL'),(71,109,'isFinshClose'),(72,109,'offers_webview_tag'),(73,114,'clicked'),(74,116,'CLIENT_PACKAGE'),(75,117,'title'),(76,116,'URL'),(77,117,'btn_txt'),(78,116,'isFinshClose'),(79,117,'need_adb_flag'),(80,116,'offers_webview_tag'),(81,117,'cont'),(82,117,'close_flag'),(83,122,'USER_ID'),(84,122,'CLIENT_PACKAGE'),(85,122,'Offers_URL'),(86,122,'offers_webview_tag'),(87,122,'URL_PARAMS'),(88,164,'id'),(89,164,'from_alert'),(90,164,'detail_flag'),(91,174,'game'),(92,174,'fromtype'),(93,183,'title'),(94,183,'btn_txt'),(95,183,'need_adb_flag'),(96,183,'cont'),(97,183,'close_flag');
/*!40000 ALTER TABLE `IExtras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFActions`
--

DROP TABLE IF EXISTS `IFActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFActions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `action_idx` (`action`) USING HASH,
  CONSTRAINT `IFActions_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IFActions_ibfk_2` FOREIGN KEY (`action`) REFERENCES `ActionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,4,1),(3,5,2),(4,6,1),(5,7,1),(6,10,1),(7,12,1),(8,14,1),(9,17,1),(10,19,1),(11,21,3),(12,22,1),(13,24,1),(14,27,1),(15,29,2),(16,30,4),(17,33,1),(18,35,1),(19,36,1),(20,37,1),(21,38,1),(22,39,1),(23,40,1),(24,41,2),(25,41,4),(26,42,6),(27,43,16),(28,44,16),(29,45,16),(30,46,6);
/*!40000 ALTER TABLE `IFActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFCategories`
--

DROP TABLE IF EXISTS `IFCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFCategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `category_idx` (`category`) USING HASH,
  CONSTRAINT `IFCategories_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IFCategories_ibfk_2` FOREIGN KEY (`category`) REFERENCES `CategoryStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,4,1),(3,9,1),(4,11,1),(5,13,1),(6,16,1),(7,18,1),(8,20,1),(9,22,1),(10,23,1),(11,24,1),(12,25,1),(13,26,1),(14,27,1),(15,28,1),(16,31,1),(17,32,1),(18,33,1),(19,35,1),(20,36,1),(21,40,1),(22,42,3),(23,43,3),(24,45,3),(25,46,3);
/*!40000 ALTER TABLE `IFCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFData`
--

DROP TABLE IF EXISTS `IFData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) DEFAULT NULL,
  `scheme` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `host` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `port` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `path` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `subtype` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  CONSTRAINT `IFData_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,42,'package',NULL,NULL,NULL,NULL,NULL),(2,43,'package',NULL,NULL,NULL,NULL,NULL),(3,44,'package',NULL,NULL,NULL,NULL,NULL),(4,45,'package',NULL,NULL,NULL,NULL,NULL),(5,46,'package',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `IFData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFMimeTypes`
--

DROP TABLE IF EXISTS `IFMimeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFMimeTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `type` varchar(512) NOT NULL,
  `subtype` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `type_idx` (`type`,`subtype`),
  CONSTRAINT `IFMimeTypes_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFMimeTypes`
--

LOCK TABLES `IFMimeTypes` WRITE;
/*!40000 ALTER TABLE `IFMimeTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `IFMimeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IMimeTypes`
--

DROP TABLE IF EXISTS `IMimeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IMimeTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `subtype` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `type_idx` (`type`),
  KEY `subtype_idx` (`subtype`),
  CONSTRAINT `IMimeTypes_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,5,'application','vnd.android.package-archive'),(2,11,'application','vnd.android.package-archive'),(3,22,'application','vnd.android.package-archive'),(4,37,'application','vnd.android.package-archive'),(5,54,'application','vnd.android.package-archive'),(6,55,'application','vnd.android.package-archive'),(7,67,'application','vnd.android.package-archive'),(8,74,'application','vnd.android.package-archive'),(9,95,'test','plain'),(10,107,'application','vnd.android.package-archive'),(11,110,'application','vnd.android.package-archive'),(12,154,'application','vnd.android.package-archive'),(13,157,'application','vnd.android.package-archive'),(14,175,'application','vnd.android.package-archive'),(15,176,'application','vnd.android.package-archive'),(16,197,'application','vnd.android.package-archive'),(17,198,'application','vnd.android.package-archive'),(18,203,'application','vnd.android.package-archive'),(19,204,'application','vnd.android.package-archive');
/*!40000 ALTER TABLE `IMimeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IPackages`
--

DROP TABLE IF EXISTS `IPackages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IPackages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `package` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IPackages_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,4,'com.dgtmb.itf.gcpslr.hqfqipvmfsk'),(2,6,'com.dgtmb.itf.gcpslr.hqfqipvmfsk'),(3,7,'com.ukgv.abanlmi'),(4,8,'com.ukgv.abanlmi'),(5,9,'com.dgtmb.itf.gcpslr.hqfqipvmfsk'),(6,10,'com.ukgv.abanlmi'),(7,12,'com.ukgv.abanlmi'),(8,16,'(.*)'),(9,17,'(.*)'),(10,18,'com.dgtmb.itf.gcpslr.hqfqipvmfsk'),(11,19,'com.dgtmb.itf.gcpslr.hqfqipvmfsk'),(12,20,'com.dgtmb.itf.gcpslr.hqfqipvmfsk'),(13,21,'com.dgtmb.itf.gcpslr.hqfqipvmfsk'),(14,23,'com.dgtmb.itf.gcpslr.hqfqipvmfsk'),(15,24,'com.dgtmb.itf.gcpslr.hqfqipvmfsk'),(16,25,'com.dgtmb.itf.gcpslr.hqfqipvmfsk'),(17,26,'(.*)'),(18,27,'(.*)'),(19,28,'com.android_osqxzyan'),(20,30,'com.android_osqxzyan'),(21,31,'com.android_osqxzyan'),(22,32,'com.android_osqxzyan'),(23,33,'com.android_osqxzyan'),(24,34,'com.android_osqxzyan'),(25,35,'com.android_osqxzyan'),(26,36,'com.android_osqxzyan'),(27,38,'(.*)'),(28,39,'(.*)'),(29,40,'com.android_osqxzyan'),(30,42,'com.tofjail.nnsj.gvgusfeugag'),(31,41,'com.android_osqxzyan'),(32,43,'(.*)'),(33,44,'com.android_osqxzyan'),(34,45,'(.*)'),(35,46,'com.android_osqxzyan'),(36,47,'com.android_osqxzyan'),(37,48,'com.tofjail.nnsj.gvgusfeugag'),(38,51,'com.tofjail.nnsj.gvgusfeugag'),(39,52,'com.android_osqxzyan'),(40,53,'com.android_osqxzyan'),(41,56,'com.tofjail.nnsj.gvgusfeugag'),(42,57,'com.android_osqxzyan'),(43,58,'com.tofjail.nnsj.gvgusfeugag'),(44,59,'com.android_osqxzyan'),(45,60,'com.tofjail.nnsj.gvgusfeugag'),(46,61,'NULL-CONSTANT'),(47,63,'com.tofjail.nnsj.gvgusfeugag'),(48,62,'NULL-CONSTANT'),(49,66,'com.android_osqxzyan'),(50,69,'com.tofjail.nnsj.gvgusfeugag'),(51,68,'com.android_osqxzyan'),(52,70,'com.tofjail.nnsj.gvgusfeugag'),(53,71,'com.android_osqxzyan'),(54,73,'com.tofjail.nnsj.gvgusfeugag'),(55,72,'com.android_osqxzyan'),(56,76,'com.android_osqxzyan'),(57,77,'com.tofjail.nnsj.gvgusfeugag'),(58,78,'nbakery.ttff'),(59,79,'com.android_osqxzyan'),(60,81,'nbakery.ttff'),(61,82,'com.android_osqxzyan'),(62,80,'com.tofjail.nnsj.gvgusfeugag'),(63,83,'nbakery.ttff'),(64,85,'com.tofjail.nnsj.gvgusfeugag'),(65,84,'com.android_osqxzyan'),(66,86,'nbakery.ttff'),(67,87,'vio.kbrakanbwb.lpbcjth'),(68,88,'com.android_osqxzyan'),(69,89,'nbakery.ttff'),(70,91,'(.*)'),(71,93,'(.*)'),(72,94,'nbakery.ttff'),(73,92,'com.android_osqxzyan'),(74,96,'com.tofjail.nnsj.gvgusfeugag'),(75,98,'nbakery.ttff'),(76,97,'com.android_osqxzyan'),(77,99,'com.tofjail.nnsj.gvgusfeugag'),(78,100,'nbakery.ttff'),(79,101,'com.android_osqxzyan'),(80,103,'nbakery.ttff'),(81,104,'com.android_osqxzyan'),(82,105,'nbakery.ttff'),(83,106,'vio.kbrakanbwb.lpbcjth'),(84,108,'nbakery.ttff'),(85,109,'vio.kbrakanbwb.lpbcjth'),(86,111,'nbakery.ttff'),(87,112,'com.android_osqxzyan'),(88,113,'nbakery.ttff'),(89,114,'com.android_osqxzyan'),(90,115,'nbakery.ttff'),(91,118,'nbakery.ttff'),(92,116,'vio.kbrakanbwb.lpbcjth'),(93,117,'com.android_osqxzyan'),(94,119,'nbakery.ttff'),(95,121,'nbakery.ttff'),(96,120,'(.*)'),(97,123,''),(98,122,'vio.kbrakanbwb.lpbcjth'),(99,124,'nbakery.ttff'),(100,125,''),(101,126,'nbakery.ttff'),(102,127,'(.*)'),(103,128,'nbakery.ttff'),(104,129,'vio.kbrakanbwb.lpbcjth'),(105,130,'vio.kbrakanbwb.lpbcjth'),(106,131,'nbakery.ttff'),(107,132,'com.android_osqxzyan'),(108,133,'nbakery.ttff'),(109,134,'com.android_osqxzyan'),(110,135,''),(111,137,'nbakery.ttff'),(112,136,'com.android_osqxzyan'),(113,138,''),(114,139,'com.android_osqxzyan'),(115,140,'(.*)'),(116,142,'(.*)'),(117,144,''),(118,147,'com.android_osqxzyan'),(119,146,'(.*)'),(120,149,'vio.kbrakanbwb.lpbcjth'),(121,150,'vio.kbrakanbwb.lpbcjth'),(122,151,'vio.kbrakanbwb.lpbcjth'),(123,152,'vio.kbrakanbwb.lpbcjth'),(124,153,'vio.kbrakanbwb.lpbcjth'),(125,155,'vio.kbrakanbwb.lpbcjth'),(126,156,'vio.kbrakanbwb.lpbcjth'),(127,158,'(.*)'),(128,159,'(.*)'),(129,160,'vio.kbrakanbwb.lpbcjth'),(130,162,'(.*)'),(131,163,'(.*)'),(132,164,'mai.cckavsbh.wlqqshomsmi'),(133,166,'(.*)'),(134,167,''),(135,168,''),(136,169,'(.*)'),(137,170,'mai.cckavsbh.wlqqshomsmi'),(138,171,'mai.cckavsbh.wlqqshomsmi'),(139,172,'mai.cckavsbh.wlqqshomsmi'),(140,173,'mai.cckavsbh.wlqqshomsmi'),(141,174,'mai.cckavsbh.wlqqshomsmi'),(142,177,'mai.cckavsbh.wlqqshomsmi'),(143,179,'(.*)'),(144,180,'(.*)'),(145,182,'mai.cckavsbh.wlqqshomsmi'),(146,183,'mai.cckavsbh.wlqqshomsmi'),(147,184,'(.*)'),(148,185,''),(149,186,''),(150,187,'(.*)'),(151,188,'(.*)'),(152,189,''),(153,190,''),(154,191,'(.*)'),(155,195,'mai.cckavsbh.wlqqshomsmi'),(156,199,'mai.cckavsbh.wlqqshomsmi'),(157,200,'mai.cckavsbh.wlqqshomsmi'),(158,201,'mai.cckavsbh.wlqqshomsmi'),(159,202,'mai.cckavsbh.wlqqshomsmi');
/*!40000 ALTER TABLE `IPackages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IccStmts`
--

DROP TABLE IF EXISTS `IccStmts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IccStmts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `stmt_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IccStmts`
--

LOCK TABLES `IccStmts` WRITE;
/*!40000 ALTER TABLE `IccStmts` DISABLE KEYS */;
/*!40000 ALTER TABLE `IccStmts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IntentFilters`
--

DROP TABLE IF EXISTS `IntentFilters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IntentFilters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `alias` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `c_id_idx` (`component_id`) USING HASH,
  CONSTRAINT `IntentFilters_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,6,0),(4,13,0),(5,12,0),(6,17,0),(7,20,0),(8,21,0),(9,22,0),(10,23,0),(11,24,0),(12,25,0),(13,26,0),(14,27,0),(15,28,0),(16,29,0),(17,30,0),(18,32,0),(19,34,0),(20,36,0),(21,38,0),(22,39,0),(23,40,0),(24,41,0),(25,43,0),(26,47,0),(27,48,0),(28,51,0),(29,52,0),(30,53,0),(31,54,0),(32,55,0),(33,57,0),(34,59,0),(35,70,0),(36,71,0),(37,81,0),(38,82,0),(39,83,0),(40,85,0),(41,86,0),(42,53,0),(43,53,0),(44,87,0),(45,86,0),(46,86,0);
/*!40000 ALTER TABLE `IntentFilters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IntentPermissions`
--

DROP TABLE IF EXISTS `IntentPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IntentPermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `i_permission` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `i_permission` (`i_permission`),
  CONSTRAINT `IntentPermissions_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IntentPermissions_ibfk_2` FOREIGN KEY (`i_permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentPermissions`
--

LOCK TABLES `IntentPermissions` WRITE;
/*!40000 ALTER TABLE `IntentPermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `IntentPermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Intents`
--

DROP TABLE IF EXISTS `Intents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Intents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `implicit` tinyint(1) NOT NULL,
  `alias` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  CONSTRAINT `Intents_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,2,0,0),(5,3,1,0),(6,4,0,0),(7,5,0,0),(8,6,0,0),(9,8,0,0),(10,9,0,0),(11,10,1,0),(12,11,0,0),(13,12,1,0),(14,12,1,0),(15,12,1,0),(16,13,1,0),(17,13,1,0),(18,14,0,0),(19,15,0,0),(20,16,0,0),(21,17,0,0),(22,18,1,0),(23,19,0,0),(24,20,0,0),(25,21,0,0),(26,22,1,0),(27,22,1,0),(28,23,0,0),(29,24,1,0),(30,25,0,0),(31,26,0,0),(32,27,0,0),(33,28,0,0),(34,29,0,0),(35,30,0,0),(36,31,0,0),(37,32,1,0),(38,33,1,0),(39,33,1,0),(40,34,0,0),(41,35,0,0),(42,36,0,0),(43,37,1,0),(44,38,0,0),(45,37,1,0),(46,38,0,0),(47,39,0,0),(48,40,0,0),(49,41,1,0),(50,41,1,0),(51,42,0,0),(52,43,0,0),(53,44,0,0),(54,45,1,0),(55,46,1,0),(56,47,0,0),(57,48,0,0),(58,49,0,0),(59,50,0,0),(60,51,0,0),(61,52,1,0),(62,52,1,0),(63,53,0,0),(64,54,1,0),(65,55,1,0),(66,56,0,0),(67,57,1,0),(68,58,0,0),(69,59,0,0),(70,60,0,0),(71,61,0,0),(72,63,0,0),(73,64,0,0),(74,66,1,0),(75,67,1,0),(76,68,0,0),(77,69,0,0),(78,70,0,0),(79,71,0,0),(80,74,0,0),(81,73,0,0),(82,75,0,0),(83,76,0,0),(84,77,0,0),(85,78,0,0),(86,79,0,0),(87,80,0,0),(88,77,0,0),(89,81,0,0),(90,82,1,0),(91,83,1,0),(92,84,0,0),(93,83,1,0),(94,85,0,0),(95,86,1,0),(96,87,0,0),(97,88,0,0),(98,89,0,0),(99,90,0,0),(100,91,0,0),(101,92,0,0),(102,93,1,0),(103,94,0,0),(104,92,0,0),(105,95,0,0),(106,96,0,0),(107,97,1,0),(108,98,0,0),(109,96,0,0),(110,97,1,0),(111,99,0,0),(112,100,0,0),(113,101,0,0),(114,102,0,0),(115,103,0,0),(116,104,0,0),(117,105,0,0),(118,106,0,0),(119,107,0,0),(120,108,1,0),(121,110,0,0),(122,109,0,0),(123,108,1,0),(124,111,0,0),(125,108,1,0),(126,112,0,0),(127,108,1,0),(128,113,0,0),(129,114,0,0),(130,116,0,0),(131,115,0,0),(132,117,0,0),(133,118,0,0),(134,119,0,0),(135,120,1,0),(136,121,0,0),(137,122,0,0),(138,120,1,0),(139,123,0,0),(140,120,1,0),(141,124,1,0),(142,120,1,0),(143,125,1,0),(144,120,0,0),(145,126,1,0),(146,120,0,0),(147,127,0,0),(148,128,1,0),(149,129,0,0),(150,130,0,0),(151,131,0,0),(152,132,0,0),(153,133,0,0),(154,134,1,0),(155,135,0,0),(156,136,0,0),(157,137,1,0),(158,138,1,0),(159,138,1,0),(160,139,0,0),(161,140,1,0),(162,140,1,0),(163,140,1,0),(164,141,0,0),(165,142,1,0),(166,143,1,0),(167,143,1,0),(168,143,1,0),(169,143,1,0),(170,144,0,0),(171,145,0,0),(172,146,0,0),(173,147,0,0),(174,148,0,0),(175,149,1,0),(176,149,1,0),(177,150,0,0),(178,151,1,0),(179,152,1,0),(180,152,1,0),(181,153,1,0),(182,154,0,0),(183,155,0,0),(184,156,1,0),(185,156,1,0),(186,156,1,0),(187,156,1,0),(188,158,1,0),(189,158,1,0),(190,158,1,0),(191,158,1,0),(192,160,1,0),(193,160,1,0),(194,161,1,0),(195,162,0,0),(196,163,1,0),(197,164,1,0),(198,164,1,0),(199,166,0,0),(200,167,0,0),(201,169,0,0),(202,170,0,0),(203,174,1,0),(204,174,1,0);
/*!40000 ALTER TABLE `Intents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Links`
--

DROP TABLE IF EXISTS `Links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `type` int(11) DEFAULT '0',
  `reserved` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1099 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,10,9,2,NULL),(2,16,6,2,NULL),(3,16,71,2,NULL),(4,17,6,2,NULL),(5,17,71,2,NULL),(6,26,6,2,NULL),(7,26,71,2,NULL),(8,27,6,2,NULL),(9,27,71,2,NULL),(10,1,6,2,NULL),(11,1,71,2,NULL),(12,2,6,2,NULL),(13,2,71,2,NULL),(14,3,6,2,NULL),(15,3,71,2,NULL),(16,143,6,2,NULL),(17,143,71,2,NULL),(18,38,6,2,NULL),(19,38,71,2,NULL),(20,39,6,2,NULL),(21,39,71,2,NULL),(22,49,6,2,NULL),(23,49,71,2,NULL),(24,50,6,2,NULL),(25,50,71,2,NULL),(26,141,6,2,NULL),(27,141,71,2,NULL),(28,29,6,2,NULL),(29,29,71,2,NULL),(30,43,6,2,NULL),(31,43,71,2,NULL),(32,45,6,2,NULL),(33,45,71,2,NULL),(34,91,6,2,NULL),(35,91,71,2,NULL),(36,93,6,2,NULL),(37,93,71,2,NULL),(38,158,6,2,NULL),(39,158,71,2,NULL),(40,159,6,2,NULL),(41,159,71,2,NULL),(42,179,6,2,NULL),(43,179,71,2,NULL),(44,180,6,2,NULL),(45,180,71,2,NULL),(46,192,6,2,NULL),(47,192,71,2,NULL),(48,193,6,2,NULL),(49,193,71,2,NULL),(50,194,6,2,NULL),(51,194,71,2,NULL),(52,8,15,2,NULL),(53,195,85,2,NULL),(54,1,1,2,NULL),(55,199,85,2,NULL),(56,2,1,2,NULL),(57,16,81,2,NULL),(58,3,1,2,NULL),(59,17,81,2,NULL),(60,1,3,2,NULL),(61,26,81,2,NULL),(62,2,3,2,NULL),(63,27,81,2,NULL),(64,3,3,2,NULL),(65,1,81,2,NULL),(66,1,12,2,NULL),(67,2,81,2,NULL),(68,2,12,2,NULL),(69,3,81,2,NULL),(70,3,12,2,NULL),(71,143,81,2,NULL),(72,1,13,2,NULL),(73,38,81,2,NULL),(74,2,13,2,NULL),(75,39,81,2,NULL),(76,3,13,2,NULL),(77,49,81,2,NULL),(78,1,17,2,NULL),(79,50,81,2,NULL),(80,2,17,2,NULL),(81,141,81,2,NULL),(82,3,17,2,NULL),(83,29,81,2,NULL),(84,1,20,2,NULL),(85,43,81,2,NULL),(86,2,20,2,NULL),(87,45,81,2,NULL),(88,3,20,2,NULL),(89,91,81,2,NULL),(90,1,23,2,NULL),(91,93,81,2,NULL),(92,2,23,2,NULL),(93,158,81,2,NULL),(94,3,23,2,NULL),(95,159,81,2,NULL),(96,1,25,2,NULL),(97,179,81,2,NULL),(98,2,25,2,NULL),(99,180,81,2,NULL),(100,3,25,2,NULL),(101,192,81,2,NULL),(102,1,27,2,NULL),(103,193,81,2,NULL),(104,2,27,2,NULL),(105,194,81,2,NULL),(106,3,27,2,NULL),(107,174,81,2,NULL),(108,1,30,2,NULL),(109,179,1,2,NULL),(110,2,30,2,NULL),(111,180,1,2,NULL),(112,3,30,2,NULL),(113,179,3,2,NULL),(114,1,34,2,NULL),(115,180,3,2,NULL),(116,2,34,2,NULL),(117,16,82,2,NULL),(118,3,34,2,NULL),(119,17,82,2,NULL),(120,1,38,2,NULL),(121,26,82,2,NULL),(122,2,38,2,NULL),(123,27,82,2,NULL),(124,3,38,2,NULL),(125,179,12,2,NULL),(126,1,41,2,NULL),(127,180,12,2,NULL),(128,2,41,2,NULL),(129,1,82,2,NULL),(130,3,41,2,NULL),(131,2,82,2,NULL),(132,1,48,2,NULL),(133,3,82,2,NULL),(134,2,48,2,NULL),(135,179,13,2,NULL),(136,3,48,2,NULL),(137,180,13,2,NULL),(138,1,53,2,NULL),(139,179,17,2,NULL),(140,2,53,2,NULL),(141,180,17,2,NULL),(142,3,53,2,NULL),(143,143,82,2,NULL),(144,1,21,2,NULL),(145,179,20,2,NULL),(146,2,21,2,NULL),(147,180,20,2,NULL),(148,3,21,2,NULL),(149,179,23,2,NULL),(150,1,22,2,NULL),(151,180,23,2,NULL),(152,2,22,2,NULL),(153,179,25,2,NULL),(154,3,22,2,NULL),(155,180,25,2,NULL),(156,1,24,2,NULL),(157,179,27,2,NULL),(158,2,24,2,NULL),(159,180,27,2,NULL),(160,3,24,2,NULL),(161,179,30,2,NULL),(162,1,26,2,NULL),(163,180,30,2,NULL),(164,2,26,2,NULL),(165,38,82,2,NULL),(166,3,26,2,NULL),(167,39,82,2,NULL),(168,1,29,2,NULL),(169,179,34,2,NULL),(170,2,29,2,NULL),(171,180,34,2,NULL),(172,3,29,2,NULL),(173,49,82,2,NULL),(174,1,32,2,NULL),(175,50,82,2,NULL),(176,2,32,2,NULL),(177,141,82,2,NULL),(178,3,32,2,NULL),(179,179,38,2,NULL),(180,1,36,2,NULL),(181,180,38,2,NULL),(182,2,36,2,NULL),(183,179,41,2,NULL),(184,3,36,2,NULL),(185,180,41,2,NULL),(186,1,40,2,NULL),(187,29,82,2,NULL),(188,2,40,2,NULL),(189,179,48,2,NULL),(190,3,40,2,NULL),(191,180,48,2,NULL),(192,1,43,2,NULL),(193,179,53,2,NULL),(194,2,43,2,NULL),(195,180,53,2,NULL),(196,3,43,2,NULL),(197,179,21,2,NULL),(198,1,47,2,NULL),(199,180,21,2,NULL),(200,2,47,2,NULL),(201,179,22,2,NULL),(202,3,47,2,NULL),(203,180,22,2,NULL),(204,1,51,2,NULL),(205,179,24,2,NULL),(206,2,51,2,NULL),(207,180,24,2,NULL),(208,3,51,2,NULL),(209,179,26,2,NULL),(210,1,54,2,NULL),(211,180,26,2,NULL),(212,2,54,2,NULL),(213,179,29,2,NULL),(214,3,54,2,NULL),(215,180,29,2,NULL),(216,1,55,2,NULL),(217,179,32,2,NULL),(218,2,55,2,NULL),(219,180,32,2,NULL),(220,3,55,2,NULL),(221,179,36,2,NULL),(222,1,57,2,NULL),(223,180,36,2,NULL),(224,2,57,2,NULL),(225,179,40,2,NULL),(226,3,57,2,NULL),(227,180,40,2,NULL),(228,1,28,2,NULL),(229,179,43,2,NULL),(230,2,28,2,NULL),(231,180,43,2,NULL),(232,3,28,2,NULL),(233,179,47,2,NULL),(234,1,39,2,NULL),(235,180,47,2,NULL),(236,2,39,2,NULL),(237,179,51,2,NULL),(238,3,39,2,NULL),(239,180,51,2,NULL),(240,1,52,2,NULL),(241,179,54,2,NULL),(242,2,52,2,NULL),(243,180,54,2,NULL),(244,3,52,2,NULL),(245,179,55,2,NULL),(246,1,59,2,NULL),(247,180,55,2,NULL),(248,2,59,2,NULL),(249,179,57,2,NULL),(250,3,59,2,NULL),(251,180,57,2,NULL),(252,1,70,2,NULL),(253,179,28,2,NULL),(254,2,70,2,NULL),(255,180,28,2,NULL),(256,3,70,2,NULL),(257,179,39,2,NULL),(258,1,83,2,NULL),(259,180,39,2,NULL),(260,2,83,2,NULL),(261,43,82,2,NULL),(262,3,83,2,NULL),(263,45,82,2,NULL),(264,1,85,2,NULL),(265,91,82,2,NULL),(266,2,85,2,NULL),(267,93,82,2,NULL),(268,3,85,2,NULL),(269,179,52,2,NULL),(270,1,86,2,NULL),(271,180,52,2,NULL),(272,2,86,2,NULL),(273,179,59,2,NULL),(274,3,86,2,NULL),(275,180,59,2,NULL),(276,7,15,2,NULL),(277,158,82,2,NULL),(278,12,6,2,NULL),(279,159,82,2,NULL),(280,16,13,2,NULL),(281,179,70,2,NULL),(282,17,13,2,NULL),(283,180,70,2,NULL),(284,26,13,2,NULL),(285,179,83,2,NULL),(286,27,13,2,NULL),(287,180,83,2,NULL),(288,143,13,2,NULL),(289,192,82,2,NULL),(290,38,13,2,NULL),(291,193,82,2,NULL),(292,39,13,2,NULL),(293,194,82,2,NULL),(294,49,13,2,NULL),(295,179,85,2,NULL),(296,50,13,2,NULL),(297,180,85,2,NULL),(298,141,13,2,NULL),(299,179,86,2,NULL),(300,29,13,2,NULL),(301,180,86,2,NULL),(302,43,13,2,NULL),(303,182,85,2,NULL),(304,45,13,2,NULL),(305,16,83,2,NULL),(306,91,13,2,NULL),(307,17,83,2,NULL),(308,93,13,2,NULL),(309,26,83,2,NULL),(310,158,13,2,NULL),(311,27,83,2,NULL),(312,159,13,2,NULL),(313,143,83,2,NULL),(314,192,13,2,NULL),(315,38,83,2,NULL),(316,193,13,2,NULL),(317,39,83,2,NULL),(318,194,13,2,NULL),(319,49,83,2,NULL),(320,50,83,2,NULL),(321,141,83,2,NULL),(322,29,83,2,NULL),(323,43,83,2,NULL),(324,45,83,2,NULL),(325,91,83,2,NULL),(326,93,83,2,NULL),(327,158,83,2,NULL),(328,159,83,2,NULL),(329,192,83,2,NULL),(330,193,83,2,NULL),(331,194,83,2,NULL),(332,164,81,2,NULL),(333,183,84,2,NULL),(334,192,1,2,NULL),(335,193,1,2,NULL),(336,194,1,2,NULL),(337,192,3,2,NULL),(338,193,3,2,NULL),(339,194,3,2,NULL),(340,192,12,2,NULL),(341,193,12,2,NULL),(342,194,12,2,NULL),(343,192,17,2,NULL),(344,193,17,2,NULL),(345,194,17,2,NULL),(346,192,20,2,NULL),(347,193,20,2,NULL),(348,194,20,2,NULL),(349,192,23,2,NULL),(350,193,23,2,NULL),(351,194,23,2,NULL),(352,192,25,2,NULL),(353,193,25,2,NULL),(354,194,25,2,NULL),(355,192,27,2,NULL),(356,193,27,2,NULL),(357,194,27,2,NULL),(358,192,30,2,NULL),(359,193,30,2,NULL),(360,194,30,2,NULL),(361,192,34,2,NULL),(362,193,34,2,NULL),(363,194,34,2,NULL),(364,192,38,2,NULL),(365,193,38,2,NULL),(366,194,38,2,NULL),(367,192,41,2,NULL),(368,193,41,2,NULL),(369,194,41,2,NULL),(370,192,48,2,NULL),(371,193,48,2,NULL),(372,194,48,2,NULL),(373,192,53,2,NULL),(374,193,53,2,NULL),(375,194,53,2,NULL),(376,192,21,2,NULL),(377,193,21,2,NULL),(378,194,21,2,NULL),(379,192,22,2,NULL),(380,193,22,2,NULL),(381,194,22,2,NULL),(382,192,24,2,NULL),(383,193,24,2,NULL),(384,194,24,2,NULL),(385,192,26,2,NULL),(386,193,26,2,NULL),(387,194,26,2,NULL),(388,192,29,2,NULL),(389,193,29,2,NULL),(390,194,29,2,NULL),(391,192,32,2,NULL),(392,193,32,2,NULL),(393,194,32,2,NULL),(394,192,36,2,NULL),(395,193,36,2,NULL),(396,194,36,2,NULL),(397,192,40,2,NULL),(398,193,40,2,NULL),(399,194,40,2,NULL),(400,192,43,2,NULL),(401,193,43,2,NULL),(402,194,43,2,NULL),(403,192,47,2,NULL),(404,193,47,2,NULL),(405,194,47,2,NULL),(406,192,51,2,NULL),(407,193,51,2,NULL),(408,194,51,2,NULL),(409,192,54,2,NULL),(410,193,54,2,NULL),(411,194,54,2,NULL),(412,192,55,2,NULL),(413,193,55,2,NULL),(414,194,55,2,NULL),(415,192,57,2,NULL),(416,193,57,2,NULL),(417,194,57,2,NULL),(418,192,28,2,NULL),(419,193,28,2,NULL),(420,194,28,2,NULL),(421,192,39,2,NULL),(422,193,39,2,NULL),(423,194,39,2,NULL),(424,192,52,2,NULL),(425,193,52,2,NULL),(426,194,52,2,NULL),(427,192,59,2,NULL),(428,193,59,2,NULL),(429,194,59,2,NULL),(430,192,70,2,NULL),(431,193,70,2,NULL),(432,194,70,2,NULL),(433,192,85,2,NULL),(434,193,85,2,NULL),(435,194,85,2,NULL),(436,192,86,2,NULL),(437,193,86,2,NULL),(438,194,86,2,NULL),(439,16,85,2,NULL),(440,17,85,2,NULL),(441,26,85,2,NULL),(442,27,85,2,NULL),(443,143,85,2,NULL),(444,38,85,2,NULL),(445,39,85,2,NULL),(446,49,85,2,NULL),(447,50,85,2,NULL),(448,141,85,2,NULL),(449,29,85,2,NULL),(450,43,85,2,NULL),(451,45,85,2,NULL),(452,91,85,2,NULL),(453,93,85,2,NULL),(454,16,21,2,NULL),(455,158,85,2,NULL),(456,17,21,2,NULL),(457,159,85,2,NULL),(458,26,21,2,NULL),(459,170,85,2,NULL),(460,27,21,2,NULL),(461,200,85,2,NULL),(462,143,21,2,NULL),(463,202,85,2,NULL),(464,38,21,2,NULL),(465,16,86,2,NULL),(466,39,21,2,NULL),(467,17,86,2,NULL),(468,49,21,2,NULL),(469,26,86,2,NULL),(470,50,21,2,NULL),(471,27,86,2,NULL),(472,141,21,2,NULL),(473,143,86,2,NULL),(474,29,21,2,NULL),(475,38,86,2,NULL),(476,43,21,2,NULL),(477,39,86,2,NULL),(478,45,21,2,NULL),(479,49,86,2,NULL),(480,91,21,2,NULL),(481,50,86,2,NULL),(482,93,21,2,NULL),(483,141,86,2,NULL),(484,158,21,2,NULL),(485,29,86,2,NULL),(486,159,21,2,NULL),(487,43,86,2,NULL),(488,86,32,2,NULL),(489,45,86,2,NULL),(490,16,22,2,NULL),(491,91,86,2,NULL),(492,17,22,2,NULL),(493,93,86,2,NULL),(494,26,22,2,NULL),(495,158,86,2,NULL),(496,27,22,2,NULL),(497,159,86,2,NULL),(498,143,22,2,NULL),(499,38,22,2,NULL),(500,39,22,2,NULL),(501,49,22,2,NULL),(502,50,22,2,NULL),(503,141,22,2,NULL),(504,29,22,2,NULL),(505,43,22,2,NULL),(506,45,22,2,NULL),(507,91,22,2,NULL),(508,93,22,2,NULL),(509,158,22,2,NULL),(510,159,22,2,NULL),(511,16,24,2,NULL),(512,17,24,2,NULL),(513,26,24,2,NULL),(514,27,24,2,NULL),(515,143,24,2,NULL),(516,38,24,2,NULL),(517,39,24,2,NULL),(518,49,24,2,NULL),(519,50,24,2,NULL),(520,141,24,2,NULL),(521,29,24,2,NULL),(522,43,24,2,NULL),(523,45,24,2,NULL),(524,91,24,2,NULL),(525,93,24,2,NULL),(526,158,24,2,NULL),(527,159,24,2,NULL),(528,16,26,2,NULL),(529,17,26,2,NULL),(530,26,26,2,NULL),(531,27,26,2,NULL),(532,143,26,2,NULL),(533,38,26,2,NULL),(534,39,26,2,NULL),(535,49,26,2,NULL),(536,50,26,2,NULL),(537,141,26,2,NULL),(538,29,26,2,NULL),(539,43,26,2,NULL),(540,45,26,2,NULL),(541,91,26,2,NULL),(542,93,26,2,NULL),(543,158,26,2,NULL),(544,159,26,2,NULL),(545,16,29,2,NULL),(546,17,29,2,NULL),(547,26,29,2,NULL),(548,27,29,2,NULL),(549,143,29,2,NULL),(550,38,29,2,NULL),(551,39,29,2,NULL),(552,49,29,2,NULL),(553,50,29,2,NULL),(554,141,29,2,NULL),(555,29,29,2,NULL),(556,43,29,2,NULL),(557,45,29,2,NULL),(558,91,29,2,NULL),(559,93,29,2,NULL),(560,158,29,2,NULL),(561,159,29,2,NULL),(562,103,36,2,NULL),(563,121,24,2,NULL),(564,126,55,2,NULL),(565,128,29,2,NULL),(566,133,26,2,NULL),(567,16,32,2,NULL),(568,17,32,2,NULL),(569,26,32,2,NULL),(570,27,32,2,NULL),(571,143,32,2,NULL),(572,38,32,2,NULL),(573,39,32,2,NULL),(574,49,32,2,NULL),(575,50,32,2,NULL),(576,141,32,2,NULL),(577,29,32,2,NULL),(578,43,32,2,NULL),(579,45,32,2,NULL),(580,24,2,2,NULL),(581,91,32,2,NULL),(582,16,1,2,NULL),(583,93,32,2,NULL),(584,17,1,2,NULL),(585,158,32,2,NULL),(586,26,1,2,NULL),(587,159,32,2,NULL),(588,27,1,2,NULL),(589,16,36,2,NULL),(590,143,1,2,NULL),(591,17,36,2,NULL),(592,38,1,2,NULL),(593,26,36,2,NULL),(594,39,1,2,NULL),(595,27,36,2,NULL),(596,49,1,2,NULL),(597,143,36,2,NULL),(598,50,1,2,NULL),(599,38,36,2,NULL),(600,141,1,2,NULL),(601,39,36,2,NULL),(602,29,1,2,NULL),(603,49,36,2,NULL),(604,43,1,2,NULL),(605,50,36,2,NULL),(606,45,1,2,NULL),(607,141,36,2,NULL),(608,91,1,2,NULL),(609,29,36,2,NULL),(610,93,1,2,NULL),(611,43,36,2,NULL),(612,158,1,2,NULL),(613,45,36,2,NULL),(614,159,1,2,NULL),(615,91,36,2,NULL),(616,4,4,2,NULL),(617,93,36,2,NULL),(618,25,4,2,NULL),(619,158,36,2,NULL),(620,16,3,2,NULL),(621,159,36,2,NULL),(622,17,3,2,NULL),(623,83,55,2,NULL),(624,26,3,2,NULL),(625,115,51,2,NULL),(626,27,3,2,NULL),(627,16,40,2,NULL),(628,143,3,2,NULL),(629,17,40,2,NULL),(630,38,3,2,NULL),(631,26,40,2,NULL),(632,39,3,2,NULL),(633,27,40,2,NULL),(634,49,3,2,NULL),(635,143,40,2,NULL),(636,50,3,2,NULL),(637,38,40,2,NULL),(638,141,3,2,NULL),(639,39,40,2,NULL),(640,29,3,2,NULL),(641,49,40,2,NULL),(642,43,3,2,NULL),(643,50,40,2,NULL),(644,45,3,2,NULL),(645,141,40,2,NULL),(646,91,3,2,NULL),(647,29,40,2,NULL),(648,93,3,2,NULL),(649,43,40,2,NULL),(650,158,3,2,NULL),(651,45,40,2,NULL),(652,159,3,2,NULL),(653,91,40,2,NULL),(654,6,1,2,NULL),(655,93,40,2,NULL),(656,18,1,2,NULL),(657,158,40,2,NULL),(658,19,1,2,NULL),(659,159,40,2,NULL),(660,21,1,2,NULL),(661,105,55,2,NULL),(662,16,12,2,NULL),(663,16,43,2,NULL),(664,17,12,2,NULL),(665,17,43,2,NULL),(666,26,12,2,NULL),(667,26,43,2,NULL),(668,27,12,2,NULL),(669,27,43,2,NULL),(670,16,17,2,NULL),(671,143,43,2,NULL),(672,17,17,2,NULL),(673,38,43,2,NULL),(674,26,17,2,NULL),(675,39,43,2,NULL),(676,27,17,2,NULL),(677,49,43,2,NULL),(678,16,20,2,NULL),(679,50,43,2,NULL),(680,17,20,2,NULL),(681,141,43,2,NULL),(682,26,20,2,NULL),(683,29,43,2,NULL),(684,27,20,2,NULL),(685,43,43,2,NULL),(686,16,23,2,NULL),(687,45,43,2,NULL),(688,17,23,2,NULL),(689,91,43,2,NULL),(690,26,23,2,NULL),(691,93,43,2,NULL),(692,27,23,2,NULL),(693,158,43,2,NULL),(694,16,25,2,NULL),(695,159,43,2,NULL),(696,17,25,2,NULL),(697,113,55,2,NULL),(698,26,25,2,NULL),(699,16,47,2,NULL),(700,27,25,2,NULL),(701,17,47,2,NULL),(702,16,27,2,NULL),(703,26,47,2,NULL),(704,17,27,2,NULL),(705,27,47,2,NULL),(706,26,27,2,NULL),(707,143,47,2,NULL),(708,27,27,2,NULL),(709,38,47,2,NULL),(710,16,30,2,NULL),(711,39,47,2,NULL),(712,17,30,2,NULL),(713,49,47,2,NULL),(714,26,30,2,NULL),(715,50,47,2,NULL),(716,27,30,2,NULL),(717,141,47,2,NULL),(718,16,34,2,NULL),(719,29,47,2,NULL),(720,17,34,2,NULL),(721,43,47,2,NULL),(722,26,34,2,NULL),(723,45,47,2,NULL),(724,27,34,2,NULL),(725,91,47,2,NULL),(726,16,38,2,NULL),(727,93,47,2,NULL),(728,17,38,2,NULL),(729,158,47,2,NULL),(730,26,38,2,NULL),(731,159,47,2,NULL),(732,27,38,2,NULL),(733,119,55,2,NULL),(734,16,41,2,NULL),(735,16,51,2,NULL),(736,17,41,2,NULL),(737,17,51,2,NULL),(738,26,41,2,NULL),(739,26,51,2,NULL),(740,27,41,2,NULL),(741,27,51,2,NULL),(742,16,48,2,NULL),(743,143,51,2,NULL),(744,17,48,2,NULL),(745,38,51,2,NULL),(746,26,48,2,NULL),(747,39,51,2,NULL),(748,27,48,2,NULL),(749,49,51,2,NULL),(750,16,53,2,NULL),(751,50,51,2,NULL),(752,17,53,2,NULL),(753,141,51,2,NULL),(754,26,53,2,NULL),(755,29,51,2,NULL),(756,27,53,2,NULL),(757,43,51,2,NULL),(758,16,54,2,NULL),(759,45,51,2,NULL),(760,17,54,2,NULL),(761,91,51,2,NULL),(762,26,54,2,NULL),(763,93,51,2,NULL),(764,27,54,2,NULL),(765,158,51,2,NULL),(766,16,55,2,NULL),(767,159,51,2,NULL),(768,17,55,2,NULL),(769,143,54,2,NULL),(770,26,55,2,NULL),(771,38,54,2,NULL),(772,27,55,2,NULL),(773,39,54,2,NULL),(774,16,57,2,NULL),(775,49,54,2,NULL),(776,17,57,2,NULL),(777,50,54,2,NULL),(778,26,57,2,NULL),(779,141,54,2,NULL),(780,27,57,2,NULL),(781,29,54,2,NULL),(782,16,28,2,NULL),(783,43,54,2,NULL),(784,17,28,2,NULL),(785,45,54,2,NULL),(786,26,28,2,NULL),(787,91,54,2,NULL),(788,27,28,2,NULL),(789,93,54,2,NULL),(790,16,39,2,NULL),(791,158,54,2,NULL),(792,17,39,2,NULL),(793,159,54,2,NULL),(794,26,39,2,NULL),(795,143,55,2,NULL),(796,27,39,2,NULL),(797,38,55,2,NULL),(798,16,52,2,NULL),(799,39,55,2,NULL),(800,17,52,2,NULL),(801,49,55,2,NULL),(802,26,52,2,NULL),(803,50,55,2,NULL),(804,27,52,2,NULL),(805,141,55,2,NULL),(806,16,59,2,NULL),(807,29,55,2,NULL),(808,17,59,2,NULL),(809,43,55,2,NULL),(810,26,59,2,NULL),(811,45,55,2,NULL),(812,27,59,2,NULL),(813,91,55,2,NULL),(814,16,70,2,NULL),(815,93,55,2,NULL),(816,17,70,2,NULL),(817,158,55,2,NULL),(818,26,70,2,NULL),(819,159,55,2,NULL),(820,27,70,2,NULL),(821,78,21,2,NULL),(822,20,5,2,NULL),(823,89,21,2,NULL),(824,143,12,2,NULL),(825,143,57,2,NULL),(826,38,12,2,NULL),(827,38,57,2,NULL),(828,39,12,2,NULL),(829,39,57,2,NULL),(830,49,12,2,NULL),(831,49,57,2,NULL),(832,50,12,2,NULL),(833,50,57,2,NULL),(834,141,12,2,NULL),(835,141,57,2,NULL),(836,29,12,2,NULL),(837,29,57,2,NULL),(838,43,12,2,NULL),(839,43,57,2,NULL),(840,45,12,2,NULL),(841,45,57,2,NULL),(842,91,12,2,NULL),(843,91,57,2,NULL),(844,93,12,2,NULL),(845,93,57,2,NULL),(846,158,12,2,NULL),(847,158,57,2,NULL),(848,159,12,2,NULL),(849,159,57,2,NULL),(850,129,60,2,NULL),(851,130,60,2,NULL),(852,149,60,2,NULL),(853,150,63,2,NULL),(854,152,65,2,NULL),(855,155,66,2,NULL),(856,160,60,2,NULL),(857,143,59,2,NULL),(858,38,59,2,NULL),(859,39,59,2,NULL),(860,49,59,2,NULL),(861,50,59,2,NULL),(862,141,59,2,NULL),(863,29,59,2,NULL),(864,43,59,2,NULL),(865,45,59,2,NULL),(866,91,59,2,NULL),(867,93,59,2,NULL),(868,158,59,2,NULL),(869,159,59,2,NULL),(870,87,67,2,NULL),(871,153,59,2,NULL),(872,158,17,2,NULL),(873,159,17,2,NULL),(874,158,20,2,NULL),(875,159,20,2,NULL),(876,158,23,2,NULL),(877,159,23,2,NULL),(878,158,25,2,NULL),(879,159,25,2,NULL),(880,158,27,2,NULL),(881,159,27,2,NULL),(882,158,30,2,NULL),(883,159,30,2,NULL),(884,158,34,2,NULL),(885,159,34,2,NULL),(886,158,38,2,NULL),(887,159,38,2,NULL),(888,158,41,2,NULL),(889,159,41,2,NULL),(890,158,48,2,NULL),(891,159,48,2,NULL),(892,158,53,2,NULL),(893,159,53,2,NULL),(894,158,28,2,NULL),(895,159,28,2,NULL),(896,158,39,2,NULL),(897,159,39,2,NULL),(898,158,52,2,NULL),(899,159,52,2,NULL),(900,158,70,2,NULL),(901,159,70,2,NULL),(902,151,59,2,NULL),(903,143,70,2,NULL),(904,38,70,2,NULL),(905,39,70,2,NULL),(906,49,70,2,NULL),(907,50,70,2,NULL),(908,141,70,2,NULL),(909,29,70,2,NULL),(910,43,70,2,NULL),(911,45,70,2,NULL),(912,91,70,2,NULL),(913,93,70,2,NULL),(914,44,48,2,NULL),(915,46,48,2,NULL),(916,79,48,2,NULL),(917,101,48,2,NULL),(918,104,48,2,NULL),(919,134,48,2,NULL),(920,53,48,2,NULL),(921,139,41,2,NULL),(922,143,17,2,NULL),(923,143,28,2,NULL),(924,38,17,2,NULL),(925,38,28,2,NULL),(926,39,17,2,NULL),(927,39,28,2,NULL),(928,49,17,2,NULL),(929,49,28,2,NULL),(930,50,17,2,NULL),(931,50,28,2,NULL),(932,141,17,2,NULL),(933,141,28,2,NULL),(934,29,17,2,NULL),(935,29,28,2,NULL),(936,43,17,2,NULL),(937,43,28,2,NULL),(938,45,17,2,NULL),(939,45,28,2,NULL),(940,91,17,2,NULL),(941,91,28,2,NULL),(942,93,17,2,NULL),(943,93,28,2,NULL),(944,71,27,2,NULL),(945,80,33,2,NULL),(946,97,14,2,NULL),(947,63,42,2,NULL),(948,143,20,2,NULL),(949,85,42,2,NULL),(950,143,23,2,NULL),(951,143,39,2,NULL),(952,143,25,2,NULL),(953,38,39,2,NULL),(954,143,27,2,NULL),(955,39,39,2,NULL),(956,143,30,2,NULL),(957,49,39,2,NULL),(958,143,34,2,NULL),(959,50,39,2,NULL),(960,143,38,2,NULL),(961,141,39,2,NULL),(962,143,41,2,NULL),(963,29,39,2,NULL),(964,143,48,2,NULL),(965,43,39,2,NULL),(966,143,53,2,NULL),(967,45,39,2,NULL),(968,143,52,2,NULL),(969,91,39,2,NULL),(970,66,48,2,NULL),(971,93,39,2,NULL),(972,72,27,2,NULL),(973,60,28,2,NULL),(974,38,20,2,NULL),(975,69,28,2,NULL),(976,39,20,2,NULL),(977,70,28,2,NULL),(978,49,20,2,NULL),(979,96,28,2,NULL),(980,50,20,2,NULL),(981,43,20,2,NULL),(982,141,20,2,NULL),(983,45,20,2,NULL),(984,29,20,2,NULL),(985,91,20,2,NULL),(986,93,20,2,NULL),(987,43,23,2,NULL),(988,36,27,2,NULL),(989,45,23,2,NULL),(990,52,48,2,NULL),(991,91,23,2,NULL),(992,38,23,2,NULL),(993,93,23,2,NULL),(994,39,23,2,NULL),(995,43,25,2,NULL),(996,49,23,2,NULL),(997,45,25,2,NULL),(998,50,23,2,NULL),(999,91,25,2,NULL),(1000,141,23,2,NULL),(1001,93,25,2,NULL),(1002,29,23,2,NULL),(1003,43,27,2,NULL),(1004,82,48,2,NULL),(1005,45,27,2,NULL),(1006,38,25,2,NULL),(1007,91,27,2,NULL),(1008,39,25,2,NULL),(1009,93,27,2,NULL),(1010,49,25,2,NULL),(1011,43,30,2,NULL),(1012,50,25,2,NULL),(1013,45,30,2,NULL),(1014,141,25,2,NULL),(1015,91,30,2,NULL),(1016,29,25,2,NULL),(1017,93,30,2,NULL),(1018,32,14,2,NULL),(1019,43,34,2,NULL),(1020,33,14,2,NULL),(1021,45,34,2,NULL),(1022,147,48,2,NULL),(1023,91,34,2,NULL),(1024,38,27,2,NULL),(1025,93,34,2,NULL),(1026,39,27,2,NULL),(1027,43,38,2,NULL),(1028,49,27,2,NULL),(1029,45,38,2,NULL),(1030,50,27,2,NULL),(1031,91,38,2,NULL),(1032,141,27,2,NULL),(1033,93,38,2,NULL),(1034,29,27,2,NULL),(1035,43,41,2,NULL),(1036,57,27,2,NULL),(1037,45,41,2,NULL),(1038,38,34,2,NULL),(1039,91,41,2,NULL),(1040,39,34,2,NULL),(1041,93,41,2,NULL),(1042,49,30,2,NULL),(1043,43,48,2,NULL),(1044,50,30,2,NULL),(1045,45,48,2,NULL),(1046,141,30,2,NULL),(1047,91,48,2,NULL),(1048,38,38,2,NULL),(1049,93,48,2,NULL),(1050,39,38,2,NULL),(1051,43,53,2,NULL),(1052,38,41,2,NULL),(1053,45,53,2,NULL),(1054,39,41,2,NULL),(1055,91,53,2,NULL),(1056,29,30,2,NULL),(1057,93,53,2,NULL),(1058,38,48,2,NULL),(1059,39,48,2,NULL),(1060,43,52,2,NULL),(1061,38,53,2,NULL),(1062,45,52,2,NULL),(1063,39,53,2,NULL),(1064,91,52,2,NULL),(1065,38,52,2,NULL),(1066,93,52,2,NULL),(1067,39,52,2,NULL),(1068,58,44,2,NULL),(1069,34,27,2,NULL),(1070,49,52,2,NULL),(1071,117,34,2,NULL),(1072,50,52,2,NULL),(1073,49,38,2,NULL),(1074,141,52,2,NULL),(1075,50,38,2,NULL),(1076,29,52,2,NULL),(1077,141,38,2,NULL),(1078,49,41,2,NULL),(1079,50,41,2,NULL),(1080,141,41,2,NULL),(1081,29,34,2,NULL),(1082,49,48,2,NULL),(1083,50,48,2,NULL),(1084,141,48,2,NULL),(1085,49,53,2,NULL),(1086,50,53,2,NULL),(1087,141,53,2,NULL),(1088,29,38,2,NULL),(1089,84,48,2,NULL),(1090,88,48,2,NULL),(1091,112,48,2,NULL),(1092,29,41,2,NULL),(1093,47,27,2,NULL),(1094,29,48,2,NULL),(1095,29,53,2,NULL),(1096,76,48,2,NULL),(1097,132,48,2,NULL),(1098,136,48,2,NULL);
/*!40000 ALTER TABLE `Links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAuthorities`
--

DROP TABLE IF EXISTS `PAuthorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAuthorities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `authority` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provider_id` (`provider_id`),
  CONSTRAINT `PAuthorities_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `Providers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAuthorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paths`
--

DROP TABLE IF EXISTS `Paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Paths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `sink` int(11) NOT NULL,
  `paths` text,
  `type` varchar(512) NOT NULL,
  `icc` int(11) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paths`
--

LOCK TABLES `Paths` WRITE;
/*!40000 ALTER TABLE `Paths` DISABLE KEYS */;
/*!40000 ALTER TABLE `Paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionStrings`
--

DROP TABLE IF EXISTS `PermissionStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_CACHE_FILESYSTEM'),(8,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.DELETE_CACHE_FILES'),(4,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(18,'android.permission.READ_CONTACTS'),(14,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.SET_WALLPAPER'),(3,'android.permission.SYSTEM_ALERT_WINDOW'),(7,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(16,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
/*!40000 ALTER TABLE `PermissionStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permissions`
--

DROP TABLE IF EXISTS `Permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Permissions` (
  `id` int(11) NOT NULL,
  `level` char(1) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`,`level`),
  CONSTRAINT `Permissions_ibfk_1` FOREIGN KEY (`id`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permissions`
--

LOCK TABLES `Permissions` WRITE;
/*!40000 ALTER TABLE `Permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProviderLinks`
--

DROP TABLE IF EXISTS `ProviderLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderLinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src_component_id` int(11) NOT NULL,
  `dest_component_id` int(11) NOT NULL,
  `reserved` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProviderLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Providers`
--

DROP TABLE IF EXISTS `Providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `grant_uri_permissions` tinyint(1) NOT NULL,
  `read_permission` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `write_permission` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `Providers_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stmts`
--

DROP TABLE IF EXISTS `Stmts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stmts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stmt` varchar(512) NOT NULL,
  `method` varchar(512) NOT NULL,
  `class_id` int(11) NOT NULL,
  `jimpleIndex` int(11) NOT NULL,
  `isIcc` tinyint(1) NOT NULL,
  `type` varchar(512) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stmts`
--

LOCK TABLES `Stmts` WRITE;
/*!40000 ALTER TABLE `Stmts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Stmts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UriData`
--

DROP TABLE IF EXISTS `UriData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UriData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `ssp` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` longtext COLLATE utf8mb4_bin,
  `path` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `query` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `authority` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'market:///search?q=pub:\"funweaver\"',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=com.feasy.game.MoleWhack',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pub:\"funweaver\"',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'market://search?q=pub:Rocketmind',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://',NULL,NULL,NULL),(39,NULL,NULL,'market://details?id=com.wavecade.mypaperplane_x',NULL,NULL,NULL),(40,NULL,NULL,'market://details?id=com.wavecade.fruitpirate',NULL,NULL,NULL),(41,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,NULL,NULL,'file://',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(48,NULL,NULL,'file://',NULL,NULL,NULL);
/*!40000 ALTER TABLE `UriData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Uris`
--

DROP TABLE IF EXISTS `Uris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Uris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `data` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `data` (`data`),
  CONSTRAINT `Uris_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `Uris_ibfk_2` FOREIGN KEY (`data`) REFERENCES `UriData` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,157,41);
/*!40000 ALTER TABLE `Uris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsesPermissions`
--

DROP TABLE IF EXISTS `UsesPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsesPermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `uses_permission` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_id` (`app_id`),
  KEY `uses_permission_idx` (`uses_permission`) USING HASH,
  CONSTRAINT `UsesPermissions_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `Applications` (`id`) ON DELETE CASCADE,
  CONSTRAINT `UsesPermissions_ibfk_2` FOREIGN KEY (`uses_permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,5),(10,2,6),(11,2,8),(12,2,9),(13,2,10),(14,3,16),(15,3,1),(16,3,2),(17,3,5),(18,3,6),(19,3,10),(20,3,11),(21,3,12),(22,3,13),(23,3,14),(24,3,15),(25,4,1),(26,4,5),(27,4,6),(28,4,9),(29,4,10),(30,5,17),(31,5,1),(32,5,2),(33,5,3),(34,5,4),(35,5,5),(36,5,6),(37,5,10),(38,6,17),(39,6,1),(40,6,5),(41,6,6),(42,6,7),(43,6,9),(44,6,10),(45,7,17),(46,7,16),(47,7,1),(48,7,2),(49,7,18),(50,7,5),(51,7,6),(52,7,10),(53,7,12);
/*!40000 ALTER TABLE `UsesPermissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-12  3:30:28
