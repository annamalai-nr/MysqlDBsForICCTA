-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_750
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'SERVICE_RESCHEDULE'),(21,'SERVICE_START'),(20,'SMS_DELIVERED'),(8,'SMS_SENT'),(17,'android.intent.action.BATTERY_CHANGED'),(6,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.CHOOSER'),(19,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(11,'android.intent.action.SEARCH'),(24,'android.intent.action.SEND'),(18,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(7,'android.provider.Telephony.SMS_RECEIVED'),(13,'com.airpush.android.PushServiceStart(.*)'),(3,'com.airpush.android.PushServiceStart12203'),(16,'com.airpush.android.PushServiceStartInvalid'),(14,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(15,'com.airpush.android.PushServiceStartinvalid Id'),(4,'com.android.vending.INSTALL_REFERRER'),(23,'com.android.vending.billing.MarketBillingService.BIND'),(10,'ru.jabox.android.smsbox.SMS_SENT_Jabox'),(9,'ru.jabox.logcollector.intent.action.SEND_LOG'),(22,'stop');
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
INSERT INTO `Applications` VALUES (1,'com.first.azip',1),(2,'ru.jabox.android.smsbox.jokebox',10),(3,'biz.neoline.test',1),(4,'com.netmite.andme.launcher.u_041f04350440043204',2000),(5,'com.begamer.MC_QueenStone',1),(6,'com.turbophone.ca4',2),(7,'com.appsministry.sams.lukyanenkos.ochenvajniyy.l',221);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(5,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.SAMPLE_CODE');
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
INSERT INTO `Classes` VALUES (1,1,'com.first.azip.AzipActivity'),(2,1,'com.first.azip.ScreenActivity'),(3,1,'com.first.azip.FinActivity'),(4,1,'com.first.azip.HelpActivity'),(5,2,'ru.jabox.android.smsbox.activity.StartupActivity'),(6,3,'biz.neoline.test.MainActivity'),(7,2,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(8,2,'ru.jabox.android.smsbox.activity.ChooseTemplateActivity'),(9,3,'biz.neoline.test.TestActivity'),(10,2,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(11,2,'ru.jabox.android.smsbox.activity.HelpActivity'),(12,2,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(13,2,'ru.jabox.android.smsbox.activity.OurProjectsActivity'),(14,2,'ru.jabox.android.smsbox.log.SendLogActivity'),(15,4,'com.netmite.andme.launcher.u_041f04350440043204.Gid'),(16,5,'com.begamer.android.midlet.MidletBridge'),(17,5,'com.begamer.game.MyDialog'),(18,5,'com.waps.OffersWebView'),(19,6,'com.turbophone.ca4.TurboPhone'),(20,6,'com.turbophone.ca4.Main'),(21,6,'com.turbophone.lib.Banner'),(22,6,'com.turbophone.lib.OptInPage'),(23,6,'com.turbophone.lib.TermsAndConditions'),(24,6,'com.turbophone.lib.PrivacyPolicy'),(25,6,'com.airpush.android.PushAds'),(26,6,'com.turbophone.ca4.BatteryService'),(27,6,'com.airpush.android.PushService'),(28,6,'com.turbophone.utils.GoogleInterceptor'),(29,6,'com.turbophone.ca4.PhoneStateReceiver'),(30,6,'com.airpush.android.UserDetailsReceiver'),(31,6,'com.airpush.android.MessageReceiver'),(32,6,'com.airpush.android.DeliveryReceiver'),(33,6,'com.turbophone.ca4.BootReceiver'),(34,3,'biz.neoline.lib.SmsReceiver'),(35,3,'biz.neoline.lib.PurchaseActivityCore$7'),(36,4,'com.netmite.andme.launcher.Launcher'),(37,3,'biz.neoline.test.MainActivity$1'),(38,3,'biz.neoline.lib.SMSSender$1'),(39,2,'ru.jabox.android.smsbox.d.d'),(40,7,'biz.neoline.android.reader.NeoBookReader'),(41,7,'biz.neoline.android.reader.TextSearchActivity'),(42,7,'biz.neoline.android.reader.LibraryActivity'),(43,7,'biz.neoline.android.reader.BookmarksAndTocActivity'),(44,7,'biz.neoline.app_core.ui.android.library.CrashReportingActivity'),(45,7,'biz.neoline.app_core.ui.android.dialogs.DialogActivity'),(46,7,'biz.neoline.test.DonationActivity'),(47,7,'com.google.android.apps.analytics.AnalyticsReceiver'),(48,6,'com.turbophone.utils.SmsTransaction$2'),(49,6,'com.turbophone.ca4.BatteryService$1'),(50,6,'com.google.android.apps.analytics.AnalyticsReceiver'),(51,6,'com.turbophone.utils.SmsTransaction$1'),(52,6,'com.turbophone.ca4.JSInterface$1'),(53,7,'biz.neoline.lib.SmsReceiver'),(54,7,'biz.neoline.lib.SMSSender$1'),(55,7,'biz.neoline.test.DonationActivity$1'),(56,7,'biz.neoline.lib.SMSCleanerAfterwards'),(57,7,'biz.neoline.android.reader.LibraryActivity$MyLibraryAdapter$2'),(58,7,'biz.neoline.test.inapp.BillingService'),(59,7,'biz.neoline.android.reader.LibraryActivity$BookClickListener'),(60,7,'biz.neoline.lib.PurchaseActivityCore$8'),(61,7,'biz.neoline.app_core.ui.android.library.CrashReportingActivity$1'),(62,7,'biz.neoline.test.inapp.PurchaseObserver');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'0'),(2,4,'0'),(3,6,'SMSPRICE'),(4,6,'PARTNERSINTEREST'),(5,6,'CURRENCY'),(6,14,'android.intent.extra.EMAIL'),(7,8,'categoryId'),(8,14,'ru.jabox.logcollector.intent.extra.BUFFER'),(9,14,'ru.jabox.logcollector.intent.extra.FORMAT'),(10,10,'templateSenderName'),(11,10,'templateId'),(12,10,'templateText'),(13,10,'categoryId'),(14,8,'categoryName'),(15,14,'android.intent.extra.BCC'),(16,14,'android.intent.extra.CC'),(17,14,'android.intent.extra.SUBJECT'),(18,14,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(19,14,'ru.jabox.logcollector.intent.extra.DATA'),(20,14,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(21,32,'url'),(22,19,'dynamicContent'),(23,32,'title'),(24,25,'sms'),(25,25,'apikey'),(26,27,'imageurl'),(27,27,'campId'),(28,25,'campId'),(29,29,'startTime'),(30,27,'creativeId'),(31,27,'text'),(32,25,'creativeId'),(33,29,'interval'),(34,27,'header'),(35,32,'apikey'),(36,28,'referrer'),(37,27,'appId'),(38,27,'title'),(39,25,'number'),(40,32,'imageurl'),(41,27,'type'),(42,27,'number'),(43,32,'imei'),(44,19,'url'),(45,25,'appId'),(46,27,'sms'),(47,32,'number'),(48,32,'sms'),(49,32,'text'),(50,27,'link'),(51,25,'url'),(52,32,'appId'),(53,32,'campId'),(54,32,'header'),(55,23,'content'),(56,22,'dynamicContent'),(57,32,'creativeId'),(58,25,'adType'),(59,27,'adType'),(60,24,'content'),(61,25,'header'),(62,27,'testMode'),(63,25,'test'),(64,27,'apikey'),(65,37,'RequestedOrientation'),(66,37,'CurrentOrientation'),(67,38,'query'),(68,38,'PURCHASE_INTENT'),(69,42,'PURCHASE_INTENT'),(70,37,'PURCHASE_INTENT'),(71,40,'PURCHASE_INTENT'),(72,39,'PURCHASE_INTENT'),(73,37,'ChangeCounter'),(74,38,'REQUEST_ID'),(75,42,'REQUEST_ID'),(76,37,'REQUEST_ID'),(77,40,'REQUEST_ID'),(78,39,'REQUEST_ID'),(79,44,'referrer'),(80,38,'RESPONSE_CODE'),(81,42,'RESPONSE_CODE'),(82,37,'RESPONSE_CODE'),(83,40,'RESPONSE_CODE'),(84,39,'RESPONSE_CODE'),(85,41,'neobook.stacktrace');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'s',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'r',0,NULL,NULL),(31,31,'r',0,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,38,'r',1,NULL,NULL),(36,39,'r',1,NULL,NULL),(37,40,'a',1,NULL,NULL),(38,41,'a',1,NULL,NULL),(39,42,'a',0,NULL,NULL),(40,43,'a',0,NULL,NULL),(41,44,'a',0,NULL,NULL),(42,45,'a',0,NULL,NULL),(43,46,'a',0,NULL,NULL),(44,47,'r',1,NULL,NULL),(45,48,'r',1,NULL,NULL),(46,49,'r',1,NULL,NULL),(47,50,'r',1,NULL,NULL),(48,51,'r',1,NULL,NULL),(49,30,'r',1,NULL,NULL),(50,32,'r',1,NULL,NULL),(51,31,'r',1,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,6),(7,7,15),(8,8,6),(9,9,15),(10,10,7),(11,11,8),(12,12,13),(13,13,7),(14,14,5),(15,15,7),(16,16,7),(17,17,7),(18,18,7),(19,19,32),(20,20,19),(21,21,31),(22,22,19),(23,23,30),(24,24,19),(25,25,25),(26,26,25),(27,27,19),(28,28,20),(29,29,37),(30,30,39),(31,31,37),(32,31,42),(33,31,39),(34,31,38),(35,31,40),(36,32,39),(37,33,37),(38,34,37),(39,34,41),(40,35,37),(41,35,40),(42,35,38),(43,35,39),(44,35,42),(45,36,39),(46,36,40),(47,36,42),(48,36,37),(49,36,38),(50,37,42),(51,37,40),(52,37,38),(53,37,39),(54,37,37),(55,38,39),(56,39,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.first.azip.HelpActivity: void onClick(android.view.View)>',8,'a',NULL),(2,1,'<com.first.azip.AzipActivity: boolean onKeyDown(int,android.view.KeyEvent)>',12,'a',NULL),(3,1,'<com.first.azip.AzipActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',NULL),(4,1,'<com.first.azip.AzipActivity: void sendSms(java.lang.String,java.lang.String,java.lang.String)>',29,'a',NULL),(5,1,'<com.first.azip.AzipActivity: void goSite()>',5,'a',NULL),(6,35,'<biz.neoline.lib.PurchaseActivityCore$7: void onClick(android.view.View)>',7,'a',NULL),(7,36,'<com.netmite.andme.launcher.Launcher: void startGetRunner(int)>',14,'a',NULL),(8,37,'<biz.neoline.test.MainActivity$1: void onClick(android.view.View)>',14,'a',NULL),(9,36,'<com.netmite.andme.launcher.Launcher: void startRunner(android.os.Bundle)>',4,'a',NULL),(10,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(11,8,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(12,13,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(13,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(14,5,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(15,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(16,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(17,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(18,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(19,32,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(20,19,'<com.turbophone.ca4.TurboPhone: void showWebView(java.lang.String)>',8,'a',NULL),(21,31,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',35,'s',NULL),(22,19,'<com.turbophone.ca4.TurboPhone: void onCreate(android.os.Bundle)>',10,'a',NULL),(23,30,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',34,'s',NULL),(24,19,'<com.turbophone.ca4.TurboPhone: void onActivityResult(int,int,android.content.Intent)>',14,'a',NULL),(25,25,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',147,'a',NULL),(26,25,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',71,'a',NULL),(27,19,'<com.turbophone.ca4.TurboPhone: void showWebView(java.lang.String)>',5,'a',NULL),(28,20,'<com.turbophone.ca4.Main: void onResume()>',5,'s',NULL),(29,40,'<biz.neoline.android.reader.NeoBookReader: void onStart()>',12,'a',NULL),(30,57,'<biz.neoline.android.reader.LibraryActivity$MyLibraryAdapter$2: java.lang.Boolean doInBackground(java.lang.String[])>',24,'a',NULL),(31,58,'<biz.neoline.test.inapp.BillingService: boolean bindToMarketBillingService()>',6,'s',NULL),(32,59,'<biz.neoline.android.reader.LibraryActivity$BookClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(33,60,'<biz.neoline.lib.PurchaseActivityCore$8: void onClick(android.view.View)>',7,'a',NULL),(34,61,'<biz.neoline.app_core.ui.android.library.CrashReportingActivity$1: void onClick(android.view.View)>',30,'a',NULL),(35,62,'<biz.neoline.test.inapp.PurchaseObserver: void startBuyPageActivity(android.app.PendingIntent,android.content.Intent)>',29,'a',0),(36,62,'<biz.neoline.test.inapp.PurchaseObserver: void startBuyPageActivity(android.app.PendingIntent,android.content.Intent)>',29,'r',0),(37,62,'<biz.neoline.test.inapp.PurchaseObserver: void startBuyPageActivity(android.app.PendingIntent,android.content.Intent)>',29,'s',0),(38,59,'<biz.neoline.android.reader.LibraryActivity$BookClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(39,46,'<biz.neoline.test.DonationActivity: void turnAdsOff(android.content.Context)>',25,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,5,2),(3,6,2),(4,7,2),(5,9,2),(6,10,1),(7,11,1),(8,12,1),(9,13,1),(10,14,9),(11,17,2),(12,21,12),(13,22,12),(14,23,12),(15,24,12),(16,25,12),(17,26,12),(18,27,12),(19,28,12),(20,32,13),(21,33,13),(22,34,14),(23,35,13),(24,36,13),(25,37,14),(26,38,14),(27,39,14),(28,41,13),(29,42,15),(30,43,16),(31,45,13),(32,46,16),(33,47,15),(34,49,18),(35,50,19),(36,52,21),(37,54,2),(38,55,23),(39,56,2),(40,57,2),(41,58,24),(42,59,1),(43,60,1),(44,61,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,10,1),(2,11,1),(3,12,1),(4,13,1),(5,59,1),(6,60,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/first/azip/HelpActivity'),(2,3,'com/first/azip/ScreenActivity'),(3,4,'com/first/azip/FinActivity'),(4,8,'biz/neoline/test/TestActivity'),(5,10,'com.netmite.andme.MIDletRunner'),(6,11,'com.netmite.andme.MIDletRunner'),(7,12,'com.netmite.andme.MIDletRunner'),(8,13,'com.netmite.andme.MIDletRunner'),(9,14,'ru/jabox/android/smsbox/log/SendLogActivity'),(10,15,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(11,16,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(12,18,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(13,19,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(14,20,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(15,29,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(16,30,'ru/jabox/android/smsbox/activity/HelpActivity'),(17,40,'com/turbophone/ca4/Main'),(18,44,'com/turbophone/lib/Banner'),(19,48,'com/turbophone/lib/OptInPage'),(20,51,'com/turbophone/lib/PFAWebView'),(21,52,'com/turbophone/ca4/BatteryService'),(22,53,'biz.neoline.android.reader.NeoBookReader');
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
INSERT INTO `IData` VALUES (1,1,1),(2,5,2),(3,6,3),(4,7,4),(5,9,5),(6,17,6),(7,49,7),(8,50,8),(9,54,9),(10,56,10),(11,57,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'0'),(2,3,'0'),(3,10,'midletapkpath'),(4,10,'midletclass'),(5,10,'(.*)'),(6,10,'midleturl'),(7,11,'midletapkpath'),(8,11,'midleturl'),(9,12,'midletapkpath'),(10,12,'midletclass'),(11,12,'midleturl'),(12,13,'midletapkpath'),(13,13,'(.*)'),(14,13,'midleturl'),(15,14,'android.intent.extra.SUBJECT'),(16,14,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(17,14,'ru.jabox.logcollector.intent.extra.FORMAT'),(18,14,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(19,14,'ru.jabox.logcollector.intent.extra.DATA'),(20,15,'templateId'),(21,15,'categoryId'),(22,15,'templateText'),(23,16,'templateId'),(24,16,'templateSenderName'),(25,16,'categoryId'),(26,16,'templateText'),(27,21,'android.intent.extra.INTENT'),(28,22,'android.intent.extra.INTENT'),(29,23,'android.intent.extra.TITLE'),(30,23,'android.intent.extra.INTENT'),(31,24,'android.intent.extra.INTENT'),(32,25,'android.intent.extra.TITLE'),(33,25,'android.intent.extra.INTENT'),(34,26,'android.intent.extra.INTENT'),(35,27,'android.intent.extra.TITLE'),(36,27,'android.intent.extra.INTENT'),(37,28,'android.intent.extra.TITLE'),(38,28,'android.intent.extra.INTENT'),(39,29,'categoryName'),(40,29,'categoryId'),(41,32,'campId'),(42,32,'text'),(43,32,'title'),(44,32,'creativeId'),(45,32,'appId'),(46,32,'expiry_time'),(47,32,'number'),(48,32,'adType'),(49,32,'type'),(50,32,'sms'),(51,32,'imageurl'),(52,32,'apikey'),(53,33,'campId'),(54,33,'title'),(55,33,'text'),(56,33,'creativeId'),(57,33,'appId'),(58,33,'expiry_time'),(59,33,'link'),(60,33,'adType'),(61,33,'type'),(62,33,'imageurl'),(63,33,'header'),(64,33,'apikey'),(65,34,'campId'),(66,34,'text'),(67,34,'title'),(68,34,'creativeId'),(69,34,'appId'),(70,34,'expiry_time'),(71,34,'number'),(72,34,'adType'),(73,34,'type'),(74,34,'sms'),(75,34,'imageurl'),(76,34,'apikey'),(77,35,'title'),(78,35,'text'),(79,35,'appId'),(80,35,'expiry_time'),(81,35,'number'),(82,35,'adType'),(83,35,'type'),(84,35,'imageurl'),(85,35,'apikey'),(86,36,'campId'),(87,36,'title'),(88,36,'text'),(89,36,'creativeId'),(90,36,'appId'),(91,36,'expiry_time'),(92,36,'link'),(93,36,'adType'),(94,36,'type'),(95,36,'imageurl'),(96,36,'apikey'),(97,37,'campId'),(98,37,'title'),(99,37,'text'),(100,37,'creativeId'),(101,37,'appId'),(102,37,'expiry_time'),(103,37,'link'),(104,37,'adType'),(105,37,'type'),(106,37,'imageurl'),(107,37,'header'),(108,37,'apikey'),(109,38,'title'),(110,38,'text'),(111,38,'appId'),(112,38,'expiry_time'),(113,38,'number'),(114,38,'adType'),(115,38,'type'),(116,38,'imageurl'),(117,38,'apikey'),(118,39,'campId'),(119,39,'title'),(120,39,'text'),(121,39,'creativeId'),(122,39,'appId'),(123,39,'expiry_time'),(124,39,'link'),(125,39,'adType'),(126,39,'type'),(127,39,'imageurl'),(128,39,'apikey'),(129,41,'icon'),(130,41,'appId'),(131,41,'testMode'),(132,41,'type'),(133,41,'apikey'),(134,42,'icon'),(135,42,'appId'),(136,42,'testMode'),(137,42,'type'),(138,42,'apikey'),(139,43,'icon'),(140,43,'appId'),(141,43,'testMode'),(142,43,'type'),(143,43,'apikey'),(144,45,'appId'),(145,45,'type'),(146,45,'apikey'),(147,46,'appId'),(148,46,'type'),(149,46,'apikey'),(150,47,'appId'),(151,47,'type'),(152,47,'apikey'),(153,48,'dynamicContent'),(154,49,'sms_body'),(155,51,'url'),(156,58,'android.intent.extra.TEXT'),(157,58,'android.intent.extra.SUBJECT'),(158,58,'android.intent.extra.EMAIL');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,3),(11,11,4),(12,12,5),(13,13,6),(14,14,7),(15,15,8),(16,16,8),(17,17,10),(18,18,1),(19,19,11),(20,20,4),(21,21,10),(22,22,17),(23,23,17),(24,24,17),(25,25,17),(26,26,17),(27,27,17),(28,28,17),(29,29,17),(30,30,17),(31,31,17),(32,32,17),(33,33,20),(34,34,8),(35,35,17),(36,36,17),(37,37,17),(38,38,17),(39,39,17),(40,40,17),(41,41,17),(42,42,17),(43,43,17),(44,44,17),(45,45,17),(46,46,8),(47,47,8),(48,48,8),(49,49,8),(50,50,8),(51,51,22),(52,52,22),(53,53,22),(54,54,22),(55,55,22),(56,56,7),(57,57,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,2),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,13,3),(11,18,1),(12,19,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,10,'application','vnd.android.package-archive'),(2,11,'application','vnd.android.package-archive'),(3,12,'application','vnd.android.package-archive'),(4,13,'application','vnd.android.package-archive'),(5,54,'application','vnd.android.package-archive'),(6,58,'message','rfc822');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.first.azip'),(2,3,'com.first.azip'),(3,4,'com.first.azip'),(4,8,'biz.neoline.test'),(5,10,'com.netmite.andme'),(6,11,'com.netmite.andme'),(7,12,'com.netmite.andme'),(8,13,'com.netmite.andme'),(9,14,'ru.jabox.android.smsbox.jokebox'),(10,15,'ru.jabox.android.smsbox.jokebox'),(11,16,'ru.jabox.android.smsbox.jokebox'),(12,18,'ru.jabox.android.smsbox.jokebox'),(13,19,'ru.jabox.android.smsbox.jokebox'),(14,20,'ru.jabox.android.smsbox.jokebox'),(15,29,'ru.jabox.android.smsbox.jokebox'),(16,30,'ru.jabox.android.smsbox.jokebox'),(17,40,'com.turbophone.ca4'),(18,44,'com.turbophone.ca4'),(19,48,'com.turbophone.ca4'),(20,51,'com.turbophone.ca4'),(21,52,'com.turbophone.ca4'),(22,53,'com.appsministry.sams.lukyanenkos.ochenvajniyy.l'),(23,59,'(.*)'),(24,60,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,15,0),(8,16,0),(9,19,0),(10,27,0),(11,28,0),(12,29,0),(13,33,0),(14,34,0),(15,34,0),(16,35,0),(17,36,0),(18,37,0),(19,38,0),(20,44,0),(21,36,0),(22,33,0),(23,28,0),(24,45,0),(25,46,0),(26,47,0),(27,48,0),(28,29,0),(29,49,0),(30,50,0),(31,51,0),(32,52,0),(33,45,0),(34,48,0),(35,33,0),(36,28,0),(37,45,0),(38,46,0),(39,47,0),(40,48,0),(41,29,0),(42,49,0),(43,50,0),(44,51,0),(45,52,0),(46,53,0),(47,54,0),(48,55,0),(49,44,0),(50,56,0),(51,53,0),(52,54,0),(53,55,0),(54,44,0),(55,56,0),(56,53,0),(57,56,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,1,0),(7,7,1,0),(8,8,0,0),(9,9,1,0),(10,9,0,0),(11,9,0,0),(12,9,0,0),(13,9,0,0),(14,10,0,0),(15,11,0,0),(16,11,0,0),(17,12,1,0),(18,13,0,0),(19,14,0,0),(20,15,0,0),(21,16,1,0),(22,16,1,0),(23,16,1,0),(24,16,1,0),(25,16,1,0),(26,16,1,0),(27,16,1,0),(28,16,1,0),(29,17,0,0),(30,18,0,0),(31,19,1,0),(32,19,1,0),(33,19,1,0),(34,19,1,0),(35,19,1,0),(36,19,1,0),(37,19,1,0),(38,19,1,0),(39,19,1,0),(40,20,0,0),(41,21,1,0),(42,21,1,0),(43,21,1,0),(44,22,0,0),(45,23,1,0),(46,23,1,0),(47,23,1,0),(48,24,0,0),(49,25,1,0),(50,26,1,0),(51,27,0,0),(52,28,0,0),(53,29,0,0),(54,30,1,0),(55,31,1,0),(56,32,1,0),(57,33,1,0),(58,34,1,0),(59,38,1,0),(60,38,1,0),(61,39,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=869 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,5,16,2,NULL),(2,21,16,2,NULL),(3,22,16,2,NULL),(4,23,16,2,NULL),(5,24,16,2,NULL),(6,25,16,2,NULL),(7,26,16,2,NULL),(8,27,16,2,NULL),(9,28,16,2,NULL),(10,17,16,2,NULL),(11,49,16,2,NULL),(12,50,16,2,NULL),(13,45,16,2,NULL),(14,46,16,2,NULL),(15,47,16,2,NULL),(16,41,16,2,NULL),(17,42,16,2,NULL),(18,43,16,2,NULL),(19,31,16,2,NULL),(20,32,16,2,NULL),(21,33,16,2,NULL),(22,34,16,2,NULL),(23,35,16,2,NULL),(24,36,16,2,NULL),(25,37,16,2,NULL),(26,38,16,2,NULL),(27,39,16,2,NULL),(28,61,16,2,NULL),(29,5,15,2,NULL),(30,21,15,2,NULL),(31,22,15,2,NULL),(32,23,15,2,NULL),(33,24,15,2,NULL),(34,25,15,2,NULL),(35,26,15,2,NULL),(36,27,15,2,NULL),(37,28,15,2,NULL),(38,17,15,2,NULL),(39,49,15,2,NULL),(40,50,15,2,NULL),(41,45,15,2,NULL),(42,46,15,2,NULL),(43,47,15,2,NULL),(44,41,15,2,NULL),(45,42,15,2,NULL),(46,43,15,2,NULL),(47,31,15,2,NULL),(48,32,15,2,NULL),(49,33,15,2,NULL),(50,34,15,2,NULL),(51,35,15,2,NULL),(52,36,15,2,NULL),(53,37,15,2,NULL),(54,38,15,2,NULL),(55,39,15,2,NULL),(56,61,15,2,NULL),(57,19,7,2,NULL),(58,5,5,2,NULL),(59,21,5,2,NULL),(60,22,5,2,NULL),(61,23,5,2,NULL),(62,24,5,2,NULL),(63,25,5,2,NULL),(64,26,5,2,NULL),(65,27,5,2,NULL),(66,28,5,2,NULL),(67,17,5,2,NULL),(68,49,5,2,NULL),(69,50,5,2,NULL),(70,45,5,2,NULL),(71,46,5,2,NULL),(72,47,5,2,NULL),(73,41,5,2,NULL),(74,42,5,2,NULL),(75,43,5,2,NULL),(76,31,5,2,NULL),(77,32,5,2,NULL),(78,33,5,2,NULL),(79,34,5,2,NULL),(80,35,5,2,NULL),(81,36,5,2,NULL),(82,37,5,2,NULL),(83,38,5,2,NULL),(84,39,5,2,NULL),(85,61,5,2,NULL),(86,14,14,2,NULL),(87,18,13,2,NULL),(88,20,12,2,NULL),(89,29,8,2,NULL),(90,30,11,2,NULL),(91,21,1,2,NULL),(92,22,1,2,NULL),(93,23,1,2,NULL),(94,24,1,2,NULL),(95,25,1,2,NULL),(96,26,1,2,NULL),(97,27,1,2,NULL),(98,28,1,2,NULL),(99,21,2,2,NULL),(100,22,2,2,NULL),(101,23,2,2,NULL),(102,24,2,2,NULL),(103,25,2,2,NULL),(104,26,2,2,NULL),(105,27,2,2,NULL),(106,28,2,2,NULL),(107,21,3,2,NULL),(108,22,3,2,NULL),(109,23,3,2,NULL),(110,24,3,2,NULL),(111,25,3,2,NULL),(112,26,3,2,NULL),(113,27,3,2,NULL),(114,28,3,2,NULL),(115,21,4,2,NULL),(116,22,4,2,NULL),(117,23,4,2,NULL),(118,24,4,2,NULL),(119,25,4,2,NULL),(120,26,4,2,NULL),(121,27,4,2,NULL),(122,28,4,2,NULL),(123,21,36,2,NULL),(124,22,36,2,NULL),(125,23,36,2,NULL),(126,24,36,2,NULL),(127,25,36,2,NULL),(128,26,36,2,NULL),(129,27,36,2,NULL),(130,28,36,2,NULL),(131,21,6,2,NULL),(132,22,6,2,NULL),(133,23,6,2,NULL),(134,24,6,2,NULL),(135,25,6,2,NULL),(136,26,6,2,NULL),(137,27,6,2,NULL),(138,28,6,2,NULL),(139,21,34,2,NULL),(140,22,34,2,NULL),(141,23,34,2,NULL),(142,24,34,2,NULL),(143,25,34,2,NULL),(144,26,34,2,NULL),(145,27,34,2,NULL),(146,28,34,2,NULL),(147,21,35,2,NULL),(148,22,35,2,NULL),(149,23,35,2,NULL),(150,24,35,2,NULL),(151,25,35,2,NULL),(152,26,35,2,NULL),(153,27,35,2,NULL),(154,28,35,2,NULL),(155,21,19,2,NULL),(156,22,19,2,NULL),(157,23,19,2,NULL),(158,24,19,2,NULL),(159,25,19,2,NULL),(160,26,19,2,NULL),(161,27,19,2,NULL),(162,28,19,2,NULL),(163,21,27,2,NULL),(164,22,27,2,NULL),(165,23,27,2,NULL),(166,24,27,2,NULL),(167,25,27,2,NULL),(168,26,27,2,NULL),(169,27,27,2,NULL),(170,28,27,2,NULL),(171,21,28,2,NULL),(172,22,28,2,NULL),(173,23,28,2,NULL),(174,53,37,2,NULL),(175,24,28,2,NULL),(176,5,37,2,NULL),(177,25,28,2,NULL),(178,21,37,2,NULL),(179,26,28,2,NULL),(180,22,37,2,NULL),(181,27,28,2,NULL),(182,23,37,2,NULL),(183,28,28,2,NULL),(184,24,37,2,NULL),(185,21,29,2,NULL),(186,25,37,2,NULL),(187,22,29,2,NULL),(188,26,37,2,NULL),(189,23,29,2,NULL),(190,27,37,2,NULL),(191,24,29,2,NULL),(192,28,37,2,NULL),(193,25,29,2,NULL),(194,17,37,2,NULL),(195,26,29,2,NULL),(196,49,37,2,NULL),(197,27,29,2,NULL),(198,50,37,2,NULL),(199,28,29,2,NULL),(200,45,37,2,NULL),(201,21,49,2,NULL),(202,46,37,2,NULL),(203,22,49,2,NULL),(204,47,37,2,NULL),(205,23,49,2,NULL),(206,41,37,2,NULL),(207,24,49,2,NULL),(208,42,37,2,NULL),(209,25,49,2,NULL),(210,43,37,2,NULL),(211,26,49,2,NULL),(212,31,37,2,NULL),(213,27,49,2,NULL),(214,32,37,2,NULL),(215,28,49,2,NULL),(216,33,37,2,NULL),(217,21,51,2,NULL),(218,34,37,2,NULL),(219,22,51,2,NULL),(220,35,37,2,NULL),(221,23,51,2,NULL),(222,36,37,2,NULL),(223,24,51,2,NULL),(224,37,37,2,NULL),(225,25,51,2,NULL),(226,38,37,2,NULL),(227,26,51,2,NULL),(228,39,37,2,NULL),(229,27,51,2,NULL),(230,61,37,2,NULL),(231,28,51,2,NULL),(232,5,38,2,NULL),(233,21,50,2,NULL),(234,21,38,2,NULL),(235,22,50,2,NULL),(236,22,38,2,NULL),(237,23,50,2,NULL),(238,23,38,2,NULL),(239,24,50,2,NULL),(240,24,38,2,NULL),(241,25,50,2,NULL),(242,25,38,2,NULL),(243,26,50,2,NULL),(244,26,38,2,NULL),(245,27,50,2,NULL),(246,27,38,2,NULL),(247,28,50,2,NULL),(248,28,38,2,NULL),(249,21,33,2,NULL),(250,17,38,2,NULL),(251,22,33,2,NULL),(252,49,38,2,NULL),(253,23,33,2,NULL),(254,50,38,2,NULL),(255,24,33,2,NULL),(256,45,38,2,NULL),(257,25,33,2,NULL),(258,46,38,2,NULL),(259,26,33,2,NULL),(260,47,38,2,NULL),(261,27,33,2,NULL),(262,41,38,2,NULL),(263,28,33,2,NULL),(264,42,38,2,NULL),(265,21,45,2,NULL),(266,43,38,2,NULL),(267,22,45,2,NULL),(268,31,38,2,NULL),(269,23,45,2,NULL),(270,32,38,2,NULL),(271,24,45,2,NULL),(272,33,38,2,NULL),(273,25,45,2,NULL),(274,34,38,2,NULL),(275,26,45,2,NULL),(276,35,38,2,NULL),(277,27,45,2,NULL),(278,36,38,2,NULL),(279,28,45,2,NULL),(280,37,38,2,NULL),(281,21,46,2,NULL),(282,38,38,2,NULL),(283,22,46,2,NULL),(284,39,38,2,NULL),(285,23,46,2,NULL),(286,61,38,2,NULL),(287,24,46,2,NULL),(288,40,20,2,NULL),(289,61,1,2,NULL),(290,25,46,2,NULL),(291,44,21,2,NULL),(292,61,2,2,NULL),(293,26,46,2,NULL),(294,48,22,2,NULL),(295,61,3,2,NULL),(296,27,46,2,NULL),(297,5,19,2,NULL),(298,61,4,2,NULL),(299,28,46,2,NULL),(300,17,19,2,NULL),(301,61,36,2,NULL),(302,21,47,2,NULL),(303,49,19,2,NULL),(304,61,6,2,NULL),(305,22,47,2,NULL),(306,50,19,2,NULL),(307,61,34,2,NULL),(308,23,47,2,NULL),(309,45,19,2,NULL),(310,61,35,2,NULL),(311,24,47,2,NULL),(312,46,19,2,NULL),(313,61,19,2,NULL),(314,25,47,2,NULL),(315,47,19,2,NULL),(316,61,27,2,NULL),(317,26,47,2,NULL),(318,41,19,2,NULL),(319,61,28,2,NULL),(320,27,47,2,NULL),(321,42,19,2,NULL),(322,61,29,2,NULL),(323,28,47,2,NULL),(324,43,19,2,NULL),(325,61,49,2,NULL),(326,21,48,2,NULL),(327,31,19,2,NULL),(328,61,51,2,NULL),(329,22,48,2,NULL),(330,32,19,2,NULL),(331,61,50,2,NULL),(332,23,48,2,NULL),(333,33,19,2,NULL),(334,61,33,2,NULL),(335,24,48,2,NULL),(336,34,19,2,NULL),(337,61,45,2,NULL),(338,25,48,2,NULL),(339,35,19,2,NULL),(340,61,46,2,NULL),(341,26,48,2,NULL),(342,36,19,2,NULL),(343,61,47,2,NULL),(344,27,48,2,NULL),(345,37,19,2,NULL),(346,61,48,2,NULL),(347,28,48,2,NULL),(348,38,19,2,NULL),(349,61,52,2,NULL),(350,21,52,2,NULL),(351,39,19,2,NULL),(352,61,44,2,NULL),(353,22,52,2,NULL),(354,52,26,2,NULL),(355,61,53,2,NULL),(356,23,52,2,NULL),(357,49,1,2,NULL),(358,61,54,2,NULL),(359,24,52,2,NULL),(360,50,1,2,NULL),(361,61,55,2,NULL),(362,25,52,2,NULL),(363,49,2,2,NULL),(364,61,56,2,NULL),(365,26,52,2,NULL),(366,50,2,2,NULL),(367,5,44,2,NULL),(368,27,52,2,NULL),(369,49,3,2,NULL),(370,21,44,2,NULL),(371,28,52,2,NULL),(372,50,3,2,NULL),(373,22,44,2,NULL),(374,49,4,2,NULL),(375,23,44,2,NULL),(376,24,44,2,NULL),(377,25,44,2,NULL),(378,50,4,2,NULL),(379,26,44,2,NULL),(380,27,44,2,NULL),(381,49,36,2,NULL),(382,28,44,2,NULL),(383,21,53,2,NULL),(384,50,36,2,NULL),(385,17,44,2,NULL),(386,22,53,2,NULL),(387,49,6,2,NULL),(388,49,44,2,NULL),(389,23,53,2,NULL),(390,50,6,2,NULL),(391,50,44,2,NULL),(392,24,53,2,NULL),(393,49,34,2,NULL),(394,45,44,2,NULL),(395,25,53,2,NULL),(396,50,34,2,NULL),(397,46,44,2,NULL),(398,26,53,2,NULL),(399,49,35,2,NULL),(400,47,44,2,NULL),(401,27,53,2,NULL),(402,50,35,2,NULL),(403,41,44,2,NULL),(404,28,53,2,NULL),(405,49,27,2,NULL),(406,42,44,2,NULL),(407,21,54,2,NULL),(408,50,27,2,NULL),(409,43,44,2,NULL),(410,22,54,2,NULL),(411,49,28,2,NULL),(412,31,44,2,NULL),(413,23,54,2,NULL),(414,50,28,2,NULL),(415,32,44,2,NULL),(416,24,54,2,NULL),(417,49,29,2,NULL),(418,33,44,2,NULL),(419,25,54,2,NULL),(420,50,29,2,NULL),(421,34,44,2,NULL),(422,26,54,2,NULL),(423,49,49,2,NULL),(424,35,44,2,NULL),(425,27,54,2,NULL),(426,50,49,2,NULL),(427,36,44,2,NULL),(428,28,54,2,NULL),(429,49,51,2,NULL),(430,37,44,2,NULL),(431,21,55,2,NULL),(432,50,51,2,NULL),(433,38,44,2,NULL),(434,22,55,2,NULL),(435,49,50,2,NULL),(436,39,44,2,NULL),(437,23,55,2,NULL),(438,50,50,2,NULL),(439,5,53,2,NULL),(440,24,55,2,NULL),(441,49,33,2,NULL),(442,17,53,2,NULL),(443,25,55,2,NULL),(444,50,33,2,NULL),(445,49,53,2,NULL),(446,26,55,2,NULL),(447,49,45,2,NULL),(448,50,53,2,NULL),(449,27,55,2,NULL),(450,50,45,2,NULL),(451,45,53,2,NULL),(452,28,55,2,NULL),(453,49,46,2,NULL),(454,2,4,2,NULL),(455,46,53,2,NULL),(456,21,56,2,NULL),(457,50,46,2,NULL),(458,3,2,2,NULL),(459,47,53,2,NULL),(460,22,56,2,NULL),(461,49,47,2,NULL),(462,4,3,2,NULL),(463,41,53,2,NULL),(464,23,56,2,NULL),(465,50,47,2,NULL),(466,5,2,2,NULL),(467,42,53,2,NULL),(468,24,56,2,NULL),(469,49,48,2,NULL),(470,5,3,2,NULL),(471,43,53,2,NULL),(472,25,56,2,NULL),(473,50,48,2,NULL),(474,5,4,2,NULL),(475,31,53,2,NULL),(476,26,56,2,NULL),(477,49,52,2,NULL),(478,17,1,2,NULL),(479,32,53,2,NULL),(480,50,52,2,NULL),(481,27,56,2,NULL),(482,33,53,2,NULL),(483,5,36,2,NULL),(484,49,54,2,NULL),(485,28,56,2,NULL),(486,34,53,2,NULL),(487,5,6,2,NULL),(488,50,54,2,NULL),(489,15,10,2,NULL),(490,35,53,2,NULL),(491,49,55,2,NULL),(492,16,10,2,NULL),(493,5,34,2,NULL),(494,36,53,2,NULL),(495,17,2,2,NULL),(496,50,55,2,NULL),(497,37,53,2,NULL),(498,5,35,2,NULL),(499,17,3,2,NULL),(500,49,56,2,NULL),(501,38,53,2,NULL),(502,5,27,2,NULL),(503,17,4,2,NULL),(504,50,56,2,NULL),(505,39,53,2,NULL),(506,17,36,2,NULL),(507,17,27,2,NULL),(508,5,28,2,NULL),(509,5,54,2,NULL),(510,45,27,2,NULL),(511,17,6,2,NULL),(512,17,54,2,NULL),(513,46,27,2,NULL),(514,5,29,2,NULL),(515,17,34,2,NULL),(516,45,54,2,NULL),(517,17,35,2,NULL),(518,47,27,2,NULL),(519,45,1,2,NULL),(520,46,54,2,NULL),(521,41,27,2,NULL),(522,17,28,2,NULL),(523,47,54,2,NULL),(524,46,1,2,NULL),(525,42,27,2,NULL),(526,17,29,2,NULL),(527,41,54,2,NULL),(528,47,1,2,NULL),(529,43,27,2,NULL),(530,17,49,2,NULL),(531,42,54,2,NULL),(532,5,49,2,NULL),(533,31,27,2,NULL),(534,17,51,2,NULL),(535,43,54,2,NULL),(536,41,1,2,NULL),(537,32,27,2,NULL),(538,31,54,2,NULL),(539,17,50,2,NULL),(540,42,1,2,NULL),(541,33,27,2,NULL),(542,32,54,2,NULL),(543,17,33,2,NULL),(544,43,1,2,NULL),(545,34,27,2,NULL),(546,17,45,2,NULL),(547,33,54,2,NULL),(548,5,51,2,NULL),(549,17,46,2,NULL),(550,34,54,2,NULL),(551,35,27,2,NULL),(552,31,1,2,NULL),(553,36,27,2,NULL),(554,17,47,2,NULL),(555,35,54,2,NULL),(556,32,1,2,NULL),(557,37,27,2,NULL),(558,17,48,2,NULL),(559,36,54,2,NULL),(560,33,1,2,NULL),(561,17,52,2,NULL),(562,38,27,2,NULL),(563,37,54,2,NULL),(564,34,1,2,NULL),(565,39,27,2,NULL),(566,38,54,2,NULL),(567,17,55,2,NULL),(568,35,1,2,NULL),(569,17,56,2,NULL),(570,39,54,2,NULL),(571,45,28,2,NULL),(572,36,1,2,NULL),(573,5,55,2,NULL),(574,46,28,2,NULL),(575,45,36,2,NULL),(576,37,1,2,NULL),(577,45,55,2,NULL),(578,46,36,2,NULL),(579,47,28,2,NULL),(580,38,1,2,NULL),(581,46,55,2,NULL),(582,47,36,2,NULL),(583,39,1,2,NULL),(584,41,28,2,NULL),(585,47,55,2,NULL),(586,42,28,2,NULL),(587,41,36,2,NULL),(588,5,50,2,NULL),(589,41,55,2,NULL),(590,42,36,2,NULL),(591,43,28,2,NULL),(592,5,33,2,NULL),(593,42,55,2,NULL),(594,43,36,2,NULL),(595,31,28,2,NULL),(596,5,45,2,NULL),(597,43,55,2,NULL),(598,32,28,2,NULL),(599,31,36,2,NULL),(600,5,46,2,NULL),(601,31,55,2,NULL),(602,33,28,2,NULL),(603,32,36,2,NULL),(604,5,47,2,NULL),(605,32,55,2,NULL),(606,33,36,2,NULL),(607,5,48,2,NULL),(608,34,28,2,NULL),(609,33,55,2,NULL),(610,34,36,2,NULL),(611,35,28,2,NULL),(612,5,52,2,NULL),(613,34,55,2,NULL),(614,36,28,2,NULL),(615,35,36,2,NULL),(616,5,56,2,NULL),(617,35,55,2,NULL),(618,36,36,2,NULL),(619,37,28,2,NULL),(620,36,55,2,NULL),(621,45,2,2,NULL),(622,37,36,2,NULL),(623,38,28,2,NULL),(624,37,55,2,NULL),(625,46,2,2,NULL),(626,38,36,2,NULL),(627,39,28,2,NULL),(628,38,55,2,NULL),(629,47,2,2,NULL),(630,39,36,2,NULL),(631,39,55,2,NULL),(632,41,2,2,NULL),(633,45,29,2,NULL),(634,42,2,2,NULL),(635,46,29,2,NULL),(636,45,56,2,NULL),(637,43,2,2,NULL),(638,47,29,2,NULL),(639,46,56,2,NULL),(640,31,2,2,NULL),(641,41,29,2,NULL),(642,32,2,2,NULL),(643,47,56,2,NULL),(644,42,29,2,NULL),(645,33,2,2,NULL),(646,41,56,2,NULL),(647,43,29,2,NULL),(648,42,56,2,NULL),(649,34,2,2,NULL),(650,31,29,2,NULL),(651,35,2,2,NULL),(652,43,56,2,NULL),(653,32,29,2,NULL),(654,36,2,2,NULL),(655,31,56,2,NULL),(656,33,29,2,NULL),(657,32,56,2,NULL),(658,37,2,2,NULL),(659,34,29,2,NULL),(660,33,56,2,NULL),(661,38,2,2,NULL),(662,35,29,2,NULL),(663,34,56,2,NULL),(664,39,2,2,NULL),(665,36,29,2,NULL),(666,35,56,2,NULL),(667,45,3,2,NULL),(668,37,29,2,NULL),(669,36,56,2,NULL),(670,46,3,2,NULL),(671,38,29,2,NULL),(672,37,56,2,NULL),(673,47,3,2,NULL),(674,39,29,2,NULL),(675,38,56,2,NULL),(676,41,3,2,NULL),(677,39,56,2,NULL),(678,45,4,2,NULL),(679,42,3,2,NULL),(680,43,3,2,NULL),(681,46,4,2,NULL),(682,31,3,2,NULL),(683,47,4,2,NULL),(684,32,3,2,NULL),(685,45,6,2,NULL),(686,33,3,2,NULL),(687,46,6,2,NULL),(688,34,3,2,NULL),(689,47,6,2,NULL),(690,35,3,2,NULL),(691,45,34,2,NULL),(692,36,3,2,NULL),(693,46,34,2,NULL),(694,37,3,2,NULL),(695,47,34,2,NULL),(696,38,3,2,NULL),(697,45,35,2,NULL),(698,39,3,2,NULL),(699,46,35,2,NULL),(700,41,4,2,NULL),(701,47,35,2,NULL),(702,42,4,2,NULL),(703,45,51,2,NULL),(704,43,4,2,NULL),(705,46,51,2,NULL),(706,31,4,2,NULL),(707,47,51,2,NULL),(708,32,4,2,NULL),(709,45,50,2,NULL),(710,33,4,2,NULL),(711,46,50,2,NULL),(712,34,4,2,NULL),(713,47,50,2,NULL),(714,35,4,2,NULL),(715,45,33,2,NULL),(716,36,4,2,NULL),(717,46,33,2,NULL),(718,37,4,2,NULL),(719,47,33,2,NULL),(720,38,4,2,NULL),(721,45,45,2,NULL),(722,39,4,2,NULL),(723,46,45,2,NULL),(724,47,45,2,NULL),(725,45,46,2,NULL),(726,46,46,2,NULL),(727,47,46,2,NULL),(728,45,47,2,NULL),(729,46,47,2,NULL),(730,47,47,2,NULL),(731,45,48,2,NULL),(732,46,48,2,NULL),(733,47,48,2,NULL),(734,45,52,2,NULL),(735,46,52,2,NULL),(736,47,52,2,NULL),(737,41,49,2,NULL),(738,42,49,2,NULL),(739,43,49,2,NULL),(740,31,49,2,NULL),(741,32,49,2,NULL),(742,33,49,2,NULL),(743,34,49,2,NULL),(744,35,49,2,NULL),(745,36,49,2,NULL),(746,37,49,2,NULL),(747,38,49,2,NULL),(748,39,49,2,NULL),(749,41,6,2,NULL),(750,42,6,2,NULL),(751,43,6,2,NULL),(752,41,34,2,NULL),(753,42,34,2,NULL),(754,43,34,2,NULL),(755,41,35,2,NULL),(756,42,35,2,NULL),(757,43,35,2,NULL),(758,41,50,2,NULL),(759,42,50,2,NULL),(760,43,50,2,NULL),(761,41,33,2,NULL),(762,42,33,2,NULL),(763,43,33,2,NULL),(764,41,45,2,NULL),(765,42,45,2,NULL),(766,43,45,2,NULL),(767,41,46,2,NULL),(768,42,46,2,NULL),(769,43,46,2,NULL),(770,41,47,2,NULL),(771,42,47,2,NULL),(772,43,47,2,NULL),(773,41,48,2,NULL),(774,42,48,2,NULL),(775,43,48,2,NULL),(776,41,52,2,NULL),(777,42,52,2,NULL),(778,43,52,2,NULL),(779,31,51,2,NULL),(780,32,51,2,NULL),(781,33,51,2,NULL),(782,34,51,2,NULL),(783,35,51,2,NULL),(784,36,51,2,NULL),(785,37,51,2,NULL),(786,38,51,2,NULL),(787,39,51,2,NULL),(788,31,6,2,NULL),(789,32,6,2,NULL),(790,33,6,2,NULL),(791,34,6,2,NULL),(792,35,6,2,NULL),(793,36,6,2,NULL),(794,37,6,2,NULL),(795,38,6,2,NULL),(796,39,6,2,NULL),(797,31,34,2,NULL),(798,32,34,2,NULL),(799,33,34,2,NULL),(800,34,34,2,NULL),(801,35,34,2,NULL),(802,36,34,2,NULL),(803,37,34,2,NULL),(804,38,34,2,NULL),(805,39,34,2,NULL),(806,31,35,2,NULL),(807,32,35,2,NULL),(808,33,35,2,NULL),(809,34,35,2,NULL),(810,35,35,2,NULL),(811,36,35,2,NULL),(812,37,35,2,NULL),(813,38,35,2,NULL),(814,39,35,2,NULL),(815,31,33,2,NULL),(816,32,33,2,NULL),(817,33,33,2,NULL),(818,34,33,2,NULL),(819,35,33,2,NULL),(820,36,33,2,NULL),(821,37,33,2,NULL),(822,38,33,2,NULL),(823,39,33,2,NULL),(824,31,45,2,NULL),(825,32,45,2,NULL),(826,33,45,2,NULL),(827,34,45,2,NULL),(828,35,45,2,NULL),(829,36,45,2,NULL),(830,37,45,2,NULL),(831,38,45,2,NULL),(832,39,45,2,NULL),(833,31,46,2,NULL),(834,32,46,2,NULL),(835,33,46,2,NULL),(836,34,46,2,NULL),(837,35,46,2,NULL),(838,36,46,2,NULL),(839,37,46,2,NULL),(840,38,46,2,NULL),(841,39,46,2,NULL),(842,31,47,2,NULL),(843,32,47,2,NULL),(844,33,47,2,NULL),(845,34,47,2,NULL),(846,35,47,2,NULL),(847,36,47,2,NULL),(848,37,47,2,NULL),(849,38,47,2,NULL),(850,39,47,2,NULL),(851,31,48,2,NULL),(852,32,48,2,NULL),(853,33,48,2,NULL),(854,34,48,2,NULL),(855,35,48,2,NULL),(856,36,48,2,NULL),(857,37,48,2,NULL),(858,38,48,2,NULL),(859,39,48,2,NULL),(860,31,52,2,NULL),(861,32,52,2,NULL),(862,33,52,2,NULL),(863,34,52,2,NULL),(864,35,52,2,NULL),(865,36,52,2,NULL),(866,37,52,2,NULL),(867,38,52,2,NULL),(868,39,52,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_COARSE_LOCATION'),(18,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(16,'android.permission.BLUETOOTH'),(20,'android.permission.BLUETOOTH_ADMIN'),(10,'android.permission.CALL_PHONE'),(17,'android.permission.CHANGE_WIFI_STATE'),(11,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(5,'android.permission.READ_PHONE_STATE'),(6,'android.permission.READ_SMS'),(15,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(14,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(19,'android.permission.VIBRATE'),(23,'android.permission.WAKE_LOCK'),(22,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'android.permission.WRITE_SETTINGS'),(7,'android.permission.WRITE_SMS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://cowslab.com/abuse.php',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(7,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,3,1),(5,2,2),(6,3,2),(7,2,3),(8,3,5),(9,2,4),(10,3,6),(11,3,7),(12,3,8),(13,3,9),(14,5,1),(15,5,2),(16,5,10),(17,6,1),(18,6,2),(19,6,5),(20,6,9),(21,6,11),(22,6,12),(23,6,13),(24,6,14),(25,6,15),(26,6,17),(27,6,16),(28,6,19),(29,6,18),(30,6,20),(31,7,1),(32,7,2),(33,7,21),(34,7,5),(35,7,23),(36,7,6),(37,7,22),(38,7,7),(39,7,8),(40,7,9);
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

-- Dump completed on 2015-10-12  3:31:38
