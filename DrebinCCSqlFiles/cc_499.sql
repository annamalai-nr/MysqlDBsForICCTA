-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_499
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'INTENAL_ACTION_PhoneCallRecord'),(11,'SMS_SENT'),(13,'android.intent.action.BATTERY_CHANGED'),(15,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.PACKAGE_CHANGED'),(4,'android.intent.action.PACKAGE_INSTALL'),(5,'android.intent.action.PACKAGE_REMOVED'),(6,'android.intent.action.PACKAGE_REPLACED'),(7,'android.intent.action.PACKAGE_RESTARTED'),(14,'android.intent.action.PICK'),(18,'android.intent.action.SENDTO'),(9,'android.intent.action.VIEW'),(10,'android.view.InputMethod'),(12,'net.kidlogger.kidlogger.IRemoteService'),(8,'net.kidlogger.kidloggerkeyboard.INPUT_LANGUAGE_SELECTION'),(16,'therehaveacallhandoff');
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
INSERT INTO `Applications` VALUES (1,'aiChoor9.cai6Ood0',1),(2,'com.mycontainer',1),(3,'QueiD9ej.ezahS1gi',1),(4,'midlet.com',1),(5,'com.batteryinfo',1),(6,'net.kidlogger.kidloggerkeyboard',4),(7,'com.keepc',220);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
INSERT INTO `Classes` VALUES (1,2,'com.mycontainer.main'),(2,1,'aiChoor9.cai6Ood0.Pushme'),(3,4,'midlet.com.MiddletActivity'),(4,3,'QueiD9ej.ezahS1gi.App'),(5,5,'com.batteryinfo.BatteryMonitor'),(6,5,'com.batteryinfo.IS'),(7,5,'com.batteryinfo.PR'),(8,6,'net.kidlogger.kidloggerkeyboard.Settings'),(9,6,'net.kidlogger.kidloggerkeyboard.InputLanguageSelection'),(10,6,'net.kidlogger.kidloggerkeyboard.SoftKeyboardPRO'),(11,4,'midlet.com.MiddletActivity$4'),(12,7,'com.keepc.KC2011'),(13,7,'com.keepc.ui.MainPhonecallList'),(14,7,'com.keepc.ui.MainServiceList'),(15,7,'com.keepc.ui.MainRechargeList'),(16,7,'com.keepc.KClogin'),(17,7,'com.keepc.phone.PhoneCall'),(18,7,'com.keepc.phone.PhoneCallRecord'),(19,7,'com.keepc.service.ServiceQueryMoney'),(20,7,'com.keepc.service.ServicePackageInfo'),(21,7,'com.keepc.service.ServiceRegister'),(22,7,'com.keepc.recharge.RechargePackageInfo'),(23,7,'com.keepc.service.AboutInfo'),(24,7,'com.keepc.tools.ShowNoFunction'),(25,7,'com.keepc.service.ServiceRebind'),(26,7,'com.keepc.service.ServiceGetPwd'),(27,7,'com.keepc.recharge.RechargeInputMain'),(28,7,'com.keepc.recharge.RechargeChoose'),(29,7,'com.keepc.recharge.RechargeAll'),(30,7,'com.keepc.recharge.RechargeMorePackainfo'),(31,7,'com.keepc.recharge.RechargeFriendRecomand'),(32,7,'com.keepc.phone.CallScreenActivity'),(33,7,'com.keepc.SystemBrocastInfo'),(34,7,'com.keepc.ShowMsgList'),(35,7,'com.keepc.contacts.ContactsListActivity'),(36,7,'com.keepc.ui.AcountManager'),(37,7,'com.keepc.SplashActivity'),(38,5,'j'),(39,5,'i'),(40,7,'com.keepc.service.ServiceQueryMoney$1'),(41,7,'com.keepc.ui.MainListAdapter$6'),(42,7,'com.keepc.phone.PhoneCall$2'),(43,7,'com.keepc.baseActivity'),(44,7,'com.keepc.service.ServiceQueryMoney$2'),(45,7,'com.keepc.service.ServiceQueryMoney$4'),(46,7,'com.keepc.KClogin$1'),(47,7,'com.keepc.phone.PhoneCallRecord$2'),(48,7,'com.keepc.phone.PhoneCallRecord$3'),(49,7,'com.keepc.contacts.GetContactStringSDK6'),(50,7,'com.keepc.recharge.RechargeFriendRecomand$1'),(51,7,'com.keepc.contacts.ContactsListActivity$3'),(52,7,'com.keepc.phone.PhoneCall$1'),(53,7,'com.keepc.contacts.GetContactStringSDK7'),(54,7,'com.keepc.ui.MainListAdapter$5'),(55,7,'com.keepc.service.ServiceQueryMoney$5'),(56,7,'com.keepc.KClogin$3'),(57,7,'com.keepc.ui.MainListAdapter$1'),(58,7,'com.keepc.ui.MainListAdapter$4');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,12,'opentab'),(2,16,'class'),(3,33,'id'),(4,28,'MoneyType'),(5,16,'called_num'),(6,27,'packageType'),(7,33,'title'),(8,17,'callnumber'),(9,27,'MoneyType'),(10,32,'called_num');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'s',1,28,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,46,'r',1,NULL,NULL),(41,47,'r',1,NULL,NULL),(42,48,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,10),(3,3,5),(4,4,7),(5,5,19),(6,5,16),(7,5,31),(8,5,29),(9,5,27),(10,5,26),(11,5,25),(12,5,24),(13,5,21),(14,6,21),(15,6,24),(16,6,25),(17,6,26),(18,6,27),(19,6,29),(20,6,31),(21,6,16),(22,6,19),(23,7,24),(24,7,25),(25,7,29),(26,7,26),(27,7,27),(28,7,17),(29,7,16),(30,7,31),(31,7,21),(32,7,19),(33,8,32),(34,9,36),(35,10,12),(36,11,19),(37,11,21),(38,11,24),(39,11,25),(40,11,27),(41,11,26),(42,11,29),(43,11,31),(44,11,16),(45,12,12),(46,13,15),(47,14,28),(48,15,19),(49,16,27),(50,17,15),(51,18,35),(52,19,12),(53,20,15),(54,21,13),(55,22,35),(56,23,14),(57,24,14),(58,25,34),(59,26,16),(60,26,19),(61,26,31),(62,26,29),(63,26,27),(64,26,24),(65,26,21),(66,26,25),(67,26,26),(68,27,17),(69,28,35),(70,29,25),(71,30,21),(72,30,24),(73,30,26),(74,30,25),(75,30,31),(76,30,27),(77,30,29),(78,30,16),(79,30,17),(80,30,19),(81,31,18),(82,32,35),(83,33,12),(84,34,14),(85,35,34),(86,36,28),(87,37,25),(88,37,24),(89,37,27),(90,37,26),(91,37,21),(92,37,16),(93,37,19),(94,37,29),(95,37,31),(96,38,14),(97,39,19),(98,40,14),(99,41,35),(100,42,12),(101,43,31),(102,44,13),(103,45,19),(104,45,16),(105,45,31),(106,45,29),(107,45,26),(108,45,27),(109,45,24),(110,45,25),(111,45,21),(112,46,29),(113,47,25),(114,47,24),(115,47,29),(116,47,27),(117,47,26),(118,47,17),(119,47,16),(120,47,31),(121,47,21),(122,47,19),(123,48,24),(124,48,26),(125,48,25),(126,48,27),(127,48,29),(128,48,31),(129,48,16),(130,48,19),(131,48,21),(132,49,13),(133,50,29),(134,50,16),(135,50,31),(136,50,26),(137,50,25),(138,50,27),(139,50,21),(140,50,24),(141,50,19),(142,51,24),(143,51,16),(144,51,25),(145,51,17),(146,51,19),(147,51,21),(148,51,31),(149,51,26),(150,51,27),(151,51,29),(152,52,28),(153,53,35),(154,54,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.mycontainer.main: void installAPK(java.lang.String)>',9,'a',NULL),(2,10,'<net.kidlogger.kidloggerkeyboard.SoftKeyboardPRO: void bindService()>',11,'s',NULL),(3,5,'<com.batteryinfo.BatteryMonitor: void a()>',35,'s',NULL),(4,7,'<com.batteryinfo.PR: void a(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL),(5,40,'<com.keepc.service.ServiceQueryMoney$1: void onClick(android.view.View)>',9,'a',NULL),(6,41,'<com.keepc.ui.MainListAdapter$6: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(7,42,'<com.keepc.phone.PhoneCall$2: void onClick(android.view.View)>',10,'a',NULL),(8,43,'<com.keepc.baseActivity: java.lang.String getPeople(java.lang.String)>',18,'p',NULL),(9,36,'<com.keepc.ui.AcountManager: void performItemClick(int)>',7,'a',NULL),(10,12,'<com.keepc.KC2011: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(11,44,'<com.keepc.service.ServiceQueryMoney$2: void onClick(android.view.View)>',31,'a',NULL),(12,12,'<com.keepc.KC2011: boolean onOptionsItemSelected(android.view.MenuItem)>',44,'a',NULL),(13,15,'<com.keepc.ui.MainRechargeList: void performItemClick(int)>',9,'a',NULL),(14,28,'<com.keepc.recharge.RechargeChoose: void performItemClick(int)>',20,'a',NULL),(15,45,'<com.keepc.service.ServiceQueryMoney$4: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(16,27,'<com.keepc.recharge.RechargeInputMain: void onCreate(android.os.Bundle)>',45,'a',NULL),(17,15,'<com.keepc.ui.MainRechargeList: void performItemClick(int)>',16,'a',NULL),(18,49,'<com.keepc.contacts.GetContactStringSDK6: android.database.Cursor onGetContacts(android.content.Context)>',4,'p',NULL),(19,12,'<com.keepc.KC2011: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(20,15,'<com.keepc.ui.MainRechargeList: void performItemClick(int)>',22,'a',NULL),(21,13,'<com.keepc.ui.MainPhonecallList: void performItemClick(int)>',26,'a',NULL),(22,49,'<com.keepc.contacts.GetContactStringSDK6: java.lang.String[] onGetSelectNumber(android.content.Context,android.database.Cursor)>',26,'p',NULL),(23,14,'<com.keepc.ui.MainServiceList: void performItemClick(int)>',7,'a',NULL),(24,14,'<com.keepc.ui.MainServiceList: void performItemClick(int)>',25,'a',NULL),(25,34,'<com.keepc.ShowMsgList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(26,50,'<com.keepc.recharge.RechargeFriendRecomand$1: void onClick(android.view.View)>',20,'a',NULL),(27,17,'<com.keepc.phone.PhoneCall: void onActivityResult(int,int,android.content.Intent)>',47,'p',NULL),(28,51,'<com.keepc.contacts.ContactsListActivity$3: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(29,25,'<com.keepc.service.ServiceRebind: void onCreate(android.os.Bundle)>',25,'a',NULL),(30,52,'<com.keepc.phone.PhoneCall$1: void onClick(android.view.View)>',8,'a',NULL),(31,43,'<com.keepc.baseActivity: void QueryAllPhoneCallList()>',40,'r',NULL),(32,53,'<com.keepc.contacts.GetContactStringSDK7: android.database.Cursor onGetContacts(android.content.Context)>',4,'p',NULL),(33,12,'<com.keepc.KC2011: boolean onOptionsItemSelected(android.view.MenuItem)>',50,'a',NULL),(34,14,'<com.keepc.ui.MainServiceList: void performItemClick(int)>',30,'a',NULL),(35,34,'<com.keepc.ShowMsgList: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(36,28,'<com.keepc.recharge.RechargeChoose: void performItemClick(int)>',11,'a',NULL),(37,54,'<com.keepc.ui.MainListAdapter$5: void onCancel(android.content.DialogInterface)>',9,'a',NULL),(38,14,'<com.keepc.ui.MainServiceList: void performItemClick(int)>',19,'a',NULL),(39,55,'<com.keepc.service.ServiceQueryMoney$5: void onCancel(android.content.DialogInterface)>',11,'a',NULL),(40,14,'<com.keepc.ui.MainServiceList: void performItemClick(int)>',13,'a',NULL),(41,51,'<com.keepc.contacts.ContactsListActivity$3: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(42,12,'<com.keepc.KC2011: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(43,31,'<com.keepc.recharge.RechargeFriendRecomand: void onCreate(android.os.Bundle)>',83,'a',NULL),(44,13,'<com.keepc.ui.MainPhonecallList: void performItemClick(int)>',21,'a',NULL),(45,56,'<com.keepc.KClogin$3: void onClick(android.view.View)>',8,'a',NULL),(46,29,'<com.keepc.recharge.RechargeAll: void GetSettins()>',22,'a',NULL),(47,17,'<com.keepc.phone.PhoneCall: void placeCall()>',34,'a',NULL),(48,57,'<com.keepc.ui.MainListAdapter$1: void onClick(android.view.View)>',17,'a',NULL),(49,13,'<com.keepc.ui.MainPhonecallList: void performItemClick(int)>',31,'a',NULL),(50,58,'<com.keepc.ui.MainListAdapter$4: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(51,17,'<com.keepc.phone.PhoneCall: void placeCall()>',57,'a',NULL),(52,28,'<com.keepc.recharge.RechargeChoose: void performItemClick(int)>',29,'a',NULL),(53,53,'<com.keepc.contacts.GetContactStringSDK7: java.lang.String[] onGetSelectNumber(android.content.Context,android.database.Cursor)>',19,'p',NULL),(54,43,'<com.keepc.baseActivity: void QueryAllPhoneCallList()>',13,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,9),(2,2,12),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,10,14),(8,18,9),(9,19,9),(10,20,9),(11,21,9),(12,22,9),(13,23,9),(14,24,9),(15,25,9),(16,26,9),(17,27,9),(18,28,9),(19,29,9),(20,30,9),(21,31,15),(22,32,15),(23,44,18),(24,48,17),(25,49,9);
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
INSERT INTO `ICategories` VALUES (1,4,1),(2,5,1),(3,6,1),(4,7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/batteryinfo/IS'),(2,4,'.MS'),(3,5,'NULL-CONSTANT.MS'),(4,6,'.MS'),(5,7,'NULL-CONSTANT.MS'),(6,8,'com/keepc/KC2011'),(7,9,'com/keepc/phone/CallScreenActivity'),(8,11,'com/keepc/service/ServiceRebind'),(9,12,'com/keepc/KClogin'),(10,13,'com/keepc/service/ServiceGetPwd'),(11,14,'com/keepc/service/AboutInfo'),(12,15,'com/keepc/recharge/RechargePackageInfo'),(13,16,'com/keepc/recharge/RechargeFriendRecomand'),(14,17,'com/keepc/service/ServicePackageInfo'),(15,33,'com/keepc/recharge/RechargeChoose'),(16,34,'com/keepc/recharge/RechargeInputMain'),(17,35,'com/keepc/KClogin'),(18,36,'com/keepc/KClogin'),(19,37,'com/keepc/recharge/RechargeChoose'),(20,38,'com/keepc/service/ServiceQueryMoney'),(21,39,'com/keepc/recharge/RechargeFriendRecomand'),(22,40,'com/keepc/phone/PhoneCall'),(23,41,'com/keepc/service/ServiceQueryMoney'),(24,42,'com/keepc/service/ServiceGetPwd'),(25,43,'com/keepc/SystemBrocastInfo'),(26,45,'com/keepc/KClogin'),(27,46,'com/keepc/KClogin'),(28,47,'com/keepc/phone/PhoneCallRecord'),(29,50,'com/keepc/service/ServicePackageInfo'),(30,51,'com/keepc/KC2011'),(31,52,'com/keepc/recharge/RechargeInputMain'),(32,53,'com/keepc/KClogin'),(33,54,'com/keepc/service/ServiceRebind'),(34,55,'com/keepc/KClogin'),(35,56,'com/keepc/KClogin'),(36,57,'com/keepc/phone/CallScreenActivity'),(37,58,'com/keepc/ui/AcountManager'),(38,59,'com/keepc/KClogin'),(39,60,'com/keepc/KClogin'),(40,61,'com/keepc/service/ServiceRegister'),(41,62,'com/keepc/KClogin'),(42,63,'com/keepc/KClogin'),(43,64,'com/keepc/phone/CallScreenActivity'),(44,65,'com/keepc/phone/PhoneCallRecord'),(45,66,'com/keepc/KClogin'),(46,67,'com/keepc/phone/CallScreenActivity'),(47,68,'com/keepc/recharge/RechargeInputMain');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,4,2),(3,5,3),(4,6,4),(5,7,5),(6,10,6),(7,18,9),(8,19,10),(9,20,11),(10,21,12),(11,22,13),(12,23,14),(13,24,15),(14,25,16),(15,26,17),(16,27,18),(17,28,19),(18,29,20),(19,30,21),(20,31,22),(21,32,23),(22,44,26),(23,49,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'InstallFromLocal'),(2,8,'opentab'),(3,9,'called_num'),(4,33,'MoneyType'),(5,34,'packageType'),(6,34,'MoneyType'),(7,35,'class'),(8,37,'MoneyType'),(9,43,'id'),(10,43,'title'),(11,44,'sms_body'),(12,45,'called_num'),(13,52,'packageType'),(14,52,'MoneyType'),(15,55,'class'),(16,57,'called_num'),(17,60,'class'),(18,63,'called_num'),(19,64,'called_num'),(20,67,'called_num'),(21,68,'packageType'),(22,68,'MoneyType');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,6),(7,6,4),(8,6,5),(9,6,3),(10,6,2),(11,6,7),(12,7,8),(13,8,10),(14,9,11),(15,10,1),(16,11,13),(17,12,13),(18,13,13),(19,14,13),(20,15,13),(21,16,13),(22,17,16),(23,18,16),(24,19,16),(25,20,17),(26,21,17),(27,22,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,7,2),(7,10,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,6,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,1,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.batteryinfo'),(2,4,'NULL-CONSTANT'),(3,5,''),(4,6,''),(5,7,'NULL-CONSTANT'),(6,8,'com.keepc'),(7,9,'com.keepc'),(8,11,'com.keepc'),(9,12,'com.keepc'),(10,13,'com.keepc'),(11,14,'com.keepc'),(12,15,'com.keepc'),(13,16,'com.keepc'),(14,17,'com.keepc'),(15,33,'com.keepc'),(16,34,'com.keepc'),(17,35,'com.keepc'),(18,36,'com.keepc'),(19,37,'com.keepc'),(20,38,'com.keepc'),(21,39,'com.keepc'),(22,40,'com.keepc'),(23,41,'com.keepc'),(24,42,'com.keepc'),(25,43,'com.keepc'),(26,45,'com.keepc'),(27,46,'com.keepc'),(28,47,'com.keepc'),(29,50,'com.keepc'),(30,51,'com.keepc'),(31,52,'com.keepc'),(32,53,'com.keepc'),(33,54,'com.keepc'),(34,55,'com.keepc'),(35,56,'com.keepc'),(36,57,'com.keepc'),(37,58,'com.keepc'),(38,59,'com.keepc'),(39,60,'com.keepc'),(40,61,'com.keepc'),(41,62,'com.keepc'),(42,63,'com.keepc'),(43,64,'com.keepc'),(44,65,'com.keepc'),(45,66,'com.keepc'),(46,67,'com.keepc'),(47,68,'com.keepc');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,7,0),(7,9,0),(8,10,0),(9,11,0),(10,37,0),(11,7,0),(12,38,0),(13,39,0),(14,7,0),(15,38,0),(16,39,0),(17,40,0),(18,41,0),(19,42,0),(20,40,0),(21,41,0),(22,42,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,4,0,0),(6,4,0,0),(7,4,0,0),(8,5,0,0),(9,6,0,0),(10,7,1,0),(11,9,0,0),(12,9,0,0),(13,9,0,0),(14,9,0,0),(15,9,0,0),(16,9,0,0),(17,9,0,0),(18,10,1,0),(19,11,1,0),(20,11,1,0),(21,11,1,0),(22,11,1,0),(23,11,1,0),(24,11,1,0),(25,11,1,0),(26,11,1,0),(27,11,1,0),(28,11,1,0),(29,11,1,0),(30,11,1,0),(31,12,1,0),(32,12,1,0),(33,13,0,0),(34,14,0,0),(35,15,0,0),(36,16,0,0),(37,17,0,0),(38,19,0,0),(39,20,0,0),(40,21,0,0),(41,23,0,0),(42,24,0,0),(43,25,0,0),(44,26,1,0),(45,28,0,0),(46,29,0,0),(47,30,0,0),(48,31,1,0),(49,33,1,0),(50,34,0,0),(51,35,0,0),(52,36,0,0),(53,37,0,0),(54,38,0,0),(55,39,0,0),(56,40,0,0),(57,41,0,0),(58,42,0,0),(59,43,0,0),(60,44,0,0),(61,45,0,0),(62,46,0,0),(63,47,0,0),(64,48,0,0),(65,49,0,0),(66,50,0,0),(67,51,0,0),(68,52,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (27,'android.permission.ACCESS_COARSE_LOCATION'),(26,'android.permission.ACCESS_FINE_LOCATION'),(19,'android.permission.ACCESS_NETWORK_STATE'),(35,'android.permission.ACCESS_SURFACE_FLINGER'),(4,'android.permission.ACCESS_WIFI_STATE'),(6,'android.permission.BATTERY_STATS'),(28,'android.permission.BIND_INPUT_METHOD'),(31,'android.permission.CALL_PHONE'),(14,'android.permission.CAMERA'),(20,'android.permission.CHANGE_CONFIGURATION'),(36,'android.permission.CHANGE_NETWORK_STATE'),(34,'android.permission.CHANGE_WIFI_STATE'),(18,'android.permission.CONTROL_LOCATION_UPDATES'),(25,'android.permission.DELETE_PACKAGES'),(12,'android.permission.EXPAND_STATUS_BAR'),(7,'android.permission.GET_ACCOUNTS'),(1,'android.permission.INSTALL_PACKAGES'),(15,'android.permission.INTERNET'),(33,'android.permission.MODIFY_PHONE_STATE'),(11,'android.permission.READ_CALENDAR'),(8,'android.permission.READ_CONTACTS'),(29,'android.permission.READ_EXTERNAL_STORAGE'),(17,'android.permission.READ_FRAME_BUFFER'),(3,'android.permission.READ_LOGS'),(32,'android.permission.READ_PHONE_STATE'),(23,'android.permission.READ_SMS'),(24,'android.permission.RECEIVE_SMS'),(2,'android.permission.SEND_SMS'),(5,'android.permission.STATUS_BAR'),(13,'android.permission.SYSTEM_ALERT_WINDOW'),(16,'android.permission.VIBRATE'),(30,'android.permission.WRITE_APN_SETTINGS'),(10,'android.permission.WRITE_CALENDAR'),(9,'android.permission.WRITE_CONTACTS'),(22,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(3,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(4,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(5,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(6,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(7,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(8,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(9,NULL,NULL,'http://wap.keicei.com',NULL,NULL,NULL),(10,NULL,NULL,'http://wap.keicei.com/mbill.php?act=bill&kc=&pwd=&sign=',NULL,NULL,NULL),(11,NULL,NULL,'http://wap.keicei.com/mbill.php?act=bill&kc=(.*)&pwd=(.*)&sign=',NULL,NULL,NULL),(12,NULL,NULL,'http://wap.keicei.com/mbill.php?act=bill&kc=&pwd=&sign=NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'http://wap.keicei.com/mbill.php?act=bill&kc=&pwd=&sign=(.*)',NULL,NULL,NULL),(14,NULL,NULL,'http://wap.keicei.com/mbill.php?act=bill&kc=(.*)&pwd=&sign=(.*)',NULL,NULL,NULL),(15,NULL,NULL,'http://wap.keicei.com/mbill.php?act=bill&kc=(.*)&pwd=(.*)&sign=NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'http://wap.keicei.com/mbill.php?act=bill&kc=&pwd=(.*)&sign=(.*)',NULL,NULL,NULL),(17,NULL,NULL,'http://wap.keicei.com/mbill.php?act=bill&kc=(.*)&pwd=(.*)&sign=(.*)',NULL,NULL,NULL),(18,NULL,NULL,'http://wap.keicei.com/mbill.php?act=bill&kc=&pwd=(.*)&sign=NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'http://wap.keicei.com/mbill.php?act=bill&kc=(.*)&pwd=&sign=NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'http://wap.keicei.com/mbill.php?act=bill&kc=(.*)&pwd=&sign=',NULL,NULL,NULL),(21,NULL,NULL,'http://wap.keicei.com/mbill.php?act=bill&kc=&pwd=(.*)&sign=',NULL,NULL,NULL),(22,NULL,NULL,'tel:',NULL,NULL,NULL),(23,NULL,NULL,'tel:075561363066',NULL,NULL,NULL),(24,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(25,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(26,'smsto','',NULL,NULL,NULL,NULL),(27,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(28,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(29,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(30,NULL,NULL,'http://sd.3g.qq.com/g/s?aid=index&g_f=2208',NULL,NULL,NULL),(31,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(32,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,8,7),(2,8,8),(3,18,24),(4,22,25),(5,27,27),(6,27,28),(7,32,29),(8,53,31),(9,54,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,22),(12,1,11),(13,3,1),(14,1,12),(15,3,2),(16,1,13),(17,3,3),(18,1,14),(19,3,4),(20,1,15),(21,3,5),(22,1,17),(23,3,6),(24,1,16),(25,3,7),(26,1,19),(27,3,8),(28,1,18),(29,3,9),(30,1,21),(31,3,10),(32,1,20),(33,3,11),(34,3,12),(35,3,13),(36,3,14),(37,3,15),(38,3,17),(39,3,16),(40,4,2),(41,3,19),(42,4,23),(43,3,18),(44,4,24),(45,3,21),(46,3,20),(47,5,1),(48,5,19),(49,5,25),(50,5,27),(51,5,26),(52,5,15),(53,7,34),(54,7,35),(55,7,32),(56,7,33),(57,7,4),(58,7,36),(59,7,8),(60,7,15),(61,7,19),(62,7,23),(63,7,22),(64,7,27),(65,7,29),(66,7,31),(67,7,30);
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

-- Dump completed on 2015-10-09  0:39:56
