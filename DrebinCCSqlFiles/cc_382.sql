-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_382
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
INSERT INTO `ActionStrings` VALUES (21,'(.*)'),(34,'SHOULD_LOGIN_ACTION'),(20,'android.app.action.ADD_DEVICE_ADMIN'),(6,'android.app.action.DEVICE_ADMIN_ENABLED'),(18,'android.app.action.SET_NEW_PASSWORD'),(14,'android.appwidget.action.APPWIDGET_UPDATE'),(2,'android.intent.action.BOOT_COMPLETED'),(33,'android.intent.action.CALL'),(25,'android.intent.action.CHOOSER'),(30,'android.intent.action.CLOSE_SYSTEM_DIALOGS'),(12,'android.intent.action.DATE_CHANGED'),(29,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.PACKAGE_ADDED'),(23,'android.intent.action.PACKAGE_CHANGED'),(24,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.PHONE_STATE'),(28,'android.intent.action.PICK_ACTIVITY'),(31,'android.intent.action.RUN'),(16,'android.intent.action.SCREEN_OFF'),(10,'android.intent.action.SET_WALLPAPER'),(17,'android.intent.action.USER_PRESENT'),(8,'android.intent.action.VIEW'),(32,'android.intent.action.WALLPAPER_CHANGED'),(3,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'android.provider.Telephony.SMS_RECEIVED'),(4,'android.service.wallpaper.WallpaperService'),(11,'android.setting.SMS_SENT'),(36,'android.settings.LOCATION_SOURCE_SETTINGS'),(22,'android.settings.SECURITY_SETTINGS'),(27,'android.speech.action.WEB_SEARCH'),(13,'com.android.XWLauncher.action.INSTALL_SHORTCUT'),(26,'com.motorola.blur.home.ACTION_SET_WIDGET_SIZE'),(35,'il.co.egv.DTNDeleted'),(15,'kurhjfngjhfjghdfjgjjdh'),(5,'push_alm');
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
INSERT INTO `Applications` VALUES (1,'com.bagtincan.andraid.adfraa',8043),(2,'com.FourCobblers.Free.PhoneLock',16),(3,'com.jeef.AlongYou',4),(4,'il.co.egv',3),(5,'com.FourCobblers.Free.PhoneLock',20),(6,'com.android.XWLauncher',32),(7,'appinventor.ai_rathiisarun.Ipad2App',1);
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
INSERT INTO `CategoryStrings` VALUES (6,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(5,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.MONKEY');
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.bagtincan.andraid.adfraa.FreeMe'),(2,1,'com.bagtincan.andraid.adfraa.CancelIntent'),(3,1,'com.bagtincan.andraid.adfraa.DoUpgrade'),(4,1,'com.bagtincan.andraid.adfraa.Hosts'),(5,1,'com.bagtincan.andraid.adfraa.tcpDump'),(6,1,'com.android.md5.Settings'),(7,1,'com.bagtincan.andraid.adfraa.UpdateCheck'),(8,1,'com.bagtincan.andraid.adfraa.RNAutostart'),(9,1,'com.bagtincan.andraid.adfraa.NetworkStateReceiver'),(10,3,'com.jeef.AlongYou.FantasyWallpaperSetup'),(11,2,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(12,3,'com.waps.OffersWebView'),(13,3,'com.jeef.AlongYou.AlongYou'),(14,2,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(15,2,'com.FourCobblers.Free.PhoneLock.ProtectOtherData'),(16,3,'com.jeef.wapsConnection.AlmService'),(17,2,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(18,2,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(19,4,'il.co.egv.fnc.MainActivity'),(20,2,'com.FourCobblers.Free.PhoneLock.Help'),(21,3,'com.jeef.wapsConnection.BootService'),(22,2,'com.google.ads.AdActivity'),(23,4,'il.co.egv.fnc.FirstRunActivity'),(24,2,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(25,4,'il.co.egv.fnc.RegularRunActivity'),(26,4,'il.co.egv.fnc.dtncard.DtnCardActivity'),(27,4,'il.co.egv.fnc.SearchActivity'),(28,2,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(29,5,'com.FourCobblers.Free.PhoneLock.PhoneLock'),(30,4,'il.co.egv.fnc.viplist.VipActivity'),(31,4,'il.co.egv.fnc.calllog.CallLogActivity'),(32,4,'il.co.egv.fnc.settings.SettingsActivity'),(33,5,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting'),(34,4,'il.co.egv.fnc.settings.GenerateIdActivity'),(35,5,'com.FourCobblers.Free.PhoneLock.ProtectOtherData'),(36,4,'il.co.egv.fnc.settings.SelectLocationActivity'),(37,5,'com.FourCobblers.Free.PhoneLock.SetMaxPasswordFailed'),(38,4,'il.co.egv.fnc.findfriends.FindFriendsActivity'),(39,5,'com.FourCobblers.Free.PhoneLock.SetSMSCommand'),(40,4,'il.co.egv.fnc.social.VKGetTokenActivity'),(41,5,'com.FourCobblers.Free.PhoneLock.Help'),(42,4,'il.co.egv.fnc.social.LinkedInGetTokenActivity'),(43,5,'com.google.ads.AdActivity'),(44,4,'il.co.egv.fnc.contacts.ContactsActivity'),(45,5,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle'),(46,4,'il.co.egv.fnc.BannersListActivity'),(47,4,'il.co.egv.fnc.dtncard.WatchVideoActivity'),(48,5,'com.FourCobblers.Free.PhoneLock.SMSCommandHandle'),(49,4,'il.co.egv.fnc.dtncard.ShowDescriptionActivity'),(50,4,'il.co.egv.fnc.firstrun.CheckEmailActivity'),(51,4,'il.co.egv.fnc.firstrun.EnterPasswordActivity'),(52,4,'il.co.egv.fnc.firstrun.ConfirmFriendsActivity'),(53,4,'il.co.egv.fnc.findfriends.GetLoginPasswordActivity'),(54,4,'il.co.egv.fnc.firstrun.DisclaimerActivity'),(55,4,'il.co.egv.fnc.social.FacebookGetTokenActivity'),(56,4,'il.co.egv.fnc.TestActivity'),(57,1,'com.bagtincan.andraid.adfraa.DoUpgrade$14'),(58,4,'il.co.egv.fnc.LauncherActivity'),(59,4,'il.co.egv.fnc.incomingcall.CustomBroadcastReceiver'),(60,6,'com.android.XWLauncher.Launcher'),(61,1,'com.gamex.inset.A'),(62,6,'com.android.XWLauncher.MyLauncherSettings'),(63,6,'com.android.XWLauncher.ActivityPickerActivity'),(64,6,'com.android.XWLauncher.CustomShirtcutActivity'),(65,6,'com.android.XWLauncher.WallpaperChooser'),(66,6,'com.android.XWLauncher.catalogue.AppInfoMList'),(67,6,'com.nl.MyService'),(68,6,'mobi.intuitit.android.widget.TimerService'),(69,6,'com.nl.MyReceiver'),(70,6,'com.android.XWLauncher.InstallShortcutReceiver'),(71,1,'com.bagtincan.andraid.adfraa.tcpDump$ThreadRender$1'),(72,6,'mobi.intuitit.android.widget.ClockWidget'),(73,1,'com.bagtincan.andraid.adfraa.Common$5'),(74,6,'com.android.XWLauncher.LauncherProvider'),(75,1,'com.gamex.inset.C'),(76,3,'com.waps.o'),(77,3,'com.waps.aa'),(78,2,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3'),(79,2,'u$b'),(80,3,'com.waps.q'),(81,2,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1'),(82,5,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3'),(83,3,'com.waps.ac'),(84,3,'com.waps.z'),(85,5,'com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1'),(86,5,'u$b'),(87,6,'com.android.XWLauncher.Launcher$CloseSystemDialogsIntentReceiver'),(88,6,'com.android.XWLauncher.Launcher$ApplicationsIntentReceiver'),(89,6,'com.nl.MyService$alarmreceiver'),(90,6,'mobi.intuitit.android.widget.WidgetSpace$ScrollViewProvider'),(91,6,'mobi.intuitit.android.widget.WidgetSpace$1'),(92,6,'com.nl.MyService$4'),(93,6,'com.android.XWLauncher.CounterReceiver'),(94,6,'com.android.XWLauncher.Launcher$WallpaperIntentReceiver'),(95,6,'android.appwidget.AppWidgetProvider'),(96,6,'com.android.XWLauncher.CustomShirtcutActivity$IconTypeDialog'),(97,6,'com.android.XWLauncher.Search'),(98,6,'com.android.XWLauncher.LauncherModel'),(99,4,'il.co.egv.fnc.helpers.DTNHelper$4'),(100,4,'il.co.egv.fnc.SearchableListActivity'),(101,4,'il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact'),(102,4,'il.co.egv.fnc.operations.ServerCaller'),(103,4,'il.co.egv.fnc.viplist.VipActivity$DTNRemoveBroadcastReceiver'),(104,4,'il.co.egv.fnc.FirstRunActivity$3'),(105,4,'il.co.egv.fnc.helpers.DTNHelper'),(106,4,'il.co.egv.fnc.settings.SettingsActivity$3'),(107,4,'il.co.egv.fnc.contacts.ContactsActivity$DTNRemoveBroadcastReceiver'),(108,4,'il.co.egv.fnc.settings.SettingsActivity$7'),(109,4,'il.co.egv.fnc.SearchActivity$DTNRemoveBroadcastReceiver'),(110,4,'il.co.egv.fnc.helpers.DTNHelper$2'),(111,4,'il.co.egv.fnc.RegularRunActivity$3'),(112,4,'il.co.egv.fnc.operations.phonebook.CollectContactsOperation'),(113,4,'il.co.egv.fnc.calllog.CallLogActivity$DTNRemoveBroadcastReceiver'),(114,4,'il.co.egv.fnc.ConnectivityBroadcastReceiver'),(115,4,'il.co.egv.fnc.BannersListActivity$DTNRemoveBroadcastReceiver'),(116,4,'il.co.egv.fnc.MainActivity$ShouldLoginBroadcastReceiver'),(117,7,'appinventor.ai_rathiisarun.Ipad2App.Screen1'),(118,7,'com.google.devtools.simple.runtime.components.android.WebViewActivity'),(119,7,'com.google.devtools.simple.runtime.components.android.ListPickerActivity'),(120,7,'com.google.devtools.simple.runtime.components.android.Form');
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,12,'Notify_Url_Params'),(2,16,'WAPS_TESTMODE'),(3,21,'WAPS_TESTMODE'),(4,10,'WAPS_TESTMODE'),(5,12,'URL'),(6,12,'Offers_URL'),(7,12,'URL_PARAMS'),(8,16,'CLIENT_PACKAGE'),(9,21,'CLIENT_PACKAGE'),(10,12,'CLIENT_PACKAGE'),(11,10,'CLIENT_PACKAGE'),(12,16,'WAPS_ID'),(13,21,'WAPS_ID'),(14,12,'WAPS_ID'),(15,10,'WAPS_ID'),(16,10,'UMENG_CHANNEL'),(17,10,'UMENG_APPKEY'),(18,16,'APP_ID'),(19,21,'APP_ID'),(20,12,'APP_ID'),(21,10,'APP_ID'),(22,12,'offers_webview_tag'),(23,12,'ACTIVITY_FLAG'),(24,12,'isFinshClose'),(25,12,'Notify_Id'),(26,16,'DEVICE_ID'),(27,28,'pdus'),(28,21,'DEVICE_ID'),(29,22,'com.google.ads.AdOpener'),(30,12,'DEVICE_ID'),(31,10,'DEVICE_ID'),(32,12,'SHWO_FLAG'),(33,43,'action'),(34,22,'params'),(35,43,'params'),(36,12,'USER_ID'),(37,16,'WAPS_PID'),(38,21,'WAPS_PID'),(39,12,'WAPS_PID'),(40,10,'WAPS_PID'),(41,12,'UrlPath'),(42,22,'action'),(43,48,'pdus'),(44,43,'com.google.ads.AdOpener'),(45,62,'android.intent.extra.shortcut.INTENT'),(46,59,'launcher.add_spanY'),(47,59,'custom_widget'),(48,59,'launcher.rename_folder_id'),(49,59,'android.intent.extra.shortcut.INTENT'),(50,62,'mIconResource'),(51,59,'LauncherMetadata.Requirements.APIVersion'),(52,59,'launcher.rename_folder'),(53,59,'launcher.current_screen'),(54,62,'btPickActivity_text'),(55,59,'launcher.add_countX'),(56,62,'btOk_enabled'),(57,62,'mBitmap'),(58,59,'launcher.add_occupied_cells'),(59,59,'launcher.add_screen'),(60,59,'android.intent.extra.shortcut.NAME'),(61,68,'android.intent.extra.shortcut.NAME'),(62,59,'LauncherMetadata.Requirements.Scrollable'),(63,59,'android:focusedViewId'),(64,59,'launcher.add_cellY'),(65,59,'launcher.add_countY'),(66,59,'android.intent.extra.shortcut.ICON_RESOURCE'),(67,62,'mIntent'),(68,59,'android:viewHierarchyState'),(69,62,'android.intent.extra.shortcut.ICON'),(70,59,'android.intent.extra.livefolder.BASE_INTENT'),(71,62,'android.intent.extra.shortcut.ICON_RESOURCE'),(72,67,'number'),(73,62,'btPickIcon_enabled'),(74,59,'appWidgetId'),(75,67,'msg'),(76,59,'launcher.add_cellX'),(77,68,'duplicate'),(78,62,'icon'),(79,67,'pdus'),(80,62,'android.intent.extra.shortcut.NAME'),(81,59,'android.intent.extra.shortcut.ICON'),(82,68,'android.intent.extra.shortcut.ICON'),(83,59,'android.intent.extra.livefolder.ICON'),(84,68,'android.intent.extra.shortcut.ICON_RESOURCE'),(85,62,'data'),(86,59,'launcher.add_spanX'),(87,59,'android.intent.extra.livefolder.NAME'),(88,68,'android.intent.extra.shortcut.INTENT'),(89,59,'android:views'),(90,32,'id'),(91,53,'__email__'),(92,53,'__type__'),(93,58,'incoming_number'),(94,53,'__first_run__'),(95,26,'__source__'),(96,49,'description'),(97,50,'email'),(98,26,'__shouldShowEdit__'),(99,38,'token_secret'),(100,38,'user_id'),(101,32,'region'),(102,50,'phone'),(103,47,'video-url'),(104,32,'country'),(105,26,'(.*)'),(106,38,'token'),(107,23,'id'),(108,23,'region'),(109,23,'name'),(110,23,'country'),(111,24,'id'),(112,24,'region'),(113,24,'name'),(114,24,'country'),(115,51,'phone'),(116,32,'name'),(117,51,'email'),(118,52,'friends'),(119,34,'__email__'),(120,23,'phone'),(121,24,'phone'),(122,92,'APP_INVENTOR_START'),(123,94,'com/google/devtools/simple/runtime/components/android/ListPickerActivity.list');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'r',1,1,NULL),(9,9,'r',1,4,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',1,16,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,25,'a',0,NULL,NULL),(25,24,'r',1,17,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'r',1,17,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,58,'a',0,NULL,NULL),(58,59,'r',1,NULL,NULL),(59,60,'a',1,NULL,NULL),(60,62,'a',0,NULL,NULL),(61,63,'a',0,NULL,NULL),(62,64,'a',0,NULL,NULL),(63,65,'a',1,NULL,NULL),(64,66,'a',0,NULL,NULL),(65,67,'s',1,NULL,NULL),(66,68,'s',0,NULL,NULL),(67,69,'r',1,1,NULL),(68,70,'r',1,32,NULL),(69,72,'r',1,NULL,NULL),(70,74,'p',0,NULL,NULL),(71,79,'r',1,NULL,NULL),(72,80,'r',1,NULL,NULL),(73,86,'r',1,NULL,NULL),(74,69,'r',1,NULL,NULL),(75,87,'r',1,NULL,NULL),(76,88,'r',1,NULL,NULL),(77,89,'r',1,NULL,NULL),(78,90,'r',1,NULL,NULL),(79,91,'r',1,NULL,NULL),(80,70,'r',1,NULL,NULL),(81,92,'r',1,NULL,NULL),(82,93,'r',1,NULL,NULL),(83,94,'r',1,NULL,NULL),(84,95,'r',1,NULL,NULL),(85,103,'r',1,NULL,NULL),(86,107,'r',1,NULL,NULL),(87,109,'r',1,NULL,NULL),(88,113,'r',1,NULL,NULL),(89,114,'r',1,NULL,NULL),(90,115,'r',1,NULL,NULL),(91,116,'r',1,NULL,NULL),(92,117,'a',1,NULL,NULL),(93,118,'a',1,NULL,NULL),(94,119,'a',0,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,1),(4,4,1),(5,5,3),(6,6,3),(7,7,1),(8,8,5),(9,9,1),(10,10,7),(11,10,5),(12,10,3),(13,10,1),(14,11,3),(15,12,1),(16,13,3),(17,14,5),(18,15,2),(19,16,5),(20,17,6),(21,18,3),(22,19,12),(23,20,12),(24,21,14),(25,22,12),(26,23,14),(27,24,14),(28,25,12),(29,26,33),(30,27,14),(31,28,14),(32,29,33),(33,30,12),(34,31,43),(35,32,11),(36,32,14),(37,33,14),(38,34,12),(39,35,14),(40,36,22),(41,37,33),(42,38,33),(43,39,33),(44,40,33),(45,41,33),(46,41,29),(47,42,33),(48,43,59),(49,44,62),(50,45,59),(51,46,59),(52,47,59),(53,48,62),(54,49,59),(55,50,59),(56,51,62),(57,52,68),(58,52,59),(59,53,62),(60,54,59),(61,55,67),(62,56,59),(63,57,59),(64,58,62),(65,59,67),(66,60,59),(67,61,68),(68,62,59),(69,63,62),(70,64,59),(71,64,62),(72,65,67),(73,66,70),(74,67,68),(75,68,62),(76,69,69),(77,70,59),(78,71,44),(79,71,26),(80,72,27),(81,73,27),(82,73,44),(83,73,46),(84,73,30),(85,73,31),(86,74,19),(87,75,51),(88,76,23),(89,76,24),(90,77,56),(91,77,23),(92,77,24),(93,77,52),(94,77,26),(95,77,27),(96,77,53),(97,77,50),(98,77,51),(99,77,46),(100,77,44),(101,77,19),(102,77,36),(103,77,38),(104,77,31),(105,77,30),(106,77,32),(107,77,34),(108,78,23),(109,78,24),(110,79,51),(111,80,24),(112,80,23),(113,81,26),(114,81,44),(115,82,24),(116,82,23),(117,83,32),(118,84,38),(119,85,32),(120,86,51),(121,87,27),(122,88,51),(123,89,44),(124,89,26),(125,90,23),(126,90,24),(127,91,26),(128,92,26),(129,93,51),(130,94,26),(131,95,24),(132,95,23),(133,96,31),(134,97,30),(135,97,44),(136,97,31),(137,97,46),(138,97,27),(139,98,23),(140,98,24),(141,99,44),(142,100,27),(143,101,56),(144,102,19),(145,103,30),(146,104,23),(147,104,24),(148,105,38),(149,106,51),(150,107,51),(151,108,44),(152,109,57),(153,110,51),(154,111,92);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.bagtincan.andraid.adfraa.FreeMe: void showTCPdump()>',3,'a',NULL),(2,57,'<com.bagtincan.andraid.adfraa.DoUpgrade$14: void onClick(android.content.DialogInterface,int)>',17,'a',NULL),(3,61,'<com.gamex.inset.A: void b(android.content.Context)>',4,'s',NULL),(4,1,'<com.bagtincan.andraid.adfraa.FreeMe: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(5,3,'<com.bagtincan.andraid.adfraa.DoUpgrade: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(6,3,'<com.bagtincan.andraid.adfraa.DoUpgrade: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(7,1,'<com.bagtincan.andraid.adfraa.FreeMe: void showMessageNext()>',3,'a',NULL),(8,5,'<com.bagtincan.andraid.adfraa.tcpDump: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(9,1,'<com.bagtincan.andraid.adfraa.FreeMe: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(10,71,'<com.bagtincan.andraid.adfraa.tcpDump$ThreadRender$1: void onClick(android.view.View)>',19,'a',NULL),(11,73,'<com.bagtincan.andraid.adfraa.Common$5: void onClick(android.view.View)>',7,'a',NULL),(12,1,'<com.bagtincan.andraid.adfraa.FreeMe: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(13,3,'<com.bagtincan.andraid.adfraa.DoUpgrade: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(14,5,'<com.bagtincan.andraid.adfraa.tcpDump: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(15,2,'<com.bagtincan.andraid.adfraa.CancelIntent: void onCreate(android.os.Bundle)>',8,'a',NULL),(16,5,'<com.bagtincan.andraid.adfraa.tcpDump: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(17,75,'<com.gamex.inset.C: void run()>',33,'r',NULL),(18,3,'<com.bagtincan.andraid.adfraa.DoUpgrade: boolean onOptionsItemSelected(android.view.MenuItem)>',42,'a',NULL),(19,76,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(20,77,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(21,78,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(22,12,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(23,78,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(24,78,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(25,12,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(26,33,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(27,81,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1: void onClick(android.view.View)>',23,'a',NULL),(28,14,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(29,82,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(30,83,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(31,43,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(32,11,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void startMainUI()>',4,'a',NULL),(33,78,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(34,84,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(35,14,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(36,22,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(37,82,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(38,33,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(39,85,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$1: void onClick(android.view.View)>',23,'a',NULL),(40,82,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(41,29,'<com.FourCobblers.Free.PhoneLock.PhoneLock: void startMainUI()>',4,'a',NULL),(42,82,'<com.FourCobblers.Free.PhoneLock.DeviceAdminHandle$PhoneLockSetting$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(43,60,'<com.android.XWLauncher.Launcher: void appwidgetReadyBroadcast(int,android.content.ComponentName,int[])>',22,'r',0),(44,96,'<com.android.XWLauncher.CustomShirtcutActivity$IconTypeDialog: void onClick(android.content.DialogInterface,int)>',34,'a',NULL),(45,60,'<com.android.XWLauncher.Launcher: void appwidgetReadyBroadcast(int,android.content.ComponentName,int[])>',13,'r',NULL),(46,97,'<com.android.XWLauncher.Search: void startVoiceSearch()>',3,'a',NULL),(47,98,'<com.android.XWLauncher.LauncherModel: void deleteUserFolderContentsFromDatabase(android.content.Context,com.android.XWLauncher.UserFolderInfo)>',12,'p',NULL),(48,64,'<com.android.XWLauncher.CustomShirtcutActivity: void onActivityResult(int,int,android.content.Intent)>',96,'a',NULL),(49,60,'<com.android.XWLauncher.Launcher: void registerContentObservers()>',4,'p',NULL),(50,98,'<com.android.XWLauncher.LauncherModel: void deleteItemFromDatabase(android.content.Context,com.android.XWLauncher.ItemInfo)>',5,'p',NULL),(51,96,'<com.android.XWLauncher.CustomShirtcutActivity$IconTypeDialog: void onClick(android.content.DialogInterface,int)>',26,'a',NULL),(52,98,'<com.android.XWLauncher.LauncherModel: void addItemToDatabase(android.content.Context,com.android.XWLauncher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(53,96,'<com.android.XWLauncher.CustomShirtcutActivity$IconTypeDialog: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(54,98,'<com.android.XWLauncher.LauncherModel: void deleteUserFolderContentsFromDatabase(android.content.Context,com.android.XWLauncher.UserFolderInfo)>',5,'p',NULL),(55,69,'<com.nl.MyReceiver: void onReceive(android.content.Context,android.content.Intent)>',61,'s',NULL),(56,98,'<com.android.XWLauncher.LauncherModel: void updateItemInDatabase(android.content.Context,com.android.XWLauncher.ItemInfo)>',8,'p',NULL),(57,98,'<com.android.XWLauncher.LauncherModel: com.android.XWLauncher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(58,64,'<com.android.XWLauncher.CustomShirtcutActivity: void onClick(android.view.View)>',31,'a',NULL),(59,69,'<com.nl.MyReceiver: void onReceive(android.content.Context,android.content.Intent)>',101,'s',NULL),(60,60,'<com.android.XWLauncher.Launcher: void registerContentObservers()>',7,'p',NULL),(61,70,'<com.android.XWLauncher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(62,98,'<com.android.XWLauncher.LauncherModel: void resizeItemInDatabase(android.content.Context,com.android.XWLauncher.ItemInfo,long,int,int,int,int,int)>',37,'p',NULL),(63,64,'<com.android.XWLauncher.CustomShirtcutActivity: void onActivityResult(int,int,android.content.Intent)>',123,'a',NULL),(64,98,'<com.android.XWLauncher.LauncherModel: com.android.XWLauncher.ApplicationInfo loadApplicationInfoById(android.content.Context,long)>',5,'p',NULL),(65,69,'<com.nl.MyReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(66,74,'<com.android.XWLauncher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(67,98,'<com.android.XWLauncher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(68,64,'<com.android.XWLauncher.CustomShirtcutActivity: void onActivityResult(int,int,android.content.Intent)>',105,'a',NULL),(69,72,'<mobi.intuitit.android.widget.ClockWidget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(70,98,'<com.android.XWLauncher.LauncherModel: void moveItemInDatabase(android.content.Context,com.android.XWLauncher.ItemInfo,long,int,int,int)>',27,'p',NULL),(71,99,'<il.co.egv.fnc.helpers.DTNHelper$4: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(72,100,'<il.co.egv.fnc.SearchableListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',35,'a',NULL),(73,100,'<il.co.egv.fnc.SearchableListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(74,19,'<il.co.egv.fnc.MainActivity: void onResume()>',37,'a',NULL),(75,101,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact: void <init>(il.co.egv.fnc.operations.phonebook.CollectContactsOperation,java.lang.String)>',92,'p',NULL),(76,25,'<il.co.egv.fnc.RegularRunActivity: void continueRunning()>',4,'a',NULL),(77,102,'<il.co.egv.fnc.operations.ServerCaller: void run()>',129,'r',NULL),(78,104,'<il.co.egv.fnc.FirstRunActivity$3: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(79,101,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact: void <init>(il.co.egv.fnc.operations.phonebook.CollectContactsOperation,java.lang.String)>',46,'p',NULL),(80,25,'<il.co.egv.fnc.RegularRunActivity: void doLogin()>',33,'a',NULL),(81,105,'<il.co.egv.fnc.helpers.DTNHelper: void makeDeleted(android.content.Context,int)>',44,'r',NULL),(82,25,'<il.co.egv.fnc.RegularRunActivity: void disableAutoLocationAndStartSettings()>',4,'a',NULL),(83,106,'<il.co.egv.fnc.settings.SettingsActivity$3: boolean onPreferenceClick(android.preference.Preference)>',7,'a',NULL),(84,38,'<il.co.egv.fnc.findfriends.FindFriendsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(85,108,'<il.co.egv.fnc.settings.SettingsActivity$7: void onClick(android.content.DialogInterface,int)>',30,'a',NULL),(86,101,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact: void <init>(il.co.egv.fnc.operations.phonebook.CollectContactsOperation,java.lang.String)>',81,'p',NULL),(87,27,'<il.co.egv.fnc.SearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(88,101,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact: void <init>(il.co.egv.fnc.operations.phonebook.CollectContactsOperation,java.lang.String)>',34,'p',NULL),(89,110,'<il.co.egv.fnc.helpers.DTNHelper$2: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(90,23,'<il.co.egv.fnc.FirstRunActivity: void processFirstRun()>',37,'a',NULL),(91,26,'<il.co.egv.fnc.dtncard.DtnCardActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',31,'a',NULL),(92,26,'<il.co.egv.fnc.dtncard.DtnCardActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(93,101,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact: void <init>(il.co.egv.fnc.operations.phonebook.CollectContactsOperation,java.lang.String)>',14,'p',NULL),(94,26,'<il.co.egv.fnc.dtncard.DtnCardActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',44,'a',NULL),(95,111,'<il.co.egv.fnc.RegularRunActivity$3: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(96,31,'<il.co.egv.fnc.calllog.CallLogActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(97,31,'<il.co.egv.fnc.calllog.CallLogActivity: java.util.List getCallLogData()>',84,'p',NULL),(98,23,'<il.co.egv.fnc.FirstRunActivity: void processFirstRun()>',3,'p',NULL),(99,100,'<il.co.egv.fnc.SearchableListActivity: boolean onContextItemSelected(android.view.MenuItem)>',42,'a',NULL),(100,27,'<il.co.egv.fnc.SearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(101,56,'<il.co.egv.fnc.TestActivity: void onCreate(android.os.Bundle)>',24,'a',NULL),(102,19,'<il.co.egv.fnc.MainActivity: void onResume()>',31,'a',NULL),(103,30,'<il.co.egv.fnc.viplist.VipActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(104,25,'<il.co.egv.fnc.RegularRunActivity: void doLogin()>',13,'a',NULL),(105,38,'<il.co.egv.fnc.findfriends.FindFriendsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(106,112,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation: java.lang.Integer doInBackground(java.lang.Void[])>',6,'p',NULL),(107,101,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact: void <init>(il.co.egv.fnc.operations.phonebook.CollectContactsOperation,java.lang.String)>',71,'p',NULL),(108,44,'<il.co.egv.fnc.contacts.ContactsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(109,58,'<il.co.egv.fnc.LauncherActivity: void onCreate(android.os.Bundle)>',8,'a',NULL),(110,101,'<il.co.egv.fnc.operations.phonebook.CollectContactsOperation$Contact: void <init>(il.co.egv.fnc.operations.phonebook.CollectContactsOperation,java.lang.String)>',61,'p',NULL),(111,120,'<com.google.devtools.simple.runtime.components.android.Form: void startNewForm(java.lang.String,java.lang.String)>',16,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,8),(2,4,8),(3,5,8),(4,6,8),(5,8,8),(6,9,8),(7,10,8),(8,11,8),(9,12,8),(10,13,8),(11,14,8),(12,16,8),(13,17,15),(14,19,8),(15,24,18),(16,27,1),(17,30,20),(18,31,1),(19,35,18),(20,38,21),(21,40,8),(22,41,8),(23,42,22),(24,43,21),(25,44,8),(26,45,21),(27,46,22),(28,47,8),(29,48,8),(30,49,21),(31,50,20),(32,54,25),(33,55,25),(34,56,25),(35,57,25),(36,58,25),(37,59,25),(38,60,25),(39,61,25),(40,62,26),(41,63,27),(42,64,28),(43,65,29),(44,66,25),(45,67,25),(46,68,25),(47,69,25),(48,70,25),(49,71,25),(50,72,25),(51,73,25),(52,74,31),(53,75,28),(54,76,31),(55,79,31),(56,82,33),(57,88,34),(58,91,35),(59,102,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,27,1),(2,31,5),(3,38,6),(4,40,6),(5,43,6),(6,45,6),(7,47,6),(8,49,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/bagtincan/andraid/adfraa/tcpDump'),(2,3,'com/android/md5/Settings'),(3,7,'com/bagtincan/andraid/adfraa/DoUpgrade'),(4,15,'com/bagtincan/andraid/adfraa/FreeMe'),(5,18,'com/bagtincan/andraid/adfraa/tcpDump'),(6,20,'com/waps/OffersWebView'),(7,21,'com/waps/OffersWebView'),(8,22,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed'),(9,23,'(.*)'),(10,25,'com/FourCobblers/Free/PhoneLock/SetSMSCommand'),(11,29,'com/FourCobblers/Free/PhoneLock/Help'),(12,32,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(13,34,'com/FourCobblers/Free/PhoneLock/Help'),(14,36,'NULL-CONSTANT'),(15,37,'com/FourCobblers/Free/PhoneLock/PhoneLock'),(16,39,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(17,51,'com/FourCobblers/Free/PhoneLock/SetMaxPasswordFailed'),(18,52,'com/FourCobblers/Free/PhoneLock/DeviceAdminHandle$PhoneLockSetting'),(19,53,'com/FourCobblers/Free/PhoneLock/SetSMSCommand'),(20,62,'(.*)'),(21,74,'com/nl/MyService'),(22,76,'com/nl/MyService'),(23,79,'com/nl/MyService'),(24,80,'com/android/XWLauncher/ActivityPickerActivity'),(25,81,'mobi/intuitit/android/widget/TimerService'),(26,83,'il/co/egv/fnc/dtncard/DtnCardActivity'),(27,84,'il/co/egv/fnc/dtncard/DtnCardActivity'),(28,85,'il/co/egv/fnc/settings/SettingsActivity'),(29,86,'il/co/egv/fnc/RegularRunActivity'),(30,87,'il/co/egv/fnc/MainActivity'),(31,89,'il/co/egv/fnc/findfriends/GetLoginPasswordActivity'),(32,90,'il/co/egv/fnc/settings/GenerateIdActivity'),(33,92,'il/co/egv/fnc/settings/SelectLocationActivity'),(34,93,'il/co/egv/fnc/settings/SelectLocationActivity'),(35,94,'il/co/egv/fnc/BannersListActivity'),(36,95,'il/co/egv/fnc/MainActivity'),(37,96,'il/co/egv/fnc/BannersListActivity'),(38,97,'il/co/egv/fnc/settings/SettingsActivity'),(39,98,'il/co/egv/fnc/firstrun/CheckEmailActivity'),(40,99,'il/co/egv/fnc/dtncard/ShowDescriptionActivity'),(41,100,'il/co/egv/fnc/settings/SettingsActivity'),(42,101,'il/co/egv/fnc/dtncard/WatchVideoActivity'),(43,103,'il/co/egv/fnc/BannersListActivity'),(44,104,'il/co/egv/fnc/dtncard/DtnCardActivity'),(45,105,'il/co/egv/fnc/dtncard/DtnCardActivity'),(46,106,'il/co/egv/fnc/settings/SettingsActivity'),(47,107,'il/co/egv/fnc/firstrun/ConfirmFriendsActivity'),(48,108,'il/co/egv/fnc/FirstRunActivity'),(49,109,'il/co/egv/fnc/BannersListActivity'),(50,110,'il/co/egv/fnc/settings/GenerateIdActivity'),(51,111,'il/co/egv/fnc/settings/SettingsActivity'),(52,112,'il/co/egv/fnc/BannersListActivity'),(53,113,'il/co/egv/fnc/RegularRunActivity'),(54,114,'il/co/egv/fnc/FirstRunActivity');
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
INSERT INTO `IData` VALUES (1,2,1),(2,4,2),(3,5,3),(4,6,4),(5,8,5),(6,9,6),(7,10,7),(8,11,8),(9,12,9),(10,13,10),(11,14,11),(12,16,12),(13,19,13),(14,38,14),(15,40,15),(16,41,16),(17,44,17),(18,43,18),(19,45,19),(20,48,20),(21,47,21),(22,49,22),(23,82,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,20,'UrlPath'),(2,20,'ACTIVITY_FLAG'),(3,20,'isFinshClose'),(4,20,'offers_webview_tag'),(5,21,'Notify_Url_Params'),(6,21,'UrlPath'),(7,21,'ACTIVITY_FLAG'),(8,21,'isFinshClose'),(9,21,'offers_webview_tag'),(10,30,'android.app.extra.DEVICE_ADMIN'),(11,30,'android.app.extra.ADD_EXPLANATION'),(12,50,'android.app.extra.DEVICE_ADMIN'),(13,50,'android.app.extra.ADD_EXPLANATION'),(14,54,'android.intent.extra.INTENT'),(15,55,'android.intent.extra.INTENT'),(16,56,'android.intent.extra.TITLE'),(17,56,'android.intent.extra.INTENT'),(18,57,'android.intent.extra.INTENT'),(19,58,'android.intent.extra.TITLE'),(20,58,'android.intent.extra.INTENT'),(21,59,'android.intent.extra.INTENT'),(22,60,'android.intent.extra.TITLE'),(23,60,'android.intent.extra.INTENT'),(24,61,'android.intent.extra.TITLE'),(25,61,'android.intent.extra.INTENT'),(26,62,'com.motorola.blur.home.EXTRA_NEW_WIDGET'),(27,62,'spanX'),(28,62,'spanY'),(29,62,'appWidgetId'),(30,63,'android.speech.extra.LANGUAGE_MODEL'),(31,64,'android.intent.extra.INTENT'),(32,65,'aspectX'),(33,65,'aspectY'),(34,65,'outputX'),(35,65,'return-data'),(36,65,'noFaceDetection'),(37,65,'outputY'),(38,65,'crop'),(39,66,'android.intent.extra.INTENT'),(40,67,'android.intent.extra.INTENT'),(41,68,'android.intent.extra.TITLE'),(42,68,'android.intent.extra.INTENT'),(43,69,'android.intent.extra.INTENT'),(44,70,'android.intent.extra.TITLE'),(45,70,'android.intent.extra.INTENT'),(46,71,'android.intent.extra.INTENT'),(47,72,'android.intent.extra.TITLE'),(48,72,'android.intent.extra.INTENT'),(49,73,'android.intent.extra.TITLE'),(50,73,'android.intent.extra.INTENT'),(51,75,'android.intent.extra.shortcut.NAME'),(52,75,'android.intent.extra.INTENT'),(53,75,'android.intent.extra.shortcut.ICON_RESOURCE'),(54,78,'android.intent.extra.shortcut.NAME'),(55,78,'android.intent.extra.shortcut.ICON_RESOURCE'),(56,78,'android.intent.extra.shortcut.INTENT'),(57,83,'id'),(58,83,'__shouldShowEdit__'),(59,83,'__source__'),(60,83,'__top__'),(61,83,'__index__'),(62,84,'id'),(63,84,'__shouldShowEdit__'),(64,84,'__source__'),(65,84,'(.*)'),(66,84,'__top__'),(67,84,'__index__'),(68,89,'__email__'),(69,89,'__type__'),(70,89,'__first_run__'),(71,91,'id'),(72,98,'phone'),(73,98,'email'),(74,99,'description'),(75,101,'video-url'),(76,101,'preview-url'),(77,104,'id'),(78,104,'__shouldShowEdit__'),(79,104,'__source__'),(80,105,'id'),(81,105,'__shouldShowEdit__'),(82,105,'(.*)'),(83,105,'__source__'),(84,107,'friends'),(85,116,'APP_INVENTOR_START');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,4),(6,6,5),(7,7,1),(8,8,2),(9,9,6),(10,10,1),(11,11,7),(12,12,6),(13,13,7),(14,14,9),(15,15,1),(16,16,1),(17,17,10),(18,18,2),(19,19,11),(20,20,7),(21,21,12),(22,22,13),(23,23,14),(24,24,17),(25,24,16),(26,25,19),(27,26,16),(28,26,17),(29,27,24),(30,27,23),(31,27,19),(32,28,24),(33,28,23),(34,28,19),(35,29,23),(36,29,24),(37,29,19),(38,30,24),(39,30,23),(40,30,19),(41,31,19),(42,31,24),(43,31,23),(44,32,19),(45,32,23),(46,32,24),(47,33,19),(48,33,23),(49,33,24),(50,34,19),(51,34,23),(52,34,24),(53,35,19),(54,35,23),(55,35,24),(56,36,19),(57,36,24),(58,36,23),(59,37,24),(60,37,23),(61,37,19),(62,38,24),(63,38,23),(64,38,19),(65,39,30),(66,40,30),(67,41,30),(68,42,30),(69,43,30),(70,44,30),(71,45,30),(72,46,30),(73,47,30),(74,48,30),(75,49,30),(76,50,30),(77,51,21),(78,52,21),(79,53,32),(80,54,35),(81,55,35),(82,56,35),(83,57,35),(84,58,3),(85,59,35),(86,60,34),(87,61,1),(88,62,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,4,1),(4,7,1),(5,10,1),(6,15,1),(7,16,2),(8,16,3),(9,16,4),(10,17,2),(11,18,1),(12,20,2),(13,61,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,25,'package',NULL,NULL,NULL,NULL,NULL),(2,27,'package',NULL,NULL,NULL,NULL,NULL),(3,28,'package',NULL,NULL,NULL,NULL,NULL),(4,29,'package',NULL,NULL,NULL,NULL,NULL),(5,30,'package',NULL,NULL,NULL,NULL,NULL),(6,31,'package',NULL,NULL,NULL,NULL,NULL),(7,32,'package',NULL,NULL,NULL,NULL,NULL),(8,33,'package',NULL,NULL,NULL,NULL,NULL),(9,34,'package',NULL,NULL,NULL,NULL,NULL),(10,35,'package',NULL,NULL,NULL,NULL,NULL),(11,36,'package',NULL,NULL,NULL,NULL,NULL),(12,37,'package',NULL,NULL,NULL,NULL,NULL),(13,38,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,19,'application','vnd.android.package-archive'),(2,41,'application','vnd.android.package-archive'),(3,43,'(.*)','(.*)'),(4,49,'(.*)','(.*)'),(5,65,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.bagtincan.andraid.adfraa'),(2,3,'com.bagtincan.andraid.adfraa'),(3,7,'com.bagtincan.andraid.adfraa'),(4,15,'com.bagtincan.andraid.adfraa'),(5,18,'com.bagtincan.andraid.adfraa'),(6,20,'com.jeef.AlongYou'),(7,21,'com.jeef.AlongYou'),(8,22,'com.FourCobblers.Free.PhoneLock'),(9,23,'(.*)'),(10,25,'com.FourCobblers.Free.PhoneLock'),(11,27,'(.*)'),(12,29,'com.FourCobblers.Free.PhoneLock'),(13,31,'(.*)'),(14,32,'com.FourCobblers.Free.PhoneLock'),(15,34,'com.FourCobblers.Free.PhoneLock'),(16,36,'NULL-CONSTANT'),(17,37,'com.FourCobblers.Free.PhoneLock'),(18,39,'com.FourCobblers.Free.PhoneLock'),(19,51,'com.FourCobblers.Free.PhoneLock'),(20,52,'com.FourCobblers.Free.PhoneLock'),(21,53,'com.FourCobblers.Free.PhoneLock'),(22,62,'(.*)'),(23,74,'com.android.XWLauncher'),(24,76,'com.android.XWLauncher'),(25,79,'com.android.XWLauncher'),(26,80,'com.android.XWLauncher'),(27,81,'com.android.XWLauncher'),(28,83,'il.co.egv'),(29,84,'il.co.egv'),(30,85,'il.co.egv'),(31,86,'il.co.egv'),(32,87,'il.co.egv'),(33,89,'il.co.egv'),(34,90,'il.co.egv'),(35,92,'il.co.egv'),(36,93,'il.co.egv'),(37,94,'il.co.egv'),(38,95,'il.co.egv'),(39,96,'il.co.egv'),(40,97,'il.co.egv'),(41,98,'il.co.egv'),(42,99,'il.co.egv'),(43,100,'il.co.egv'),(44,101,'il.co.egv'),(45,103,'il.co.egv'),(46,104,'il.co.egv'),(47,105,'il.co.egv'),(48,106,'il.co.egv'),(49,107,'il.co.egv'),(50,108,'il.co.egv'),(51,109,'il.co.egv'),(52,110,'il.co.egv'),(53,111,'il.co.egv'),(54,112,'il.co.egv'),(55,113,'il.co.egv'),(56,114,'il.co.egv');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,8,0),(3,9,0),(4,11,0),(5,13,0),(6,16,0),(7,19,0),(8,21,0),(9,25,0),(10,29,0),(11,28,0),(12,45,0),(13,48,0),(14,58,0),(15,59,0),(16,59,0),(17,63,0),(18,67,0),(19,67,0),(20,67,0),(21,67,0),(22,68,0),(23,69,0),(24,71,0),(25,72,0),(26,73,0),(27,69,0),(28,74,0),(29,75,0),(30,76,0),(31,77,0),(32,78,0),(33,79,0),(34,80,0),(35,81,0),(36,82,0),(37,83,0),(38,84,0),(39,69,0),(40,74,0),(41,75,0),(42,76,0),(43,77,0),(44,78,0),(45,79,0),(46,80,0),(47,81,0),(48,82,0),(49,83,0),(50,84,0),(51,82,0),(52,82,0),(53,83,0),(54,85,0),(55,86,0),(56,87,0),(57,88,0),(58,89,0),(59,90,0),(60,91,0),(61,92,0),(62,93,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,6,1,0),(7,7,0,0),(8,8,1,0),(9,9,1,0),(10,10,1,0),(11,11,1,0),(12,12,1,0),(13,13,1,0),(14,14,1,0),(15,15,0,0),(16,16,1,0),(17,17,1,0),(18,18,0,0),(19,19,1,0),(20,20,0,0),(21,20,0,0),(22,21,0,0),(23,22,0,0),(24,23,1,0),(25,24,0,0),(26,25,1,0),(27,25,1,0),(28,26,1,0),(29,26,0,0),(30,27,1,0),(31,25,1,0),(32,26,0,0),(33,28,1,0),(34,28,0,0),(35,29,1,0),(36,30,0,0),(37,28,0,0),(38,31,1,0),(39,32,0,0),(40,31,1,0),(41,34,1,0),(42,33,1,0),(43,31,1,0),(44,35,1,0),(45,36,1,0),(46,37,1,0),(47,36,1,0),(48,38,1,0),(49,36,1,0),(50,39,1,0),(51,40,0,0),(52,41,0,0),(53,42,0,0),(54,44,1,0),(55,44,1,0),(56,44,1,0),(57,44,1,0),(58,44,1,0),(59,44,1,0),(60,44,1,0),(61,44,1,0),(62,45,0,0),(63,46,1,0),(64,48,1,0),(65,51,1,0),(66,53,1,0),(67,53,1,0),(68,53,1,0),(69,53,1,0),(70,53,1,0),(71,53,1,0),(72,53,1,0),(73,53,1,0),(74,55,0,0),(75,58,1,0),(76,59,0,0),(77,63,1,0),(78,63,1,0),(79,65,0,0),(80,68,0,0),(81,69,0,0),(82,71,1,0),(83,72,0,0),(84,72,0,0),(85,73,0,0),(86,74,0,0),(87,76,0,0),(88,77,1,0),(89,78,0,0),(90,80,0,0),(91,81,1,0),(92,82,0,0),(93,83,0,0),(94,84,0,0),(95,85,0,0),(96,87,0,0),(97,89,0,0),(98,90,0,0),(99,91,0,0),(100,92,0,0),(101,94,0,0),(102,95,1,0),(103,96,0,0),(104,99,0,0),(105,99,0,0),(106,100,0,0),(107,101,0,0),(108,102,0,0),(109,103,0,0),(110,104,0,0),(111,105,0,0),(112,108,0,0),(113,109,0,0),(114,109,0,0),(115,111,1,0),(116,111,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.android.XWLauncher.settings');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(7,'android.permission.ACCESS_FINE_LOCATION'),(4,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(27,'android.permission.BIND_APPWIDGET'),(17,'android.permission.BIND_DEVICE_ADMIN'),(16,'android.permission.BIND_WALLPAPER'),(28,'android.permission.BROADCAST_SMS'),(15,'android.permission.CALL_PHONE'),(20,'android.permission.DELETE_PACKAGES'),(24,'android.permission.EXPAND_STATUS_BAR'),(11,'android.permission.GET_TASKS'),(18,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(30,'android.permission.PERSISTENT_ACTIVITY'),(14,'android.permission.READ_CONTACTS'),(12,'android.permission.READ_LOGS'),(5,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(1,'android.permission.RECEIVE_BOOT_COMPLETED'),(9,'android.permission.RECEIVE_SMS'),(21,'android.permission.RESTART_PACKAGES'),(6,'android.permission.SEND_SMS'),(19,'android.permission.SET_WALLPAPER'),(22,'android.permission.SET_WALLPAPER_HINTS'),(29,'android.permission.VIBRATE'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(25,'android.permission.WRITE_SETTINGS'),(32,'com.android.XWLauncher.permission.INSTALL_SHORTCUT'),(26,'com.android.XWLauncher.permission.READ_SETTINGS'),(31,'com.android.XWLauncher.permission.UNINSTALL_SHORTCUT'),(23,'com.android.XWLauncher.permission.WRITE_SETTINGS');
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
INSERT INTO `Permissions` VALUES (23,'n'),(26,'n'),(31,'n'),(32,'n');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,70,0,NULL,'com.android.XWLauncher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://adfree.bigtincan.com/phone-register.php',NULL,NULL,NULL),(2,NULL,NULL,'http://adfree.bigtincan.com/about.php',NULL,NULL,NULL),(3,NULL,NULL,'http://adfree.bigtincan.com/about.php',NULL,NULL,NULL),(4,NULL,NULL,'https://adfree.bigtincan.com/donation.html',NULL,NULL,NULL),(5,NULL,NULL,'http://forum.xda-developers.com/showthread.php?t=509997',NULL,NULL,NULL),(6,NULL,NULL,'https://adfree.bigtincan.com/donation.html',NULL,NULL,NULL),(7,NULL,NULL,'http://adfree.bigtincan.com/exceptions.php?hostname=(.*)',NULL,NULL,NULL),(8,NULL,NULL,'http://adfree.bigtincan.com/phone-register.php',NULL,NULL,NULL),(9,NULL,NULL,'http://forum.xda-developers.com/showthread.php?t=509997',NULL,NULL,NULL),(10,NULL,NULL,'http://forum.xda-developers.com/showthread.php?t=509997',NULL,NULL,NULL),(11,NULL,NULL,'https://adfree.bigtincan.com/donation.html',NULL,NULL,NULL),(12,NULL,NULL,'http://adfree.bigtincan.com/about.php',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'market://search?q=pname:com.FourCobblers.PhoneLock',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'market://search?q=pname:com.FourCobblers.PhoneLock',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=true',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=true',NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.XWLauncher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=false',NULL,NULL,NULL),(27,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=true',NULL,NULL,NULL),(28,NULL,NULL,'content://com.android.XWLauncher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://com.android.XWLauncher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(30,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=true',NULL,NULL,NULL),(31,NULL,NULL,'content://com.android.XWLauncher.settings/appWidgetReset',NULL,NULL,NULL),(32,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=true',NULL,NULL,NULL),(33,NULL,NULL,'content://com.android.XWLauncher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(34,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=true',NULL,NULL,NULL),(35,NULL,NULL,'content://com.android.XWLauncher.settings/favorites?notify=true',NULL,NULL,NULL),(36,NULL,NULL,'content://com.android.XWLauncher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(39,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(40,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(41,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(42,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(43,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(44,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(45,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(46,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(47,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,47,23),(2,49,24),(3,50,25),(4,52,26),(5,52,27),(6,54,28),(7,56,29),(8,57,30),(9,60,31),(10,61,32),(11,62,33),(12,64,34),(13,67,35),(14,70,36),(15,75,38),(16,79,39),(17,86,40),(18,88,41),(19,93,42),(20,97,43),(21,98,44),(22,106,45),(23,107,46),(24,110,47);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,2),(6,3,1),(7,2,3),(8,3,2),(9,2,4),(10,3,3),(11,2,5),(12,3,4),(13,2,6),(14,3,5),(15,2,7),(16,3,11),(17,2,8),(18,3,12),(19,2,9),(20,2,10),(21,4,2),(22,4,3),(23,4,5),(24,4,7),(25,4,10),(26,4,13),(27,4,14),(28,4,15),(29,5,2),(30,5,3),(31,5,4),(32,5,5),(33,5,6),(34,5,7),(35,5,8),(36,5,9),(37,5,10),(38,6,1),(39,6,2),(40,6,3),(41,6,5),(42,6,6),(43,6,11),(44,6,14),(45,6,15),(46,6,19),(47,6,18),(48,6,21),(49,6,20),(50,6,23),(51,6,22),(52,6,25),(53,6,24),(54,6,27),(55,6,26),(56,6,29),(57,6,28),(58,6,30),(59,7,2);
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

-- Dump completed on 2015-10-09  0:39:24
