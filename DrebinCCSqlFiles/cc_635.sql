-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_635
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (10,'(.*)'),(7,'(.*)(.*)'),(9,'(.*)(.*)(.*)'),(8,'(.*)(.*)(.*)(.*)'),(6,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.CHOOSER'),(3,'android.intent.action.DATA_SMS_RECEIVED'),(18,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(15,'android.intent.action.PACKAGE_ADDED'),(19,'android.intent.action.SENDTO'),(17,'android.intent.action.VIEW'),(11,'android.net.wifi.SCAN_RESULTS'),(14,'android.net.wifi.WIFI_STATE_CHANGED'),(4,'android.provider.Telephony.SMS_RECEIVED'),(5,'android.provider.Telephony.SMS_SENT'),(13,'com.airpush.android.PushServiceStart22236'),(12,'com.android.action_PUSHADSACTIVITY'),(20,'com.tencent.lbsapi.GPS_SINGLE'),(2,'ru.alpha.AlphaServiceStart76');
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
INSERT INTO `Applications` VALUES (1,'kudgofcpa.cdddbuto',1),(2,'org.underdev.penetratepro',36),(3,'com.androidapp.conflite',8),(4,'cn.playboy.wifikiller',2),(5,'com.spinXbackup.backupApp',9),(6,'com.androidapp.pdaspy',4),(7,'com.adroidzscpc.penetratezb',37);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'kudgofcpa.cdddbuto.qltlybwxsoe'),(2,1,'dlsplpdqld.qjvgddw.spkcrlyvkx'),(3,1,'dlsplpdqld.qjvgddw.hcjicng'),(4,1,'kudgofcpa.cdddbuto.ecufglp'),(5,2,'org.underdev.penetrate.Penetrate'),(6,2,'org.underdev.penetrate.Results'),(7,2,'org.underdev.penetrate.Preferences'),(8,3,'com.androidapp.conflite.MainActivity'),(9,3,'com.androidapp.conflite.ChooseAccountActivity'),(10,3,'com.androidapp.conflite.UseExistingAccountActivity'),(11,4,'org.underdev.penetrate.Penetrate'),(12,3,'com.androidapp.conflite.OpenNewAccountActivity'),(13,5,'com.spinXbackup.backupApp.MainActivity'),(14,3,'com.androidapp.conflite.ConfigClient'),(15,3,'com.androidapp.conflite.LogService'),(16,4,'org.underdev.penetrate.Results'),(17,3,'com.androidapp.conflite.ServiceController'),(18,5,'com.spinXbackup.backupApp.ChooseAccountActivity'),(19,4,'org.underdev.penetrate.Preferences'),(20,5,'com.spinXbackup.backupApp.UseExistingAccountActivity'),(21,4,'com.tencent.mobwin.MobinWINBrowserActivity'),(22,5,'com.spinXbackup.backupApp.OpenNewAccountActivity'),(23,5,'com.spinXbackup.backupApp.ConfigClient'),(24,6,'com.androidapp.pdaspy.MainActivity'),(25,5,'com.spinXbackup.backupApp.LogService'),(26,3,'com.androidapp.conflite.LogServiceManager'),(27,5,'com.spinXbackup.backupApp.ServiceController'),(28,6,'com.androidapp.pdaspy.ChooseAccountActivity'),(29,6,'com.androidapp.pdaspy.UseExistingAccountActivity'),(30,6,'com.androidapp.pdaspy.OpenNewAccountActivity'),(31,5,'com.spinXbackup.backupApp.LogServiceManager'),(32,6,'com.androidapp.pdaspy.ConfigClient'),(33,6,'com.androidapp.pdaspy.LogService'),(34,6,'com.androidapp.pdaspy.LogServiceManager'),(35,1,'dlsplpdqld.qjvgddw.ydlabek'),(36,2,'org.underdev.penetrate.lib.core.wifi.WifiReceiver'),(37,7,'org.underdev.penetrate.Penetrate'),(38,7,'org.underdev.penetrate.Results'),(39,7,'org.underdev.penetrate.Preferences'),(40,7,'com.adroidzscpc.penetratezb.MainA'),(41,7,'com.airpush.android.PushAds'),(42,7,'com.adroidzscpc.penetratezb.GoogAdView'),(43,7,'cn.domob.android.ads.DomobActivity'),(44,7,'com.kuguo.openads.AdsOfferListActivity'),(45,7,'com.kuguo.pushads.PushAdsActivity'),(46,7,'com.airpush.android.PushService'),(47,7,'com.kuguo.pushads.AdsService'),(48,7,'com.airpush.android.UserDetailsReceiver'),(49,7,'com.airpush.android.MessageReceiver'),(50,7,'com.airpush.android.DeliveryReceiver'),(51,7,'com.adroidzscpc.penetratezb.BootReceiver'),(52,7,'com.kuguo.pushads.AdsReceiver'),(53,1,'kudgofcpa.cdddbuto.ktpessvth'),(54,3,'com.androidapp.conflite._test_send'),(55,4,'org.underdev.penetrate.lib.gui.activities.Results$2'),(56,5,'com.spinXbackup.backupApp._test_send'),(57,4,'com.tencent.mobwin.core.k'),(58,4,'org.underdev.penetrate.lib.core.wifi.WifiReceiver'),(59,4,'com.tencent.lbsapi.core.c'),(60,4,'com.tencent.lbsapi.core.a'),(61,4,'com.tencent.mobwin.utils.ApkInstalReceiver'),(62,4,'com.tencent.mobwin.core.w');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'(.*)(.*)(.*)'),(2,3,'(.*)'),(3,3,'(.*)(.*)'),(4,2,'(.*)(.*)(.*)'),(5,2,'(.*)'),(6,2,'(.*)(.*)'),(7,6,'results'),(8,7,'download'),(9,22,'URL'),(10,16,'results'),(11,22,'APP_CHANNEL'),(12,22,'APP_ID'),(13,22,'EFFECTIVE_TYPE'),(14,18,'download');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',1,NULL,NULL),(3,3,'r',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,19,'a',0,NULL,NULL),(19,18,'a',0,NULL,NULL),(20,15,'r',0,NULL,NULL),(21,20,'a',0,NULL,NULL),(22,21,'a',0,NULL,NULL),(23,22,'a',0,NULL,NULL),(24,23,'a',0,NULL,NULL),(25,24,'a',1,NULL,NULL),(26,25,'s',0,NULL,NULL),(27,26,'r',0,NULL,NULL),(28,27,'s',0,NULL,NULL),(29,28,'a',0,NULL,NULL),(30,25,'r',0,NULL,NULL),(31,29,'a',0,NULL,NULL),(32,30,'a',0,NULL,NULL),(33,31,'r',0,NULL,NULL),(34,32,'a',0,NULL,NULL),(35,33,'s',0,NULL,NULL),(36,34,'r',0,NULL,NULL),(37,36,'r',1,NULL,NULL),(38,37,'a',0,NULL,NULL),(39,38,'a',0,NULL,NULL),(40,39,'a',0,NULL,NULL),(41,40,'a',1,NULL,NULL),(42,41,'a',0,NULL,NULL),(43,42,'a',0,NULL,NULL),(44,43,'a',0,NULL,NULL),(45,44,'a',0,NULL,NULL),(46,45,'a',1,NULL,NULL),(47,46,'s',1,NULL,NULL),(48,47,'s',0,NULL,NULL),(49,48,'r',0,NULL,NULL),(50,49,'r',0,NULL,NULL),(51,50,'r',0,NULL,NULL),(52,51,'r',1,NULL,NULL),(53,52,'r',1,NULL,NULL),(54,53,'r',1,NULL,NULL),(55,58,'r',1,NULL,NULL),(56,59,'r',1,NULL,NULL),(57,60,'r',1,NULL,NULL),(58,61,'r',1,NULL,NULL),(59,61,'r',1,NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,2),(3,3,1),(4,4,25),(5,5,31),(6,6,29),(7,7,14),(8,8,32),(9,9,27),(10,10,34),(11,11,12),(12,12,29),(13,13,8),(14,14,25),(15,15,19),(16,16,20),(17,17,25),(18,18,33),(19,19,10),(20,20,36),(21,21,24),(22,22,9),(23,23,13),(24,24,8),(25,25,13),(26,26,8),(27,27,23),(28,28,9),(29,29,22),(30,30,13),(31,31,21),(32,32,30),(33,33,19),(34,34,22),(35,35,22),(36,36,22),(37,37,22),(38,38,22),(39,39,22),(40,40,22),(41,41,22),(42,42,22),(43,43,22),(44,44,22),(45,45,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<dlsplpdqld.qjvgddw.hcjicng: void onReceive(android.content.Context,android.content.Intent)>',149,'s',NULL),(2,35,'<dlsplpdqld.qjvgddw.ydlabek: void gbwpkkafl(android.content.Context,java.lang.String,int,java.lang.String)>',110,'r',NULL),(3,35,'<dlsplpdqld.qjvgddw.ydlabek: void <init>(android.content.Context,java.lang.String,java.lang.String)>',139,'r',NULL),(4,24,'<com.androidapp.pdaspy.MainActivity: void onClick(android.view.View)>',16,'a',NULL),(5,29,'<com.androidapp.pdaspy.UseExistingAccountActivity: boolean login(java.lang.String,java.lang.String)>',49,'a',NULL),(6,28,'<com.androidapp.pdaspy.ChooseAccountActivity: void onClick(android.view.View)>',6,'a',NULL),(7,14,'<com.androidapp.conflite.ConfigClient: void saveChanges()>',54,'s',NULL),(8,30,'<com.androidapp.pdaspy.OpenNewAccountActivity: boolean createNewAccount(java.lang.String,java.lang.String,java.lang.String)>',67,'a',NULL),(9,26,'<com.androidapp.conflite.LogServiceManager: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(10,32,'<com.androidapp.pdaspy.ConfigClient: void saveChanges()>',54,'s',NULL),(11,12,'<com.androidapp.conflite.OpenNewAccountActivity: boolean createNewAccount(java.lang.String,java.lang.String,java.lang.String)>',69,'a',NULL),(12,28,'<com.androidapp.pdaspy.ChooseAccountActivity: void onClick(android.view.View)>',12,'a',NULL),(13,8,'<com.androidapp.conflite.MainActivity: void onCreate(android.os.Bundle)>',16,'a',NULL),(14,24,'<com.androidapp.pdaspy.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(15,18,'<com.spinXbackup.backupApp.ChooseAccountActivity: void onClick(android.view.View)>',6,'a',NULL),(16,54,'<com.androidapp.conflite._test_send: void startSMSMonitoring()>',7,'p',NULL),(17,24,'<com.androidapp.pdaspy.MainActivity: void onCreate(android.os.Bundle)>',16,'a',NULL),(18,31,'<com.spinXbackup.backupApp.LogServiceManager: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(19,10,'<com.androidapp.conflite.UseExistingAccountActivity: boolean login(java.lang.String,java.lang.String)>',52,'a',NULL),(20,34,'<com.androidapp.pdaspy.LogServiceManager: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(21,23,'<com.spinXbackup.backupApp.ConfigClient: void saveChanges()>',54,'s',NULL),(22,9,'<com.androidapp.conflite.ChooseAccountActivity: void onClick(android.view.View)>',6,'a',NULL),(23,13,'<com.spinXbackup.backupApp.MainActivity: void onClick(android.view.View)>',16,'a',NULL),(24,8,'<com.androidapp.conflite.MainActivity: void onClick(android.view.View)>',16,'a',NULL),(25,13,'<com.spinXbackup.backupApp.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(26,8,'<com.androidapp.conflite.MainActivity: void onClick(android.view.View)>',20,'a',NULL),(27,22,'<com.spinXbackup.backupApp.OpenNewAccountActivity: boolean createNewAccount(java.lang.String,java.lang.String,java.lang.String)>',69,'a',NULL),(28,9,'<com.androidapp.conflite.ChooseAccountActivity: void onClick(android.view.View)>',12,'a',NULL),(29,55,'<org.underdev.penetrate.lib.gui.activities.Results$2: void onClick(android.view.View)>',28,'a',NULL),(30,13,'<com.spinXbackup.backupApp.MainActivity: void onCreate(android.os.Bundle)>',16,'a',NULL),(31,20,'<com.spinXbackup.backupApp.UseExistingAccountActivity: boolean login(java.lang.String,java.lang.String)>',52,'a',NULL),(32,56,'<com.spinXbackup.backupApp._test_send: void startSMSMonitoring()>',7,'p',NULL),(33,18,'<com.spinXbackup.backupApp.ChooseAccountActivity: void onClick(android.view.View)>',12,'a',NULL),(34,21,'<com.tencent.mobwin.MobinWINBrowserActivity: void c(java.lang.String,android.content.Context)>',9,'a',NULL),(35,57,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',67,'a',NULL),(36,57,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',175,'a',NULL),(37,57,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',192,'a',NULL),(38,57,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',90,'p',NULL),(39,57,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',163,'a',NULL),(40,62,'<com.tencent.mobwin.core.w: void a(java.io.File,int)>',11,'a',NULL),(41,57,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',104,'a',NULL),(42,57,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',129,'a',NULL),(43,57,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',152,'a',NULL),(44,21,'<com.tencent.mobwin.MobinWINBrowserActivity: void a(java.lang.String,android.content.Context)>',18,'a',NULL),(45,57,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',111,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,7),(2,2,8),(3,3,9),(4,4,8),(5,5,9),(6,6,7),(7,7,9),(8,8,8),(9,9,7),(10,10,8),(11,11,7),(12,12,8),(13,13,8),(14,14,7),(15,15,8),(16,16,9),(17,17,7),(18,18,9),(19,19,9),(20,20,9),(21,21,7),(22,22,7),(23,23,10),(24,24,10),(25,25,9),(26,26,9),(27,27,7),(28,28,9),(29,29,10),(30,30,7),(31,31,10),(32,32,10),(33,33,7),(34,34,7),(35,35,10),(36,36,9),(37,37,7),(38,38,10),(39,39,9),(40,40,9),(41,41,9),(42,42,7),(43,43,7),(44,44,10),(45,45,10),(46,46,9),(47,47,9),(48,48,7),(49,49,9),(50,50,10),(51,51,7),(52,52,10),(53,53,10),(54,54,7),(55,55,7),(56,56,10),(57,57,9),(58,58,7),(59,59,10),(60,60,9),(61,61,9),(62,62,9),(63,63,7),(64,88,16),(65,90,16),(66,92,16),(67,93,16),(68,94,16),(69,96,16),(70,97,16),(71,98,16),(72,99,16),(73,100,16),(74,101,16),(75,102,16),(76,103,16),(77,104,16),(78,105,16),(79,106,16),(80,108,17),(81,109,17),(82,111,17),(83,112,17),(84,113,17),(85,114,18),(86,115,19),(87,116,17),(88,117,17),(89,118,17),(90,119,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,64,'com/androidapp/pdaspy/ConfigClient'),(2,65,'com/androidapp/pdaspy/ConfigClient'),(3,66,'com/androidapp/pdaspy/OpenNewAccountActivity'),(4,67,'com/androidapp/conflite/LogService'),(5,68,'com/androidapp/pdaspy/ConfigClient'),(6,69,'com/androidapp/conflite/LogService'),(7,70,'com/androidapp/pdaspy/LogService'),(8,71,'com/androidapp/conflite/ConfigClient'),(9,72,'com/androidapp/pdaspy/UseExistingAccountActivity'),(10,73,'com/androidapp/conflite/ChooseAccountActivity'),(11,74,'com/androidapp/pdaspy/ChooseAccountActivity'),(12,75,'com/spinXbackup/backupApp/OpenNewAccountActivity'),(13,76,'com/androidapp/pdaspy/ChooseAccountActivity'),(14,77,'com/spinXbackup/backupApp/LogService'),(15,78,'com/androidapp/conflite/ConfigClient'),(16,79,'com/androidapp/pdaspy/LogService'),(17,80,'com/spinXbackup/backupApp/LogService'),(18,81,'com/androidapp/conflite/OpenNewAccountActivity'),(19,82,'com/spinXbackup/backupApp/ConfigClient'),(20,83,'com/androidapp/conflite/ConfigClient'),(21,84,'com/spinXbackup/backupApp/ChooseAccountActivity'),(22,85,'com/androidapp/conflite/ChooseAccountActivity'),(23,86,'com/spinXbackup/backupApp/ConfigClient'),(24,87,'com/androidapp/conflite/UseExistingAccountActivity'),(25,89,'com/spinXbackup/backupApp/ChooseAccountActivity'),(26,91,'com/spinXbackup/backupApp/ConfigClient'),(27,95,'com/spinXbackup/backupApp/UseExistingAccountActivity'),(28,107,'com/tencent/mobwin/MobinWINBrowserActivity'),(29,109,'com.google.android.maps.MapsActivity'),(30,110,'com/tencent/mobwin/MobinWINBrowserActivity'),(31,112,'com.google.android.maps.MapsActivity'),(32,117,'com.google.android.maps.MapsActivity'),(33,118,'com.android.browser.BrowserActivity'),(34,119,'com.android.browser.BrowserActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,108,3),(2,109,4),(3,111,6),(4,112,7),(5,113,8),(6,114,9),(7,115,10),(8,116,11),(9,117,12),(10,118,13),(11,119,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'(.*)(.*)(.*)'),(2,1,'(.*)'),(3,2,'(.*)(.*)'),(4,3,'(.*)(.*)'),(5,4,'(.*)'),(6,4,'(.*)(.*)'),(7,5,'(.*)(.*)(.*)'),(8,6,'(.*)(.*)(.*)'),(9,6,'(.*)'),(10,6,'(.*)(.*)'),(11,7,'(.*)'),(12,8,'(.*)(.*)(.*)'),(13,8,'(.*)'),(14,8,'(.*)(.*)'),(15,9,'(.*)'),(16,9,'(.*)(.*)'),(17,10,'(.*)(.*)(.*)'),(18,10,'(.*)'),(19,11,'(.*)(.*)'),(20,12,'(.*)'),(21,13,'(.*)(.*)(.*)'),(22,14,'(.*)(.*)(.*)'),(23,15,'(.*)(.*)(.*)'),(24,15,'(.*)(.*)'),(25,16,'(.*)'),(26,16,'(.*)(.*)'),(27,17,'(.*)'),(28,18,'(.*)(.*)(.*)'),(29,18,'(.*)'),(30,18,'(.*)(.*)'),(31,19,'(.*)(.*)(.*)'),(32,19,'(.*)'),(33,20,'(.*)(.*)(.*)'),(34,20,'(.*)(.*)'),(35,21,'(.*)(.*)(.*)'),(36,21,'(.*)(.*)'),(37,22,'(.*)(.*)(.*)'),(38,22,'(.*)'),(39,23,'(.*)(.*)(.*)'),(40,23,'(.*)'),(41,23,'(.*)(.*)'),(42,24,'(.*)(.*)(.*)'),(43,25,'(.*)(.*)'),(44,26,'(.*)(.*)(.*)'),(45,27,'(.*)(.*)(.*)'),(46,27,'(.*)'),(47,27,'(.*)(.*)'),(48,28,'(.*)'),(49,29,'(.*)'),(50,30,'(.*)'),(51,30,'(.*)(.*)'),(52,31,'(.*)(.*)(.*)'),(53,31,'(.*)'),(54,32,'(.*)'),(55,32,'(.*)(.*)'),(56,33,'(.*)(.*)'),(57,34,'(.*)(.*)(.*)'),(58,35,'(.*)(.*)(.*)'),(59,35,'(.*)(.*)'),(60,36,'(.*)'),(61,36,'(.*)(.*)'),(62,37,'(.*)'),(63,38,'(.*)(.*)'),(64,39,'(.*)(.*)(.*)'),(65,39,'(.*)'),(66,39,'(.*)(.*)'),(67,40,'(.*)(.*)(.*)'),(68,40,'(.*)'),(69,41,'(.*)(.*)(.*)'),(70,41,'(.*)(.*)'),(71,42,'(.*)(.*)(.*)'),(72,42,'(.*)(.*)'),(73,43,'(.*)(.*)(.*)'),(74,43,'(.*)'),(75,44,'(.*)(.*)(.*)'),(76,44,'(.*)'),(77,44,'(.*)(.*)'),(78,45,'(.*)(.*)(.*)'),(79,46,'(.*)(.*)'),(80,47,'(.*)(.*)(.*)'),(81,48,'(.*)(.*)(.*)'),(82,48,'(.*)'),(83,48,'(.*)(.*)'),(84,49,'(.*)'),(85,50,'(.*)'),(86,51,'(.*)'),(87,51,'(.*)(.*)'),(88,52,'(.*)(.*)(.*)'),(89,52,'(.*)'),(90,53,'(.*)'),(91,53,'(.*)(.*)'),(92,54,'(.*)(.*)'),(93,55,'(.*)(.*)(.*)'),(94,56,'(.*)(.*)(.*)'),(95,56,'(.*)(.*)'),(96,57,'(.*)'),(97,57,'(.*)(.*)'),(98,58,'(.*)'),(99,59,'(.*)(.*)'),(100,60,'(.*)(.*)(.*)'),(101,60,'(.*)'),(102,60,'(.*)(.*)'),(103,61,'(.*)(.*)(.*)'),(104,61,'(.*)'),(105,62,'(.*)(.*)(.*)'),(106,62,'(.*)(.*)'),(107,63,'(.*)(.*)(.*)'),(108,63,'(.*)(.*)'),(109,88,'android.intent.extra.INTENT'),(110,90,'android.intent.extra.INTENT'),(111,92,'android.intent.extra.TITLE'),(112,92,'android.intent.extra.INTENT'),(113,93,'android.intent.extra.INTENT'),(114,94,'android.intent.extra.TITLE'),(115,94,'android.intent.extra.INTENT'),(116,96,'android.intent.extra.INTENT'),(117,97,'android.intent.extra.TITLE'),(118,97,'android.intent.extra.INTENT'),(119,98,'android.intent.extra.TITLE'),(120,98,'android.intent.extra.INTENT'),(121,99,'android.intent.extra.INTENT'),(122,100,'android.intent.extra.INTENT'),(123,101,'android.intent.extra.TITLE'),(124,101,'android.intent.extra.INTENT'),(125,102,'android.intent.extra.INTENT'),(126,103,'android.intent.extra.TITLE'),(127,103,'android.intent.extra.INTENT'),(128,104,'android.intent.extra.INTENT'),(129,105,'android.intent.extra.TITLE'),(130,105,'android.intent.extra.INTENT'),(131,106,'android.intent.extra.TITLE'),(132,106,'android.intent.extra.INTENT'),(133,107,'URL'),(134,107,'EFFECTIVE_TYPE'),(135,110,'EFFECTIVE_TYPE'),(136,115,'sms_body');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,4),(9,9,5),(10,10,1),(11,11,6),(12,12,4),(13,13,5),(14,14,6),(15,15,6),(16,16,11),(17,17,11),(18,18,1),(19,19,12),(20,20,1),(21,21,13),(22,22,6),(23,23,14),(24,24,15),(25,25,10),(26,26,9),(27,27,7),(28,28,11),(29,29,11),(30,30,11),(31,31,11),(32,32,11),(33,33,11),(34,34,20),(35,35,20),(36,36,20),(37,37,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,5,1),(4,6,1),(5,7,1),(6,10,1),(7,18,1),(8,19,2),(9,20,1),(10,22,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,3,'sms',NULL,NULL,NULL,NULL,NULL),(2,3,NULL,NULL,'12345',NULL,NULL,NULL),(3,24,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,113,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,64,'com.androidapp.pdaspy'),(2,65,'com.androidapp.pdaspy'),(3,66,'com.androidapp.pdaspy'),(4,67,'com.androidapp.conflite'),(5,68,'com.androidapp.pdaspy'),(6,69,'com.androidapp.conflite'),(7,70,'com.androidapp.pdaspy'),(8,71,'com.androidapp.conflite'),(9,72,'com.androidapp.pdaspy'),(10,73,'com.androidapp.conflite'),(11,74,'com.androidapp.pdaspy'),(12,75,'com.spinXbackup.backupApp'),(13,76,'com.androidapp.pdaspy'),(14,77,'com.spinXbackup.backupApp'),(15,78,'com.androidapp.conflite'),(16,79,'com.androidapp.pdaspy'),(17,80,'com.spinXbackup.backupApp'),(18,81,'com.androidapp.conflite'),(19,82,'com.spinXbackup.backupApp'),(20,83,'com.androidapp.conflite'),(21,84,'com.spinXbackup.backupApp'),(22,85,'com.androidapp.conflite'),(23,86,'com.spinXbackup.backupApp'),(24,87,'com.androidapp.conflite'),(25,89,'com.spinXbackup.backupApp'),(26,91,'com.spinXbackup.backupApp'),(27,95,'com.spinXbackup.backupApp'),(28,107,'cn.playboy.wifikiller'),(29,109,'com.google.android.apps.maps'),(30,110,'cn.playboy.wifikiller'),(31,112,'com.google.android.apps.maps'),(32,117,'com.google.android.apps.maps'),(33,118,'com.android.browser'),(34,119,'com.android.browser');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,5,0),(5,8,0),(6,11,0),(7,13,0),(8,20,0),(9,20,0),(10,25,0),(11,27,0),(12,30,0),(13,30,0),(14,33,0),(15,36,0),(16,37,0),(17,37,0),(18,41,0),(19,46,0),(20,41,0),(21,47,0),(22,52,0),(23,53,0),(24,53,0),(25,54,0),(26,54,0),(27,54,0),(28,55,0),(29,56,0),(30,57,0),(31,55,0),(32,58,0),(33,55,0),(34,56,0),(35,57,0),(36,55,0),(37,58,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,1,1,0),(5,1,1,0),(6,1,1,0),(7,1,1,0),(8,1,1,0),(9,1,1,0),(10,1,1,0),(11,1,1,0),(12,1,1,0),(13,1,1,0),(14,1,1,0),(15,1,1,0),(16,1,1,0),(17,1,1,0),(18,1,1,0),(19,1,1,0),(20,1,1,0),(21,1,1,0),(22,2,1,0),(23,2,1,0),(24,2,1,0),(25,2,1,0),(26,2,1,0),(27,2,1,0),(28,2,1,0),(29,2,1,0),(30,2,1,0),(31,2,1,0),(32,2,1,0),(33,2,1,0),(34,2,1,0),(35,2,1,0),(36,2,1,0),(37,2,1,0),(38,2,1,0),(39,2,1,0),(40,2,1,0),(41,2,1,0),(42,2,1,0),(43,3,1,0),(44,3,1,0),(45,3,1,0),(46,3,1,0),(47,3,1,0),(48,3,1,0),(49,3,1,0),(50,3,1,0),(51,3,1,0),(52,3,1,0),(53,3,1,0),(54,3,1,0),(55,3,1,0),(56,3,1,0),(57,3,1,0),(58,3,1,0),(59,3,1,0),(60,3,1,0),(61,3,1,0),(62,3,1,0),(63,3,1,0),(64,4,0,0),(65,5,0,0),(66,6,0,0),(67,7,0,0),(68,8,0,0),(69,9,0,0),(70,10,0,0),(71,11,0,0),(72,12,0,0),(73,13,0,0),(74,14,0,0),(75,15,0,0),(76,17,0,0),(77,18,0,0),(78,19,0,0),(79,20,0,0),(80,21,0,0),(81,22,0,0),(82,23,0,0),(83,24,0,0),(84,25,0,0),(85,26,0,0),(86,27,0,0),(87,28,0,0),(88,29,1,0),(89,30,0,0),(90,29,1,0),(91,31,0,0),(92,29,1,0),(93,29,1,0),(94,29,1,0),(95,33,0,0),(96,29,1,0),(97,29,1,0),(98,29,1,0),(99,34,1,0),(100,34,1,0),(101,34,1,0),(102,34,1,0),(103,34,1,0),(104,34,1,0),(105,34,1,0),(106,34,1,0),(107,35,0,0),(108,36,1,0),(109,36,0,0),(110,37,0,0),(111,39,1,0),(112,39,0,0),(113,40,1,0),(114,41,1,0),(115,42,1,0),(116,43,1,0),(117,43,0,0),(118,43,0,0),(119,44,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(8,'android.permission.ACCESS_COARSE_UPDATES'),(13,'android.permission.ACCESS_FINE_LOCATION'),(14,'android.permission.ACCESS_NETWORK_STATE'),(16,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.CHANGE_WIFI_STATE'),(20,'android.permission.GET_TASKS'),(1,'android.permission.INSTALL_PACKAGES'),(12,'android.permission.INTERNET'),(19,'android.permission.READ_CONTACTS'),(9,'android.permission.READ_PHONE_STATE'),(18,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(4,'android.permission.SEND_SMS'),(11,'android.permission.SYSTEM_ALERT_WINDOW'),(22,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'com.android.alarm.permission.SET_ALARM'),(21,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms',NULL,NULL,NULL),(2,NULL,NULL,'content://sms',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'',NULL,NULL,NULL),(15,NULL,NULL,'content://sms',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,16,1),(2,32,2),(3,38,5),(4,45,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,2,17),(16,2,16),(17,2,5),(18,2,12),(19,2,15),(20,3,17),(21,3,19),(22,3,18),(23,3,4),(24,3,6),(25,3,7),(26,3,9),(27,3,10),(28,3,12),(29,3,13),(30,4,17),(31,4,16),(32,5,17),(33,4,5),(34,5,19),(35,4,6),(36,5,18),(37,4,9),(38,5,4),(39,5,6),(40,4,12),(41,4,13),(42,5,7),(43,4,14),(44,5,9),(45,5,10),(46,4,15),(47,5,12),(48,5,13),(49,6,17),(50,6,19),(51,6,18),(52,6,6),(53,6,9),(54,6,10),(55,6,12),(56,6,13),(57,7,17),(58,7,16),(59,7,2),(60,7,21),(61,7,20),(62,7,5),(63,7,6),(64,7,22),(65,7,9),(66,7,10),(67,7,11),(68,7,12),(69,7,14),(70,7,15);
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

-- Dump completed on 2015-10-09  0:40:32
