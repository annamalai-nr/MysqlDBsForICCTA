-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_740
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (32,'ChangeContent'),(23,'SEND'),(26,'action.add_device_admin'),(28,'action.added_device_admin'),(35,'action.boot'),(24,'action.check_live'),(25,'action.finish_call'),(36,'action.load_task'),(27,'action.send_sms'),(31,'action.shutdown'),(30,'android.app.action.ADD_DEVICE_ADMIN'),(18,'android.app.action.DEVICE_ADMIN_ENABLED'),(5,'android.intent.action.ACTION_SHUTDOWN'),(13,'android.intent.action.BATTERY_CHANGED'),(3,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CFF'),(6,'android.intent.action.DATE_CHANGED'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.NEW_OUTGOING_CALL'),(8,'android.intent.action.PACKAGE_ADDED'),(4,'android.intent.action.PHONE_STATE'),(7,'android.intent.action.REBOOT'),(29,'android.intent.action.SCREEN_OFF'),(33,'android.intent.action.SCREEN_ON'),(16,'android.intent.action.SERVICE_STATE'),(15,'android.intent.action.SIG_STR'),(11,'android.intent.action.TIME_CHANGED'),(17,'android.intent.action.USER_PRESENT'),(34,'android.intent.action.VIEW'),(10,'android.intent.action.WALLPAPER_CHANGED'),(12,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.provider.Telephony.SMS_RECEIVED'),(21,'android.settings.LOCATION_SOURCE_SETTINGS'),(20,'android.settings.WIRELESS_SETTINGS'),(22,'com.android.alarmclock.ALARM_ALERT'),(19,'com.android.vending.INSTALL_REFERRER');
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
INSERT INTO `Applications` VALUES (1,'test.jni',1),(2,'skz.skz',5),(3,'com.android.providers.downloadsmanager',7),(4,'com.google.android.kuazh',5),(5,'cn.com.picvision.dolphinradio',1),(6,'com.mj.iCalendar',1),(7,'com.talkweb.ycya.free',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'test.jni.JniTestActivity'),(2,1,'test.jni.ReceiverTest'),(3,2,'skz.skz.SafeKidZone'),(4,2,'skz.skz.GpsPlusService'),(5,2,'skz.skz.broadCastReceiver'),(6,3,'com.android.providers.downloadsmanager.DownloadManageService'),(7,3,'com.android.providers.downloadsmanager.DownloadCompleteReceiver'),(8,4,'com.google.android.device.DeviceAdminAddActivity'),(9,4,'com.google.android.client.Remembkeep'),(10,4,'com.google.android.client.Andou'),(11,4,'com.google.android.client.BootReceiver'),(12,4,'com.google.android.client.ShutdownReceiver'),(13,4,'com.google.android.client.SmsMessageReceiver'),(14,4,'com.google.android.client.LiveReceiver'),(15,4,'com.google.android.client.WakeLockReceiver'),(16,4,'com.google.android.device.DeviceAdmin'),(17,6,'com.mj.iCalendar.iBook'),(18,5,'cn.com.picvision.dolphinradio.MMAdActivity'),(19,6,'com.admob.android.ads.AdMobActivity'),(20,2,'skz.skz.Task'),(21,6,'com.mj.iCalendar.SmsReceiver'),(22,5,'cn.com.picvision.dolphinradio.Boot'),(23,6,'com.admob.android.ads.analytics.InstallReceiver'),(24,5,'cn.com.picvision.dolphinradio.Main'),(25,5,'cn.com.picvision.dolphinradio.Home'),(26,5,'cn.com.picvision.dolphinradio.Music'),(27,5,'cn.com.picvision.dolphinradio.Player'),(28,5,'cn.com.picvision.dolphinradio.SetMain'),(29,5,'cn.com.picvision.dolphinradio.Clocking'),(30,5,'cn.com.picvision.dolphinradio.ClockSet'),(31,5,'cn.com.picvision.dolphinradio.About'),(32,5,'cn.com.picvision.dolphinradio.Help'),(33,5,'cn.com.picvision.dolphinradio.service.WfiAcquire'),(34,5,'cn.com.picvision.dolphinradio.Broadcast.BootReceiver'),(35,5,'cn.com.picvision.dolphinradio.Broadcast.SMSReceiver'),(36,4,'com.google.android.client.u'),(37,4,'com.google.android.client.t'),(38,4,'com.google.android.client.e'),(39,4,'android.app.admin.DeviceAdminReceiver'),(40,4,'com.google.android.client.v'),(41,4,'com.google.android.client.g'),(42,4,'com.google.android.client.ae'),(43,5,'cn.com.picvision.dolphinradio.ClockSet$3'),(44,5,'cn.com.picvision.dolphinradio.Player$Player_Change'),(45,5,'cn.com.picvision.dolphinradio.Home$2'),(46,5,'cn.com.picvision.dolphinradio.Main$ChangeContent'),(47,7,'com.talkweb.ycya.LoginActivity'),(48,7,'com.talkweb.main.MainActivity'),(49,7,'com.talkweb.mzzd.MzzdActivity'),(50,7,'com.talkweb.mzzd.MzzdFreeResultActivity'),(51,7,'com.talkweb.comm.MoreExctingActivity'),(52,7,'com.talkweb.mzzd.MzzdChargeResultActivity'),(53,7,'com.talkweb.xzpd.XzpdActivity'),(54,7,'com.talkweb.xzpd.XzpdXzxzActivity'),(55,7,'com.talkweb.xzpd.XzpdFreeResultActivity'),(56,7,'com.talkweb.xzpd.XzpdChargeResultActivity'),(57,7,'com.talkweb.xzpd.XzpdForbiddenParadiseActivity'),(58,7,'com.talkweb.xzpd.XzpdPersueSecretsActivity'),(59,7,'com.talkweb.yhlq.YhlqActivity'),(60,7,'com.talkweb.qrmj.QrmjActivity'),(61,7,'com.talkweb.qrmj.QrmjResultActivity'),(62,7,'com.talkweb.mzzd.ContactActivity'),(63,7,'com.talkweb.menu.MenuActivity'),(64,7,'com.talkweb.menu.FavoriteListActivity'),(65,7,'com.talkweb.menu.FavoriteRequestActivity'),(66,7,'com.talkweb.menu.HelpActivity'),(67,7,'com.talkweb.menu.UpdateActivity'),(68,7,'com.talkweb.menu.CompanyIntroActivity'),(69,7,'com.talkweb.menu.WebIntroActivity'),(70,7,'com.talkweb.menu.WapIntroActivity'),(71,7,'com.talkweb.mzzd.MzzdQueryResultActivity'),(72,7,'com.talkweb.yhlq.YaoQianActivity'),(73,7,'com.talkweb.yhlq.CqProcessActivity'),(74,7,'com.talkweb.yhlq.ZhiJiaoActivity'),(75,7,'com.talkweb.yhlq.QianResultActivity'),(76,7,'com.talkweb.xzpd.XzpdRequestChargeResultActivity'),(77,7,'com.talkweb.xzpd.XzpdRequestPersueSecretsActivity'),(78,7,'com.talkweb.xzpd.XzpdRequestForbiddenParadiseActivity'),(79,7,'com.talkweb.main.MainActivity$7'),(80,7,'com.talkweb.qrmj.QrmjResultActivity$1'),(81,7,'com.talkweb.xzpd.XzpdActivity$1'),(82,7,'com.talkweb.yhlq.YaoQianActivity$1$1'),(83,7,'com.talkweb.yhlq.YhlqActivity$1'),(84,7,'com.talkweb.xzpd.XzpdActivity$2'),(85,7,'com.talkweb.yhlq.CqProcessActivity$1$1'),(86,7,'com.talkweb.ycya.LoginActivity$MyThread'),(87,7,'com.talkweb.mzzd.MzzdActivity$2'),(88,7,'com.talkweb.yhlq.YaoQianActivity$3'),(89,7,'com.talkweb.main.MainActivity$2'),(90,7,'com.talkweb.yhlq.QianResultActivity$2'),(91,7,'com.talkweb.net.APNOpera'),(92,7,'com.talkweb.mzzd.MzzdFreeResultActivity$1'),(93,7,'com.talkweb.xzpd.XzpdFreeResultActivity$1'),(94,7,'cn.com.go108.feecontrol.APNOpera'),(95,7,'com.talkweb.comm.Utils'),(96,7,'com.talkweb.yhlq.QianResultActivity$1'),(97,7,'com.talkweb.qrmj.QrmjActivity$3$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'pdus'),(2,5,'android.intent.extra.PHONE_NUMBER'),(3,19,'tr'),(4,19,'u'),(5,19,'p'),(6,19,'t'),(7,19,'json'),(8,19,'int'),(9,19,'c'),(10,22,'(.*)'),(11,19,'a'),(12,19,'ap'),(13,19,'rd'),(14,19,'su'),(15,22,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(16,19,'sku'),(17,19,'ru'),(18,19,'mi'),(19,19,'sc'),(20,19,'sin'),(21,19,'oi'),(22,19,'ad'),(23,19,'cbo'),(24,19,'au'),(25,19,'nosk'),(26,19,'skd'),(27,19,'or'),(28,19,'o'),(29,20,'pdus'),(30,19,'b'),(31,19,'si'),(32,19,'cs'),(33,19,'$'),(34,19,'msm'),(35,9,'retries'),(36,19,'s'),(37,22,'referrer'),(38,19,'sd'),(39,22,'ADMOB_PUBLISHER_ID'),(40,22,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(41,13,'pdus'),(42,9,'smscenter'),(43,26,'channels'),(44,27,'position'),(45,33,'channle'),(46,10,'tel'),(47,34,'ChannelID'),(48,26,'channel'),(49,29,'channel'),(50,9,'task_key'),(51,9,'recipient'),(52,9,'content'),(53,23,'channel'),(54,25,'channelName'),(55,21,'PVMobAd_App_Key'),(56,18,'SWITCH'),(57,29,'position'),(58,25,'channelList'),(59,47,'strArray'),(60,52,'half_gender'),(61,57,'loverInfoArray'),(62,47,'gender'),(63,56,'APP_CHANNEL'),(64,47,'APP_CHANNEL'),(65,50,'APP_CHANNEL'),(66,58,'APP_CHANNEL'),(67,72,'APP_CHANNEL'),(68,52,'APP_CHANNEL'),(69,57,'APP_CHANNEL'),(70,45,'APP_CHANNEL'),(71,46,'APP_CHANNEL'),(72,70,'APP_CHANNEL'),(73,71,'time'),(74,46,'nameStr'),(75,56,'APP_NAME'),(76,47,'APP_NAME'),(77,50,'APP_NAME'),(78,58,'APP_NAME'),(79,72,'APP_NAME'),(80,52,'APP_NAME'),(81,63,'APP_NAME'),(82,57,'APP_NAME'),(83,45,'APP_NAME'),(84,72,'strArray'),(85,50,'starID'),(86,52,'strArray'),(87,72,'str'),(88,63,'APP_CHANNEL'),(89,47,'isreturn'),(90,47,'nameStr'),(91,45,'phone'),(92,58,'strArray'),(93,52,'gender'),(94,46,'APP_NAME'),(95,70,'APP_NAME'),(96,52,'female_xzID'),(97,50,'xzName'),(98,52,'male_xzID'),(99,45,'appload'),(100,70,'time');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'r',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'r',1,29,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,21,'r',1,NULL,NULL),(21,22,'a',1,NULL,NULL),(22,23,'r',1,NULL,NULL),(23,24,'a',1,NULL,NULL),(24,25,'a',1,NULL,NULL),(25,26,'a',1,NULL,NULL),(26,27,'a',1,NULL,NULL),(27,28,'a',1,NULL,NULL),(28,29,'a',1,NULL,NULL),(29,30,'a',1,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,33,'s',0,NULL,NULL),(33,34,'r',1,NULL,NULL),(34,35,'r',1,NULL,NULL),(35,36,'r',1,NULL,NULL),(36,37,'r',1,NULL,NULL),(37,38,'r',1,NULL,NULL),(38,16,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,46,'r',1,NULL,NULL),(44,47,'a',1,NULL,NULL),(45,48,'a',0,NULL,NULL),(46,49,'a',0,NULL,NULL),(47,50,'a',0,NULL,NULL),(48,51,'a',0,NULL,NULL),(49,52,'a',0,NULL,NULL),(50,53,'a',0,NULL,NULL),(51,54,'a',0,NULL,NULL),(52,55,'a',0,NULL,NULL),(53,56,'a',0,NULL,NULL),(54,57,'a',0,NULL,NULL),(55,58,'a',0,NULL,NULL),(56,59,'a',0,NULL,NULL),(57,60,'a',0,NULL,NULL),(58,61,'a',0,NULL,NULL),(59,62,'a',0,NULL,NULL),(60,63,'a',0,NULL,NULL),(61,64,'a',0,NULL,NULL),(62,65,'a',0,NULL,NULL),(63,66,'a',0,NULL,NULL),(64,67,'a',0,NULL,NULL),(65,68,'a',0,NULL,NULL),(66,69,'a',0,NULL,NULL),(67,70,'a',0,NULL,NULL),(68,71,'a',0,NULL,NULL),(69,72,'a',0,NULL,NULL),(70,73,'a',0,NULL,NULL),(71,74,'a',0,NULL,NULL),(72,75,'a',0,NULL,NULL),(73,76,'a',0,NULL,NULL),(74,77,'a',0,NULL,NULL),(75,78,'a',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,7),(3,3,3),(4,4,3),(5,5,5),(6,6,3),(7,7,3),(8,8,14),(9,9,10),(10,10,15),(11,11,13),(12,12,8),(13,13,8),(14,14,12),(15,15,29),(16,16,25),(17,17,26),(18,18,31),(19,19,24),(20,20,24),(21,21,29),(22,22,23),(23,23,24),(24,24,11),(25,25,13),(26,26,26),(27,27,24),(28,28,27),(29,29,13),(30,30,25),(31,31,24),(32,32,26),(33,33,25),(34,34,27),(35,35,34),(36,36,25),(37,37,28),(38,38,27),(39,39,26),(40,40,25),(41,41,24),(42,42,26),(43,43,24),(44,44,25),(45,45,25),(46,46,25),(47,47,26),(48,48,30),(49,49,33),(50,50,45),(51,50,47),(52,50,72),(53,50,56),(54,50,50),(55,50,52),(56,50,57),(57,50,58),(58,51,72),(59,51,57),(60,51,52),(61,51,50),(62,51,47),(63,51,58),(64,52,72),(65,53,52),(66,53,58),(67,53,72),(68,53,57),(69,53,47),(70,53,50),(71,54,58),(72,54,47),(73,54,57),(74,54,69),(75,54,52),(76,54,50),(77,54,72),(78,55,50),(79,55,52),(80,55,47),(81,55,58),(82,55,72),(83,55,57),(84,55,56),(85,56,52),(86,56,50),(87,56,47),(88,56,72),(89,56,58),(90,56,57),(91,57,50),(92,57,52),(93,57,58),(94,57,72),(95,57,57),(96,57,56),(97,57,45),(98,57,47),(99,58,52),(100,58,50),(101,58,57),(102,58,58),(103,58,72),(104,58,70),(105,58,47),(106,59,47),(107,59,58),(108,59,57),(109,59,56),(110,59,72),(111,59,52),(112,59,50),(113,60,44),(114,61,47),(115,61,46),(116,61,50),(117,61,52),(118,61,72),(119,61,58),(120,61,57),(121,62,59),(122,63,58),(123,63,57),(124,63,72),(125,63,52),(126,63,69),(127,63,50),(128,63,47),(129,64,45),(130,65,58),(131,65,72),(132,65,57),(133,65,47),(134,65,45),(135,65,50),(136,65,48),(137,65,52),(138,66,57),(139,66,58),(140,66,47),(141,66,50),(142,66,52),(143,66,72),(144,67,58),(145,67,45),(146,67,47),(147,67,50),(148,67,52),(149,67,72),(150,67,57),(151,67,56),(152,68,45),(153,68,50),(154,68,47),(155,68,72),(156,68,52),(157,68,58),(158,68,57),(159,68,56),(160,69,50),(161,69,47),(162,69,57),(163,69,72),(164,69,58),(165,69,52),(166,70,52),(167,70,72),(168,70,50),(169,70,47),(170,70,58),(171,70,57),(172,71,72),(173,71,56),(174,71,57),(175,71,70),(176,71,58),(177,71,45),(178,71,47),(179,71,63),(180,71,46),(181,71,50),(182,71,52),(183,72,45),(184,73,45),(185,73,47),(186,73,63),(187,73,46),(188,73,56),(189,73,57),(190,73,58),(191,73,72),(192,73,52),(193,73,70),(194,73,50),(195,74,47),(196,74,45),(197,74,57),(198,74,58),(199,74,56),(200,74,72),(201,74,52),(202,74,50),(203,75,45),(204,76,59),(205,77,58),(206,77,56),(207,77,72),(208,77,57),(209,77,52),(210,77,50),(211,77,47),(212,77,45),(213,78,45),(214,79,47),(215,79,52),(216,79,50),(217,79,72),(218,79,57),(219,79,58),(220,80,45),(221,81,52),(222,81,50),(223,81,58),(224,81,72),(225,81,57),(226,81,47),(227,82,59);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.android.providers.downloadsmanager.DownloadCompleteReceiver: void onReceive(android.content.Context,android.content.Intent)>',45,'s',NULL),(2,7,'<com.android.providers.downloadsmanager.DownloadCompleteReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(3,20,'<skz.skz.Task: java.lang.Boolean doInBackground(java.lang.Void[])>',17,'s',NULL),(4,3,'<skz.skz.SafeKidZone: void _launchINETOptions()>',3,'a',NULL),(5,5,'<skz.skz.broadCastReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'a',NULL),(6,3,'<skz.skz.SafeKidZone: void _launchGPSOptions()>',3,'a',NULL),(7,3,'<skz.skz.SafeKidZone: void onCreate(android.os.Bundle)>',8,'s',NULL),(8,14,'<com.google.android.client.LiveReceiver: void onReceive(android.content.Context,android.content.Intent)>',24,'s',NULL),(9,10,'<com.google.android.client.Andou: void g()>',40,'s',NULL),(10,15,'<com.google.android.client.WakeLockReceiver: void onReceive(android.content.Context,android.content.Intent)>',26,'s',NULL),(11,13,'<com.google.android.client.SmsMessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',102,'s',NULL),(12,8,'<com.google.android.device.DeviceAdminAddActivity: void g()>',6,'s',NULL),(13,8,'<com.google.android.device.DeviceAdminAddActivity: void b()>',7,'a',NULL),(14,12,'<com.google.android.client.ShutdownReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(15,43,'<cn.com.picvision.dolphinradio.ClockSet$3: void onClick(android.view.View)>',145,'r',NULL),(16,26,'<cn.com.picvision.dolphinradio.Music: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(17,44,'<cn.com.picvision.dolphinradio.Player$Player_Change: void onClick(android.view.View)>',209,'r',NULL),(18,32,'<cn.com.picvision.dolphinradio.Help: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(19,45,'<cn.com.picvision.dolphinradio.Home$2: void onClick(android.content.DialogInterface,int)>',10,'r',NULL),(20,25,'<cn.com.picvision.dolphinradio.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',44,'r',NULL),(21,30,'<cn.com.picvision.dolphinradio.ClockSet: void back()>',7,'r',NULL),(22,24,'<cn.com.picvision.dolphinradio.Main: void onCreate(android.os.Bundle)>',14,'s',NULL),(23,25,'<cn.com.picvision.dolphinradio.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(24,11,'<com.google.android.client.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(25,13,'<com.google.android.client.SmsMessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',127,'s',NULL),(26,27,'<cn.com.picvision.dolphinradio.Player: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(27,45,'<cn.com.picvision.dolphinradio.Home$2: void onClick(android.content.DialogInterface,int)>',17,'r',NULL),(28,28,'<cn.com.picvision.dolphinradio.SetMain: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(29,13,'<com.google.android.client.SmsMessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',55,'s',NULL),(30,26,'<cn.com.picvision.dolphinradio.Music: boolean onOptionsItemSelected(android.view.MenuItem)>',60,'r',NULL),(31,25,'<cn.com.picvision.dolphinradio.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',56,'r',NULL),(32,27,'<cn.com.picvision.dolphinradio.Player: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'r',NULL),(33,26,'<cn.com.picvision.dolphinradio.Music: boolean onOptionsItemSelected(android.view.MenuItem)>',66,'r',NULL),(34,28,'<cn.com.picvision.dolphinradio.SetMain: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',21,'r',NULL),(35,35,'<cn.com.picvision.dolphinradio.Broadcast.SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',20,'r',NULL),(36,26,'<cn.com.picvision.dolphinradio.Music: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'r',NULL),(37,29,'<cn.com.picvision.dolphinradio.Clocking: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(38,28,'<cn.com.picvision.dolphinradio.SetMain: boolean onKeyDown(int,android.view.KeyEvent)>',10,'r',NULL),(39,44,'<cn.com.picvision.dolphinradio.Player$Player_Change: void onClick(android.view.View)>',150,'r',NULL),(40,26,'<cn.com.picvision.dolphinradio.Music: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'r',NULL),(41,25,'<cn.com.picvision.dolphinradio.Home: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(42,27,'<cn.com.picvision.dolphinradio.Player: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'r',NULL),(43,25,'<cn.com.picvision.dolphinradio.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',50,'r',NULL),(44,26,'<cn.com.picvision.dolphinradio.Music: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'r',NULL),(45,26,'<cn.com.picvision.dolphinradio.Music: boolean onOptionsItemSelected(android.view.MenuItem)>',72,'r',NULL),(46,26,'<cn.com.picvision.dolphinradio.Music: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'r',NULL),(47,27,'<cn.com.picvision.dolphinradio.Player: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'r',NULL),(48,31,'<cn.com.picvision.dolphinradio.About: boolean onKeyDown(int,android.view.KeyEvent)>',8,'r',NULL),(49,34,'<cn.com.picvision.dolphinradio.Broadcast.BootReceiver: void clockPlay(android.content.Context,java.lang.String,java.lang.String,java.lang.String)>',34,'a',NULL),(50,79,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(51,80,'<com.talkweb.qrmj.QrmjResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(52,75,'<com.talkweb.yhlq.QianResultActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(53,81,'<com.talkweb.xzpd.XzpdActivity$1: void onClick(android.view.View)>',7,'a',NULL),(54,82,'<com.talkweb.yhlq.YaoQianActivity$1$1: void run()>',29,'a',NULL),(55,83,'<com.talkweb.yhlq.YhlqActivity$1: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(56,84,'<com.talkweb.xzpd.XzpdActivity$2: void onClick(android.view.View)>',7,'a',NULL),(57,79,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(58,85,'<com.talkweb.yhlq.CqProcessActivity$1$1: void run()>',65,'a',NULL),(59,59,'<com.talkweb.yhlq.YhlqActivity: void startYaoQianActivity()>',4,'a',NULL),(60,86,'<com.talkweb.ycya.LoginActivity$MyThread: void run()>',11,'a',NULL),(61,87,'<com.talkweb.mzzd.MzzdActivity$2: void onClick(android.view.View)>',7,'a',NULL),(62,62,'<com.talkweb.mzzd.ContactActivity: void readContactst1(java.util.ArrayList)>',4,'p',NULL),(63,88,'<com.talkweb.yhlq.YaoQianActivity$3: void run()>',15,'a',NULL),(64,89,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(65,51,'<com.talkweb.comm.MoreExctingActivity: void linkSite(com.talkweb.comm.ExctingProductBean)>',14,'a',NULL),(66,90,'<com.talkweb.yhlq.QianResultActivity$2: void onClick(android.view.View)>',9,'a',NULL),(67,91,'<com.talkweb.net.APNOpera: long getPreferredApnId()>',5,'p',NULL),(68,79,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(69,92,'<com.talkweb.mzzd.MzzdFreeResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(70,93,'<com.talkweb.xzpd.XzpdFreeResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(71,94,'<cn.com.go108.feecontrol.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(72,89,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(73,94,'<cn.com.go108.feecontrol.APNOpera: long getPreferredApnId()>',5,'p',NULL),(74,79,'<com.talkweb.main.MainActivity$7: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(75,48,'<com.talkweb.main.MainActivity: void showRecommedDialog()>',5,'a',NULL),(76,95,'<com.talkweb.comm.Utils: void readContactst2(java.util.ArrayList,android.content.ContentResolver,android.os.Handler)>',25,'p',NULL),(77,91,'<com.talkweb.net.APNOpera: java.lang.String readCurrentAPN()>',10,'p',NULL),(78,89,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(79,96,'<com.talkweb.yhlq.QianResultActivity$1: void onClick(android.view.View)>',7,'a',NULL),(80,89,'<com.talkweb.main.MainActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(81,97,'<com.talkweb.qrmj.QrmjActivity$3$1: void run()>',78,'a',NULL),(82,95,'<com.talkweb.comm.Utils: void readContactst2(java.util.ArrayList,android.content.ContentResolver,android.os.Handler)>',4,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,20),(2,7,21),(3,10,24),(4,11,25),(5,12,26),(6,13,27),(7,14,28),(8,15,30),(9,16,31),(10,17,32),(11,18,32),(12,19,32),(13,20,32),(14,21,32),(15,22,32),(16,23,32),(17,25,34),(18,26,34),(19,27,35),(20,28,32),(21,29,36),(22,30,32),(23,31,34),(24,32,27),(25,33,32),(26,34,32),(27,35,32),(28,36,32),(29,37,32),(30,38,32),(31,39,32),(32,40,32),(33,41,32),(34,42,32),(35,43,32),(36,44,32),(37,45,32),(38,46,32),(39,47,32),(40,48,32),(41,49,32),(42,50,32),(43,51,32),(44,67,34),(45,68,34),(46,75,34);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/android/providers/downloadsmanager/DownloadManageService'),(2,2,'com/android/providers/downloadsmanager/DownloadManageService'),(3,4,'skz/skz/GpsPlusService'),(4,6,'skz/skz/SafeKidZone'),(5,9,'skz/skz/GpsPlusService'),(6,10,'com/google/android/client/Remembkeep'),(7,11,'com/google/android/client/Remembkeep'),(8,12,'com/google/android/client/Remembkeep'),(9,13,'com/google/android/client/Remembkeep'),(10,14,'com/google/android/client/Remembkeep'),(11,16,'com/google/android/client/Remembkeep'),(12,24,'cn/com/picvision/dolphinradio/service/WfiAcquire'),(13,25,'com.android.browser.BrowserActivity'),(14,27,'com/google/android/client/Remembkeep'),(15,26,'com.android.browser.BrowserActivity'),(16,29,'com/google/android/client/Remembkeep'),(17,31,'com.android.settings.WirelessSettings'),(18,32,'com/google/android/client/Remembkeep'),(19,52,'cn/com/picvision/dolphinradio/Main'),(20,53,'com/talkweb/menu/HelpActivity'),(21,54,'com/talkweb/comm/MoreExctingActivity'),(22,55,'com/talkweb/main/MainActivity'),(23,56,'com/talkweb/xzpd/XzpdXzxzActivity'),(24,57,'com/talkweb/yhlq/ZhiJiaoActivity'),(25,58,'com/talkweb/yhlq/QianResultActivity'),(26,59,'com/talkweb/xzpd/XzpdXzxzActivity'),(27,60,'com/talkweb/comm/MoreExctingActivity'),(28,61,'com/talkweb/yhlq/QianResultActivity'),(29,62,'com/talkweb/yhlq/YaoQianActivity'),(30,63,'com/talkweb/main/MainActivity'),(31,64,'com/talkweb/mzzd/ContactActivity'),(32,65,'com/talkweb/yhlq/ZhiJiaoActivity'),(33,66,'com/talkweb/yhlq/YhlqActivity'),(34,69,'com/talkweb/main/MainActivity'),(35,70,'com/talkweb/menu/CompanyIntroActivity'),(36,71,'com/talkweb/comm/MoreExctingActivity'),(37,72,'com/talkweb/comm/MoreExctingActivity'),(38,73,'com/talkweb/xzpd/XzpdActivity'),(39,74,'com/talkweb/menu/WebIntroActivity'),(40,76,'com/talkweb/qrmj/QrmjActivity'),(41,77,'com/talkweb/comm/MoreExctingActivity'),(42,78,'com/talkweb/mzzd/MzzdActivity'),(43,79,'com/talkweb/qrmj/QrmjResultActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,25,1),(2,26,2),(3,67,4),(4,68,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,13,'content'),(2,13,'recipient'),(3,15,'android.app.extra.DEVICE_ADMIN'),(4,15,'android.app.extra.ADD_EXPLANATION'),(5,17,'position'),(6,17,'content'),(7,18,'content'),(8,19,'content'),(9,19,'position'),(10,19,'channel'),(11,20,'content'),(12,21,'content'),(13,22,'content'),(14,23,'position'),(15,23,'content'),(16,28,'content'),(17,29,'task_key'),(18,29,'recipient'),(19,30,'content'),(20,32,'content'),(21,32,'recipient'),(22,33,'content'),(23,34,'content'),(24,35,'content'),(25,36,'content'),(26,37,'position'),(27,37,'content'),(28,38,'content'),(29,38,'ChannelID'),(30,39,'content'),(31,39,'channels'),(32,39,'channel'),(33,40,'content'),(34,41,'position'),(35,41,'content'),(36,42,'content'),(37,43,'content'),(38,44,'content'),(39,45,'position'),(40,45,'content'),(41,46,'content'),(42,47,'content'),(43,48,'content'),(44,49,'content'),(45,50,'content'),(46,51,'content'),(47,52,'channel'),(48,57,'time'),(49,58,'strArray'),(50,58,'str'),(51,61,'strArray'),(52,61,'str'),(53,63,'appload'),(54,65,'time'),(55,75,'sms_body'),(56,76,'loverInfoArray'),(57,79,'strArray');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,3),(6,6,4),(7,7,3),(8,8,5),(9,9,2),(10,10,11),(11,10,7),(12,10,12),(13,10,8),(14,10,9),(15,10,10),(16,10,6),(17,10,15),(18,10,4),(19,10,16),(20,10,13),(21,10,14),(22,11,17),(23,12,18),(24,13,1),(25,14,1),(26,15,2),(27,18,14),(28,19,19),(29,26,3),(30,27,4),(31,28,22),(32,29,23),(33,30,29),(34,31,29),(35,32,29),(36,33,29),(37,34,29),(38,35,29),(39,36,29),(40,37,29),(41,38,29),(42,39,29),(43,40,29),(44,41,29),(45,42,29),(46,43,2),(47,44,2),(48,45,2),(49,46,2),(50,47,2),(51,48,2),(52,49,2),(53,50,2),(54,51,2),(55,52,2),(56,53,2),(57,54,2),(58,55,2),(59,56,29),(60,57,29),(61,58,29),(62,59,29),(63,60,29),(64,61,29),(65,62,29),(66,63,29),(67,64,29),(68,65,29),(69,66,29),(70,67,29),(71,68,29),(72,69,33),(73,70,33),(74,71,33),(75,72,33),(76,73,33),(77,74,33),(78,75,33),(79,76,33),(80,77,33),(81,78,33),(82,79,33),(83,80,33),(84,81,33),(85,82,32),(86,83,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,2),(4,5,3),(5,6,3),(6,7,2),(7,8,2),(8,13,1),(9,14,1),(10,16,1),(11,17,3),(12,20,3),(13,21,3),(14,22,3),(15,23,3),(16,24,3),(17,25,3),(18,83,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,75,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.android.providers.downloadsmanager'),(2,2,'com.android.providers.downloadsmanager'),(3,4,'skz.skz'),(4,6,'skz.skz'),(5,9,'skz.skz'),(6,10,'com.google.android.kuazh'),(7,11,'com.google.android.kuazh'),(8,12,'com.google.android.kuazh'),(9,13,'com.google.android.kuazh'),(10,14,'com.google.android.kuazh'),(11,16,'com.google.android.kuazh'),(12,24,'cn.com.picvision.dolphinradio'),(13,25,'com.android.browser'),(14,27,'com.google.android.kuazh'),(15,26,'com.android.browser'),(16,29,'com.google.android.kuazh'),(17,31,'com.android.settings'),(18,32,'com.google.android.kuazh'),(19,52,'cn.com.picvision.dolphinradio'),(20,53,'com.talkweb.ycya.free'),(21,54,'com.talkweb.ycya.free'),(22,55,'com.talkweb.ycya.free'),(23,56,'com.talkweb.ycya.free'),(24,57,'com.talkweb.ycya.free'),(25,58,'com.talkweb.ycya.free'),(26,59,'com.talkweb.ycya.free'),(27,60,'com.talkweb.ycya.free'),(28,61,'com.talkweb.ycya.free'),(29,62,'com.talkweb.ycya.free'),(30,63,'com.talkweb.ycya.free'),(31,64,'com.talkweb.ycya.free'),(32,65,'com.talkweb.ycya.free'),(33,66,'com.talkweb.ycya.free'),(34,69,'com.talkweb.ycya.free'),(35,70,'com.talkweb.ycya.free'),(36,71,'com.talkweb.ycya.free'),(37,72,'com.talkweb.ycya.free'),(38,73,'com.talkweb.ycya.free'),(39,74,'com.talkweb.ycya.free'),(40,76,'com.talkweb.ycya.free'),(41,77,'com.talkweb.ycya.free'),(42,78,'com.talkweb.ycya.free'),(43,79,'com.talkweb.ycya.free');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,7,0),(6,7,0),(7,11,0),(8,12,0),(9,13,0),(10,14,0),(11,15,0),(12,16,0),(13,17,0),(14,18,0),(15,20,0),(16,21,0),(17,23,0),(18,5,0),(19,22,0),(20,24,0),(21,25,0),(22,26,0),(23,27,0),(24,28,0),(25,29,0),(26,33,0),(27,33,0),(28,33,0),(29,34,0),(30,35,0),(31,36,0),(32,37,0),(33,38,0),(34,11,0),(35,14,0),(36,12,0),(37,39,0),(38,40,0),(39,41,0),(40,42,0),(41,13,0),(42,15,0),(43,35,0),(44,36,0),(45,37,0),(46,38,0),(47,11,0),(48,14,0),(49,12,0),(50,39,0),(51,40,0),(52,41,0),(53,42,0),(54,13,0),(55,15,0),(56,35,0),(57,36,0),(58,37,0),(59,38,0),(60,11,0),(61,14,0),(62,12,0),(63,39,0),(64,40,0),(65,41,0),(66,42,0),(67,13,0),(68,15,0),(69,35,0),(70,36,0),(71,37,0),(72,38,0),(73,11,0),(74,14,0),(75,12,0),(76,39,0),(77,40,0),(78,41,0),(79,42,0),(80,13,0),(81,15,0),(82,43,0),(83,44,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,0,0),(5,4,1,0),(6,5,0,0),(7,6,1,0),(8,7,1,0),(9,7,0,0),(10,8,0,0),(11,9,0,0),(12,10,0,0),(13,11,0,0),(14,12,0,0),(15,13,1,0),(16,14,0,0),(17,15,1,0),(18,16,1,0),(19,17,1,0),(20,18,1,0),(21,19,1,0),(22,20,1,0),(23,21,1,0),(24,22,0,0),(25,23,0,0),(26,23,0,0),(27,24,0,0),(28,26,1,0),(29,25,0,0),(30,27,1,0),(31,28,0,0),(32,29,0,0),(33,30,1,0),(34,31,1,0),(35,32,1,0),(36,33,1,0),(37,34,1,0),(38,35,1,0),(39,36,1,0),(40,37,1,0),(41,38,1,0),(42,39,1,0),(43,40,1,0),(44,41,1,0),(45,42,1,0),(46,43,1,0),(47,44,1,0),(48,45,1,0),(49,46,1,0),(50,47,1,0),(51,48,1,0),(52,49,0,0),(53,50,0,0),(54,51,0,0),(55,52,0,0),(56,53,0,0),(57,54,0,0),(58,55,0,0),(59,56,0,0),(60,57,0,0),(61,58,0,0),(62,59,0,0),(63,60,0,0),(64,61,0,0),(65,63,0,0),(66,64,0,0),(67,65,1,0),(68,65,1,0),(69,66,0,0),(70,68,0,0),(71,69,0,0),(72,70,0,0),(73,72,0,0),(74,74,0,0),(75,75,1,0),(76,78,0,0),(77,79,0,0),(78,80,0,0),(79,81,0,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_DOWNLOAD_MANAGER'),(14,'android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED'),(7,'android.permission.ACCESS_FINE_LOCATION'),(8,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(11,'android.permission.ACCESS_MOCK_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(26,'android.permission.ACCESS_WIFI_STATE'),(29,'android.permission.BIND_DEVICE_ADMIN'),(18,'android.permission.CALL_PHONE'),(28,'android.permission.CHANGE_NETWORK_STATE'),(27,'android.permission.CHANGE_WIFI_STATE'),(24,'android.permission.DEVICE_POWER'),(20,'android.permission.DISABLE_KEYGUARD'),(15,'android.permission.GET_TASKS'),(16,'android.permission.HARDWARE_TEST'),(6,'android.permission.INTERNET'),(5,'android.permission.PROCESS_OUTGOING_CALLS'),(17,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_PHONE_STATE'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(2,'android.permission.RECEIVE_SMS'),(31,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(30,'android.permission.SET_WALLPAPER'),(21,'android.permission.SYSTEM_ALERT_WINDOW'),(12,'android.permission.WAKE_LOCK'),(19,'android.permission.WRITE_CONTACTS'),(25,'android.permission.WRITE_EXTERNAL_STORAGE'),(22,'android.permission.WRITE_SETTINGS'),(23,'com.android.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://211.95.79.112/wapforum/index.jsp?imsi=NULL-CONSTANT&software=DolphinRadioV1.0AD1.5',NULL,NULL,NULL),(2,NULL,NULL,'http://211.95.79.112/wapforum/index.jsp?imsi=(.*)&software=DolphinRadioV1.0AD1.5',NULL,NULL,NULL),(3,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'http://www.go108.com.cn/mobile/Client/apk/ycya.apk',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,62,3),(2,67,6),(3,71,7),(4,73,8),(5,76,9),(6,77,10),(7,82,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,3,3),(14,3,4),(15,3,6),(16,3,10),(17,3,13),(18,3,14),(19,4,1),(20,4,2),(21,4,3),(22,4,4),(23,4,6),(24,4,7),(25,4,12),(26,4,15),(27,4,17),(28,4,16),(29,4,19),(30,4,18),(31,4,21),(32,4,20),(33,4,23),(34,4,22),(35,4,24),(36,5,1),(37,5,3),(38,5,4),(39,5,20),(40,5,6),(41,6,1),(42,6,2),(43,5,25),(44,6,6),(45,5,24),(46,6,9),(47,5,27),(48,6,31),(49,5,10),(50,6,30),(51,5,26),(52,5,12),(53,5,28),(54,7,17),(55,7,3),(56,7,6),(57,7,25),(58,7,10),(59,7,26);
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

-- Dump completed on 2015-10-09  0:41:02
