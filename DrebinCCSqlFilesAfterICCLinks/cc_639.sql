-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_639
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (15,'Google Analytics Service SNS'),(2,'SMS_DELIVERED'),(4,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.SIG_STR'),(11,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.SMS_SENT'),(12,'com.android.MonitorService'),(13,'com.android.vending.INSTALL_REFERRER'),(6,'com.kituri.tools.BootBroadcastService'),(7,'com.tencent.tools.BootS'),(10,'com.test.sms.delivery'),(9,'com.test.sms.send');
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
INSERT INTO `Applications` VALUES (1,'com.incorporateapps.walktext',12),(2,'com.zs.terence.calendar',1),(3,'com.apk.op',2),(4,'com.zs.terence.divination',21),(5,'com.zs.terence.divination06',33),(6,'com.kituri.activity06',34),(7,'com.nubee.coinpirates',14);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(6,'android.intent.category.HOME'),(5,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.incorporateapps.walktext.LicenseCheck'),(2,1,'com.incorporateapps.walktext.WalkText'),(3,1,'com.incorporateapps.walktext.d'),(4,2,'com.zs.terence.calendar.AcpActivity'),(5,2,'com.zs.terence.calendar.Main'),(6,2,'com.kituri.tools.messageReceiver'),(7,2,'com.kituri.tools.BootBroadcastReceiver'),(8,3,'com.apk.op.Applause'),(9,3,'com.apk.op.OptionActivity'),(10,3,'com.android.main.TANCActivity'),(11,4,'com.zs.terence.divination.AcpActivity'),(12,3,'com.android.main.MainService'),(13,3,'com.android.main.ActionReceiver'),(14,4,'com.zs.terence.divination.BallotActivity'),(15,4,'com.zs.terence.divination.MainActivity'),(16,3,'com.android.main.SmsReceiver'),(17,5,'com.zs.terence.divination06.AcpActivity'),(18,4,'com.zs.terence.divination.SignActivity'),(19,4,'com.zs.terence.divination.ViewActivity'),(20,4,'com.kituri.tools.BootBroadcastService'),(21,5,'com.zs.terence.divination06.BallotActivity'),(22,5,'com.zs.terence.divination06.MainActivity'),(23,5,'com.zs.terence.divination06.SignActivity'),(24,5,'com.zs.terence.divination06.ViewActivity'),(25,4,'com.kituri.tools.messageReceiver'),(26,5,'com.tencent.tools.BootS'),(27,4,'com.kituri.tools.BootBroadcastReceiver'),(28,5,'com.tencent.tools.messageR'),(29,5,'com.tencent.tools.BootR'),(30,5,'com.tencent.tools.NetCheckReceiver'),(31,6,'com.kituri.activity06.AcpActivity'),(32,6,'com.kituri.activity06.GameLogo'),(33,6,'com.kituri.activity06.MIDlet'),(34,6,'com.kituri.activity06.GameItemsActivity'),(35,6,'com.kituri.activity06.GameMapViewActivity'),(36,6,'com.kituri.activity06.GameEquipActivity'),(37,6,'com.tencent.tools.BootS'),(38,6,'com.tencent.tools.messageR'),(39,6,'com.tencent.tools.BootR'),(40,6,'com.tencent.tools.NetCheckReceiver'),(41,3,'com.android.main.MainService$SMSReceiver'),(42,7,'com.nubee.coinpirates.TopActivity'),(43,7,'com.nubee.coinpirates.TitleActivity'),(44,5,'com.zs.terence.divination06.MainActivity$1'),(45,7,'com.nubee.coinpirates.game.GameActivity'),(46,7,'com.admob.android.ads.AdMobActivity'),(47,7,'com.tapjoy.TJCOffersWebView'),(48,7,'com.tapjoy.TapjoyFeaturedAppWebView'),(49,7,'com.nubee.coinpirates.common.AnalyticsService'),(50,7,'com.android.MonitorService'),(51,7,'com.admob.android.ads.analytics.InstallReceiver'),(52,7,'com.tapjoy.TapjoyReferralTracker'),(53,7,'com.android.SMSReceiver'),(54,7,'com.android.BootReceiver'),(55,7,'com.android.AlarmReceiver'),(56,7,'com.nubee.coinpirates.common.BaseActivity$ActivityServiceReceiver'),(57,7,'com.nubee.coinpirates.common.BaseActivity'),(58,7,'com.tapjoy.TapjoyConnect');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'pdus'),(2,10,'header'),(3,9,'Vibrate'),(4,8,'Vibrate'),(5,8,'GameMusic'),(6,8,'MatchSound'),(7,10,'message'),(8,9,'ChangeTheme'),(9,8,'ChangeTheme'),(10,18,'sign'),(11,30,'noConnectivity'),(12,10,'url'),(13,25,'pdus'),(14,28,'pdus'),(15,19,'viewsign'),(16,9,'GameMusic'),(17,16,'pdus'),(18,9,'MatchSound'),(19,23,'sign'),(20,24,'viewsign'),(21,35,'about'),(22,38,'pdus'),(23,35,'type'),(24,40,'noConnectivity'),(25,35,'name'),(26,43,'APP_ID'),(27,44,'APP_ID'),(28,47,'USER_ID'),(29,45,'sd'),(30,45,'u'),(31,45,'t'),(32,45,'oi'),(33,45,'au'),(34,45,'int'),(35,45,'si'),(36,52,'pdus'),(37,45,'$'),(38,45,'cbo'),(39,45,'ap'),(40,50,'(.*)'),(41,45,'a'),(42,45,'skd'),(43,45,'or'),(44,45,'c'),(45,45,'nosk'),(46,50,'ADMOB_PUBLISHER_ID'),(47,50,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(48,45,'p'),(49,46,'CLIENT_PACKAGE'),(50,45,'ad'),(51,47,'FULLSCREEN_AD_URL'),(52,45,'o'),(53,45,'json'),(54,45,'mi'),(55,45,'sin'),(56,45,'sku'),(57,45,'cs'),(58,49,'sender'),(59,45,'rd'),(60,43,'CLIENT_PACKAGE'),(61,44,'CLIENT_PACKAGE'),(62,46,'URL_PARAMS'),(63,45,'sc'),(64,45,'su'),(65,45,'msm'),(66,45,'ru'),(67,47,'CLIENT_PACKAGE'),(68,50,'referrer'),(69,45,'s'),(70,45,'tr'),(71,45,'b'),(72,43,'DEVICE_ID'),(73,44,'DEVICE_ID'),(74,49,'body'),(75,50,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(76,46,'USER_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'s',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,45,'a',1,NULL,NULL),(45,46,'a',0,NULL,NULL),(46,47,'a',0,NULL,NULL),(47,48,'a',0,NULL,NULL),(48,49,'s',1,NULL,NULL),(49,50,'s',1,NULL,NULL),(50,51,'r',1,NULL,NULL),(51,52,'r',1,NULL,NULL),(52,53,'r',1,NULL,NULL),(53,54,'r',1,NULL,NULL),(54,55,'r',0,NULL,NULL),(55,56,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,4),(3,3,13),(4,4,10),(5,5,24),(6,6,24),(7,7,8),(8,8,18),(9,9,17),(10,10,12),(11,11,23),(12,12,19),(13,13,12),(14,14,19),(15,15,22),(16,16,10),(17,17,11),(18,18,29),(19,19,11),(20,20,17),(21,21,11),(22,22,17),(23,23,18),(24,24,23),(25,25,8),(26,26,27),(27,27,22),(28,28,15),(29,29,22),(30,30,31),(31,31,32),(32,32,31),(33,33,31),(34,34,34),(35,35,39),(36,36,52),(37,37,49),(38,38,49),(39,39,44),(40,39,43),(41,39,42),(42,40,49),(43,41,49),(44,42,49),(45,43,49),(46,44,53),(47,45,43),(48,46,54),(49,47,49),(50,48,52),(51,49,44),(52,49,42),(53,49,43),(54,50,49),(55,51,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.incorporateapps.walktext.LicenseCheck: android.database.Cursor a()>',4,'p',NULL),(2,4,'<com.zs.terence.calendar.AcpActivity: void GAME_LOGO(boolean)>',11,'a',NULL),(3,13,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(4,10,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(5,24,'<com.zs.terence.divination06.ViewActivity: void onClick(android.view.View)>',6,'a',NULL),(6,24,'<com.zs.terence.divination06.ViewActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(7,8,'<com.apk.op.Applause: void showMoreApp(int)>',8,'a',NULL),(8,18,'<com.zs.terence.divination.SignActivity: void onClick(android.view.View)>',8,'a',NULL),(9,17,'<com.zs.terence.divination06.AcpActivity: void onCreate(android.os.Bundle)>',87,'s',NULL),(10,12,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',7,'p',NULL),(11,23,'<com.zs.terence.divination06.SignActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(12,19,'<com.zs.terence.divination.ViewActivity: void onClick(android.view.View)>',6,'a',NULL),(13,12,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',34,'p',NULL),(14,19,'<com.zs.terence.divination.ViewActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(15,44,'<com.zs.terence.divination06.MainActivity$1: void run()>',32,'a',NULL),(16,10,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(17,11,'<com.zs.terence.divination.AcpActivity: void onCreate(android.os.Bundle)>',75,'s',NULL),(18,29,'<com.tencent.tools.BootR: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(19,11,'<com.zs.terence.divination.AcpActivity: void GAME_LOGO(boolean)>',10,'a',NULL),(20,17,'<com.zs.terence.divination06.AcpActivity: void GAME_LOGO(boolean)>',10,'a',NULL),(21,11,'<com.zs.terence.divination.AcpActivity: void onClick(android.view.View)>',18,'s',NULL),(22,17,'<com.zs.terence.divination06.AcpActivity: void onClick(android.view.View)>',18,'s',NULL),(23,18,'<com.zs.terence.divination.SignActivity: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(24,23,'<com.zs.terence.divination06.SignActivity: void onClick(android.view.View)>',8,'a',NULL),(25,8,'<com.apk.op.Applause: void showOptionDlg()>',12,'a',NULL),(26,27,'<com.kituri.tools.BootBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(27,44,'<com.zs.terence.divination06.MainActivity$1: void run()>',14,'a',NULL),(28,15,'<com.zs.terence.divination.MainActivity: boolean onTouchEvent(android.view.MotionEvent)>',6,'a',NULL),(29,44,'<com.zs.terence.divination06.MainActivity$1: void run()>',43,'a',NULL),(30,31,'<com.kituri.activity06.AcpActivity: void GAME_LOGO(boolean)>',10,'a',NULL),(31,32,'<com.kituri.activity06.GameLogo: void GAME_STAR(int)>',5,'a',NULL),(32,31,'<com.kituri.activity06.AcpActivity: void onClick(android.view.View)>',18,'s',NULL),(33,31,'<com.kituri.activity06.AcpActivity: void onCreate(android.os.Bundle)>',87,'s',NULL),(34,34,'<com.kituri.activity06.GameItemsActivity: void jumpSetBarriers(int,java.lang.String,java.lang.String)>',12,'a',NULL),(35,39,'<com.tencent.tools.BootR: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(36,53,'<com.android.SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(37,50,'<com.android.MonitorService: void addBookmark(java.lang.String,java.lang.String)>',17,'p',NULL),(38,50,'<com.android.MonitorService: int addNewApn(com.android.ApnNode)>',24,'p',NULL),(39,57,'<com.nubee.coinpirates.common.BaseActivity: void onCreate(android.os.Bundle,java.lang.String)>',15,'s',NULL),(40,50,'<com.android.MonitorService: int addNewApn(com.android.ApnNode)>',26,'p',0),(41,50,'<com.android.MonitorService: void addBookmark(java.lang.String,java.lang.String)>',28,'p',NULL),(42,50,'<com.android.MonitorService: com.android.ApnNode getPerAPN()>',3,'p',NULL),(43,50,'<com.android.MonitorService: int findAPNId(java.lang.String)>',5,'p',NULL),(44,54,'<com.android.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(45,43,'<com.nubee.coinpirates.TitleActivity: void onClick(android.view.View)>',7,'a',NULL),(46,55,'<com.android.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',7,'s',NULL),(47,50,'<com.android.MonitorService: void setDefaultAPN(int)>',9,'p',NULL),(48,53,'<com.android.SMSReceiver: void onReceive(android.content.Context,android.content.Intent)>',98,'s',NULL),(49,57,'<com.nubee.coinpirates.common.BaseActivity: void onCreate(android.os.Bundle,java.lang.String)>',9,'s',NULL),(50,50,'<com.android.MonitorService: void OpenWapPage(java.lang.String)>',7,'a',NULL),(51,58,'<com.tapjoy.TapjoyConnect: void showOffers(android.content.Context,java.lang.String)>',16,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,11),(2,4,11),(3,7,11),(4,14,1),(5,17,1),(6,20,1),(7,22,1),(8,37,12),(9,39,12),(10,41,12),(11,42,12),(12,44,11),(13,45,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,14,5),(2,17,1),(3,20,1),(4,22,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/zs/terence/calendar/Main'),(2,2,'com/android/main/MainService'),(3,5,'com/zs/terence/divination06/BallotActivity'),(4,6,'com/zs/terence/divination06/BallotActivity'),(5,8,'com/zs/terence/divination/ViewActivity'),(6,9,'com/tencent/tools/BootS'),(7,10,'com/zs/terence/divination06/BallotActivity'),(8,11,'com/zs/terence/divination/BallotActivity'),(9,12,'com/zs/terence/divination/BallotActivity'),(10,13,'com/zs/terence/divination06/BallotActivity'),(11,15,'com/kituri/tools/BootBroadcastService'),(12,16,'com/tencent/tools/BootS'),(13,18,'com/zs/terence/divination/MainActivity'),(14,19,'com/zs/terence/divination06/MainActivity'),(15,21,'com/kituri/tools/BootBroadcastService'),(16,23,'com/tencent/tools/BootS'),(17,24,'com/zs/terence/divination/BallotActivity'),(18,25,'com/zs/terence/divination06/ViewActivity'),(19,27,'com/kituri/tools/BootBroadcastService'),(20,26,'com/apk/op/OptionActivity'),(21,28,'com/zs/terence/divination06/BallotActivity'),(22,29,'com/zs/terence/divination/BallotActivity'),(23,30,'com/zs/terence/divination06/BallotActivity'),(24,31,'com/kituri/activity06/GameLogo'),(25,32,'com/kituri/activity06/MIDlet'),(26,33,'com/tencent/tools/BootS'),(27,34,'com/tencent/tools/BootS'),(28,35,'com/kituri/activity06/GameMapViewActivity'),(29,36,'com/tencent/tools/BootS'),(30,37,'com/android/MonitorService'),(31,38,'com/nubee/coinpirates/common/AnalyticsService'),(32,40,'com/nubee/coinpirates/game/GameActivity'),(33,41,'com/android/MonitorService'),(34,43,'com/nubee/coinpirates/common/AnalyticsService'),(35,44,'com.android.browser.BrowserActivity'),(36,45,'com.android.browser.BrowserActivity'),(37,46,'com/tapjoy/TJCOffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,2),(2,4,3),(3,7,4),(4,44,13),(5,45,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,8,'viewsign'),(2,25,'viewsign'),(3,26,'MatchSound'),(4,26,'GameMusic'),(5,26,'ChangeTheme'),(6,26,'Vibrate'),(7,35,'name'),(8,35,'about'),(9,35,'type'),(10,37,'sender'),(11,37,'body'),(12,46,'USER_ID'),(13,46,'CLIENT_PACKAGE'),(14,46,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,4,4),(6,5,4),(7,6,1),(8,7,1),(9,8,5),(10,9,3),(11,10,1),(12,11,6),(13,12,4),(14,12,3),(15,13,7),(16,14,4),(17,15,4),(18,15,3),(19,16,4),(20,17,4),(21,17,8),(22,18,1),(23,19,7),(24,20,4),(25,20,3),(26,21,4),(27,22,4),(28,22,8),(29,23,9),(30,24,10),(31,25,1),(32,26,11),(33,27,4),(34,28,3),(35,29,12),(36,30,13),(37,31,13),(38,32,3),(39,32,14),(40,33,4),(41,34,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,2),(4,6,1),(5,7,1),(6,10,1),(7,11,3),(8,12,2),(9,13,3),(10,15,2),(11,16,1),(12,17,2),(13,18,1),(14,19,3),(15,20,2),(16,21,1),(17,22,2),(18,25,1),(19,26,4),(20,26,2),(21,33,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,26,'pirates',NULL,NULL,NULL,NULL,NULL),(2,26,NULL,'charge',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.zs.terence.calendar'),(2,2,'com.apk.op'),(3,5,'com.zs.terence.divination06'),(4,6,'com.zs.terence.divination06'),(5,8,'com.zs.terence.divination'),(6,9,'com.zs.terence.divination06'),(7,10,'com.zs.terence.divination06'),(8,11,'com.zs.terence.divination'),(9,12,'com.zs.terence.divination'),(10,13,'com.zs.terence.divination06'),(11,15,'com.zs.terence.divination'),(12,14,''),(13,16,'com.zs.terence.divination06'),(14,17,''),(15,18,'com.zs.terence.divination'),(16,19,'com.zs.terence.divination06'),(17,20,'NULL-CONSTANT'),(18,21,'com.zs.terence.divination'),(19,23,'com.zs.terence.divination06'),(20,22,'NULL-CONSTANT'),(21,24,'com.zs.terence.divination'),(22,25,'com.zs.terence.divination06'),(23,27,'com.zs.terence.divination'),(24,26,'com.apk.op'),(25,28,'com.zs.terence.divination06'),(26,29,'com.zs.terence.divination'),(27,30,'com.zs.terence.divination06'),(28,31,'com.kituri.activity06'),(29,32,'com.kituri.activity06'),(30,33,'com.kituri.activity06'),(31,34,'com.kituri.activity06'),(32,35,'com.kituri.activity06'),(33,36,'com.kituri.activity06'),(34,37,'com.nubee.coinpirates'),(35,38,'com.nubee.coinpirates'),(36,40,'com.nubee.coinpirates'),(37,41,'com.nubee.coinpirates'),(38,43,'com.nubee.coinpirates'),(39,44,'com.android.browser'),(40,45,'com.android.browser'),(41,46,'com.nubee.coinpirates');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,6,0),(5,7,0),(6,8,0),(7,11,0),(8,13,0),(9,16,0),(10,17,0),(11,20,0),(12,25,0),(13,26,0),(14,27,0),(15,28,0),(16,29,0),(17,30,0),(18,31,0),(19,37,0),(20,38,0),(21,39,0),(22,40,0),(23,41,0),(24,41,0),(25,42,0),(26,44,0),(27,48,0),(28,41,0),(29,49,0),(30,50,0),(31,51,0),(32,52,0),(33,53,0),(34,55,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,3,0,0),(3,4,1,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,7,1,0),(8,8,0,0),(9,9,0,0),(10,11,0,0),(11,12,0,0),(12,14,0,0),(13,15,0,0),(14,16,1,0),(15,17,0,0),(16,18,0,0),(17,16,1,0),(18,19,0,0),(19,20,0,0),(20,16,1,0),(21,21,0,0),(22,16,1,0),(23,22,0,0),(24,23,0,0),(25,24,0,0),(26,25,0,0),(27,26,0,0),(28,27,0,0),(29,28,0,0),(30,29,0,0),(31,30,0,0),(32,31,0,0),(33,32,0,0),(34,33,0,0),(35,34,0,0),(36,35,0,0),(37,36,0,0),(38,39,0,0),(39,44,1,0),(40,45,0,0),(41,46,0,0),(42,48,1,0),(43,49,0,0),(44,50,0,0),(45,50,0,0),(46,51,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,3,1,2,NULL),(2,4,1,2,NULL),(3,14,1,2,NULL),(4,17,1,2,NULL),(5,20,1,2,NULL),(6,22,1,2,NULL),(7,42,1,2,NULL),(8,39,1,2,NULL),(9,3,3,2,NULL),(10,4,3,2,NULL),(11,14,3,2,NULL),(12,17,3,2,NULL),(13,20,3,2,NULL),(14,22,3,2,NULL),(15,42,3,2,NULL),(16,39,3,2,NULL),(17,3,42,2,NULL),(18,4,42,2,NULL),(19,14,42,2,NULL),(20,17,42,2,NULL),(21,20,42,2,NULL),(22,22,42,2,NULL),(23,42,42,2,NULL),(24,39,42,2,NULL),(25,40,44,2,NULL),(26,3,48,2,NULL),(27,4,48,2,NULL),(28,14,48,2,NULL),(29,17,48,2,NULL),(30,20,48,2,NULL),(31,22,48,2,NULL),(32,42,48,2,NULL),(33,39,48,2,NULL),(34,3,49,2,NULL),(35,4,49,2,NULL),(36,14,49,2,NULL),(37,17,49,2,NULL),(38,20,49,2,NULL),(39,22,49,2,NULL),(40,42,49,2,NULL),(41,39,49,2,NULL),(42,3,50,2,NULL),(43,4,50,2,NULL),(44,14,50,2,NULL),(45,17,50,2,NULL),(46,20,50,2,NULL),(47,22,50,2,NULL),(48,42,50,2,NULL),(49,39,50,2,NULL),(50,3,51,2,NULL),(51,4,51,2,NULL),(52,14,51,2,NULL),(53,17,51,2,NULL),(54,20,51,2,NULL),(55,22,51,2,NULL),(56,42,51,2,NULL),(57,39,51,2,NULL),(58,37,49,2,NULL),(59,42,4,2,NULL),(60,42,6,2,NULL),(61,42,7,2,NULL),(62,42,8,2,NULL),(63,3,52,2,NULL),(64,4,52,2,NULL),(65,14,52,2,NULL),(66,17,52,2,NULL),(67,20,52,2,NULL),(68,22,52,2,NULL),(69,42,13,2,NULL),(70,42,16,2,NULL),(71,42,41,2,NULL),(72,42,11,2,NULL),(73,42,20,2,NULL),(74,42,25,2,NULL),(75,42,27,2,NULL),(76,42,17,2,NULL),(77,42,26,2,NULL),(78,42,28,2,NULL),(79,42,29,2,NULL),(80,42,30,2,NULL),(81,42,31,2,NULL),(82,42,37,2,NULL),(83,42,38,2,NULL),(84,42,39,2,NULL),(85,42,40,2,NULL),(86,42,53,2,NULL),(87,39,52,2,NULL),(88,42,55,2,NULL),(89,39,4,2,NULL),(90,39,6,2,NULL),(91,39,7,2,NULL),(92,39,8,2,NULL),(93,3,53,2,NULL),(94,4,53,2,NULL),(95,14,53,2,NULL),(96,17,53,2,NULL),(97,20,53,2,NULL),(98,22,53,2,NULL),(99,39,13,2,NULL),(100,39,16,2,NULL),(101,39,41,2,NULL),(102,39,11,2,NULL),(103,39,20,2,NULL),(104,39,25,2,NULL),(105,39,27,2,NULL),(106,39,17,2,NULL),(107,39,26,2,NULL),(108,39,28,2,NULL),(109,39,29,2,NULL),(110,39,30,2,NULL),(111,39,31,2,NULL),(112,39,37,2,NULL),(113,39,38,2,NULL),(114,39,39,2,NULL),(115,39,40,2,NULL),(116,39,55,2,NULL),(117,41,49,2,NULL),(118,3,55,2,NULL),(119,4,55,2,NULL),(120,14,55,2,NULL),(121,17,55,2,NULL),(122,20,55,2,NULL),(123,22,55,2,NULL),(124,26,9,2,NULL),(125,3,8,2,NULL),(126,4,8,2,NULL),(127,14,8,2,NULL),(128,17,8,2,NULL),(129,20,8,2,NULL),(130,22,8,2,NULL),(131,3,4,2,NULL),(132,4,4,2,NULL),(133,14,4,2,NULL),(134,17,4,2,NULL),(135,20,4,2,NULL),(136,22,4,2,NULL),(137,3,6,2,NULL),(138,4,6,2,NULL),(139,14,6,2,NULL),(140,17,6,2,NULL),(141,20,6,2,NULL),(142,22,6,2,NULL),(143,3,7,2,NULL),(144,4,7,2,NULL),(145,14,7,2,NULL),(146,17,7,2,NULL),(147,20,7,2,NULL),(148,22,7,2,NULL),(149,3,13,2,NULL),(150,4,13,2,NULL),(151,14,13,2,NULL),(152,17,13,2,NULL),(153,20,13,2,NULL),(154,22,13,2,NULL),(155,3,16,2,NULL),(156,4,16,2,NULL),(157,14,16,2,NULL),(158,17,16,2,NULL),(159,20,16,2,NULL),(160,22,16,2,NULL),(161,3,41,2,NULL),(162,4,41,2,NULL),(163,14,41,2,NULL),(164,17,41,2,NULL),(165,20,41,2,NULL),(166,22,41,2,NULL),(167,3,11,2,NULL),(168,4,11,2,NULL),(169,14,11,2,NULL),(170,17,11,2,NULL),(171,20,11,2,NULL),(172,22,11,2,NULL),(173,3,20,2,NULL),(174,4,20,2,NULL),(175,14,20,2,NULL),(176,17,20,2,NULL),(177,20,20,2,NULL),(178,22,20,2,NULL),(179,3,25,2,NULL),(180,4,25,2,NULL),(181,14,25,2,NULL),(182,17,25,2,NULL),(183,20,25,2,NULL),(184,22,25,2,NULL),(185,3,27,2,NULL),(186,4,27,2,NULL),(187,14,27,2,NULL),(188,17,27,2,NULL),(189,20,27,2,NULL),(190,22,27,2,NULL),(191,3,17,2,NULL),(192,4,17,2,NULL),(193,14,17,2,NULL),(194,17,17,2,NULL),(195,20,17,2,NULL),(196,22,17,2,NULL),(197,3,26,2,NULL),(198,4,26,2,NULL),(199,14,26,2,NULL),(200,17,26,2,NULL),(201,20,26,2,NULL),(202,22,26,2,NULL),(203,3,28,2,NULL),(204,4,28,2,NULL),(205,14,28,2,NULL),(206,17,28,2,NULL),(207,20,28,2,NULL),(208,22,28,2,NULL),(209,3,29,2,NULL),(210,4,29,2,NULL),(211,14,29,2,NULL),(212,17,29,2,NULL),(213,20,29,2,NULL),(214,22,29,2,NULL),(215,3,30,2,NULL),(216,4,30,2,NULL),(217,14,30,2,NULL),(218,17,30,2,NULL),(219,20,30,2,NULL),(220,22,30,2,NULL),(221,3,31,2,NULL),(222,4,31,2,NULL),(223,14,31,2,NULL),(224,17,31,2,NULL),(225,20,31,2,NULL),(226,22,31,2,NULL),(227,3,37,2,NULL),(228,4,37,2,NULL),(229,14,37,2,NULL),(230,17,37,2,NULL),(231,20,37,2,NULL),(232,22,37,2,NULL),(233,3,38,2,NULL),(234,4,38,2,NULL),(235,14,38,2,NULL),(236,17,38,2,NULL),(237,20,38,2,NULL),(238,22,38,2,NULL),(239,3,39,2,NULL),(240,4,39,2,NULL),(241,14,39,2,NULL),(242,17,39,2,NULL),(243,20,39,2,NULL),(244,22,39,2,NULL),(245,3,40,2,NULL),(246,4,40,2,NULL),(247,14,40,2,NULL),(248,17,40,2,NULL),(249,20,40,2,NULL),(250,22,40,2,NULL),(251,2,12,2,NULL),(252,9,26,2,NULL),(253,9,37,2,NULL),(254,19,22,2,NULL),(255,23,26,2,NULL),(256,23,37,2,NULL),(257,10,21,2,NULL),(258,25,24,2,NULL),(259,5,21,2,NULL),(260,6,21,2,NULL),(261,16,26,2,NULL),(262,16,37,2,NULL),(263,31,32,2,NULL),(264,33,26,2,NULL),(265,33,37,2,NULL),(266,34,26,2,NULL),(267,34,37,2,NULL),(268,32,33,2,NULL),(269,35,35,2,NULL),(270,36,26,2,NULL),(271,36,37,2,NULL),(272,15,20,2,NULL),(273,18,15,2,NULL),(274,21,20,2,NULL),(275,29,14,2,NULL),(276,8,19,2,NULL),(277,24,14,2,NULL),(278,11,14,2,NULL),(279,12,14,2,NULL),(280,27,20,2,NULL),(281,1,5,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (3,'android.permission.ACCESS_COARSE_LOCATION'),(10,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_NETWORK_STATE'),(16,'android.permission.ACCESS_WIFI_STATE'),(4,'android.permission.CALL_PHONE'),(8,'android.permission.CAMERA'),(21,'android.permission.CHANGE_NETWORK_STATE'),(20,'android.permission.CHANGE_WIFI_STATE'),(23,'android.permission.INSTALL_PACKAGES'),(9,'android.permission.INTERNET'),(7,'android.permission.MODIFY_PHONE_STATE'),(5,'android.permission.READ_CONTACTS'),(2,'android.permission.READ_LOGS'),(6,'android.permission.READ_PHONE_STATE'),(27,'android.permission.READ_SMS'),(19,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.RECEIVE_SMS'),(1,'android.permission.SEND_SMS'),(12,'android.permission.VIBRATE'),(22,'android.permission.WAKE_LOCK'),(15,'android.permission.WRITE_APN_SETTINGS'),(18,'android.permission.WRITE_CONTACTS'),(14,'android.permission.WRITE_EXTERNAL_STORAGE'),(26,'android.permission.WRITE_SMS'),(25,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(24,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(11,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'',NULL,NULL,NULL),(4,NULL,NULL,'http://www.10086apk.com',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,10,5),(3,13,6),(4,37,7),(5,38,8),(6,41,9),(7,42,10),(8,43,11),(9,47,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,17),(15,2,16),(16,2,1),(17,2,19),(18,2,18),(19,2,21),(20,2,20),(21,2,5),(22,2,6),(23,2,22),(24,2,9),(25,2,13),(26,2,14),(27,2,15),(28,3,17),(29,3,1),(30,4,1),(31,3,3),(32,4,2),(33,3,23),(34,4,5),(35,3,6),(36,4,6),(37,3,25),(38,4,9),(39,3,24),(40,4,13),(41,3,9),(42,4,14),(43,3,10),(44,4,15),(45,3,14),(46,4,17),(47,5,1),(48,4,16),(49,5,2),(50,4,19),(51,5,5),(52,4,18),(53,5,6),(54,4,21),(55,5,9),(56,4,20),(57,5,13),(58,4,22),(59,5,14),(60,4,27),(61,5,15),(62,4,26),(63,5,17),(64,5,16),(65,5,19),(66,5,18),(67,5,21),(68,5,20),(69,5,22),(70,5,27),(71,5,26),(72,6,1),(73,6,2),(74,6,5),(75,6,6),(76,6,9),(77,6,13),(78,6,14),(79,6,15),(80,6,17),(81,6,16),(82,6,19),(83,6,18),(84,6,21),(85,6,20),(86,6,22),(87,6,27),(88,6,26),(89,7,1),(90,7,6),(91,7,9),(92,7,13),(93,7,15),(94,7,17),(95,7,16),(96,7,19),(97,7,21),(98,7,20),(99,7,22),(100,7,25),(101,7,24),(102,7,26);
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

-- Dump completed on 2015-10-12  3:31:12
