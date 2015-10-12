-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_375
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (28,'(.*)'),(27,'android.app.action.ADD_DEVICE_ADMIN'),(6,'android.app.action.DEVICE_ADMIN_ENABLED'),(30,'android.app.action.SET_NEW_PASSWORD'),(26,'android.appwidget.action.APPWIDGET_UPDATE'),(2,'android.intent.action.BOOT_COMPLETED'),(35,'android.intent.action.CHOOSER'),(39,'android.intent.action.CLOSE_SYSTEM_DIALOGS'),(22,'android.intent.action.CREATE_LIVE_FOLDER'),(3,'android.intent.action.DATE_CHANGED'),(33,'android.intent.action.DELETE'),(9,'android.intent.action.EDIT'),(12,'android.intent.action.GET_CONTENT'),(20,'android.intent.action.INSERT'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.NEW_OUTGOING_CALL'),(15,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.PACKAGE_CHANGED'),(14,'android.intent.action.PACKAGE_INSTALL'),(36,'android.intent.action.PACKAGE_REMOVED'),(16,'android.intent.action.PACKAGE_REPLACED'),(11,'android.intent.action.PHONE_STATE'),(7,'android.intent.action.PICK'),(38,'android.intent.action.PICK_ACTIVITY'),(19,'android.intent.action.RUN'),(31,'android.intent.action.SCREEN_OFF'),(23,'android.intent.action.SET_WALLPAPER'),(32,'android.intent.action.USER_PRESENT'),(8,'android.intent.action.VIEW'),(34,'android.intent.action.WALLPAPER_CHANGED'),(4,'android.provider.Telephony.SMS_RECEIVED'),(24,'android.setting.SMS_SENT'),(29,'android.settings.SECURITY_SETTINGS'),(37,'android.speech.action.WEB_SEARCH'),(25,'com.android.XWLauncher.action.INSTALL_SHORTCUT'),(17,'com.android.notepad.action.EDIT_NOTE'),(21,'com.android.notepad.action.EDIT_TITLE'),(5,'com.mobilefonex.mobilebackup.MobileBackup'),(40,'com.motorola.blur.home.ACTION_SET_WIDGET_SIZE'),(18,'com.vvt.android.syncmanager.SyncManagerActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.lenovo.PersonalSaving',1),(2,'com.FourCobblers.Free.PhoneLock',5),(3,'com.mobilefonex.mobilebackup',8),(4,'com.FourCobblers.Free.PhoneLock',29),(5,'com.vvt.android.syncmanager',17),(6,'com.android.XWLauncher',32);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.ALTERNATIVE'),(7,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(6,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(5,'android.intent.category.MONKEY'),(4,'android.intent.category.SELECTED_ALTERNATIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.lenovo.PersonalSaving.PersonalSavingActivity'),(2,1,'com.nl.MyService'),(3,1,'com.nl.MyReceiver'),(4,2,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(5,2,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(6,2,'com.FourCobblers.Free.PhoneLock.ProtectOtherData'),(7,2,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(8,2,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(9,2,'com.FourCobblers.Free.PhoneLock.Help'),(10,3,'com.mobilefonex.mobilebackup.MobileBackup'),(11,4,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(12,2,'com.google.ads.AdActivity'),(13,2,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(14,4,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(15,3,'com.mobilefonex.mobilebackup.gui.EventsSettingsActivity'),(16,4,'com.FourCobblers.Free.PhoneLock.ProtectOtherData'),(17,3,'com.mobilefonex.mobilebackup.gui.ConnectionHistoryActivity'),(18,2,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(19,4,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(20,3,'com.mobilefonex.mobilebackup.gui.DatabaseStatusActivity'),(21,4,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(22,3,'com.mobilefonex.mobilebackup.processes.DaemonEventProcessingService'),(23,4,'com.FourCobblers.Free.PhoneLock.Help'),(24,3,'com.mobilefonex.mobilebackup.processes.DaemonEventMonitorService'),(25,4,'com.google.ads.AdActivity'),(26,3,'com.mobilefonex.mobilebackup.processes.DaemonSchedulerService'),(27,4,'com.FourCobblers.Free.PhoneLock.NotesList'),(28,3,'com.mobilefonex.mobilebackup.receivers.SMSIn'),(29,3,'com.mobilefonex.mobilebackup.receivers.PhoneState'),(30,3,'com.mobilefonex.mobilebackup.receivers.SystemState'),(31,3,'com.mobilefonex.mobilebackup.receivers.PackageAdded'),(32,4,'com.FourCobblers.Free.PhoneLock.NoteEditor'),(33,5,'com.vvt.android.syncmanager.SyncManagerActivity'),(34,3,'com.mobilefonex.mobilebackup.deviceevents.DeviceEventSMSContentProvider'),(35,5,'com.vvt.android.syncmanager.gui.EventsSettingsActivity'),(36,5,'com.vvt.android.syncmanager.gui.ConnectionHistoryActivity'),(37,3,'com.mobilefonex.mobilebackup.deviceevents.DeviceEventCallContentProvider'),(38,5,'com.vvt.android.syncmanager.gui.DatabaseStatusActivity'),(39,4,'com.FourCobblers.Free.PhoneLock.TitleEditor'),(40,5,'com.vvt.android.syncmanager.service.EventMonitorService'),(41,3,'com.mobilefonex.mobilebackup.deviceevents.DeviceEventLocationContentProvider'),(42,5,'com.vvt.android.syncmanager.service.SchedulerService'),(43,5,'com.vvt.android.syncmanager.receivers.SmsCommandReceiver'),(44,4,'com.FourCobblers.Free.PhoneLock.NotesLiveFolder'),(45,5,'com.vvt.android.syncmanager.receivers.FlexiKeyReceiver'),(46,5,'com.vvt.android.syncmanager.receivers.SystemState'),(47,4,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(48,5,'com.fx.dalvik.eventdb.EventProvider'),(49,4,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(50,6,'com.android.XWLauncher.Launcher'),(51,5,'com.fx.dalvik.preference.PreferenceProvider'),(52,4,'com.FourCobblers.Free.PhoneLock.NotePadProvider'),(53,6,'com.android.XWLauncher.MyLauncherSettings'),(54,6,'com.android.XWLauncher.ActivityPickerActivity'),(55,6,'com.android.XWLauncher.CustomShirtcutActivity'),(56,6,'com.android.XWLauncher.WallpaperChooser'),(57,6,'com.android.XWLauncher.catalogue.AppInfoMList'),(58,6,'com.nl.MyService'),(59,6,'mobi.intuitit.android.widget.TimerService'),(60,6,'com.nl.MyReceiver'),(61,6,'com.android.XWLauncher.InstallShortcutReceiver'),(62,6,'mobi.intuitit.android.widget.ClockWidget'),(63,6,'com.android.XWLauncher.LauncherProvider'),(64,2,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1'),(65,2,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3'),(66,2,'u$b'),(67,3,'com.mobilefonex.mobilebackup.deviceevents.DeviceEventHelper'),(68,3,'com.mobilefonex.mobilebackup.control.Main'),(69,3,'com.mobilefonex.mobilebackup.control.DatabaseManager'),(70,3,'com.mobilefonex.mobilebackup.MobileBackup$2'),(71,5,'com.fx.dalvik.gmail.GmailDatabaseManager'),(72,5,'com.fx.dalvik.mmssms.MmsSmsDatabaseManager'),(73,5,'com.vvt.android.syncmanager.control.Main'),(74,5,'com.vvt.android.syncmanager.control.DatabaseManager'),(75,5,'com.fx.dalvik.preference.ConnectionHistoryManagerImpl'),(76,5,'com.fx.dalvik.util.GeneralUtil'),(77,5,'com.vvt.dalvik.mbackupd.email.EmailContentObserver'),(78,3,'com.mobilefonex.mobilebackup.receivers.SMSOut'),(79,4,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3'),(80,4,'com.FourCobblers.Free.PhoneLock.PhoneLock$1'),(81,4,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1'),(82,5,'com.vvt.dalvik.mbackupd.mmssms.MmsSmsContentObserver'),(83,5,'com.fx.dalvik.contacts.ContactsDatabaseManager'),(84,4,'u$b'),(85,5,'com.vvt.dalvik.mbackupd.calllog.CallLogContentObserver'),(86,5,'com.vvt.android.syncmanager.control.ConfigurationManager'),(87,6,'com.android.XWLauncher.LauncherModel'),(88,6,'com.android.XWLauncher.Launcher$WallpaperIntentReceiver'),(89,6,'com.android.XWLauncher.CustomShirtcutActivity$IconTypeDialog'),(90,6,'com.android.XWLauncher.Launcher$CloseSystemDialogsIntentReceiver'),(91,6,'com.android.XWLauncher.Launcher$ApplicationsIntentReceiver'),(92,6,'com.nl.MyService$alarmreceiver'),(93,6,'mobi.intuitit.android.widget.WidgetSpace$ScrollViewProvider'),(94,6,'mobi.intuitit.android.widget.WidgetSpace$1'),(95,6,'com.nl.MyService$4'),(96,6,'com.android.XWLauncher.CounterReceiver'),(97,6,'android.appwidget.AppWidgetProvider'),(98,6,'com.android.XWLauncher.Search');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'pdus'),(2,18,'pdus'),(3,12,'action'),(4,12,'params'),(5,12,'com.google.ads.AdOpener'),(6,22,'com.mobilefonex.mobilebackup.receivers.Location.horizontal_accuracy'),(7,22,'com.mobilefonex.mobilebackup.receivers.Call.status'),(8,22,'com.mobilefonex.mobilebackup.receivers.Call.timeconnected'),(9,22,'com.mobilefonex.mobilebackup.receivers.Location.vertical_accuracy'),(10,22,'com.mobilefonex.mobilebackup.receivers.Call.timeinitiated'),(11,22,'com.mobilefonex.mobilebackup.receivers.SMSOut.MessageBody'),(12,22,'com.mobilefonex.mobilebackup.receivers.Location.time'),(13,22,'com.mobilefonex.mobilebackup.receivers.Call.direction'),(14,29,'android.intent.extra.PHONE_NUMBER'),(15,22,'com.mobilefonex.mobilebackup.receivers.type'),(16,22,'com.mobilefonex.mobilebackup.receivers.Location.altitude'),(17,22,'com.mobilefonex.mobilebackup.receivers.Call.address'),(18,22,'com.mobilefonex.mobilebackup.receivers.Location.latitude'),(19,29,'state'),(20,22,'com.mobilefonex.mobilebackup.receivers.Location.longitude'),(21,22,'com.mobilefonex.mobilebackup.receivers.Call.timeterminated'),(22,32,'origContent'),(23,25,'params'),(24,28,'pdus'),(25,22,'com.mobilefonex.mobilebackup.receivers.Call.duration'),(26,22,'com.mobilefonex.mobilebackup.receivers.SMSIn.MessageBody'),(27,43,'pdus'),(28,22,'com.mobilefonex.mobilebackup.receivers.SMSIn.OriginatingAddress'),(29,22,'com.mobilefonex.mobilebackup.receivers.SMSOut.DestinationAddress'),(30,49,'pdus'),(31,25,'action'),(32,25,'com.google.ads.AdOpener'),(33,45,'state'),(34,45,'android.intent.extra.PHONE_NUMBER'),(35,55,'btPickIcon_enabled'),(36,50,'launcher.add_countX'),(37,50,'launcher.rename_folder'),(38,50,'android.intent.extra.livefolder.NAME'),(39,55,'android.intent.extra.shortcut.ICON_RESOURCE'),(40,50,'launcher.rename_folder_id'),(41,55,'android.intent.extra.shortcut.NAME'),(42,50,'android.intent.extra.shortcut.INTENT'),(43,61,'android.intent.extra.shortcut.INTENT'),(44,50,'android:viewHierarchyState'),(45,60,'number'),(46,55,'mIconResource'),(47,50,'android:views'),(48,50,'launcher.current_screen'),(49,50,'android.intent.extra.shortcut.NAME'),(50,50,'launcher.add_countY'),(51,50,'launcher.add_occupied_cells'),(52,55,'android.intent.extra.shortcut.ICON'),(53,50,'android.intent.extra.shortcut.ICON_RESOURCE'),(54,50,'android.intent.extra.shortcut.ICON'),(55,50,'custom_widget'),(56,61,'android.intent.extra.shortcut.NAME'),(57,55,'data'),(58,50,'launcher.add_cellX'),(59,55,'icon'),(60,50,'launcher.add_spanY'),(61,50,'launcher.add_screen'),(62,61,'android.intent.extra.shortcut.ICON_RESOURCE'),(63,60,'msg'),(64,60,'pdus'),(65,50,'android:focusedViewId'),(66,50,'launcher.add_spanX'),(67,55,'android.intent.extra.shortcut.INTENT'),(68,55,'mBitmap'),(69,55,'btOk_enabled'),(70,50,'LauncherMetadata.Requirements.Scrollable'),(71,61,'duplicate'),(72,50,'android.intent.extra.livefolder.ICON'),(73,50,'android.intent.extra.livefolder.BASE_INTENT'),(74,50,'appWidgetId'),(75,50,'LauncherMetadata.Requirements.APIVersion'),(76,61,'android.intent.extra.shortcut.ICON'),(77,50,'launcher.add_cellY'),(78,55,'mIntent'),(79,55,'btPickActivity_text');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',1,NULL,NULL),(3,3,'r',1,11,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'r',1,26,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'p',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'p',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'p',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',1,26,NULL),(48,48,'p',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'p',0,NULL,NULL),(52,52,'p',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'s',1,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'r',1,11,NULL),(61,61,'r',1,45,NULL),(62,62,'r',1,NULL,NULL),(63,63,'p',0,NULL,NULL),(64,66,'r',1,NULL,NULL),(65,84,'r',1,NULL,NULL),(66,88,'r',1,NULL,NULL),(67,60,'r',1,NULL,NULL),(68,90,'r',1,NULL,NULL),(69,91,'r',1,NULL,NULL),(70,92,'r',1,NULL,NULL),(71,93,'r',1,NULL,NULL),(72,94,'r',1,NULL,NULL),(73,61,'r',1,NULL,NULL),(74,95,'r',1,NULL,NULL),(75,96,'r',1,NULL,NULL),(76,97,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,3),(3,3,5),(4,4,5),(5,5,5),(6,6,12),(7,7,5),(8,8,5),(9,9,5),(10,10,5),(11,10,4),(12,11,5),(13,12,28),(14,13,28),(15,14,31),(16,14,10),(17,14,15),(18,14,29),(19,14,30),(20,14,20),(21,14,17),(22,14,24),(23,14,22),(24,14,28),(25,14,26),(26,15,28),(27,16,22),(28,17,41),(29,18,10),(30,19,22),(31,20,15),(32,21,10),(33,22,34),(34,23,40),(35,24,10),(36,25,48),(37,26,40),(38,26,43),(39,27,28),(40,28,35),(41,28,42),(42,28,40),(43,28,46),(44,28,45),(45,28,43),(46,28,33),(47,29,37),(48,30,43),(49,30,40),(50,31,41),(51,32,28),(52,33,28),(53,34,15),(54,35,32),(55,36,40),(56,36,35),(57,36,43),(58,36,33),(59,37,27),(60,38,28),(61,38,15),(62,39,39),(63,40,22),(64,41,45),(65,41,40),(66,42,14),(67,42,11),(68,43,29),(69,43,28),(70,43,10),(71,43,26),(72,43,17),(73,43,31),(74,43,30),(75,43,15),(76,43,20),(77,43,24),(78,43,22),(79,44,45),(80,44,46),(81,44,43),(82,44,33),(83,44,35),(84,44,40),(85,44,42),(86,45,15),(87,45,28),(88,46,52),(89,47,33),(90,47,35),(91,48,28),(92,49,14),(93,50,37),(94,51,48),(95,52,52),(96,54,37),(97,53,32),(98,55,40),(99,56,27),(100,57,24),(101,58,35),(102,58,33),(103,58,40),(104,58,43),(105,58,42),(106,58,45),(107,58,46),(108,59,20),(109,59,30),(110,59,31),(111,59,28),(112,59,24),(113,59,29),(114,59,22),(115,59,26),(116,59,10),(117,59,17),(118,59,15),(119,60,32),(120,61,43),(121,61,40),(122,62,25),(123,63,35),(124,64,34),(125,65,43),(126,65,42),(127,65,40),(128,65,46),(129,65,45),(130,65,35),(131,65,33),(132,66,28),(133,67,43),(134,67,33),(135,67,35),(136,67,40),(137,68,29),(138,69,35),(139,69,45),(140,69,33),(141,69,46),(142,69,40),(143,69,42),(144,69,43),(145,70,28),(146,71,40),(147,71,43),(148,72,27),(149,73,40),(150,74,41),(151,75,32),(152,76,48),(153,77,14),(154,78,28),(155,78,26),(156,78,10),(157,78,24),(158,78,22),(159,78,20),(160,78,17),(161,78,15),(162,78,31),(163,78,30),(164,78,29),(165,79,34),(166,80,11),(167,80,14),(168,81,40),(169,81,43),(170,82,14),(171,83,40),(172,84,14),(173,85,35),(174,85,33),(175,85,46),(176,85,45),(177,85,43),(178,85,42),(179,85,40),(180,86,40),(181,86,43),(182,87,14),(183,88,40),(184,89,40),(185,90,42),(186,90,43),(187,90,45),(188,90,46),(189,90,33),(190,90,35),(191,90,40),(192,91,52),(193,92,14),(194,93,40),(195,94,14),(196,95,40),(197,95,43),(198,96,43),(199,97,33),(200,97,35),(201,97,45),(202,97,46),(203,97,40),(204,97,43),(205,97,42),(206,98,35),(207,99,36),(208,100,43),(209,101,38),(210,101,43),(211,101,42),(212,101,40),(213,101,46),(214,101,45),(215,101,33),(216,101,35),(217,102,43),(218,102,40),(219,103,43),(220,103,40),(221,103,35),(222,103,33),(223,104,40),(224,104,35),(225,104,43),(226,105,40),(227,106,33),(228,107,50),(229,107,61),(230,108,50),(231,109,63),(232,110,55),(233,111,60),(234,112,50),(235,113,61),(236,114,55),(237,115,50),(238,116,50),(239,117,55),(240,118,50),(241,119,62),(242,120,50),(243,121,55),(244,122,55),(245,123,50),(246,124,61),(247,125,55),(248,126,50),(249,127,50),(250,128,55),(251,129,55),(252,129,50),(253,130,50),(254,131,50),(255,132,50),(256,133,60),(257,134,60);
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.nl.MyReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'s',NULL),(2,3,'<com.nl.MyReceiver: void onReceive(android.content.Context,android.content.Intent)>',68,'s',NULL),(3,64,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1: void onClick(android.view.View)>',23,'a',NULL),(4,65,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(5,5,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(6,12,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(7,65,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(8,65,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(9,65,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(10,4,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void startMainUI()>',4,'a',NULL),(11,5,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(12,67,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventHelper: int deleteSMSContainingCommand()>',3,'p',NULL),(13,28,'<com.mobilefonex.mobilebackup.receivers.SMSIn: void captureSms(java.lang.String,java.lang.String)>',10,'s',NULL),(14,68,'<com.mobilefonex.mobilebackup.control.Main: void startServices()>',21,'s',0),(15,67,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventHelper: void updateSmsBody(long,java.lang.String)>',10,'p',NULL),(16,69,'<com.mobilefonex.mobilebackup.control.DatabaseManager: android.net.Uri insert(com.mobilefonex.mobilebackup.deviceevents.IDeviceEvent)>',53,'p',NULL),(17,41,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventLocationContentProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',22,'p',0),(18,10,'<com.mobilefonex.mobilebackup.MobileBackup: void updateGui()>',13,'a',NULL),(19,69,'<com.mobilefonex.mobilebackup.control.DatabaseManager: android.net.Uri insert(com.mobilefonex.mobilebackup.deviceevents.IDeviceEvent)>',42,'p',NULL),(20,15,'<com.mobilefonex.mobilebackup.gui.EventsSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(21,70,'<com.mobilefonex.mobilebackup.MobileBackup$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(22,34,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventSMSContentProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',23,'p',0),(23,71,'<com.fx.dalvik.gmail.GmailDatabaseManager: long getMessageLatestId(android.content.Context,java.lang.String)>',5,'p',NULL),(24,10,'<com.mobilefonex.mobilebackup.MobileBackup: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(25,48,'<com.fx.dalvik.eventdb.EventProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',15,'p',0),(26,72,'<com.fx.dalvik.mmssms.MmsSmsDatabaseManager: void updateSmsBody(long,java.lang.String)>',10,'p',NULL),(27,67,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventHelper: int deleteMessage(long)>',5,'p',NULL),(28,73,'<com.vvt.android.syncmanager.control.Main: void registerPrefEnableCapture()>',11,'p',NULL),(29,37,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventCallContentProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',115,'p',NULL),(30,74,'<com.vvt.android.syncmanager.control.DatabaseManager: android.net.Uri insert(com.fx.dalvik.event.Event)>',13,'p',NULL),(31,41,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventLocationContentProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',23,'p',0),(32,67,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventHelper: java.lang.String getPreviousSmsBody(long,long)>',8,'p',NULL),(33,67,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventHelper: int deleteMessage(long)>',7,'p',NULL),(34,15,'<com.mobilefonex.mobilebackup.gui.EventsSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(35,32,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void onPause()>',36,'p',0),(36,75,'<com.fx.dalvik.preference.ConnectionHistoryManagerImpl: void manageConnectionHistoryList()>',3,'p',NULL),(37,27,'<com.FourCobblers.Free.PhoneLock.NotesList: boolean onContextItemSelected(android.view.MenuItem)>',16,'p',0),(38,68,'<com.mobilefonex.mobilebackup.control.Main: void resetEventMonitorService()>',6,'s',0),(39,39,'<com.FourCobblers.Free.PhoneLock.TitleEditor: void onPause()>',12,'p',0),(40,69,'<com.mobilefonex.mobilebackup.control.DatabaseManager: android.net.Uri insert(com.mobilefonex.mobilebackup.deviceevents.IDeviceEvent)>',31,'p',NULL),(41,45,'<com.vvt.android.syncmanager.receivers.FlexiKeyReceiver: void startUi()>',6,'a',NULL),(42,11,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void startMainUI()>',4,'a',NULL),(43,68,'<com.mobilefonex.mobilebackup.control.Main: void startServices()>',33,'s',0),(44,73,'<com.vvt.android.syncmanager.control.Main: void resetEventMonitorService()>',9,'s',0),(45,68,'<com.mobilefonex.mobilebackup.control.Main: void resetSchedulerService()>',12,'s',0),(46,52,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',20,'p',0),(47,76,'<com.fx.dalvik.util.GeneralUtil: void promptUninstallApplication(android.content.Context)>',10,'a',NULL),(48,67,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventHelper: void suppressMessagingApplication()>',12,'p',NULL),(49,14,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(50,37,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventCallContentProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',22,'p',0),(51,48,'<com.fx.dalvik.eventdb.EventProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',14,'p',0),(52,52,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(53,32,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void onCreate(android.os.Bundle)>',29,'p',0),(54,37,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventCallContentProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',23,'p',0),(55,77,'<com.vvt.dalvik.mbackupd.email.EmailContentObserver: void setEnable(boolean)>',8,'p',NULL),(56,27,'<com.FourCobblers.Free.PhoneLock.NotesList: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(57,78,'<com.mobilefonex.mobilebackup.receivers.SMSOut: void registerSMSObserver()>',14,'p',NULL),(58,73,'<com.vvt.android.syncmanager.control.Main: void registerPrefCaptureEmail()>',11,'p',NULL),(59,69,'<com.mobilefonex.mobilebackup.control.DatabaseManager: android.database.Cursor query(short,java.lang.String[],java.lang.String)>',9,'p',NULL),(60,32,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void cancelNote()>',14,'p',0),(61,72,'<com.fx.dalvik.mmssms.MmsSmsDatabaseManager: long getLatestSmsId(android.content.Context)>',11,'p',NULL),(62,25,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(63,35,'<com.vvt.android.syncmanager.gui.EventsSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(64,34,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventSMSContentProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',97,'p',NULL),(65,73,'<com.vvt.android.syncmanager.control.Main: void registerPrefCaptureSms()>',11,'p',NULL),(66,67,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventHelper: void updateSmsBody(long,java.lang.String)>',12,'p',NULL),(67,75,'<com.fx.dalvik.preference.ConnectionHistoryManagerImpl: void addConnectionHistory(com.fx.dalvik.preference.model.ConnectionHistory)>',36,'p',NULL),(68,29,'<com.mobilefonex.mobilebackup.receivers.PhoneState: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(69,73,'<com.vvt.android.syncmanager.control.Main: void resetSchedulerService()>',15,'s',0),(70,67,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventHelper: void suppressMessagingApplication()>',20,'s',NULL),(71,72,'<com.fx.dalvik.mmssms.MmsSmsDatabaseManager: void updateSmsBody(long,java.lang.String)>',12,'p',NULL),(72,27,'<com.FourCobblers.Free.PhoneLock.NotesList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(73,71,'<com.fx.dalvik.gmail.GmailDatabaseManager: long getMessageLatestId(android.content.Context,java.lang.String)>',17,'p',NULL),(74,41,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventLocationContentProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',106,'p',NULL),(75,32,'<com.FourCobblers.Free.PhoneLock.NoteEditor: void deleteNote()>',8,'p',0),(76,48,'<com.fx.dalvik.eventdb.EventProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',32,'p',NULL),(77,79,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(78,68,'<com.mobilefonex.mobilebackup.control.Main: void startServices()>',27,'s',0),(79,34,'<com.mobilefonex.mobilebackup.deviceevents.DeviceEventSMSContentProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',22,'p',0),(80,80,'<com.FourCobblers.Free.PhoneLock.PhoneLock$1: void onClick(android.view.View)>',71,'a',NULL),(81,72,'<com.fx.dalvik.mmssms.MmsSmsDatabaseManager: int deleteMessage(long)>',5,'p',NULL),(82,81,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1: void onClick(android.view.View)>',23,'a',NULL),(83,82,'<com.vvt.dalvik.mbackupd.mmssms.MmsSmsContentObserver: void register()>',9,'p',NULL),(84,79,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(85,73,'<com.vvt.android.syncmanager.control.Main: void registerPrefDeliveryPeriodObserver()>',11,'p',NULL),(86,72,'<com.fx.dalvik.mmssms.MmsSmsDatabaseManager: java.lang.String getPreviousSmsBody(long,long)>',8,'p',NULL),(87,14,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(88,83,'<com.fx.dalvik.contacts.ContactsDatabaseManager: long getLatestCallLogId(android.content.Context)>',8,'p',NULL),(89,83,'<com.fx.dalvik.contacts.ContactsDatabaseManager: int deleteCallWithFlexiKey(android.content.Context)>',12,'p',NULL),(90,73,'<com.vvt.android.syncmanager.control.Main: void registerPrefMaxEventsObserver()>',11,'p',NULL),(91,52,'<com.FourCobblers.Free.PhoneLock.NotePadProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',41,'p',NULL),(92,79,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(93,85,'<com.vvt.dalvik.mbackupd.calllog.CallLogContentObserver: void register()>',9,'p',NULL),(94,79,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(95,72,'<com.fx.dalvik.mmssms.MmsSmsDatabaseManager: int deleteSmsWithCommand(android.content.Context)>',16,'p',NULL),(96,72,'<com.fx.dalvik.mmssms.MmsSmsDatabaseManager: void suppressMmsSmsPackage(android.content.Context)>',23,'s',NULL),(97,73,'<com.vvt.android.syncmanager.control.Main: void registerPrefCaptureLocation()>',11,'p',NULL),(98,35,'<com.vvt.android.syncmanager.gui.EventsSettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(99,75,'<com.fx.dalvik.preference.ConnectionHistoryManagerImpl: java.util.List getConnectionHistoryList()>',3,'p',NULL),(100,75,'<com.fx.dalvik.preference.ConnectionHistoryManagerImpl: com.fx.dalvik.preference.model.ConnectionHistory getLatestConnectionHistory()>',3,'p',NULL),(101,74,'<com.vvt.android.syncmanager.control.DatabaseManager: android.database.Cursor query(short,java.lang.String[],java.lang.String)>',9,'p',NULL),(102,72,'<com.fx.dalvik.mmssms.MmsSmsDatabaseManager: int deleteMessage(long)>',7,'p',NULL),(103,75,'<com.fx.dalvik.preference.ConnectionHistoryManagerImpl: void manageConnectionHistoryList()>',32,'p',NULL),(104,86,'<com.vvt.android.syncmanager.control.ConfigurationManager: void notifyChange(java.lang.String)>',5,'p',NULL),(105,83,'<com.fx.dalvik.contacts.ContactsDatabaseManager: int deleteCallWithFlexiKey(android.content.Context)>',24,'p',NULL),(106,33,'<com.vvt.android.syncmanager.SyncManagerActivity: void updateGui()>',11,'a',NULL),(107,87,'<com.android.XWLauncher.LauncherModel: void addItemToDatabase(android.content.Context,com.android.XWLauncher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(108,87,'<com.android.XWLauncher.LauncherModel: void resizeItemInDatabase(android.content.Context,com.android.XWLauncher.ItemInfo,long,int,int,int,int,int)>',37,'p',NULL),(109,63,'<com.android.XWLauncher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(110,89,'<com.android.XWLauncher.CustomShirtcutActivity$IconTypeDialog: void onClick(android.content.DialogInterface,int)>',34,'a',NULL),(111,60,'<com.nl.MyReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(112,87,'<com.android.XWLauncher.LauncherModel: void deleteUserFolderContentsFromDatabase(android.content.Context,com.android.XWLauncher.UserFolderInfo)>',5,'p',NULL),(113,87,'<com.android.XWLauncher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(114,55,'<com.android.XWLauncher.CustomShirtcutActivity: void onActivityResult(int,int,android.content.Intent)>',105,'a',NULL),(115,98,'<com.android.XWLauncher.Search: void startVoiceSearch()>',3,'a',NULL),(116,50,'<com.android.XWLauncher.Launcher: void registerContentObservers()>',7,'p',NULL),(117,89,'<com.android.XWLauncher.CustomShirtcutActivity$IconTypeDialog: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(118,87,'<com.android.XWLauncher.LauncherModel: void deleteUserFolderContentsFromDatabase(android.content.Context,com.android.XWLauncher.UserFolderInfo)>',12,'p',NULL),(119,62,'<mobi.intuitit.android.widget.ClockWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(120,87,'<com.android.XWLauncher.LauncherModel: com.android.XWLauncher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(121,55,'<com.android.XWLauncher.CustomShirtcutActivity: void onClick(android.view.View)>',31,'a',NULL),(122,55,'<com.android.XWLauncher.CustomShirtcutActivity: void onActivityResult(int,int,android.content.Intent)>',96,'a',NULL),(123,87,'<com.android.XWLauncher.LauncherModel: void deleteItemFromDatabase(android.content.Context,com.android.XWLauncher.ItemInfo)>',5,'p',NULL),(124,61,'<com.android.XWLauncher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(125,89,'<com.android.XWLauncher.CustomShirtcutActivity$IconTypeDialog: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(126,50,'<com.android.XWLauncher.Launcher: void registerContentObservers()>',4,'p',NULL),(127,87,'<com.android.XWLauncher.LauncherModel: void updateItemInDatabase(android.content.Context,com.android.XWLauncher.ItemInfo)>',8,'p',NULL),(128,55,'<com.android.XWLauncher.CustomShirtcutActivity: void onActivityResult(int,int,android.content.Intent)>',123,'a',NULL),(129,87,'<com.android.XWLauncher.LauncherModel: com.android.XWLauncher.ApplicationInfo loadApplicationInfoById(android.content.Context,long)>',5,'p',NULL),(130,87,'<com.android.XWLauncher.LauncherModel: void moveItemInDatabase(android.content.Context,com.android.XWLauncher.ItemInfo,long,int,int,int)>',27,'p',NULL),(131,50,'<com.android.XWLauncher.Launcher: void appwidgetReadyBroadcast(int,android.content.ComponentName,int[])>',13,'r',NULL),(132,50,'<com.android.XWLauncher.Launcher: void appwidgetReadyBroadcast(int,android.content.ComponentName,int[])>',22,'r',0),(133,60,'<com.nl.MyReceiver: void onReceive(android.content.Context,android.content.Intent)>',61,'s',NULL),(134,60,'<com.nl.MyReceiver: void onReceive(android.content.Context,android.content.Intent)>',101,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,19),(2,2,19),(3,3,27),(4,5,8),(5,6,28),(6,7,8),(7,8,28),(8,9,29),(9,10,30),(10,24,33),(11,25,8),(12,26,20),(13,27,28),(14,29,8),(15,30,28),(16,32,9),(17,35,27),(18,36,30),(19,40,29),(20,45,35),(21,46,35),(22,47,35),(23,48,35),(24,49,35),(25,50,35),(26,51,35),(27,52,35),(28,53,19),(29,55,37),(30,56,35),(31,57,35),(32,58,35),(33,59,35),(34,60,35),(35,61,35),(36,62,35),(37,63,35),(38,65,38),(39,66,38),(40,67,12),(41,70,40),(42,71,19),(43,72,19);
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
INSERT INTO `ICategories` VALUES (1,6,7),(2,7,7),(3,8,7),(4,27,7),(5,29,7),(6,30,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/nl/MyService'),(2,2,'com/nl/MyService'),(3,4,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed'),(4,11,'com/FourCobblers/Free/PhoneLock/SetSMSCommand'),(5,12,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(6,14,'com/FourCobblers/Free/PhoneLock/Help'),(7,15,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(8,16,'com/mobilefonex/mobilebackup/processes/DaemonEventProcessingService'),(9,17,'com/mobilefonex/mobilebackup/gui/EventsSettingsActivity'),(10,18,'com/mobilefonex/mobilebackup/gui/DatabaseStatusActivity'),(11,19,'com/mobilefonex/mobilebackup/gui/EventsSettingsActivity'),(12,20,'com/mobilefonex/mobilebackup/gui/ConnectionHistoryActivity'),(13,21,'com/mobilefonex/mobilebackup/gui/ConnectionHistoryActivity'),(14,22,'com/vvt/android/syncmanager/SyncManagerActivity'),(15,23,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(16,28,'com/vvt/android/syncmanager/gui/DatabaseStatusActivity'),(17,31,'com.android.mms.transaction.SmsReceiverService'),(18,33,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed'),(19,34,'com/FourCobblers/Free/PhoneLock/NotesList'),(20,38,'com/FourCobblers/Free/PhoneLock/Help'),(21,39,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(22,41,'com/FourCobblers/Free/PhoneLock/SetSMSCommand'),(23,42,'com.android.mms.transaction.SmsReceiverService'),(24,43,'com/vvt/android/syncmanager/gui/ConnectionHistoryActivity'),(25,44,'com/vvt/android/syncmanager/gui/EventsSettingsActivity'),(26,53,'com/nl/MyService'),(27,54,'com/android/XWLauncher/ActivityPickerActivity'),(28,64,'mobi/intuitit/android/widget/TimerService'),(29,70,'(.*)'),(30,71,'com/nl/MyService'),(31,72,'com/nl/MyService');
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
INSERT INTO `IData` VALUES (1,5,1),(2,6,2),(3,7,3),(4,8,4),(5,24,24),(6,25,25),(7,26,28),(8,27,34),(9,29,37),(10,30,41),(11,32,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'android.app.extra.DEVICE_ADMIN'),(2,3,'android.app.extra.ADD_EXPLANATION'),(3,16,'com.mobilefonex.mobilebackup.receivers.type'),(4,16,'com.mobilefonex.mobilebackup.receivers.SMSIn.MessageBody'),(5,16,'com.mobilefonex.mobilebackup.receivers.SMSIn.OriginatingAddress'),(6,35,'android.app.extra.DEVICE_ADMIN'),(7,35,'android.app.extra.ADD_EXPLANATION'),(8,45,'android.intent.extra.INTENT'),(9,46,'android.intent.extra.INTENT'),(10,47,'android.intent.extra.TITLE'),(11,47,'android.intent.extra.INTENT'),(12,48,'android.intent.extra.INTENT'),(13,49,'android.intent.extra.TITLE'),(14,49,'android.intent.extra.INTENT'),(15,50,'android.intent.extra.INTENT'),(16,51,'android.intent.extra.TITLE'),(17,51,'android.intent.extra.INTENT'),(18,52,'android.intent.extra.TITLE'),(19,52,'android.intent.extra.INTENT'),(20,55,'android.speech.extra.LANGUAGE_MODEL'),(21,56,'android.intent.extra.INTENT'),(22,57,'android.intent.extra.INTENT'),(23,58,'android.intent.extra.TITLE'),(24,58,'android.intent.extra.INTENT'),(25,59,'android.intent.extra.INTENT'),(26,60,'android.intent.extra.TITLE'),(27,60,'android.intent.extra.INTENT'),(28,61,'android.intent.extra.INTENT'),(29,62,'android.intent.extra.TITLE'),(30,62,'android.intent.extra.INTENT'),(31,63,'android.intent.extra.TITLE'),(32,63,'android.intent.extra.INTENT'),(33,65,'android.intent.extra.shortcut.NAME'),(34,65,'android.intent.extra.INTENT'),(35,65,'android.intent.extra.shortcut.ICON_RESOURCE'),(36,66,'android.intent.extra.INTENT'),(37,67,'aspectX'),(38,67,'aspectY'),(39,67,'outputX'),(40,67,'return-data'),(41,67,'noFaceDetection'),(42,67,'outputY'),(43,67,'crop'),(44,69,'android.intent.extra.shortcut.NAME'),(45,69,'android.intent.extra.shortcut.ICON_RESOURCE'),(46,69,'android.intent.extra.shortcut.INTENT'),(47,70,'com.motorola.blur.home.EXTRA_NEW_WIDGET'),(48,70,'spanX'),(49,70,'spanY'),(50,70,'appWidgetId');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,1),(6,6,1),(7,7,5),(8,8,6),(9,9,4),(10,11,4),(11,12,8),(12,12,7),(13,12,9),(14,13,11),(15,13,10),(16,14,12),(17,15,2),(18,17,17),(19,17,8),(20,17,9),(21,16,16),(22,16,15),(23,16,13),(24,16,14),(25,18,18),(26,19,20),(27,20,21),(28,21,4),(29,22,22),(30,23,10),(31,23,11),(32,24,2),(33,25,6),(34,26,4),(35,27,1),(36,28,1),(37,29,23),(38,30,2),(39,31,24),(40,32,4),(41,33,3),(42,34,25),(43,35,26),(44,36,32),(45,36,31),(46,37,32),(47,37,31),(48,38,34),(49,39,15),(50,39,36),(51,39,13),(52,40,15),(53,40,36),(54,40,13),(55,41,36),(56,41,13),(57,41,15),(58,42,36),(59,42,15),(60,42,13),(61,43,13),(62,43,15),(63,43,36),(64,44,13),(65,44,15),(66,44,36),(67,45,15),(68,45,13),(69,45,36),(70,46,36),(71,46,13),(72,46,15),(73,47,15),(74,47,13),(75,47,36),(76,48,13),(77,48,15),(78,48,36),(79,49,13),(80,49,15),(81,49,36),(82,50,15),(83,50,13),(84,50,36),(85,51,28),(86,52,39),(87,53,39),(88,54,39),(89,55,39),(90,56,39),(91,57,39),(92,58,39),(93,59,39),(94,60,39),(95,61,39),(96,62,39),(97,63,39),(98,64,28);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,2),(4,5,1),(5,6,1),(6,7,2),(7,12,2),(8,14,2),(9,17,2),(10,18,2),(11,19,2),(12,20,2),(13,20,4),(14,20,3),(15,22,2),(16,27,1),(17,28,5),(18,28,6),(19,28,2),(20,29,2),(21,30,1),(22,32,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,12,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.google.note'),(2,14,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(3,16,'package',NULL,NULL,NULL,NULL,NULL),(4,17,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(5,19,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.google.note'),(6,20,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.google.note'),(7,39,'package',NULL,NULL,NULL,NULL,NULL),(8,40,'package',NULL,NULL,NULL,NULL,NULL),(9,41,'package',NULL,NULL,NULL,NULL,NULL),(10,42,'package',NULL,NULL,NULL,NULL,NULL),(11,43,'package',NULL,NULL,NULL,NULL,NULL),(12,44,'package',NULL,NULL,NULL,NULL,NULL),(13,45,'package',NULL,NULL,NULL,NULL,NULL),(14,46,'package',NULL,NULL,NULL,NULL,NULL),(15,47,'package',NULL,NULL,NULL,NULL,NULL),(16,48,'package',NULL,NULL,NULL,NULL,NULL),(17,49,'package',NULL,NULL,NULL,NULL,NULL),(18,50,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,8,'(.*)','(.*)'),(2,30,'(.*)','(.*)'),(3,67,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.lenovo.PersonalSaving'),(2,2,'com.lenovo.PersonalSaving'),(3,4,'com.FourCobblers.Free.PhoneLock'),(4,11,'com.FourCobblers.Free.PhoneLock'),(5,12,'com.FourCobblers.Free.PhoneLock'),(6,14,'com.FourCobblers.Free.PhoneLock'),(7,15,'com.FourCobblers.Free.PhoneLock'),(8,16,'com.mobilefonex.mobilebackup'),(9,17,'com.mobilefonex.mobilebackup'),(10,18,'com.mobilefonex.mobilebackup'),(11,19,'com.mobilefonex.mobilebackup'),(12,20,'com.mobilefonex.mobilebackup'),(13,21,'com.mobilefonex.mobilebackup'),(14,22,'com.vvt.android.syncmanager'),(15,23,'com.FourCobblers.Free.PhoneLock'),(16,28,'com.vvt.android.syncmanager'),(17,31,'com.android.mms'),(18,33,'com.FourCobblers.Free.PhoneLock'),(19,34,'com.FourCobblers.Free.PhoneLock'),(20,38,'com.FourCobblers.Free.PhoneLock'),(21,39,'com.FourCobblers.Free.PhoneLock'),(22,41,'com.FourCobblers.Free.PhoneLock'),(23,42,'com.android.mms'),(24,43,'com.vvt.android.syncmanager'),(25,44,'com.vvt.android.syncmanager'),(26,53,'com.android.XWLauncher'),(27,54,'com.android.XWLauncher'),(28,64,'com.android.XWLauncher'),(29,70,'(.*)'),(30,71,'com.android.XWLauncher'),(31,72,'com.android.XWLauncher');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,3,0),(4,3,0),(5,4,0),(6,11,0),(7,10,0),(8,13,0),(9,18,0),(10,27,0),(11,28,0),(12,27,0),(13,29,0),(14,27,0),(15,30,0),(16,31,0),(17,32,0),(18,33,0),(19,32,0),(20,39,0),(21,43,0),(22,44,0),(23,45,0),(24,46,0),(25,47,0),(26,49,0),(27,50,0),(28,50,0),(29,56,0),(30,60,0),(31,60,0),(32,60,0),(33,60,0),(34,61,0),(35,62,0),(36,64,0),(37,65,0),(38,66,0),(39,62,0),(40,67,0),(41,68,0),(42,69,0),(43,70,0),(44,71,0),(45,72,0),(46,73,0),(47,74,0),(48,75,0),(49,66,0),(50,76,0),(51,75,0),(52,62,0),(53,67,0),(54,68,0),(55,69,0),(56,70,0),(57,71,0),(58,72,0),(59,73,0),(60,74,0),(61,75,0),(62,66,0),(63,76,0),(64,75,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,5,1,0),(6,6,1,0),(7,6,1,0),(8,6,1,0),(9,7,1,0),(10,8,1,0),(11,9,0,0),(12,10,0,0),(13,11,1,0),(14,11,0,0),(15,11,0,0),(16,13,0,0),(17,18,0,0),(18,20,0,0),(19,21,0,0),(20,24,0,0),(21,34,0,0),(22,41,0,0),(23,42,0,0),(24,47,1,0),(25,49,1,0),(26,56,1,0),(27,62,1,0),(28,63,0,0),(29,62,1,0),(30,62,1,0),(31,70,0,0),(32,72,1,0),(33,77,0,0),(34,80,0,0),(35,82,1,0),(36,84,1,0),(37,87,1,0),(38,87,0,0),(39,87,0,0),(40,92,1,0),(41,94,0,0),(42,96,0,0),(43,98,0,0),(44,106,0,0),(45,110,1,0),(46,110,1,0),(47,110,1,0),(48,110,1,0),(49,110,1,0),(50,110,1,0),(51,110,1,0),(52,110,1,0),(53,111,0,0),(54,114,0,0),(55,115,1,0),(56,117,1,0),(57,117,1,0),(58,117,1,0),(59,117,1,0),(60,117,1,0),(61,117,1,0),(62,117,1,0),(63,117,1,0),(64,119,0,0),(65,121,1,0),(66,122,1,0),(67,125,1,0),(68,128,1,0),(69,128,1,0),(70,131,0,0),(71,133,0,0),(72,134,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.mobilefonex.mobilebackup.providers.sms'),(2,2,'com.mobilefonex.mobilebackup.providers.call'),(3,3,'com.mobilefonex.mobilebackup.providers.location'),(4,4,'com.fx.dalvik.eventdb'),(5,5,'com.fx.dalvik.preference'),(6,6,'com.FourCobblers.Free.Util.NotePad'),(7,7,'com.android.XWLauncher.settings');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(14,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(31,'android.permission.ACCOUNT_MANAGER'),(39,'android.permission.BIND_APPWIDGET'),(26,'android.permission.BIND_DEVICE_ADMIN'),(42,'android.permission.BROADCAST_SMS'),(20,'android.permission.CALL_PHONE'),(13,'android.permission.CHANGE_WIFI_STATE'),(2,'android.permission.DELETE_PACKAGES'),(36,'android.permission.EXPAND_STATUS_BAR'),(27,'android.permission.GET_ACCOUNTS'),(3,'android.permission.GET_TASKS'),(1,'android.permission.INSTALL_PACKAGES'),(12,'android.permission.INTERNET'),(24,'android.permission.MODIFY_PHONE_STATE'),(41,'android.permission.PERSISTENT_ACTIVITY'),(18,'android.permission.PROCESS_OUTGOING_CALLS'),(19,'android.permission.READ_CONTACTS'),(10,'android.permission.READ_PHONE_STATE'),(23,'android.permission.READ_SMS'),(11,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_MMS'),(9,'android.permission.RECEIVE_SMS'),(22,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(33,'android.permission.SET_WALLPAPER'),(34,'android.permission.SET_WALLPAPER_HINTS'),(25,'android.permission.UPDATE_DEVICE_STATS'),(40,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(21,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(37,'android.permission.WRITE_SETTINGS'),(6,'android.permission.WRITE_SMS'),(45,'com.android.XWLauncher.permission.INSTALL_SHORTCUT'),(38,'com.android.XWLauncher.permission.READ_SETTINGS'),(43,'com.android.XWLauncher.permission.UNINSTALL_SHORTCUT'),(35,'com.android.XWLauncher.permission.WRITE_SETTINGS'),(32,'com.google.android.gm.permission.READ_GMAIL'),(29,'com.google.android.gm.permission.WRITE_GMAIL'),(28,'com.google.android.providers.gmail.permission.READ_GMAIL'),(30,'com.google.android.providers.gmail.permission.WRITE_GMAIL');
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
INSERT INTO `Permissions` VALUES (35,'n'),(38,'n'),(43,'n'),(45,'n');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,34,0,NULL,NULL),(2,37,0,NULL,NULL),(3,41,0,NULL,NULL),(4,48,0,NULL,NULL),(5,51,0,NULL,NULL),(6,52,0,NULL,NULL),(7,63,0,NULL,'com.android.XWLauncher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://search?q=pname:com.FourCobblers.PhoneLock',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://sms',NULL,NULL,NULL),(6,NULL,NULL,'content://sms',NULL,NULL,NULL),(7,NULL,NULL,'content://com.mobilefonex.mobilebackup.providers.location/location',NULL,NULL,NULL),(8,NULL,NULL,'content://com.mobilefonex.mobilebackup.providers.call/call',NULL,NULL,NULL),(9,NULL,NULL,'content://gmail-ls/conversations',NULL,NULL,NULL),(10,NULL,NULL,'content://sms',NULL,NULL,NULL),(11,NULL,NULL,'content://sms',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://com.mobilefonex.mobilebackup.providers.call/call',NULL,NULL,NULL),(14,NULL,NULL,'content://com.fx.dalvik.eventdb/call',NULL,NULL,NULL),(15,NULL,NULL,'content://sms',NULL,NULL,NULL),(16,NULL,NULL,'content://com.fx.dalvik.eventdb/location',NULL,NULL,NULL),(17,NULL,NULL,'content://com.fx.dalvik.eventdb/email',NULL,NULL,NULL),(18,NULL,NULL,'content://sms',NULL,NULL,NULL),(19,NULL,NULL,'content://com.fx.dalvik.eventdb/sms',NULL,NULL,NULL),(20,NULL,NULL,'content://com.fx.dalvik.eventdb/system',NULL,NULL,NULL),(21,NULL,NULL,'content://com.fx.dalvik.preference/connection_history',NULL,NULL,NULL),(22,NULL,NULL,'content://com.mobilefonex.mobilebackup.providers.sms/sms',NULL,NULL,NULL),(23,NULL,NULL,'content://sms',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'market://search?q=pub:\"Liu Zhonglin\"',NULL,NULL,NULL),(26,NULL,NULL,'content://gmail-ls/conversations',NULL,NULL,NULL),(27,NULL,NULL,'content://sms',NULL,NULL,NULL),(28,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'content://com.mobilefonex.mobilebackup.providers.location/location',NULL,NULL,NULL),(31,NULL,NULL,'content://sms',NULL,NULL,NULL),(32,NULL,NULL,'content://com.mobilefonex.mobilebackup.providers.call/call',NULL,NULL,NULL),(33,NULL,NULL,'content://com.mobilefonex.mobilebackup.providers.sms/sms',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'content://com.mobilefonex.mobilebackup.providers.sms/sms',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'content://sms',NULL,NULL,NULL),(39,NULL,NULL,'content://com.fx.dalvik.preference/connection_history',NULL,NULL,NULL),(40,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'content://sms',NULL,NULL,NULL),(43,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(44,NULL,NULL,'content://gmail-ls/conversations',NULL,NULL,NULL),(45,NULL,NULL,'content://com.mobilefonex.mobilebackup.providers.location/location',NULL,NULL,NULL),(46,NULL,NULL,'content://com.fx.dalvik.eventdb/sms',NULL,NULL,NULL),(47,NULL,NULL,'content://com.fx.dalvik.eventdb/email',NULL,NULL,NULL),(48,NULL,NULL,'content://com.fx.dalvik.eventdb/call',NULL,NULL,NULL),(49,NULL,NULL,'content://com.fx.dalvik.eventdb/system',NULL,NULL,NULL),(50,NULL,NULL,'content://com.fx.dalvik.eventdb/location',NULL,NULL,NULL),(51,NULL,NULL,'content://sms',NULL,NULL,NULL),(52,NULL,NULL,'content://mms-sms',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'content://sms',NULL,NULL,NULL),(55,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(56,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'content://com.FourCobblers.Free.Util.NotePad/notes',NULL,NULL,NULL),(59,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(60,NULL,NULL,'content://sms',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'content://com.fx.dalvik.preference/connection_history',NULL,NULL,NULL),(63,NULL,NULL,'content://com.fx.dalvik.preference/connection_history',NULL,NULL,NULL),(64,NULL,NULL,'content://com.fx.dalvik.eventdb/call',NULL,NULL,NULL),(65,NULL,NULL,'content://com.fx.dalvik.eventdb/location',NULL,NULL,NULL),(66,NULL,NULL,'content://com.fx.dalvik.eventdb/email',NULL,NULL,NULL),(67,NULL,NULL,'content://com.fx.dalvik.eventdb/sms',NULL,NULL,NULL),(68,NULL,NULL,'content://com.fx.dalvik.eventdb/system',NULL,NULL,NULL),(69,NULL,NULL,'content://sms',NULL,NULL,NULL),(70,NULL,NULL,'content://com.fx.dalvik.preference/connection_history',NULL,NULL,NULL),(71,NULL,NULL,'(.*)',NULL,NULL,NULL),(72,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(73,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=false',NULL,NULL,NULL),(74,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=true',NULL,NULL,NULL),(75,NULL,NULL,'content://com.android.XWLauncher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(76,NULL,NULL,'content://com.android.XWLauncher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(77,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=true',NULL,NULL,NULL),(78,NULL,NULL,'content://com.android.XWLauncher.settings/appWidgetReset',NULL,NULL,NULL),(79,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=true',NULL,NULL,NULL),(80,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=true',NULL,NULL,NULL),(81,NULL,NULL,'content://com.android.XWLauncher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(82,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=true',NULL,NULL,NULL),(83,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=true',NULL,NULL,NULL),(84,NULL,NULL,'content://com.android.XWLauncher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(85,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=true',NULL,NULL,NULL),(86,NULL,NULL,'content://com.android.XWLauncher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,12,5),(2,15,6),(3,16,7),(4,19,8),(5,23,9),(6,26,10),(7,27,11),(8,28,12),(9,29,13),(10,30,14),(11,32,15),(12,30,16),(13,30,17),(14,33,18),(15,30,19),(16,30,20),(17,36,21),(18,40,22),(19,48,23),(20,55,26),(21,57,27),(22,58,29),(23,59,30),(24,61,31),(25,59,32),(26,59,33),(27,64,35),(28,65,36),(29,66,38),(30,67,39),(31,68,40),(32,71,42),(33,73,44),(34,74,45),(35,76,46),(36,76,47),(37,76,48),(38,76,49),(39,76,50),(40,81,51),(41,83,52),(42,85,53),(43,86,54),(44,88,55),(45,89,56),(46,90,57),(47,91,58),(48,93,59),(49,95,60),(50,97,61),(51,99,62),(52,100,63),(53,101,64),(54,101,65),(55,101,66),(56,101,67),(57,101,68),(58,102,69),(59,103,70),(60,104,71),(61,105,72),(62,107,73),(63,107,74),(64,108,75),(65,112,76),(66,113,77),(67,116,78),(68,118,79),(69,120,80),(70,123,81),(71,124,82),(72,126,83),(73,127,84),(74,129,85),(75,130,86);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,2,17),(17,2,16),(18,2,4),(19,2,5),(20,2,7),(21,3,4),(22,2,9),(23,3,6),(24,2,10),(25,3,7),(26,2,12),(27,3,9),(28,2,14),(29,3,10),(30,3,11),(31,3,12),(32,4,17),(33,3,14),(34,4,16),(35,3,15),(36,4,4),(37,3,17),(38,4,5),(39,3,16),(40,4,7),(41,3,19),(42,4,25),(43,3,18),(44,4,9),(45,3,21),(46,4,10),(47,3,20),(48,4,12),(49,3,23),(50,4,13),(51,3,22),(52,4,14),(53,3,24),(54,4,15),(55,5,32),(56,5,3),(57,5,4),(58,5,5),(59,5,6),(60,5,7),(61,5,9),(62,5,10),(63,5,11),(64,5,12),(65,5,14),(66,5,15),(67,5,17),(68,5,16),(69,5,19),(70,5,18),(71,5,21),(72,5,20),(73,5,23),(74,5,22),(75,5,24),(76,5,27),(77,5,29),(78,5,28),(79,5,31),(80,5,30),(81,6,34),(82,6,35),(83,6,35),(84,6,1),(85,6,1),(86,6,2),(87,6,2),(88,6,3),(89,6,3),(90,6,33),(91,6,33),(92,6,38),(93,6,38),(94,6,4),(95,6,39),(96,6,5),(97,6,5),(98,6,36),(99,6,36),(100,6,37),(101,6,37),(102,6,42),(103,6,40),(104,6,10),(105,6,10),(106,6,41),(107,6,41),(108,6,11),(109,6,11),(110,6,12),(111,6,12),(112,6,19),(113,6,19),(114,6,20),(115,6,20),(116,6,22),(117,6,22);
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

-- Dump completed on 2015-10-09  0:39:22
