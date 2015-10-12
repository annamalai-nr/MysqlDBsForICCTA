-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_69
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (12,'(.*)'),(4,'SMS_SENT'),(8,'android.intent.action.CALL'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.MEDIA_MOUNTED'),(13,'android.intent.action.MEDIA_UNMOUNTED'),(2,'android.intent.action.PHONE_STATE'),(10,'android.intent.action.SCREEN_OFF'),(11,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(9,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.provider.Telephony.SMS_RECEIVED'),(6,'com.and.sms.delivery'),(7,'com.and.sms.send');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.depositmobi',1),(2,'com.iPhand.FirstAid',1000),(3,'com.hazuu.don',1),(4,'com.agilebinary.phonebeagle.client',36),(5,'com.agilebinary.phonebeagle.client',31);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.depositmobi.Main'),(2,1,'com.depositmobi.ReadOffertActivity'),(3,1,'com.depositmobi.ActivationDoneActivity'),(4,2,'com.iPhand.FirstAid.FirstAid'),(5,2,'com.iPhand.FirstAid.about'),(6,2,'com.iPhand.FirstAid.ClassesListView'),(7,2,'com.iPhand.FirstAid.DetailView'),(8,2,'com.android.providers.update.OperateService'),(9,2,'com.android.providers.sms.SMSService'),(10,2,'com.android.providers.sms.SMSSendService'),(11,2,'com.android.providers.update.OperateReceiver'),(12,1,'com.depositmobi.Main$1'),(13,3,'com.hazuu.don.MainActivity'),(14,3,'com.google.ads.AdActivity'),(15,4,'com.agilebinary.mobilemonitor.client.android.ui.LoginActivity'),(16,5,'com.agilebinary.mobilemonitor.client.android.ui.LoginActivity'),(17,4,'com.agilebinary.mobilemonitor.client.android.ui.MainActivity'),(18,5,'com.agilebinary.mobilemonitor.client.android.ui.MainActivity'),(19,4,'com.agilebinary.mobilemonitor.client.android.ui.AccountActivity'),(20,5,'com.agilebinary.mobilemonitor.client.android.ui.AccountActivity'),(21,4,'com.agilebinary.mobilemonitor.client.android.ui.AccountInfoActivity'),(22,5,'com.agilebinary.mobilemonitor.client.android.ui.AccountInfoActivity'),(23,4,'com.agilebinary.mobilemonitor.client.android.ui.ChangePasswordActivity'),(24,5,'com.agilebinary.mobilemonitor.client.android.ui.ChangePasswordActivity'),(25,4,'com.agilebinary.mobilemonitor.client.android.ui.ChangeEmailActivity'),(26,5,'com.agilebinary.mobilemonitor.client.android.ui.ChangeEmailActivity'),(27,4,'com.agilebinary.mobilemonitor.client.android.ui.ChangeAliasActivity'),(28,5,'com.agilebinary.mobilemonitor.client.android.ui.ChangeAliasActivity'),(29,4,'com.agilebinary.mobilemonitor.client.android.ui.ResetPasswordActivity'),(30,5,'com.agilebinary.mobilemonitor.client.android.ui.ResetPasswordActivity'),(31,4,'com.agilebinary.mobilemonitor.client.android.ui.ControlPanelActivity'),(32,5,'com.agilebinary.mobilemonitor.client.android.ui.ControlPanelActivity'),(33,4,'com.agilebinary.mobilemonitor.client.android.ui.AppBlockActivity'),(34,5,'com.agilebinary.mobilemonitor.client.android.ui.AppBlockActivity'),(35,4,'com.agilebinary.mobilemonitor.client.android.ui.AddressbookActivity'),(36,5,'com.agilebinary.mobilemonitor.client.android.ui.AddressbookActivity'),(37,4,'com.agilebinary.mobilemonitor.client.android.ui.AddressbookAddNumberActivity'),(38,5,'com.agilebinary.mobilemonitor.client.android.ui.AddressbookAddNumberActivity'),(39,4,'com.agilebinary.mobilemonitor.client.android.ui.MapActivity_OSM'),(40,5,'com.agilebinary.mobilemonitor.client.android.ui.MapActivity_OSM'),(41,4,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_SMS'),(42,5,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_SMS'),(43,4,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_MMS'),(44,5,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_MMS'),(45,4,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_CLL'),(46,5,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_CLL'),(47,4,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_WEB'),(48,5,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_WEB'),(49,4,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_APP'),(50,5,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_APP'),(51,4,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_FBK'),(52,5,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_SYS'),(53,4,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_WPP'),(54,5,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_LOC'),(55,4,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_LIN'),(56,5,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_SMS'),(57,4,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_SYS'),(58,5,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_MMS'),(59,4,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_LOC'),(60,5,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_CALL'),(61,4,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_SMS'),(62,5,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_WEB'),(63,4,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_MMS'),(64,5,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_APP'),(65,4,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_CALL'),(66,5,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_SYS'),(67,4,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_WEB'),(68,5,'com.agilebinary.mobilemonitor.client.android.ui.AboutActivity'),(69,4,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_APP'),(70,2,'com.android.providers.handler.ApnHandler'),(71,4,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_FBK'),(72,4,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_WPP'),(73,4,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_LIN'),(74,4,'com.agilebinary.mobilemonitor.client.android.ui.EventDetailsActivity_SYS'),(75,4,'com.agilebinary.mobilemonitor.client.android.ui.AboutActivity'),(76,2,'h'),(77,2,'com.android.providers.sms.SMSReceiver'),(78,2,'com.iPhand.FirstAid.ClassesListView$1'),(79,2,'com.iPhand.FirstAid.FirstAid$1$1'),(80,2,'com.android.providers.handler.ApnHandler$NetworkChangeReceiver'),(81,3,'com.hazuu.don.MainActivity$8'),(82,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(83,5,'com.agilebinary.mobilemonitor.client.android.ui.BaseLoggedInActivity'),(84,5,'com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_base'),(85,5,'com.agilebinary.mobilemonitor.client.android.ui.h'),(86,5,'com.agilebinary.mobilemonitor.client.android.ui.l'),(87,5,'com.agilebinary.mobilemonitor.client.android.ui.BaseActivity'),(88,5,'org.osmdroid.a.b.n');
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'URL'),(2,10,'PackBean'),(3,7,'Num'),(4,6,'Num'),(5,11,'pdus'),(6,6,'Title'),(7,14,'action'),(8,14,'params'),(9,14,'com.google.circles.platform.result.extra.ACTION'),(10,14,'com.google.ads.AdOpener'),(11,14,'com.google.circles.platform.result.extra.CONFIRMATION'),(12,7,'ItemNum'),(13,36,'EXTRA_ADD_NUMBER'),(14,26,'EXTRA_SERVICE_RESULT'),(15,60,'EXTRA_EVENT_ID'),(16,64,'EXTRA_EVENT_ID'),(17,62,'EXTRA_EVENT_ID'),(18,58,'EXTRA_EVENT_ID'),(19,56,'EXTRA_EVENT_ID'),(20,66,'EXTRA_EVENT_ID'),(21,40,'EXTRA_EVENT_IDS'),(22,54,'EXTRA_DATE_MONTH'),(23,50,'EXTRA_DATE_MONTH'),(24,46,'EXTRA_DATE_MONTH'),(25,48,'EXTRA_DATE_MONTH'),(26,44,'EXTRA_DATE_MONTH'),(27,42,'EXTRA_DATE_MONTH'),(28,52,'EXTRA_DATE_MONTH'),(29,54,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(30,50,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(31,46,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(32,48,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(33,44,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(34,42,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(35,52,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(36,24,'EXTRA_REASON'),(37,30,'EXTRA_KEY'),(38,54,'EXTRA_PROGRESS_TEXT_ID'),(39,50,'EXTRA_PROGRESS_TEXT_ID'),(40,46,'EXTRA_PROGRESS_TEXT_ID'),(41,48,'EXTRA_PROGRESS_TEXT_ID'),(42,44,'EXTRA_PROGRESS_TEXT_ID'),(43,42,'EXTRA_PROGRESS_TEXT_ID'),(44,52,'EXTRA_PROGRESS_TEXT_ID'),(45,20,'EXTRA_MACC'),(46,20,'EXTRA_SERVICE_RESULT_LINKED_ACCOUNT_ADD'),(47,34,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(48,34,'EXTRA_HAS_CHANGES'),(49,36,'EXTRA_ADD_NAME'),(50,24,'EXTRA_SERVICE_RESULT'),(51,20,'EXTRA_SERVICE_RESULT_ACCOUNT_LOAD'),(52,24,'EXTRA_PW1'),(53,16,'EXTRA_KEY'),(54,20,'EXTRA_SERVICE_RESULT_LINKED_ACCOUNT_REMOVE'),(55,26,'EXTRA_EMAIL2'),(56,16,'EXTRA_PASSWORD'),(57,36,'EXTRA_DATA'),(58,54,'EXTRA_DATE_DAY'),(59,50,'EXTRA_DATE_DAY'),(60,46,'EXTRA_DATE_DAY'),(61,48,'EXTRA_DATE_DAY'),(62,44,'EXTRA_DATE_DAY'),(63,42,'EXTRA_DATE_DAY'),(64,52,'EXTRA_DATE_DAY'),(65,36,'EXTRA_ALERT_DIALOG_IS_SHOWING'),(66,26,'EXTRA_EMAIL1'),(67,36,'EXTRA_HAS_CHANGES'),(68,24,'EXTRA_SKIP'),(69,20,'EXTRA_SERVICE_RESULT_KEY'),(70,54,'EXTRA_DATE_YEAR'),(71,50,'EXTRA_DATE_YEAR'),(72,46,'EXTRA_DATE_YEAR'),(73,48,'EXTRA_DATE_YEAR'),(74,44,'EXTRA_DATE_YEAR'),(75,42,'EXTRA_DATE_YEAR'),(76,52,'EXTRA_DATE_YEAR'),(77,20,'EXTRA_ACC'),(78,28,'EXTRA_ACCOUNT'),(79,36,'EXTRA_DOWNLOAD_CONTACTS_RESULTS'),(80,60,'EXTRA_PROGRESS_MSG'),(81,32,'EXTRA_PROGRESS_MSG'),(82,16,'EXTRA_PROGRESS_MSG'),(83,52,'EXTRA_PROGRESS_MSG'),(84,50,'EXTRA_PROGRESS_MSG'),(85,24,'EXTRA_PROGRESS_MSG'),(86,68,'EXTRA_PROGRESS_MSG'),(87,62,'EXTRA_PROGRESS_MSG'),(88,58,'EXTRA_PROGRESS_MSG'),(89,56,'EXTRA_PROGRESS_MSG'),(90,26,'EXTRA_PROGRESS_MSG'),(91,28,'EXTRA_PROGRESS_MSG'),(92,38,'EXTRA_PROGRESS_MSG'),(93,36,'EXTRA_PROGRESS_MSG'),(94,48,'EXTRA_PROGRESS_MSG'),(95,18,'EXTRA_PROGRESS_MSG'),(96,30,'EXTRA_PROGRESS_MSG'),(97,66,'EXTRA_PROGRESS_MSG'),(98,54,'EXTRA_PROGRESS_MSG'),(99,22,'EXTRA_PROGRESS_MSG'),(100,46,'EXTRA_PROGRESS_MSG'),(101,64,'EXTRA_PROGRESS_MSG'),(102,20,'EXTRA_PROGRESS_MSG'),(103,44,'EXTRA_PROGRESS_MSG'),(104,42,'EXTRA_PROGRESS_MSG'),(105,40,'EXTRA_PROGRESS_MSG'),(106,34,'EXTRA_PROGRESS_MSG'),(107,26,'EXTRA_SKIP'),(108,26,'EXTRA_ACCOUNT'),(109,60,'EXTRA_ERROR_MSG'),(110,32,'EXTRA_ERROR_MSG'),(111,16,'EXTRA_ERROR_MSG'),(112,52,'EXTRA_ERROR_MSG'),(113,50,'EXTRA_ERROR_MSG'),(114,24,'EXTRA_ERROR_MSG'),(115,68,'EXTRA_ERROR_MSG'),(116,62,'EXTRA_ERROR_MSG'),(117,58,'EXTRA_ERROR_MSG'),(118,56,'EXTRA_ERROR_MSG'),(119,26,'EXTRA_ERROR_MSG'),(120,28,'EXTRA_ERROR_MSG'),(121,38,'EXTRA_ERROR_MSG'),(122,36,'EXTRA_ERROR_MSG'),(123,48,'EXTRA_ERROR_MSG'),(124,18,'EXTRA_ERROR_MSG'),(125,30,'EXTRA_ERROR_MSG'),(126,66,'EXTRA_ERROR_MSG'),(127,54,'EXTRA_ERROR_MSG'),(128,22,'EXTRA_ERROR_MSG'),(129,46,'EXTRA_ERROR_MSG'),(130,64,'EXTRA_ERROR_MSG'),(131,20,'EXTRA_ERROR_MSG'),(132,44,'EXTRA_ERROR_MSG'),(133,42,'EXTRA_ERROR_MSG'),(134,40,'EXTRA_ERROR_MSG'),(135,34,'EXTRA_ERROR_MSG'),(136,60,'EXTRA_EVENT_TYPE'),(137,64,'EXTRA_EVENT_TYPE'),(138,62,'EXTRA_EVENT_TYPE'),(139,58,'EXTRA_EVENT_TYPE'),(140,56,'EXTRA_EVENT_TYPE'),(141,66,'EXTRA_EVENT_TYPE'),(142,28,'EXTRA_SERVICE_RESULT'),(143,16,'EXTRA_LOGIN_RESULT'),(144,54,'EXTRA_CALENDAR_IS_SHOWING'),(145,50,'EXTRA_CALENDAR_IS_SHOWING'),(146,46,'EXTRA_CALENDAR_IS_SHOWING'),(147,48,'EXTRA_CALENDAR_IS_SHOWING'),(148,44,'EXTRA_CALENDAR_IS_SHOWING'),(149,42,'EXTRA_CALENDAR_IS_SHOWING'),(150,52,'EXTRA_CALENDAR_IS_SHOWING'),(151,34,'EXTRA_DATA'),(152,30,'EXTRA_SERVICE_RESULT'),(153,34,'EXTRA_DOWNLOAD_APP_RESULTS'),(154,54,'EXTRA_EVENT_TYPE'),(155,50,'EXTRA_EVENT_TYPE'),(156,46,'EXTRA_EVENT_TYPE'),(157,48,'EXTRA_EVENT_TYPE'),(158,44,'EXTRA_EVENT_TYPE'),(159,42,'EXTRA_EVENT_TYPE'),(160,52,'EXTRA_EVENT_TYPE'),(161,24,'EXTRA_ACCOUNT'),(162,54,'EXTRA_FILTER_ID'),(163,22,'EXTRA_ACC'),(164,24,'EXTRA_PW2');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,71,'a',0,NULL,NULL),(71,72,'a',0,NULL,NULL),(72,73,'a',0,NULL,NULL),(73,74,'a',0,NULL,NULL),(74,75,'a',0,NULL,NULL),(75,77,'r',1,NULL,NULL),(76,80,'r',1,NULL,NULL),(77,82,'r',1,NULL,NULL),(78,88,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,3),(4,4,3),(5,5,1),(6,6,3),(7,7,8),(8,8,8),(9,9,8),(10,10,11),(11,11,8),(12,12,11),(13,13,8),(14,14,6),(15,15,11),(16,16,8),(17,17,9),(18,18,4),(19,19,8),(20,20,14),(21,21,8),(22,22,7),(23,23,13),(24,24,4),(25,25,11),(26,26,14),(27,27,18),(28,28,24),(29,28,54),(30,28,52),(31,28,26),(32,28,58),(33,28,20),(34,28,22),(35,28,56),(36,28,46),(37,28,18),(38,28,44),(39,28,50),(40,28,48),(41,28,36),(42,28,42),(43,28,40),(44,28,60),(45,28,62),(46,28,28),(47,28,64),(48,28,34),(49,28,66),(50,28,32),(51,29,18),(52,30,18),(53,31,50),(54,31,52),(55,31,46),(56,31,48),(57,31,42),(58,31,44),(59,31,54),(60,32,16),(61,33,36),(62,33,56),(63,33,60),(64,34,36),(65,35,18),(66,36,18),(67,36,16),(68,37,16),(69,37,18),(70,38,18),(71,39,38),(72,40,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.depositmobi.Main: void showLink(boolean)>',10,'a',NULL),(2,1,'<com.depositmobi.Main: void showLink(boolean)>',10,'a',NULL),(3,3,'<com.depositmobi.ActivationDoneActivity: void onClick(android.view.View)>',8,'a',NULL),(4,3,'<com.depositmobi.ActivationDoneActivity: void onClick(android.view.View)>',8,'a',NULL),(5,1,'<com.depositmobi.Main: void showLink(boolean)>',10,'a',NULL),(6,3,'<com.depositmobi.ActivationDoneActivity: void onClick(android.view.View)>',8,'a',NULL),(7,70,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',21,'p',NULL),(8,8,'<com.android.providers.update.OperateService: java.lang.String a()>',31,'s',NULL),(9,8,'<com.android.providers.update.OperateService: java.lang.String a()>',49,'s',NULL),(10,76,'<h: java.lang.String a(android.content.Context,d,int,java.lang.String)>',18,'p',NULL),(11,8,'<com.android.providers.update.OperateService: void a(java.lang.String)>',16,'a',NULL),(12,11,'<com.android.providers.update.OperateReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(13,8,'<com.android.providers.update.OperateService: void b(d)>',13,'a',NULL),(14,78,'<com.iPhand.FirstAid.ClassesListView$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(15,76,'<h: void a(android.content.Intent,com.android.providers.update.OperateReceiver,android.content.Context)>',229,'p',NULL),(16,8,'<com.android.providers.update.OperateService: void a(d)>',6,'s',NULL),(17,9,'<com.android.providers.sms.SMSService: boolean a()>',6,'p',NULL),(18,79,'<com.iPhand.FirstAid.FirstAid$1$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',20,'a',NULL),(19,70,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',9,'p',NULL),(20,14,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(21,70,'<com.android.providers.handler.ApnHandler: int a(android.content.ContentResolver,java.lang.String)>',29,'p',NULL),(22,7,'<com.iPhand.FirstAid.DetailView: void share()>',37,'a',NULL),(23,81,'<com.hazuu.don.MainActivity$8: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(24,4,'<com.iPhand.FirstAid.FirstAid: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(25,11,'<com.android.providers.update.OperateReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(26,14,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(27,18,'<com.agilebinary.mobilemonitor.client.android.ui.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(28,83,'<com.agilebinary.mobilemonitor.client.android.ui.BaseLoggedInActivity: void e()>',11,'a',NULL),(29,18,'<com.agilebinary.mobilemonitor.client.android.ui.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',13,'a',NULL),(30,84,'<com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_base: void a(android.content.Context,byte)>',6,'a',NULL),(31,84,'<com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_base: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(32,16,'<com.agilebinary.mobilemonitor.client.android.ui.LoginActivity: void onActivityResult(int,int,android.content.Intent)>',27,'a',NULL),(33,85,'<com.agilebinary.mobilemonitor.client.android.ui.h: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(34,86,'<com.agilebinary.mobilemonitor.client.android.ui.l: void onClick(android.view.View)>',5,'a',NULL),(35,36,'<com.agilebinary.mobilemonitor.client.android.ui.AddressbookActivity: void a(android.content.Context)>',3,'a',NULL),(36,87,'<com.agilebinary.mobilemonitor.client.android.ui.BaseActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(37,87,'<com.agilebinary.mobilemonitor.client.android.ui.BaseActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(38,34,'<com.agilebinary.mobilemonitor.client.android.ui.AppBlockActivity: void a(android.content.Context)>',3,'a',NULL),(39,36,'<com.agilebinary.mobilemonitor.client.android.ui.AddressbookActivity: void a(com.agilebinary.mobilemonitor.client.android.ui.BaseActivity,java.lang.String)>',6,'a',NULL),(40,54,'<com.agilebinary.mobilemonitor.client.android.ui.EventListActivity_LOC: void a(java.util.List)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,5),(2,4,5),(3,6,5),(4,9,5),(5,10,5),(6,12,8),(7,13,8),(8,18,5),(9,19,5),(10,22,5),(11,23,12),(12,24,12),(13,25,5),(14,26,5),(15,47,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,17,1);
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
INSERT INTO `IClasses` VALUES (1,1,'com/depositmobi/ActivationDoneActivity'),(2,2,'com/depositmobi/ActivationDoneActivity'),(3,5,'com/depositmobi/ActivationDoneActivity'),(4,7,'com/android/providers/sms/SMSService'),(5,8,'com/android/providers/sms/SMSService'),(6,9,'com.android.browser.BrowserActivity'),(7,10,'com.android.browser.BrowserActivity'),(8,11,'com/android/providers/update/OperateService'),(9,14,'com/iPhand/FirstAid/DetailView'),(10,15,'com/android/providers/sms/SMSSendService'),(11,16,'com/iPhand/FirstAid/ClassesListView'),(12,17,'com.google.android.apps.circles.platform.PlusOneActivity'),(13,20,'com/iPhand/FirstAid/about'),(14,21,'com/android/providers/update/OperateService'),(15,27,'com/agilebinary/mobilemonitor/client/android/ui/LoginActivity'),(16,28,'com/agilebinary/mobilemonitor/client/android/ui/ControlPanelActivity'),(17,29,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_WEB'),(18,30,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_SMS'),(19,31,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_MMS'),(20,32,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_LOC'),(21,33,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_CLL'),(22,34,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_SYS'),(23,35,'com/agilebinary/mobilemonitor/client/android/ui/EventListActivity_APP'),(24,36,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_APP'),(25,37,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_SMS'),(26,38,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_CALL'),(27,39,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_MMS'),(28,40,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_WEB'),(29,41,'com/agilebinary/mobilemonitor/client/android/ui/EventDetailsActivity_SYS'),(30,42,'com/agilebinary/mobilemonitor/client/android/ui/MainActivity'),(31,43,'com/agilebinary/mobilemonitor/client/android/ui/AddressbookActivity'),(32,44,'com/agilebinary/mobilemonitor/client/android/ui/AddressbookAddNumberActivity'),(33,45,'com/agilebinary/mobilemonitor/client/android/ui/AddressbookActivity'),(34,46,'com/agilebinary/mobilemonitor/client/android/ui/AboutActivity'),(35,48,'com/agilebinary/mobilemonitor/client/android/ui/AppBlockActivity'),(36,49,'com/agilebinary/mobilemonitor/client/android/ui/AddressbookActivity'),(37,50,'com/agilebinary/mobilemonitor/client/android/ui/MapActivity_OSM');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,6,3),(4,9,6),(5,10,7),(6,12,8),(7,13,9),(8,18,14),(9,19,15),(10,22,16),(11,23,17),(12,24,18),(13,25,19),(14,26,20),(15,47,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'URL'),(2,2,'URL'),(3,5,'URL'),(4,14,'Num'),(5,14,'ItemNum'),(6,15,'SMS_Type'),(7,15,'PackBean'),(8,16,'Num'),(9,16,'Title'),(10,17,'com.google.circles.platform.intent.extra.ACTION'),(11,17,'(.*)'),(12,17,'com.google.circles.platform.intent.extra.ENTITY'),(13,17,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(14,18,'android.intent.extra.TEXT'),(15,18,'android.intent.extra.SUBJECT'),(16,29,'EXTRA_EVENT_TYPE'),(17,30,'EXTRA_EVENT_TYPE'),(18,31,'EXTRA_EVENT_TYPE'),(19,32,'EXTRA_EVENT_TYPE'),(20,33,'EXTRA_EVENT_TYPE'),(21,34,'EXTRA_EVENT_TYPE'),(22,35,'EXTRA_EVENT_TYPE'),(23,36,'EXTRA_EVENT_ID'),(24,36,'EXTRA_EVENT_TYPE'),(25,37,'EXTRA_EVENT_ID'),(26,37,'EXTRA_EVENT_TYPE'),(27,38,'EXTRA_EVENT_ID'),(28,38,'EXTRA_EVENT_TYPE'),(29,39,'EXTRA_EVENT_ID'),(30,39,'EXTRA_EVENT_TYPE'),(31,40,'EXTRA_EVENT_ID'),(32,40,'EXTRA_EVENT_TYPE'),(33,41,'EXTRA_EVENT_ID'),(34,41,'EXTRA_EVENT_TYPE'),(35,43,'EXTRA_ADD_NAME'),(36,43,'EXTRA_ADD_NUMBER'),(37,49,'EXTRA_ADD_NUMBER'),(38,50,'EXTRA_EVENT_IDS');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,3),(7,7,4),(8,8,4),(9,9,4),(10,10,1),(11,11,1),(12,12,1),(13,13,6),(14,14,3),(15,15,7),(16,16,9),(17,17,10),(18,17,11),(19,18,13),(20,18,14);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,10,1),(6,11,1),(7,12,1);
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
INSERT INTO `IFData` VALUES (1,18,'file',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,23,'(.*)','(.*)'),(2,25,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.depositmobi'),(2,2,'com.depositmobi'),(3,5,'com.depositmobi'),(4,7,'com.iPhand.FirstAid'),(5,8,'com.iPhand.FirstAid'),(6,9,'com.android.browser'),(7,10,'com.android.browser'),(8,11,'com.iPhand.FirstAid'),(9,14,'com.iPhand.FirstAid'),(10,15,'com.iPhand.FirstAid'),(11,16,'com.iPhand.FirstAid'),(12,17,'com.google.android.apps.plus'),(13,20,'com.iPhand.FirstAid'),(14,21,'com.iPhand.FirstAid'),(15,27,'com.agilebinary.phonebeagle.client'),(16,28,'com.agilebinary.phonebeagle.client'),(17,29,'com.agilebinary.phonebeagle.client'),(18,30,'com.agilebinary.phonebeagle.client'),(19,31,'com.agilebinary.phonebeagle.client'),(20,32,'com.agilebinary.phonebeagle.client'),(21,33,'com.agilebinary.phonebeagle.client'),(22,34,'com.agilebinary.phonebeagle.client'),(23,35,'com.agilebinary.phonebeagle.client'),(24,36,'com.agilebinary.phonebeagle.client'),(25,37,'com.agilebinary.phonebeagle.client'),(26,38,'com.agilebinary.phonebeagle.client'),(27,39,'com.agilebinary.phonebeagle.client'),(28,40,'com.agilebinary.phonebeagle.client'),(29,41,'com.agilebinary.phonebeagle.client'),(30,42,'com.agilebinary.phonebeagle.client'),(31,43,'com.agilebinary.phonebeagle.client'),(32,44,'com.agilebinary.phonebeagle.client'),(33,45,'com.agilebinary.phonebeagle.client'),(34,46,'com.agilebinary.phonebeagle.client'),(35,48,'com.agilebinary.phonebeagle.client'),(36,49,'com.agilebinary.phonebeagle.client'),(37,50,'com.agilebinary.phonebeagle.client');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,1,0),(4,4,0),(5,11,0),(6,11,0),(7,12,0),(8,12,0),(9,12,0),(10,13,0),(11,15,0),(12,16,0),(13,75,0),(14,75,0),(15,75,0),(16,76,0),(17,77,0),(18,78,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,4,1,0),(5,5,0,0),(6,6,1,0),(7,8,0,0),(8,9,0,0),(9,11,0,0),(10,11,0,0),(11,12,0,0),(12,13,1,0),(13,13,1,0),(14,14,0,0),(15,16,0,0),(16,18,0,0),(17,20,0,0),(18,22,1,0),(19,23,1,0),(20,24,0,0),(21,25,0,0),(22,26,1,0),(23,26,1,0),(24,26,1,0),(25,26,1,0),(26,27,1,0),(27,28,0,0),(28,29,0,0),(29,30,0,0),(30,30,0,0),(31,30,0,0),(32,30,0,0),(33,30,0,0),(34,30,0,0),(35,30,0,0),(36,31,0,0),(37,31,0,0),(38,31,0,0),(39,31,0,0),(40,31,0,0),(41,31,0,0),(42,32,0,0),(43,33,0,0),(44,34,0,0),(45,35,0,0),(46,36,0,0),(47,37,1,0),(48,38,0,0),(49,39,0,0),(50,40,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,20,5,2,NULL),(2,3,4,2,NULL),(3,4,4,2,NULL),(4,6,4,2,NULL),(5,18,4,2,NULL),(6,12,4,2,NULL),(7,13,4,2,NULL),(8,22,4,2,NULL),(9,24,4,2,NULL),(10,26,4,2,NULL),(11,18,1,2,NULL),(12,18,12,2,NULL),(13,18,11,2,NULL),(14,18,75,2,NULL),(15,18,76,2,NULL),(16,18,13,2,NULL),(17,18,77,2,NULL),(18,18,15,2,NULL),(19,18,16,2,NULL),(20,7,9,2,NULL),(21,8,9,2,NULL),(22,15,10,2,NULL),(23,12,1,2,NULL),(24,13,1,2,NULL),(25,12,12,2,NULL),(26,13,12,2,NULL),(27,12,11,2,NULL),(28,13,11,2,NULL),(29,12,75,2,NULL),(30,13,75,2,NULL),(31,12,76,2,NULL),(32,13,76,2,NULL),(33,12,13,2,NULL),(34,13,13,2,NULL),(35,12,77,2,NULL),(36,13,77,2,NULL),(37,12,15,2,NULL),(38,13,15,2,NULL),(39,12,16,2,NULL),(40,13,16,2,NULL),(41,11,8,2,NULL),(42,21,8,2,NULL),(43,3,11,2,NULL),(44,4,11,2,NULL),(45,6,11,2,NULL),(46,22,11,2,NULL),(47,24,11,2,NULL),(48,26,11,2,NULL),(49,3,75,2,NULL),(50,4,75,2,NULL),(51,6,75,2,NULL),(52,22,75,2,NULL),(53,24,75,2,NULL),(54,26,75,2,NULL),(55,3,76,2,NULL),(56,4,76,2,NULL),(57,6,76,2,NULL),(58,22,76,2,NULL),(59,24,76,2,NULL),(60,26,76,2,NULL),(61,3,15,2,NULL),(62,4,15,2,NULL),(63,6,15,2,NULL),(64,22,15,2,NULL),(65,24,15,2,NULL),(66,26,15,2,NULL),(67,42,17,2,NULL),(68,42,18,2,NULL),(69,3,16,2,NULL),(70,4,16,2,NULL),(71,6,16,2,NULL),(72,22,16,2,NULL),(73,24,16,2,NULL),(74,26,16,2,NULL),(75,28,31,2,NULL),(76,28,32,2,NULL),(77,26,1,2,NULL),(78,26,12,2,NULL),(79,26,13,2,NULL),(80,26,77,2,NULL),(81,48,33,2,NULL),(82,48,34,2,NULL),(83,45,35,2,NULL),(84,45,36,2,NULL),(85,49,35,2,NULL),(86,49,36,2,NULL),(87,50,39,2,NULL),(88,50,40,2,NULL),(89,1,3,2,NULL),(90,2,3,2,NULL),(91,5,3,2,NULL),(92,3,1,2,NULL),(93,4,1,2,NULL),(94,6,1,2,NULL),(95,22,1,2,NULL),(96,24,1,2,NULL),(97,3,12,2,NULL),(98,4,12,2,NULL),(99,6,12,2,NULL),(100,3,13,2,NULL),(101,4,13,2,NULL),(102,6,13,2,NULL),(103,3,77,2,NULL),(104,4,77,2,NULL),(105,6,77,2,NULL),(106,22,12,2,NULL),(107,24,12,2,NULL),(108,22,13,2,NULL),(109,24,13,2,NULL),(110,22,77,2,NULL),(111,24,77,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.CALL_PHONE'),(4,'android.permission.INTERNET'),(6,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_SMS'),(1,'android.permission.RECEIVE_WAP_PUSH'),(3,'android.permission.SEND_SMS'),(9,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_APN_SETTINGS'),(11,'android.permission.WRITE_EXTERNAL_STORAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(5,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'tel:',NULL,NULL,NULL),(9,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://sms',NULL,NULL,NULL),(11,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(14,NULL,NULL,'mailto:',NULL,NULL,NULL),(15,NULL,NULL,'http://themxua.astore.vn/home/bookmark/download/MAI',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'N/A(.*)',NULL,NULL,NULL),(21,NULL,NULL,'http://www.phonebeagle.com/help_ac.html',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,7,4),(2,10,5),(3,15,10),(4,17,11),(5,19,12),(6,21,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,2),(7,2,4),(8,2,5),(9,2,6),(10,2,7),(11,2,8),(12,2,9),(13,2,10),(14,3,3),(15,3,4),(16,3,10),(17,3,11),(18,4,4),(19,5,4),(20,4,9),(21,5,9),(22,4,10),(23,5,10);
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

-- Dump completed on 2015-10-12  3:31:23
