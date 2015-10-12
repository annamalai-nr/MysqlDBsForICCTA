-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_444
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'.ImageTestActivity'),(15,'.Myhall'),(8,'.VkTui14'),(12,'.Web'),(5,'alB.egUWc.VkTui12'),(7,'alB.egUWc.VkTui14'),(2,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.CHOOSER'),(11,'android.intent.action.CheckinHub'),(25,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.SEARCH'),(18,'android.intent.action.USER_PRESENT'),(4,'android.intent.action.VIEW'),(22,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(21,'com.android.vending.INSTALL_REFERRER'),(16,'com.gamesns.GamesnsService'),(26,'com.picshow1.GameBootReceiver'),(20,'com.picshow1.ImageTestActivity'),(27,'com.picshow1.Myhall'),(23,'com.picshow1.Web'),(24,'com.wtrylhj.GameBootReceiver'),(28,'com.wtrylhj.ImageTestActivity'),(14,'com.wtrylhj.Myhall'),(13,'com.wtrylhj.Web');
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
INSERT INTO `Applications` VALUES (1,'com.kumv.elbbwrlgpsavt.mewiqmip.smmql',10023),(2,'alB.egUWc',1100),(3,'com.rrwoin.wcsn',10021),(4,'com.picshow1',1002),(5,'com.wtrylhj',10019),(6,'com.ogsuquimp.cikpiofhk',10035),(7,'com.gamesns',131);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.rakoo.puzzle.PuzzleActivity'),(2,1,'com.rakoo.puzzle.MoreGameActivity'),(3,1,'raker.sdk.social.MainAct'),(4,1,'com.vrNeHuk.pVplbvLoM'),(5,1,'com.vrNeHuk.vUpmInLcTApNQ'),(6,2,'alB.egUWc.image.VkTui19'),(7,3,'com.rrwoin.wcsn.TenDropsActivity'),(8,3,'net.youmi.android.AdActivity'),(9,2,'alB.egUWc.image.VkTui18'),(10,3,'com.LtQoh.AkfUcwshMQDdQ'),(11,2,'alB.egUWc.VkTui8'),(12,3,'com.LtQoh.vEphGedQWhKRkQ'),(13,2,'alB.egUWc.VkTui9'),(14,2,'alB.egUWc.VkTui2'),(15,4,'com.picshow1.Myhall'),(16,2,'alB.egUWc.VkTui10'),(17,4,'com.picshow1.Web'),(18,2,'alB.egUWc.VkTui11'),(19,4,'com.picshow1.HomeActivity'),(20,4,'com.picshow1.SortActivity1'),(21,4,'com.picshow1.SortActivity2'),(22,2,'alB.egUWc.VkTui12'),(23,4,'com.picshow1.SearchActivity'),(24,5,'com.wtrylhj.Myhall'),(25,4,'com.picshow1.ManagerActivity'),(26,5,'com.wtrylhj.Web'),(27,5,'com.wtrylhj.HomeActivity'),(28,4,'com.picshow1.GameInfo'),(29,5,'com.wtrylhj.SortActivity1'),(30,5,'com.wtrylhj.SortActivity2'),(31,4,'com.picshow1.TableClass'),(32,5,'com.wtrylhj.SearchActivity'),(33,4,'com.picshow1.GameAlertDialog'),(34,4,'com.picshow1.DevelopmentSettings'),(35,5,'com.wtrylhj.ManagerActivity'),(36,4,'com.picshow1.image.ImageTestActivity'),(37,5,'com.wtrylhj.GameInfo'),(38,5,'com.wtrylhj.TableClass'),(39,4,'com.picshow1.GameService'),(40,5,'com.wtrylhj.GameAlertDialog'),(41,4,'com.picshow1.GameBootReceiver'),(42,5,'com.wtrylhj.DevelopmentSettings'),(43,5,'com.wtrylhj.qimg.ImageTestActivity'),(44,5,'com.wtrylhj.qimg.ADactivity'),(45,5,'com.wtrylhj.GameService'),(46,5,'com.wtrylhj.GameBootReceiver'),(47,6,'com.ogsuquimp.cikpiofhk.GameActivity'),(48,6,'com.openfeint.internal.ui.IntroFlow'),(49,6,'com.openfeint.api.ui.Dashboard'),(50,6,'com.openfeint.internal.ui.Settings'),(51,6,'com.openfeint.internal.ui.NativeBrowser'),(52,6,'net.youmi.android.AdActivity'),(53,6,'com.RunHwUqoh.hJuucfFc'),(54,6,'com.RunHwUqoh.FHhFjOhwhvD'),(55,2,'af'),(56,2,'v'),(57,2,'ae'),(58,7,'com.gamesns.activity.BackupAppActivity'),(59,7,'com.gamesns.activity.DiscussionFeed'),(60,7,'com.gamesns.activity.DiscussionForm'),(61,7,'com.gamesns.activity.AddFriends'),(62,7,'com.gamesns.activity.FriendSearch'),(63,7,'com.gamesns.activity.BasicFeed'),(64,7,'com.gamesns.activity.AddFriendsOptions'),(65,7,'com.gamesns.activity.LoginForm'),(66,7,'com.gamesns.activity.RegisterForm'),(67,7,'com.gamesns.activity.SimpleGallery'),(68,7,'com.gamesns.activity.CheckinForm'),(69,7,'com.gamesns.activity.LoginSignupSplash'),(70,7,'com.gamesns.activity.DiscoverTab'),(71,7,'com.gamesns.activity.DiscoverInstructions'),(72,7,'com.gamesns.activity.GameDetails'),(73,7,'com.gamesns.activity.GameTab'),(74,7,'com.gamesns.activity.FriendsTab'),(75,7,'com.gamesns.activity.YouTab'),(76,7,'com.gamesns.activity.YouTabNew'),(77,5,'c'),(78,7,'com.gamesns.activity.FriendDetails'),(79,7,'com.gamesns.activity.CheckinHub'),(80,4,'ce'),(81,7,'com.gamesns.GameList'),(82,7,'com.gamesns.activity.ChatActivity'),(83,4,'bd'),(84,6,'net.youmi.android.bd'),(85,7,'com.gamesns.activity.MediaActivity'),(86,7,'com.gamesns.activity.Web'),(87,7,'com.gamesns.activity.WebMediaPlayer'),(88,7,'com.gamesns.activity.UpdateActivity'),(89,7,'com.gamesns.activity.Share'),(90,4,'ac'),(91,7,'com.gamesns.activity.AppTrafficActivity'),(92,7,'com.gamesns.activity.VideoDetail'),(93,7,'com.gamesns.activity.GameDetailNewActivity'),(94,7,'com.gamesns.activity.ModifyUserData'),(95,7,'com.gamesns.activity.HomeActivity'),(96,5,'av'),(97,7,'com.gamesns.activity.DiscussionDetail'),(98,7,'com.gamesns.activity.DeskTabActivity'),(99,7,'com.gamesns.activity.GameOnLineList'),(100,7,'com.gamesns.activity.AllGame'),(101,5,'cs'),(102,7,'com.gamesns.activity.GameRecommend'),(103,7,'com.gamesns.activity.ManagerGame'),(104,7,'com.gamesns.GamesnsService'),(105,5,'ch'),(106,6,'com.openfeint.internal.ImagePicker'),(107,7,'com.gamesns.receiver.StartupIntentReceiver'),(108,6,'net.youmi.android.s'),(109,7,'com.gamesns.receiver.PackageAddedReceiver'),(110,7,'com.gamesns.receiver.PackageRemovedReceiver'),(111,7,'com.gamesns.receiver.ReferrerReceiver'),(112,5,'f'),(113,7,'com.gamesns.receiver.NetStateReceiver'),(114,7,'com.gamesns.AlarmReceiver'),(115,5,'bb'),(116,4,'bv'),(117,4,'bo'),(118,4,'af'),(119,5,'o'),(120,4,'cy'),(121,4,'cm'),(122,5,'bw'),(123,4,'q'),(124,5,'ag'),(125,4,'cd'),(126,5,'cl'),(127,5,'a');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'A7D1721B9508405D8271AB82AC6D9B3C'),(2,16,'url'),(3,16,'version_code'),(4,11,'from_alert'),(5,14,'isDirectFromTable'),(6,16,'btn_txt'),(7,11,'game'),(8,16,'apk_url'),(9,6,'stylebox'),(10,11,'filepath'),(11,11,'title'),(12,25,'url'),(13,15,'nextclassid'),(14,35,'filepath'),(15,37,'title'),(16,28,'title'),(17,25,'soft_id'),(18,28,'status'),(19,16,'title'),(20,11,'from_table'),(21,16,'content'),(22,16,'package_name'),(23,35,'completed'),(24,16,'fromtable'),(25,36,'service_channel'),(26,51,'com.openfeint.internal.ui.NativeBrowser.argument.timeout'),(27,52,'D50EF1926ADD471892E72BCE6D7E032C'),(28,52,'EB80F3291A8E469c962CA133BDC549D7'),(29,37,'fromtype'),(30,35,'app_name'),(31,35,'total'),(32,24,'service_channel'),(33,25,'completed'),(34,35,'icon'),(35,35,'soft_id'),(36,11,'fromtype'),(37,18,'stylebox'),(38,30,'nextclassid'),(39,25,'filepath'),(40,28,'filepath'),(41,23,'package_name'),(42,37,'filepath'),(43,37,'game'),(44,21,'package_name'),(45,14,'from'),(46,11,'status'),(47,50,'com.openfeint.internal.ui.NativeBrowser.argument.result'),(48,35,'package_name'),(49,21,'nextclassid'),(50,25,'app_name'),(51,25,'icon'),(52,28,'from_table'),(53,33,'content'),(54,50,'com.openfeint.internal.ui.NativeBrowser.argument.failure_desc'),(55,50,'screenName'),(56,49,'screenName'),(57,25,'package_name'),(58,48,'screenName'),(59,50,'content_name'),(60,49,'content_name'),(61,32,'version_code'),(62,48,'content_name'),(63,50,'com.openfeint.internal.ui.NativeBrowser.argument.failed'),(64,52,'D780FBF4215247bcBB1AC0AD33C474FE'),(65,51,'com.openfeint.internal.ui.NativeBrowser.argument.src'),(66,32,'package_name'),(67,52,'172C94EDC717477aBF600D7898A64A8E'),(68,25,'status'),(69,28,'from_alert'),(70,33,'btn_txt'),(71,17,'service_channel'),(72,15,'service_channel'),(73,40,'version_code'),(74,43,'service_channel'),(75,26,'service_channel'),(76,40,'apk_url'),(77,21,'status'),(78,25,'total'),(79,33,'title'),(80,24,'nextclassid'),(81,40,'title'),(82,35,'url'),(83,37,'status'),(84,39,'service_channel'),(85,35,'status'),(86,37,'from_alert'),(87,40,'package_name'),(88,32,'status'),(89,23,'version_code'),(90,23,'status'),(91,37,'from_table'),(92,33,'url'),(93,30,'package_name'),(94,40,'btn_txt'),(95,45,'service_channel'),(96,30,'status'),(97,40,'url'),(98,40,'content');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'s',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',1,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,58,'a',0,NULL,NULL),(56,59,'a',0,NULL,NULL),(57,60,'a',0,NULL,NULL),(58,61,'a',0,NULL,NULL),(59,62,'a',0,NULL,NULL),(60,63,'a',0,NULL,NULL),(61,64,'a',0,NULL,NULL),(62,65,'a',0,NULL,NULL),(63,66,'a',0,NULL,NULL),(64,67,'a',0,NULL,NULL),(65,68,'a',0,NULL,NULL),(66,69,'a',0,NULL,NULL),(67,70,'a',1,NULL,NULL),(68,71,'a',0,NULL,NULL),(69,72,'a',0,NULL,NULL),(70,73,'a',0,NULL,NULL),(71,74,'a',0,NULL,NULL),(72,75,'a',1,NULL,NULL),(73,76,'a',1,NULL,NULL),(74,78,'a',0,NULL,NULL),(75,79,'a',1,NULL,NULL),(76,81,'a',1,NULL,NULL),(77,82,'a',1,NULL,NULL),(78,85,'a',0,NULL,NULL),(79,86,'a',0,NULL,NULL),(80,87,'a',0,NULL,NULL),(81,88,'a',0,NULL,NULL),(82,89,'a',1,NULL,NULL),(83,91,'a',0,NULL,NULL),(84,92,'a',0,NULL,NULL),(85,93,'a',0,NULL,NULL),(86,94,'a',0,NULL,NULL),(87,95,'a',1,NULL,NULL),(88,97,'a',0,NULL,NULL),(89,98,'a',0,NULL,NULL),(90,99,'a',0,NULL,NULL),(91,100,'a',0,NULL,NULL),(92,102,'a',0,NULL,NULL),(93,103,'a',0,NULL,NULL),(94,104,'s',1,NULL,NULL),(95,107,'r',1,NULL,NULL),(96,109,'r',1,NULL,NULL),(97,110,'r',1,NULL,NULL),(98,111,'r',1,NULL,NULL),(99,113,'r',1,NULL,NULL),(100,114,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,1),(3,3,4),(4,4,10),(5,5,10),(6,6,22),(7,7,11),(8,8,14),(9,8,13),(10,8,16),(11,9,14),(12,9,13),(13,9,16),(14,10,11),(15,11,11),(16,12,11),(17,13,11),(18,14,16),(19,15,16),(20,16,6),(21,17,16),(22,18,11),(23,19,11),(24,20,11),(25,21,6),(26,22,11),(27,23,15),(28,24,22),(29,25,23),(30,26,16),(31,27,33),(32,28,27),(33,29,30),(34,30,33),(35,31,11),(36,32,26),(37,33,13),(38,34,15),(39,35,25),(40,36,6),(41,37,52),(42,38,24),(43,39,11),(44,40,21),(45,41,32),(46,42,25),(47,43,11),(48,44,37),(49,45,33),(50,46,26),(51,47,21),(52,48,22),(53,49,19),(54,50,13),(55,51,38),(56,51,40),(57,52,19),(58,53,24),(59,54,36),(60,55,50),(61,55,48),(62,56,27),(63,57,52),(64,58,38),(65,59,28),(66,60,27),(67,61,40),(68,62,17),(69,63,28),(70,64,24),(71,65,33),(72,66,43),(73,67,53),(74,68,17),(75,69,46),(76,70,53),(77,71,24),(78,72,31),(79,73,24),(80,74,37),(81,75,17),(82,76,37),(83,77,43),(84,78,15),(85,79,27),(86,80,28),(87,81,21),(88,82,46),(89,83,25),(90,84,46),(91,85,31),(92,86,37),(93,87,21),(94,88,19),(95,89,44),(96,90,21),(97,91,27),(98,92,36),(99,93,27),(100,94,19),(101,95,41),(102,96,26),(103,97,38),(104,98,19),(105,99,31),(106,100,44),(107,101,30),(108,102,41),(109,103,28),(110,104,35),(111,105,40),(112,106,28),(113,107,15),(114,108,32),(115,109,24),(116,110,15),(117,111,30),(118,112,15),(119,113,35),(120,114,36),(121,115,21),(122,116,40),(123,117,44),(124,118,28),(125,119,38),(126,119,40),(127,120,35),(128,121,30),(129,122,19),(130,123,30),(131,124,31),(132,125,41),(133,126,15),(134,127,37),(135,128,23),(136,129,40),(137,130,24),(138,131,30),(139,132,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.vrNeHuk.pVplbvLoM: void a()>',3,'a',NULL),(2,1,'<com.rakoo.puzzle.PuzzleActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',13,'a',NULL),(3,4,'<com.vrNeHuk.pVplbvLoM: void a(java.lang.String)>',10,'a',NULL),(4,10,'<com.LtQoh.AkfUcwshMQDdQ: void a(java.lang.String)>',10,'a',NULL),(5,10,'<com.LtQoh.AkfUcwshMQDdQ: void a()>',3,'a',NULL),(6,22,'<alB.egUWc.VkTui12: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(7,11,'<alB.egUWc.VkTui8: void onCreate(android.os.Bundle)>',81,'a',NULL),(8,14,'<alB.egUWc.VkTui2: void a(int,boolean)>',63,'a',NULL),(9,14,'<alB.egUWc.VkTui2: void a(int,boolean)>',10,'s',NULL),(10,55,'<af: void onClick(android.view.View)>',239,'a',NULL),(11,11,'<alB.egUWc.VkTui8: void onCreate(android.os.Bundle)>',90,'s',NULL),(12,56,'<v: void onClick(android.view.View)>',218,'a',NULL),(13,57,'<ae: void onClick(android.view.View)>',242,'a',NULL),(14,16,'<alB.egUWc.VkTui10: void onClick(android.view.View)>',75,'a',NULL),(15,16,'<alB.egUWc.VkTui10: void onClick(android.view.View)>',66,'a',NULL),(16,6,'<alB.egUWc.image.VkTui19: void onCreate(android.os.Bundle)>',128,'s',NULL),(17,16,'<alB.egUWc.VkTui10: void onClick(android.view.View)>',53,'a',NULL),(18,11,'<alB.egUWc.VkTui8: void onCreate(android.os.Bundle)>',33,'s',NULL),(19,11,'<alB.egUWc.VkTui8: void onCreate(android.os.Bundle)>',172,'a',NULL),(20,56,'<v: void onClick(android.view.View)>',239,'a',NULL),(21,6,'<alB.egUWc.image.VkTui19: void onCreate(android.os.Bundle)>',124,'s',NULL),(22,11,'<alB.egUWc.VkTui8: void onCreate(android.os.Bundle)>',76,'a',NULL),(23,15,'<com.picshow1.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(24,22,'<alB.egUWc.VkTui12: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(25,23,'<com.picshow1.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(26,16,'<alB.egUWc.VkTui10: void onClick(android.view.View)>',84,'a',NULL),(27,33,'<com.picshow1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(28,27,'<com.wtrylhj.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(29,77,'<c: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(30,33,'<com.picshow1.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(31,11,'<alB.egUWc.VkTui8: void onCreate(android.os.Bundle)>',177,'a',NULL),(32,26,'<com.wtrylhj.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(33,13,'<alB.egUWc.VkTui9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(34,80,'<ce: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(35,83,'<bd: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(36,6,'<alB.egUWc.image.VkTui19: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(37,84,'<net.youmi.android.bd: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(38,24,'<com.wtrylhj.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(39,57,'<ae: void onClick(android.view.View)>',221,'a',NULL),(40,90,'<ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(41,32,'<com.wtrylhj.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(42,25,'<com.picshow1.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(43,55,'<af: void onClick(android.view.View)>',218,'a',NULL),(44,37,'<com.wtrylhj.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(45,33,'<com.picshow1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(46,96,'<av: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(47,21,'<com.picshow1.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(48,22,'<alB.egUWc.VkTui12: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(49,19,'<com.picshow1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(50,13,'<alB.egUWc.VkTui9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(51,101,'<cs: void a(int,boolean)>',57,'a',NULL),(52,19,'<com.picshow1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(53,105,'<ch: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(54,36,'<com.picshow1.image.ImageTestActivity: void onCreate(android.os.Bundle)>',49,'s',NULL),(55,106,'<com.openfeint.internal.ImagePicker: android.graphics.Bitmap onImagePickerActivityResult(android.app.Activity,int,int,android.content.Intent)>',10,'p',0),(56,27,'<com.wtrylhj.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(57,108,'<net.youmi.android.s: void onClick(android.view.View)>',48,'a',NULL),(58,38,'<com.wtrylhj.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(59,28,'<com.picshow1.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(60,112,'<f: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(61,40,'<com.wtrylhj.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(62,17,'<com.picshow1.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(63,28,'<com.picshow1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(64,105,'<ch: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(65,33,'<com.picshow1.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(66,115,'<bb: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(67,53,'<com.RunHwUqoh.hJuucfFc: void a()>',3,'a',NULL),(68,17,'<com.picshow1.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(69,46,'<com.wtrylhj.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(70,53,'<com.RunHwUqoh.hJuucfFc: void a(java.lang.String)>',11,'a',NULL),(71,24,'<com.wtrylhj.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(72,116,'<bv: void a(int,boolean)>',10,'s',NULL),(73,105,'<ch: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(74,37,'<com.wtrylhj.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(75,117,'<bo: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(76,37,'<com.wtrylhj.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(77,43,'<com.wtrylhj.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(78,80,'<ce: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(79,27,'<com.wtrylhj.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(80,28,'<com.picshow1.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(81,118,'<af: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(82,46,'<com.wtrylhj.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(83,83,'<bd: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(84,46,'<com.wtrylhj.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(85,31,'<com.picshow1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(86,119,'<o: void onClick(android.view.View)>',239,'a',NULL),(87,118,'<af: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(88,120,'<cy: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(89,44,'<com.wtrylhj.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(90,21,'<com.picshow1.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(91,112,'<f: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(92,121,'<cm: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(93,112,'<f: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(94,19,'<com.picshow1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(95,41,'<com.picshow1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(96,26,'<com.wtrylhj.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(97,38,'<com.wtrylhj.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(98,120,'<cy: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(99,31,'<com.picshow1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(100,122,'<bw: void onClick(android.view.View)>',6,'a',NULL),(101,30,'<com.wtrylhj.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(102,41,'<com.picshow1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(103,123,'<q: void onClick(android.view.View)>',205,'a',NULL),(104,124,'<ag: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(105,40,'<com.wtrylhj.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(106,28,'<com.picshow1.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(107,15,'<com.picshow1.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(108,32,'<com.wtrylhj.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(109,105,'<ch: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(110,80,'<ce: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(111,77,'<c: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(112,125,'<cd: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(113,124,'<ag: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(114,36,'<com.picshow1.image.ImageTestActivity: void onCreate(android.os.Bundle)>',53,'s',NULL),(115,118,'<af: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(116,40,'<com.wtrylhj.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(117,44,'<com.wtrylhj.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(118,123,'<q: void onClick(android.view.View)>',224,'a',NULL),(119,101,'<cs: void a(int,boolean)>',10,'s',NULL),(120,35,'<com.wtrylhj.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(121,30,'<com.wtrylhj.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(122,120,'<cy: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(123,77,'<c: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(124,116,'<bv: void a(int,boolean)>',29,'a',NULL),(125,41,'<com.picshow1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(126,80,'<ce: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(127,119,'<o: void onClick(android.view.View)>',218,'a',NULL),(128,23,'<com.picshow1.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(129,40,'<com.wtrylhj.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(130,126,'<cl: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(131,127,'<a: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(132,43,'<com.wtrylhj.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,4),(2,4,4),(3,6,5),(4,10,1),(5,11,1),(6,12,1),(7,13,1),(8,15,4),(9,16,4),(10,17,1),(11,18,1),(12,19,1),(13,20,1),(14,21,3),(15,22,4),(16,23,4),(17,28,1),(18,29,1),(19,30,1),(20,31,1),(21,32,7),(22,33,8),(23,42,4),(24,44,4),(25,45,12),(26,46,1),(27,48,13),(28,49,1),(29,50,1),(30,52,4),(31,53,1),(32,54,14),(33,55,4),(34,56,4),(35,57,15),(36,58,4),(37,60,4),(38,61,4),(39,64,4),(40,65,4),(41,67,3),(42,68,4),(43,69,4),(44,71,4),(45,72,4),(46,73,5),(47,74,4),(48,78,4),(49,79,4),(50,81,17),(51,82,4),(52,83,19),(53,84,20),(54,85,19),(55,87,19),(56,89,19),(57,91,19),(58,92,19),(59,93,19),(60,96,19),(61,100,4),(62,102,12),(63,103,23),(64,104,4),(65,105,24),(66,106,4),(67,111,4),(68,118,24),(69,119,25),(70,122,1),(71,123,1),(72,124,4),(73,125,1),(74,126,1),(75,127,4),(76,130,4),(77,131,4),(78,135,26),(79,136,1),(80,138,1),(81,139,1),(82,140,1),(83,144,4),(84,145,25),(85,146,4),(86,147,4),(87,149,4),(88,150,27),(89,152,15),(90,156,4),(91,157,1),(92,159,1),(93,161,3),(94,162,4),(95,163,1),(96,165,1),(97,166,1),(98,168,1),(99,171,4),(100,173,26),(101,175,4),(102,177,4),(103,179,4),(104,181,28),(105,182,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,10,1),(2,11,3),(3,12,1),(4,13,3),(5,17,1),(6,18,3),(7,19,1),(8,20,3),(9,28,1),(10,29,3),(11,30,1),(12,31,3),(13,46,1),(14,49,3),(15,50,1),(16,53,3),(17,122,1),(18,123,3),(19,125,1),(20,126,3),(21,136,1),(22,138,3),(23,139,1),(24,140,3),(25,157,1),(26,159,3),(27,163,1),(28,165,3),(29,166,1),(30,168,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/rakoo/puzzle/PuzzleActivity'),(2,2,'com/rakoo/puzzle/MoreGameActivity'),(3,5,'com/rrwoin/wcsn/TenDropsActivity'),(4,6,'alB/egUWc/VkTui11'),(5,7,'alB/egUWc/image/VkTui19'),(6,8,'alB/egUWc/image/VkTui19'),(7,9,'alB/egUWc/VkTui11'),(8,14,'alB/egUWc/VkTui11'),(9,24,'alB/egUWc/VkTui11'),(10,25,'alB/egUWc/VkTui8'),(11,26,'alB/egUWc/VkTui11'),(12,27,'alB/egUWc/image/VkTui19'),(13,32,'alB/egUWc/VkTui11'),(14,33,'alB/egUWc/VkTui11'),(15,34,'alB/egUWc/image/VkTui19'),(16,35,'com/picshow1/GameService'),(17,36,'alB/egUWc/VkTui11'),(18,37,'com/picshow1/GameService'),(19,38,'alB/egUWc/VkTui10'),(20,40,'com/wtrylhj/GameInfo'),(21,39,'com/picshow1/GameAlertDialog'),(22,41,'com/wtrylhj/GameInfo'),(23,43,'alB/egUWc/image/VkTui19'),(24,45,'com/wtrylhj/GameService'),(25,47,'com/picshow1/Myhall'),(26,48,'com/wtrylhj/GameService'),(27,51,'alB/egUWc/image/VkTui18'),(28,54,'com/wtrylhj/GameService'),(29,57,'com/wtrylhj/GameService'),(30,59,'com/picshow1/Myhall'),(31,62,'com/wtrylhj/GameService'),(32,63,'com/picshow1/GameService'),(33,66,'com/wtrylhj/GameService'),(34,70,'com/picshow1/GameService'),(35,73,'alB/egUWc/VkTui11'),(36,75,'com/picshow1/GameInfo'),(37,77,'com/wtrylhj/qimg/ImageTestActivity'),(38,76,'alB/egUWc/VkTui8'),(39,80,'com/wtrylhj/Myhall'),(40,81,'com/picshow1/GameService'),(41,84,'com/picshow1/GameService'),(42,86,'com/wtrylhj/GameInfo'),(43,88,'com/picshow1/Myhall'),(44,90,'com/wtrylhj/GameInfo'),(45,95,'com/picshow1/GameService'),(46,94,'com/wtrylhj/GameInfo'),(47,97,'com/picshow1/Myhall'),(48,98,'com/wtrylhj/Myhall'),(49,99,'com/picshow1/GameInfo'),(50,101,'com/ogsuquimp/cikpiofhk/GameActivity'),(51,102,'com/picshow1/GameService'),(52,103,'com/picshow1/GameService'),(53,105,'com/wtrylhj/GameService'),(54,107,'com/wtrylhj/GameService'),(55,108,'com/picshow1/GameService'),(56,109,'com/wtrylhj/Myhall'),(57,110,'com/wtrylhj/Myhall'),(58,112,'com/wtrylhj/Myhall'),(59,113,'com/wtrylhj/GameService'),(60,114,'com/picshow1/Myhall'),(61,115,'com/wtrylhj/Myhall'),(62,116,'com/picshow1/GameService'),(63,117,'com/picshow1/GameInfo'),(64,118,'com/wtrylhj/GameService'),(65,120,'com/wtrylhj/GameService'),(66,121,'com/picshow1/GameInfo'),(67,128,'com/wtrylhj/GameInfo'),(68,129,'com/picshow1/GameInfo'),(69,132,'com/wtrylhj/Myhall'),(70,133,'com/picshow1/Myhall'),(71,134,'com/wtrylhj/GameService'),(72,135,'com/picshow1/GameService'),(73,137,'com/picshow1/GameInfo'),(74,141,'com/wtrylhj/qimg/ImageTestActivity'),(75,142,'com/wtrylhj/GameService'),(76,143,'com/picshow1/GameService'),(77,148,'com/picshow1/Myhall'),(78,150,'com/picshow1/GameService'),(79,151,'com/wtrylhj/GameInfo'),(80,152,'com/picshow1/GameService'),(81,153,'com/wtrylhj/Myhall'),(82,154,'com/picshow1/Myhall'),(83,155,'com/wtrylhj/Myhall'),(84,158,'com/picshow1/GameService'),(85,160,'com/picshow1/Myhall'),(86,164,'com/wtrylhj/GameService'),(87,167,'com/wtrylhj/GameService'),(88,169,'com/wtrylhj/GameInfo'),(89,170,'com/picshow1/Myhall'),(90,172,'com/picshow1/Myhall'),(91,173,'com/picshow1/GameService'),(92,174,'com/picshow1/Myhall'),(93,176,'com/picshow1/GameInfo'),(94,178,'com/wtrylhj/GameAlertDialog'),(95,180,'com/wtrylhj/Myhall'),(96,181,'com/wtrylhj/GameService'),(97,182,'com/wtrylhj/GameService');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,15,3),(4,16,4),(5,22,5),(6,23,6),(7,42,7),(8,44,8),(9,52,9),(10,55,10),(11,56,11),(12,58,12),(13,60,13),(14,61,14),(15,64,15),(16,65,16),(17,68,17),(18,69,18),(19,71,19),(20,72,20),(21,74,21),(22,78,22),(23,79,23),(24,82,24),(25,100,25),(26,104,26),(27,106,27),(28,111,28),(29,119,29),(30,124,30),(31,127,31),(32,130,32),(33,131,33),(34,144,34),(35,145,35),(36,146,36),(37,147,37),(38,149,38),(39,156,39),(40,162,40),(41,171,41),(42,175,42),(43,177,43),(44,179,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,25,'id'),(2,25,'from_alert'),(3,25,'detail_flag'),(4,38,'title'),(5,38,'btn_txt'),(6,38,'need_adb_flag'),(7,39,'title'),(8,38,'cont'),(9,39,'btn_txt'),(10,40,'game'),(11,38,'close_flag'),(12,40,'fromtype'),(13,39,'need_adb_flag'),(14,39,'cont'),(15,39,'close_flag'),(16,41,'title'),(17,41,'game'),(18,41,'fromtype'),(19,47,'clicked'),(20,51,'startid'),(21,51,'position'),(22,59,'title'),(23,59,'nextclassid'),(24,59,'clicked'),(25,76,'game'),(26,76,'fromtype'),(27,80,'clicked'),(28,83,'android.intent.extra.INTENT'),(29,85,'android.intent.extra.INTENT'),(30,86,'game'),(31,86,'fromtype'),(32,87,'android.intent.extra.TITLE'),(33,87,'android.intent.extra.INTENT'),(34,89,'android.intent.extra.INTENT'),(35,90,'title'),(36,90,'game'),(37,91,'android.intent.extra.TITLE'),(38,90,'fromtype'),(39,91,'android.intent.extra.INTENT'),(40,92,'android.intent.extra.INTENT'),(41,93,'android.intent.extra.TITLE'),(42,93,'android.intent.extra.INTENT'),(43,94,'id'),(44,94,'from_alert'),(45,94,'detail_flag'),(46,96,'android.intent.extra.TITLE'),(47,96,'android.intent.extra.INTENT'),(48,98,'clicked'),(49,99,'id'),(50,99,'from_table'),(51,99,'detail_flag'),(52,109,'clicked'),(53,114,'clicked'),(54,115,'nextclassid'),(55,115,'clicked'),(56,117,'title'),(57,128,'game'),(58,128,'fromtype'),(59,129,'title'),(60,132,'title'),(61,132,'nextclassid'),(62,133,'nextclassid'),(63,132,'clicked'),(64,133,'clicked'),(65,137,'title'),(66,151,'game'),(67,151,'fromtype'),(68,153,'clicked'),(69,154,'clicked'),(70,155,'title'),(71,155,'nextclassid'),(72,155,'clicked'),(73,160,'title'),(74,160,'nextclassid'),(75,160,'clicked'),(76,169,'title'),(77,170,'title'),(78,169,'game'),(79,170,'nextclassid'),(80,169,'fromtype'),(81,170,'clicked'),(82,174,'clicked'),(83,178,'title'),(84,178,'btn_txt'),(85,178,'need_adb_flag'),(86,178,'cont'),(87,178,'close_flag'),(88,180,'title'),(89,180,'nextclassid'),(90,180,'clicked');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,1),(3,5,1),(4,6,1),(5,7,1),(6,8,1),(7,9,1),(8,10,1),(9,11,2),(10,12,1),(11,13,1),(12,14,1),(13,15,1),(14,16,1),(15,17,1),(16,18,3),(17,19,1),(18,20,1),(19,21,1),(20,22,1),(21,23,1),(22,24,2),(23,25,3),(24,26,1),(25,27,1),(26,28,2),(27,30,1),(28,31,6),(29,32,9),(30,33,1),(31,34,10),(32,35,1),(33,36,1),(34,37,11),(35,38,9),(36,39,1),(37,40,1),(38,41,4),(39,42,1),(40,43,16),(41,44,2),(42,44,18),(43,45,6),(44,46,10),(45,47,21),(46,48,10),(47,49,22),(48,50,6),(49,51,6),(50,52,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,3,2),(4,6,1),(5,9,1),(6,20,1),(7,23,1),(8,26,1),(9,27,1),(10,30,1),(11,31,4),(12,34,4),(13,36,3),(14,36,1),(15,37,2),(16,41,2),(17,41,5),(18,42,1),(19,48,4),(20,50,4),(21,51,4),(22,52,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,31,'package',NULL,NULL,NULL,NULL,NULL),(2,34,'package',NULL,NULL,NULL,NULL,NULL),(3,41,'gamesnsschema','sina',NULL,NULL,NULL,NULL),(4,41,'gamesnsschema','tencent',NULL,NULL,NULL,NULL),(5,41,'gamesnsschema','kaixin',NULL,NULL,NULL,NULL),(6,41,'gamesnsschema','renren',NULL,NULL,NULL,NULL),(7,45,'package',NULL,NULL,NULL,NULL,NULL),(8,46,'package',NULL,NULL,NULL,NULL,NULL),(9,48,'package',NULL,NULL,NULL,NULL,NULL),(10,50,'package',NULL,NULL,NULL,NULL,NULL),(11,51,'package',NULL,NULL,NULL,NULL,NULL),(12,52,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,3,'application','vnd.android.package-archive'),(2,4,'application','vnd.android.package-archive'),(3,15,'application','vnd.android.package-archive'),(4,16,'application','vnd.android.package-archive'),(5,52,'application','vnd.android.package-archive'),(6,55,'application','vnd.android.package-archive'),(7,56,'application','vnd.android.package-archive'),(8,58,'application','vnd.android.package-archive'),(9,60,'application','vnd.android.package-archive'),(10,61,'application','vnd.android.package-archive'),(11,64,'application','vnd.android.package-archive'),(12,65,'application','vnd.android.package-archive'),(13,68,'application','vnd.android.package-archive'),(14,69,'application','vnd.android.package-archive'),(15,71,'application','vnd.android.package-archive'),(16,72,'application','vnd.android.package-archive'),(17,74,'application','vnd.android.package-archive'),(18,78,'application','vnd.android.package-archive'),(19,100,'application','vnd.android.package-archive'),(20,106,'(.*)','(.*)'),(21,111,'application','vnd.android.package-archive'),(22,131,'application','vnd.android.package-archive'),(23,144,'application','vnd.android.package-archive'),(24,146,'application','vnd.android.package-archive'),(25,156,'application','vnd.android.package-archive'),(26,175,'application','vnd.android.package-archive'),(27,177,'application','vnd.android.package-archive'),(28,179,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.kumv.elbbwrlgpsavt.mewiqmip.smmql'),(2,2,'com.kumv.elbbwrlgpsavt.mewiqmip.smmql'),(3,5,'com.rrwoin.wcsn'),(4,6,'alB.egUWc'),(5,7,'alB.egUWc'),(6,8,'alB.egUWc'),(7,9,'alB.egUWc'),(8,10,'(.*)'),(9,11,''),(10,12,''),(11,13,'(.*)'),(12,14,'alB.egUWc'),(13,17,'(.*)'),(14,18,''),(15,19,''),(16,20,'(.*)'),(17,24,'alB.egUWc'),(18,25,'alB.egUWc'),(19,26,'alB.egUWc'),(20,27,'alB.egUWc'),(21,28,'(.*)'),(22,29,''),(23,30,''),(24,31,'(.*)'),(25,32,'alB.egUWc'),(26,33,'alB.egUWc'),(27,34,'alB.egUWc'),(28,35,'com.picshow1'),(29,36,'alB.egUWc'),(30,37,'com.picshow1'),(31,38,'alB.egUWc'),(32,40,'com.wtrylhj'),(33,39,'com.picshow1'),(34,41,'com.wtrylhj'),(35,43,'alB.egUWc'),(36,45,'com.wtrylhj'),(37,46,'(.*)'),(38,47,'com.picshow1'),(39,48,'com.wtrylhj'),(40,49,'(.*)'),(41,50,'NULL-CONSTANT'),(42,51,'alB.egUWc'),(43,53,'NULL-CONSTANT'),(44,54,'com.wtrylhj'),(45,57,'com.wtrylhj'),(46,59,'com.picshow1'),(47,62,'com.wtrylhj'),(48,63,'com.picshow1'),(49,66,'com.wtrylhj'),(50,70,'com.picshow1'),(51,73,'alB.egUWc'),(52,75,'com.picshow1'),(53,77,'com.wtrylhj'),(54,76,'alB.egUWc'),(55,80,'com.wtrylhj'),(56,81,'com.picshow1'),(57,84,'com.picshow1'),(58,86,'com.wtrylhj'),(59,88,'com.picshow1'),(60,90,'com.wtrylhj'),(61,95,'com.picshow1'),(62,94,'com.wtrylhj'),(63,97,'com.picshow1'),(64,98,'com.wtrylhj'),(65,99,'com.picshow1'),(66,101,'com.ogsuquimp.cikpiofhk'),(67,102,'com.picshow1'),(68,103,'com.picshow1'),(69,105,'com.wtrylhj'),(70,107,'com.wtrylhj'),(71,108,'com.picshow1'),(72,109,'com.wtrylhj'),(73,110,'com.wtrylhj'),(74,112,'com.wtrylhj'),(75,113,'com.wtrylhj'),(76,114,'com.picshow1'),(77,115,'com.wtrylhj'),(78,116,'com.picshow1'),(79,117,'com.picshow1'),(80,118,'com.wtrylhj'),(81,120,'com.wtrylhj'),(82,121,'com.picshow1'),(83,122,'(.*)'),(84,123,''),(85,125,''),(86,126,'(.*)'),(87,128,'com.wtrylhj'),(88,129,'com.picshow1'),(89,132,'com.wtrylhj'),(90,133,'com.picshow1'),(91,134,'com.wtrylhj'),(92,135,'com.picshow1'),(93,136,'(.*)'),(94,137,'com.picshow1'),(95,138,'(.*)'),(96,139,'(.*)'),(97,141,'com.wtrylhj'),(98,140,'(.*)'),(99,142,'com.wtrylhj'),(100,143,'com.picshow1'),(101,148,'com.picshow1'),(102,150,'com.picshow1'),(103,151,'com.wtrylhj'),(104,152,'com.picshow1'),(105,153,'com.wtrylhj'),(106,154,'com.picshow1'),(107,155,'com.wtrylhj'),(108,157,'NULL-CONSTANT'),(109,158,'com.picshow1'),(110,159,'NULL-CONSTANT'),(111,160,'com.picshow1'),(112,163,'(.*)'),(113,164,'com.wtrylhj'),(114,165,''),(115,166,''),(116,167,'com.wtrylhj'),(117,168,'(.*)'),(118,169,'com.wtrylhj'),(119,170,'com.picshow1'),(120,172,'com.picshow1'),(121,173,'com.picshow1'),(122,174,'com.picshow1'),(123,176,'com.picshow1'),(124,178,'com.wtrylhj'),(125,180,'com.wtrylhj'),(126,181,'com.wtrylhj'),(127,182,'com.wtrylhj');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,7,0),(5,11,0),(6,12,0),(7,13,0),(8,14,0),(9,18,0),(10,21,0),(11,22,0),(12,23,0),(13,25,0),(14,28,0),(15,30,0),(16,31,0),(17,32,0),(18,34,0),(19,35,0),(20,36,0),(21,37,0),(22,38,0),(23,39,0),(24,41,0),(25,42,0),(26,43,0),(27,45,0),(28,46,0),(29,47,0),(30,54,0),(31,22,0),(32,67,0),(33,72,0),(34,22,0),(35,73,0),(36,75,0),(37,75,0),(38,75,0),(39,76,0),(40,77,0),(41,82,0),(42,87,0),(43,94,0),(44,95,0),(45,96,0),(46,97,0),(47,98,0),(48,41,0),(49,99,0),(50,41,0),(51,46,0),(52,46,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,1,0),(11,10,1,0),(12,10,1,0),(13,10,1,0),(14,11,0,0),(15,12,1,0),(16,12,1,0),(17,13,1,0),(18,13,1,0),(19,13,1,0),(20,13,1,0),(21,14,1,0),(22,15,1,0),(23,15,1,0),(24,16,0,0),(25,17,0,0),(26,18,0,0),(27,19,0,0),(28,20,1,0),(29,20,1,0),(30,20,1,0),(31,20,1,0),(32,21,0,0),(33,21,0,0),(34,22,0,0),(35,23,0,0),(36,24,0,0),(37,25,0,0),(38,26,0,0),(39,27,0,0),(40,28,0,0),(41,29,0,0),(42,30,1,0),(43,31,0,0),(44,30,1,0),(45,32,0,0),(46,33,1,0),(47,34,0,0),(48,32,0,0),(49,33,1,0),(50,35,1,0),(51,36,0,0),(52,37,1,0),(53,35,1,0),(54,38,0,0),(55,37,1,0),(56,39,1,0),(57,38,0,0),(58,37,1,0),(59,40,0,0),(60,39,1,0),(61,37,1,0),(62,41,0,0),(63,42,0,0),(64,43,1,0),(65,37,1,0),(66,44,0,0),(67,45,1,0),(68,43,1,0),(69,37,1,0),(70,47,0,0),(71,46,1,0),(72,37,1,0),(73,48,0,0),(74,37,1,0),(75,49,0,0),(76,50,0,0),(77,51,0,0),(78,37,1,0),(79,52,1,0),(80,53,0,0),(81,54,0,0),(82,56,1,0),(83,57,1,0),(84,54,0,0),(85,57,1,0),(86,58,0,0),(87,57,1,0),(88,59,0,0),(89,57,1,0),(90,60,0,0),(91,57,1,0),(92,57,1,0),(93,57,1,0),(94,61,0,0),(95,62,0,0),(96,57,1,0),(97,63,0,0),(98,64,0,0),(99,65,0,0),(100,66,1,0),(101,67,0,0),(102,68,0,0),(103,68,0,0),(104,70,1,0),(105,69,0,0),(106,70,1,0),(107,71,0,0),(108,72,0,0),(109,73,0,0),(110,74,0,0),(111,75,1,0),(112,76,0,0),(113,77,0,0),(114,78,0,0),(115,79,0,0),(116,80,0,0),(117,81,0,0),(118,82,0,0),(119,83,1,0),(120,84,0,0),(121,85,0,0),(122,86,1,0),(123,86,1,0),(124,87,1,0),(125,86,1,0),(126,86,1,0),(127,88,1,0),(128,89,0,0),(129,90,0,0),(130,91,1,0),(131,92,1,0),(132,93,0,0),(133,94,0,0),(134,96,0,0),(135,95,0,0),(136,97,1,0),(137,98,0,0),(138,97,1,0),(139,99,1,0),(140,99,1,0),(141,100,0,0),(142,101,0,0),(143,102,0,0),(144,103,1,0),(145,104,1,0),(146,103,1,0),(147,105,1,0),(148,106,0,0),(149,105,1,0),(150,107,0,0),(151,108,0,0),(152,107,0,0),(153,109,0,0),(154,110,0,0),(155,111,0,0),(156,112,1,0),(157,113,1,0),(158,114,0,0),(159,113,1,0),(160,115,0,0),(161,116,1,0),(162,117,1,0),(163,118,1,0),(164,119,0,0),(165,118,1,0),(166,118,1,0),(167,120,0,0),(168,118,1,0),(169,121,0,0),(170,122,0,0),(171,123,1,0),(172,124,0,0),(173,125,0,0),(174,126,0,0),(175,127,1,0),(176,128,0,0),(177,127,1,0),(178,129,0,0),(179,130,1,0),(180,131,0,0),(181,132,0,0),(182,132,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=807 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,54,45,2,NULL),(2,57,45,2,NULL),(3,107,45,2,NULL),(4,45,45,2,NULL),(5,48,45,2,NULL),(6,134,45,2,NULL),(7,40,37,2,NULL),(8,115,24,2,NULL),(9,82,1,2,NULL),(10,82,5,2,NULL),(11,82,6,2,NULL),(12,82,11,2,NULL),(13,82,13,2,NULL),(14,82,14,2,NULL),(15,82,18,2,NULL),(16,82,22,2,NULL),(17,82,7,2,NULL),(18,82,12,2,NULL),(19,82,21,2,NULL),(20,82,23,2,NULL),(21,82,25,2,NULL),(22,82,28,2,NULL),(23,82,31,2,NULL),(24,82,34,2,NULL),(25,82,36,2,NULL),(26,82,39,2,NULL),(27,82,41,2,NULL),(28,82,30,2,NULL),(29,82,32,2,NULL),(30,82,35,2,NULL),(31,82,37,2,NULL),(32,82,38,2,NULL),(33,82,42,2,NULL),(34,82,43,2,NULL),(35,82,45,2,NULL),(36,82,46,2,NULL),(37,82,47,2,NULL),(38,82,54,2,NULL),(39,82,67,2,NULL),(40,82,72,2,NULL),(41,82,73,2,NULL),(42,82,75,2,NULL),(43,82,76,2,NULL),(44,82,77,2,NULL),(45,82,87,2,NULL),(46,82,94,2,NULL),(47,82,95,2,NULL),(48,82,98,2,NULL),(49,82,99,2,NULL),(50,142,45,2,NULL),(51,169,37,2,NULL),(52,46,30,2,NULL),(53,49,30,2,NULL),(54,21,30,2,NULL),(55,22,30,2,NULL),(56,23,30,2,NULL),(57,79,30,2,NULL),(58,139,30,2,NULL),(59,140,30,2,NULL),(60,42,30,2,NULL),(61,44,30,2,NULL),(62,67,30,2,NULL),(63,136,30,2,NULL),(64,138,30,2,NULL),(65,147,30,2,NULL),(66,149,30,2,NULL),(67,161,30,2,NULL),(68,162,30,2,NULL),(69,62,45,2,NULL),(70,151,37,2,NULL),(71,46,32,2,NULL),(72,49,32,2,NULL),(73,21,32,2,NULL),(74,22,32,2,NULL),(75,23,32,2,NULL),(76,79,32,2,NULL),(77,139,32,2,NULL),(78,140,32,2,NULL),(79,42,32,2,NULL),(80,44,32,2,NULL),(81,67,32,2,NULL),(82,136,32,2,NULL),(83,138,32,2,NULL),(84,147,32,2,NULL),(85,149,32,2,NULL),(86,161,32,2,NULL),(87,162,32,2,NULL),(88,167,45,2,NULL),(89,46,35,2,NULL),(90,49,35,2,NULL),(91,21,35,2,NULL),(92,22,35,2,NULL),(93,23,35,2,NULL),(94,79,35,2,NULL),(95,139,35,2,NULL),(96,140,35,2,NULL),(97,42,35,2,NULL),(98,44,35,2,NULL),(99,67,35,2,NULL),(100,136,35,2,NULL),(101,138,35,2,NULL),(102,147,35,2,NULL),(103,149,35,2,NULL),(104,161,35,2,NULL),(105,162,35,2,NULL),(106,66,45,2,NULL),(107,110,24,2,NULL),(108,112,24,2,NULL),(109,46,37,2,NULL),(110,49,37,2,NULL),(111,21,37,2,NULL),(112,22,37,2,NULL),(113,23,37,2,NULL),(114,79,37,2,NULL),(115,139,37,2,NULL),(116,140,37,2,NULL),(117,42,37,2,NULL),(118,44,37,2,NULL),(119,67,37,2,NULL),(120,136,37,2,NULL),(121,138,37,2,NULL),(122,147,37,2,NULL),(123,149,37,2,NULL),(124,161,37,2,NULL),(125,162,37,2,NULL),(126,86,37,2,NULL),(127,136,1,2,NULL),(128,138,1,2,NULL),(129,136,5,2,NULL),(130,138,5,2,NULL),(131,136,6,2,NULL),(132,138,6,2,NULL),(133,136,11,2,NULL),(134,138,11,2,NULL),(135,136,13,2,NULL),(136,138,13,2,NULL),(137,46,38,2,NULL),(138,49,38,2,NULL),(139,136,14,2,NULL),(140,138,14,2,NULL),(141,21,38,2,NULL),(142,22,38,2,NULL),(143,23,38,2,NULL),(144,136,18,2,NULL),(145,138,18,2,NULL),(146,136,22,2,NULL),(147,138,22,2,NULL),(148,136,7,2,NULL),(149,138,7,2,NULL),(150,136,12,2,NULL),(151,138,12,2,NULL),(152,79,38,2,NULL),(153,136,21,2,NULL),(154,138,21,2,NULL),(155,136,23,2,NULL),(156,138,23,2,NULL),(157,136,25,2,NULL),(158,138,25,2,NULL),(159,136,28,2,NULL),(160,138,28,2,NULL),(161,136,31,2,NULL),(162,138,31,2,NULL),(163,139,38,2,NULL),(164,140,38,2,NULL),(165,42,38,2,NULL),(166,44,38,2,NULL),(167,67,38,2,NULL),(168,136,34,2,NULL),(169,138,34,2,NULL),(170,136,36,2,NULL),(171,138,36,2,NULL),(172,136,39,2,NULL),(173,138,39,2,NULL),(174,136,41,2,NULL),(175,138,41,2,NULL),(176,147,38,2,NULL),(177,149,38,2,NULL),(178,161,38,2,NULL),(179,136,42,2,NULL),(180,138,42,2,NULL),(181,136,43,2,NULL),(182,138,43,2,NULL),(183,162,38,2,NULL),(184,136,45,2,NULL),(185,138,45,2,NULL),(186,136,46,2,NULL),(187,138,46,2,NULL),(188,136,47,2,NULL),(189,138,47,2,NULL),(190,136,54,2,NULL),(191,138,54,2,NULL),(192,136,67,2,NULL),(193,138,67,2,NULL),(194,136,72,2,NULL),(195,138,72,2,NULL),(196,136,73,2,NULL),(197,138,73,2,NULL),(198,136,75,2,NULL),(199,138,75,2,NULL),(200,136,76,2,NULL),(201,138,76,2,NULL),(202,136,77,2,NULL),(203,138,77,2,NULL),(204,136,87,2,NULL),(205,138,87,2,NULL),(206,136,94,2,NULL),(207,138,94,2,NULL),(208,136,95,2,NULL),(209,138,95,2,NULL),(210,136,98,2,NULL),(211,138,98,2,NULL),(212,136,99,2,NULL),(213,138,99,2,NULL),(214,94,37,2,NULL),(215,178,40,2,NULL),(216,147,1,2,NULL),(217,149,1,2,NULL),(218,161,1,2,NULL),(219,147,5,2,NULL),(220,149,5,2,NULL),(221,161,5,2,NULL),(222,147,6,2,NULL),(223,149,6,2,NULL),(224,161,6,2,NULL),(225,147,11,2,NULL),(226,149,11,2,NULL),(227,161,11,2,NULL),(228,147,13,2,NULL),(229,149,13,2,NULL),(230,161,13,2,NULL),(231,147,14,2,NULL),(232,149,14,2,NULL),(233,161,14,2,NULL),(234,147,18,2,NULL),(235,149,18,2,NULL),(236,161,18,2,NULL),(237,147,22,2,NULL),(238,149,22,2,NULL),(239,161,22,2,NULL),(240,147,7,2,NULL),(241,149,7,2,NULL),(242,161,7,2,NULL),(243,147,12,2,NULL),(244,149,12,2,NULL),(245,161,12,2,NULL),(246,147,21,2,NULL),(247,149,21,2,NULL),(248,161,21,2,NULL),(249,147,23,2,NULL),(250,149,23,2,NULL),(251,161,23,2,NULL),(252,147,25,2,NULL),(253,149,25,2,NULL),(254,161,25,2,NULL),(255,147,28,2,NULL),(256,149,28,2,NULL),(257,161,28,2,NULL),(258,147,31,2,NULL),(259,149,31,2,NULL),(260,161,31,2,NULL),(261,147,34,2,NULL),(262,149,34,2,NULL),(263,161,34,2,NULL),(264,147,36,2,NULL),(265,149,36,2,NULL),(266,161,36,2,NULL),(267,147,39,2,NULL),(268,149,39,2,NULL),(269,161,39,2,NULL),(270,147,41,2,NULL),(271,149,41,2,NULL),(272,161,41,2,NULL),(273,147,42,2,NULL),(274,149,42,2,NULL),(275,161,42,2,NULL),(276,147,43,2,NULL),(277,149,43,2,NULL),(278,161,43,2,NULL),(279,147,45,2,NULL),(280,149,45,2,NULL),(281,161,45,2,NULL),(282,147,46,2,NULL),(283,149,46,2,NULL),(284,161,46,2,NULL),(285,147,47,2,NULL),(286,149,47,2,NULL),(287,161,47,2,NULL),(288,147,54,2,NULL),(289,149,54,2,NULL),(290,161,54,2,NULL),(291,147,67,2,NULL),(292,149,67,2,NULL),(293,161,67,2,NULL),(294,147,72,2,NULL),(295,149,72,2,NULL),(296,161,72,2,NULL),(297,147,73,2,NULL),(298,149,73,2,NULL),(299,161,73,2,NULL),(300,147,75,2,NULL),(301,149,75,2,NULL),(302,161,75,2,NULL),(303,147,76,2,NULL),(304,149,76,2,NULL),(305,161,76,2,NULL),(306,147,77,2,NULL),(307,149,77,2,NULL),(308,161,77,2,NULL),(309,147,87,2,NULL),(310,149,87,2,NULL),(311,161,87,2,NULL),(312,147,94,2,NULL),(313,149,94,2,NULL),(314,161,94,2,NULL),(315,147,95,2,NULL),(316,149,95,2,NULL),(317,161,95,2,NULL),(318,147,98,2,NULL),(319,24,18,2,NULL),(320,149,98,2,NULL),(321,32,18,2,NULL),(322,161,98,2,NULL),(323,33,18,2,NULL),(324,147,99,2,NULL),(325,51,9,2,NULL),(326,149,99,2,NULL),(327,46,6,2,NULL),(328,161,99,2,NULL),(329,49,6,2,NULL),(330,46,42,2,NULL),(331,21,6,2,NULL),(332,49,42,2,NULL),(333,22,6,2,NULL),(334,21,42,2,NULL),(335,23,6,2,NULL),(336,22,42,2,NULL),(337,79,6,2,NULL),(338,23,42,2,NULL),(339,139,6,2,NULL),(340,79,42,2,NULL),(341,140,6,2,NULL),(342,139,42,2,NULL),(343,42,6,2,NULL),(344,140,42,2,NULL),(345,44,6,2,NULL),(346,42,42,2,NULL),(347,67,6,2,NULL),(348,44,42,2,NULL),(349,162,6,2,NULL),(350,67,42,2,NULL),(351,7,6,2,NULL),(352,162,42,2,NULL),(353,14,18,2,NULL),(354,113,45,2,NULL),(355,26,18,2,NULL),(356,181,45,2,NULL),(357,27,6,2,NULL),(358,182,45,2,NULL),(359,34,6,2,NULL),(360,46,43,2,NULL),(361,43,6,2,NULL),(362,49,43,2,NULL),(363,46,11,2,NULL),(364,21,43,2,NULL),(365,49,11,2,NULL),(366,22,43,2,NULL),(367,21,11,2,NULL),(368,23,43,2,NULL),(369,22,11,2,NULL),(370,79,43,2,NULL),(371,23,11,2,NULL),(372,139,43,2,NULL),(373,79,11,2,NULL),(374,140,43,2,NULL),(375,139,11,2,NULL),(376,42,43,2,NULL),(377,140,11,2,NULL),(378,44,43,2,NULL),(379,42,11,2,NULL),(380,67,43,2,NULL),(381,44,11,2,NULL),(382,162,43,2,NULL),(383,67,11,2,NULL),(384,128,37,2,NULL),(385,162,11,2,NULL),(386,162,1,2,NULL),(387,76,11,2,NULL),(388,162,5,2,NULL),(389,46,1,2,NULL),(390,162,13,2,NULL),(391,49,1,2,NULL),(392,162,14,2,NULL),(393,46,5,2,NULL),(394,162,18,2,NULL),(395,49,5,2,NULL),(396,162,22,2,NULL),(397,46,14,2,NULL),(398,162,7,2,NULL),(399,49,14,2,NULL),(400,162,12,2,NULL),(401,21,13,2,NULL),(402,162,21,2,NULL),(403,22,13,2,NULL),(404,162,23,2,NULL),(405,23,13,2,NULL),(406,162,25,2,NULL),(407,46,18,2,NULL),(408,162,28,2,NULL),(409,49,18,2,NULL),(410,162,31,2,NULL),(411,46,22,2,NULL),(412,162,34,2,NULL),(413,49,22,2,NULL),(414,162,36,2,NULL),(415,46,7,2,NULL),(416,162,39,2,NULL),(417,49,7,2,NULL),(418,162,41,2,NULL),(419,46,12,2,NULL),(420,162,45,2,NULL),(421,49,12,2,NULL),(422,162,46,2,NULL),(423,79,13,2,NULL),(424,162,47,2,NULL),(425,46,21,2,NULL),(426,162,54,2,NULL),(427,49,21,2,NULL),(428,162,67,2,NULL),(429,46,23,2,NULL),(430,162,72,2,NULL),(431,49,23,2,NULL),(432,162,73,2,NULL),(433,46,25,2,NULL),(434,162,75,2,NULL),(435,49,25,2,NULL),(436,162,76,2,NULL),(437,46,28,2,NULL),(438,162,77,2,NULL),(439,49,28,2,NULL),(440,162,87,2,NULL),(441,46,31,2,NULL),(442,162,94,2,NULL),(443,49,31,2,NULL),(444,162,95,2,NULL),(445,139,13,2,NULL),(446,162,98,2,NULL),(447,140,13,2,NULL),(448,162,99,2,NULL),(449,42,13,2,NULL),(450,46,45,2,NULL),(451,44,13,2,NULL),(452,49,45,2,NULL),(453,67,13,2,NULL),(454,21,45,2,NULL),(455,46,34,2,NULL),(456,22,45,2,NULL),(457,49,34,2,NULL),(458,23,45,2,NULL),(459,46,36,2,NULL),(460,79,45,2,NULL),(461,49,36,2,NULL),(462,139,45,2,NULL),(463,46,39,2,NULL),(464,140,45,2,NULL),(465,49,39,2,NULL),(466,42,45,2,NULL),(467,46,41,2,NULL),(468,44,45,2,NULL),(469,49,41,2,NULL),(470,67,45,2,NULL),(471,46,46,2,NULL),(472,105,45,2,NULL),(473,49,46,2,NULL),(474,118,45,2,NULL),(475,46,47,2,NULL),(476,120,45,2,NULL),(477,49,47,2,NULL),(478,21,46,2,NULL),(479,46,54,2,NULL),(480,22,46,2,NULL),(481,49,54,2,NULL),(482,23,46,2,NULL),(483,46,67,2,NULL),(484,79,46,2,NULL),(485,49,67,2,NULL),(486,139,46,2,NULL),(487,46,72,2,NULL),(488,140,46,2,NULL),(489,49,72,2,NULL),(490,42,46,2,NULL),(491,46,73,2,NULL),(492,44,46,2,NULL),(493,49,73,2,NULL),(494,67,46,2,NULL),(495,46,75,2,NULL),(496,49,75,2,NULL),(497,46,76,2,NULL),(498,49,76,2,NULL),(499,46,77,2,NULL),(500,49,77,2,NULL),(501,46,87,2,NULL),(502,49,87,2,NULL),(503,46,94,2,NULL),(504,49,94,2,NULL),(505,46,95,2,NULL),(506,49,95,2,NULL),(507,46,98,2,NULL),(508,49,98,2,NULL),(509,46,99,2,NULL),(510,49,99,2,NULL),(511,8,6,2,NULL),(512,9,18,2,NULL),(513,21,14,2,NULL),(514,22,14,2,NULL),(515,23,14,2,NULL),(516,79,14,2,NULL),(517,139,14,2,NULL),(518,140,14,2,NULL),(519,42,14,2,NULL),(520,44,14,2,NULL),(521,67,14,2,NULL),(522,25,11,2,NULL),(523,38,16,2,NULL),(524,21,1,2,NULL),(525,22,1,2,NULL),(526,23,1,2,NULL),(527,21,5,2,NULL),(528,22,5,2,NULL),(529,23,5,2,NULL),(530,21,18,2,NULL),(531,22,18,2,NULL),(532,23,18,2,NULL),(533,21,22,2,NULL),(534,22,22,2,NULL),(535,23,22,2,NULL),(536,21,7,2,NULL),(537,22,7,2,NULL),(538,23,7,2,NULL),(539,21,12,2,NULL),(540,22,12,2,NULL),(541,23,12,2,NULL),(542,21,21,2,NULL),(543,22,21,2,NULL),(544,23,21,2,NULL),(545,21,23,2,NULL),(546,22,23,2,NULL),(547,23,23,2,NULL),(548,21,25,2,NULL),(549,22,25,2,NULL),(550,23,25,2,NULL),(551,21,28,2,NULL),(552,22,28,2,NULL),(553,23,28,2,NULL),(554,21,31,2,NULL),(555,22,31,2,NULL),(556,23,31,2,NULL),(557,21,34,2,NULL),(558,22,34,2,NULL),(559,23,34,2,NULL),(560,21,36,2,NULL),(561,22,36,2,NULL),(562,23,36,2,NULL),(563,21,39,2,NULL),(564,22,39,2,NULL),(565,23,39,2,NULL),(566,21,41,2,NULL),(567,22,41,2,NULL),(568,23,41,2,NULL),(569,21,47,2,NULL),(570,22,47,2,NULL),(571,23,47,2,NULL),(572,21,54,2,NULL),(573,22,54,2,NULL),(574,23,54,2,NULL),(575,21,67,2,NULL),(576,22,67,2,NULL),(577,23,67,2,NULL),(578,21,72,2,NULL),(579,22,72,2,NULL),(580,23,72,2,NULL),(581,21,73,2,NULL),(582,22,73,2,NULL),(583,23,73,2,NULL),(584,21,75,2,NULL),(585,22,75,2,NULL),(586,23,75,2,NULL),(587,21,76,2,NULL),(588,22,76,2,NULL),(589,23,76,2,NULL),(590,21,77,2,NULL),(591,22,77,2,NULL),(592,23,77,2,NULL),(593,21,87,2,NULL),(594,22,87,2,NULL),(595,23,87,2,NULL),(596,21,94,2,NULL),(597,22,94,2,NULL),(598,23,94,2,NULL),(599,21,95,2,NULL),(600,22,95,2,NULL),(601,23,95,2,NULL),(602,21,98,2,NULL),(603,22,98,2,NULL),(604,23,98,2,NULL),(605,21,99,2,NULL),(606,22,99,2,NULL),(607,23,99,2,NULL),(608,79,18,2,NULL),(609,139,18,2,NULL),(610,140,18,2,NULL),(611,42,18,2,NULL),(612,44,18,2,NULL),(613,67,18,2,NULL),(614,6,18,2,NULL),(615,36,18,2,NULL),(616,73,18,2,NULL),(617,79,22,2,NULL),(618,139,22,2,NULL),(619,140,22,2,NULL),(620,42,22,2,NULL),(621,44,22,2,NULL),(622,67,22,2,NULL),(623,2,2,2,NULL),(624,79,1,2,NULL),(625,139,1,2,NULL),(626,140,1,2,NULL),(627,42,1,2,NULL),(628,44,1,2,NULL),(629,67,1,2,NULL),(630,1,1,2,NULL),(631,79,5,2,NULL),(632,139,5,2,NULL),(633,140,5,2,NULL),(634,42,5,2,NULL),(635,44,5,2,NULL),(636,67,5,2,NULL),(637,35,39,2,NULL),(638,150,39,2,NULL),(639,152,39,2,NULL),(640,95,39,2,NULL),(641,102,39,2,NULL),(642,103,39,2,NULL),(643,75,28,2,NULL),(644,133,15,2,NULL),(645,79,7,2,NULL),(646,79,12,2,NULL),(647,79,21,2,NULL),(648,79,23,2,NULL),(649,79,25,2,NULL),(650,79,28,2,NULL),(651,79,31,2,NULL),(652,79,34,2,NULL),(653,79,36,2,NULL),(654,79,39,2,NULL),(655,79,41,2,NULL),(656,79,47,2,NULL),(657,79,54,2,NULL),(658,79,67,2,NULL),(659,79,72,2,NULL),(660,79,73,2,NULL),(661,79,75,2,NULL),(662,79,76,2,NULL),(663,79,77,2,NULL),(664,79,87,2,NULL),(665,79,94,2,NULL),(666,79,95,2,NULL),(667,79,98,2,NULL),(668,79,99,2,NULL),(669,70,39,2,NULL),(670,129,28,2,NULL),(671,139,21,2,NULL),(672,140,21,2,NULL),(673,42,21,2,NULL),(674,44,21,2,NULL),(675,67,21,2,NULL),(676,37,39,2,NULL),(677,176,28,2,NULL),(678,139,23,2,NULL),(679,140,23,2,NULL),(680,42,23,2,NULL),(681,44,23,2,NULL),(682,67,23,2,NULL),(683,63,39,2,NULL),(684,139,25,2,NULL),(685,140,25,2,NULL),(686,42,25,2,NULL),(687,44,25,2,NULL),(688,67,25,2,NULL),(689,88,15,2,NULL),(690,97,15,2,NULL),(691,116,39,2,NULL),(692,148,15,2,NULL),(693,139,28,2,NULL),(694,140,28,2,NULL),(695,42,28,2,NULL),(696,44,28,2,NULL),(697,67,28,2,NULL),(698,121,28,2,NULL),(699,139,7,2,NULL),(700,140,7,2,NULL),(701,139,12,2,NULL),(702,140,12,2,NULL),(703,42,31,2,NULL),(704,44,31,2,NULL),(705,67,31,2,NULL),(706,139,34,2,NULL),(707,140,34,2,NULL),(708,139,36,2,NULL),(709,140,36,2,NULL),(710,139,39,2,NULL),(711,140,39,2,NULL),(712,139,41,2,NULL),(713,140,41,2,NULL),(714,139,47,2,NULL),(715,139,67,2,NULL),(716,140,47,2,NULL),(717,140,67,2,NULL),(718,139,54,2,NULL),(719,42,67,2,NULL),(720,140,54,2,NULL),(721,44,67,2,NULL),(722,139,72,2,NULL),(723,67,67,2,NULL),(724,140,72,2,NULL),(725,42,72,2,NULL),(726,139,73,2,NULL),(727,44,72,2,NULL),(728,140,73,2,NULL),(729,67,72,2,NULL),(730,139,75,2,NULL),(731,42,73,2,NULL),(732,140,75,2,NULL),(733,44,73,2,NULL),(734,139,76,2,NULL),(735,67,73,2,NULL),(736,140,76,2,NULL),(737,42,75,2,NULL),(738,139,77,2,NULL),(739,44,75,2,NULL),(740,140,77,2,NULL),(741,67,75,2,NULL),(742,139,87,2,NULL),(743,42,76,2,NULL),(744,140,87,2,NULL),(745,44,76,2,NULL),(746,139,94,2,NULL),(747,67,76,2,NULL),(748,140,94,2,NULL),(749,42,77,2,NULL),(750,139,95,2,NULL),(751,44,77,2,NULL),(752,140,95,2,NULL),(753,67,77,2,NULL),(754,139,98,2,NULL),(755,42,87,2,NULL),(756,140,98,2,NULL),(757,44,87,2,NULL),(758,139,99,2,NULL),(759,67,87,2,NULL),(760,140,99,2,NULL),(761,42,94,2,NULL),(762,39,33,2,NULL),(763,44,94,2,NULL),(764,99,28,2,NULL),(765,67,94,2,NULL),(766,42,7,2,NULL),(767,42,95,2,NULL),(768,44,7,2,NULL),(769,44,95,2,NULL),(770,67,7,2,NULL),(771,67,95,2,NULL),(772,42,12,2,NULL),(773,42,98,2,NULL),(774,44,12,2,NULL),(775,44,98,2,NULL),(776,67,12,2,NULL),(777,67,98,2,NULL),(778,42,34,2,NULL),(779,42,99,2,NULL),(780,44,34,2,NULL),(781,44,99,2,NULL),(782,67,34,2,NULL),(783,67,99,2,NULL),(784,42,36,2,NULL),(785,44,36,2,NULL),(786,67,36,2,NULL),(787,42,39,2,NULL),(788,44,39,2,NULL),(789,67,39,2,NULL),(790,42,41,2,NULL),(791,44,41,2,NULL),(792,67,41,2,NULL),(793,42,47,2,NULL),(794,44,47,2,NULL),(795,67,47,2,NULL),(796,42,54,2,NULL),(797,44,54,2,NULL),(798,67,54,2,NULL),(799,81,39,2,NULL),(800,84,39,2,NULL),(801,158,39,2,NULL),(802,135,39,2,NULL),(803,143,39,2,NULL),(804,173,39,2,NULL),(805,5,7,2,NULL),(806,101,47,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_CACHE_FILESYSTEM'),(6,'android.permission.ACCESS_COARSE_LOCATION'),(4,'android.permission.ACCESS_FINE_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.CAMERA'),(22,'android.permission.CHANGE_CONFIGURATION'),(20,'android.permission.CHANGE_WIFI_STATE'),(14,'android.permission.DELETE_CACHE_FILES'),(15,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(17,'android.permission.KILL_BACKGROUND_PROCESSES'),(13,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(9,'android.permission.SET_WALLPAPER'),(18,'android.permission.SYSTEM_ALERT_WINDOW'),(21,'android.permission.WAKE_LOCK'),(16,'android.permission.WRITE_APN_SETTINGS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'com.android.launcher.permission.INSTALL_SHORTCUT'),(11,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://',NULL,NULL,NULL),(29,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'file://',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'',NULL,NULL,NULL),(39,NULL,NULL,'file://',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'file://',NULL,NULL,NULL),(44,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,7),(12,2,8),(13,2,9),(14,3,1),(15,2,10),(16,3,2),(17,2,11),(18,3,3),(19,3,5),(20,3,7),(21,4,1),(22,4,2),(23,4,3),(24,4,7),(25,4,8),(26,4,10),(27,4,11),(28,4,12),(29,4,13),(30,4,14),(31,5,1),(32,5,2),(33,5,3),(34,5,7),(35,5,8),(36,5,9),(37,5,10),(38,5,11),(39,5,12),(40,5,13),(41,5,14),(42,6,1),(43,6,2),(44,6,3),(45,6,5),(46,6,6),(47,6,7),(48,7,1),(49,7,2),(50,7,3),(51,7,5),(52,7,7),(53,7,8),(54,7,10),(55,7,11),(56,7,15),(57,7,17),(58,7,16),(59,7,19),(60,7,18),(61,7,21),(62,7,20),(63,7,22);
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

-- Dump completed on 2015-10-12  3:30:31
