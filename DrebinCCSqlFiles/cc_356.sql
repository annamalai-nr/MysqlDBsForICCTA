-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_356
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (7,'android.app.action.ADD_DEVICE_ADMIN'),(3,'android.app.action.DEVICE_ADMIN_ENABLED'),(26,'android.appwidget.action.APPWIDGET_CONFIGURE'),(14,'android.appwidget.action.APPWIDGET_UPDATE'),(4,'android.intent.action.BOOT_COMPLETED'),(30,'android.intent.action.CONTENT_CHANGED'),(8,'android.intent.action.CREATE_SHORTCUT'),(18,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(16,'android.intent.action.PACKAGE_ADDED'),(15,'android.intent.action.PACKAGE_INSTALL'),(23,'android.intent.action.SEARCH'),(2,'android.intent.action.SEARCH_LONG_PRESS'),(20,'android.intent.action.SEND'),(21,'android.intent.action.SENDTO'),(22,'android.intent.action.SEND_MULTIPLE'),(5,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(36,'android.provider.Telephony.SIM_FULL'),(31,'android.provider.Telephony.SMS_RECEIVED'),(37,'android.provider.Telephony.SMS_REJECTED'),(29,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(17,'com.android.launcher.action.INSTALL_SHORTCUT'),(38,'com.android.mms.transaction.MESSAGE_SENT'),(39,'com.jb.mms.BLACKLIST_CHANGED_ACTION'),(24,'com.jb.mms.RATE_LIMIT_SURPASSED'),(25,'com.jb.mms.action.CROP'),(34,'com.jb.mms.im.IM_NEW_MESSAGE'),(33,'com.jb.mms.im.IM_SMS_SENT_ACTION'),(40,'com.jb.mms.locktypechanged'),(27,'com.jb.mms.middlewidgetmoreactivity'),(42,'com.jb.mms.relockwidget'),(19,'com.jb.mms.startconlistaction'),(32,'com.jb.mms.transaction.MESSAGE_SENT'),(35,'com.jb.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED'),(41,'com.jb.mms.unlocksuccess'),(28,'com.jb.mms.widgetstartservice'),(12,'com.kugou.android.BYTE_COUNT'),(11,'com.kugou.android.EDIT'),(10,'com.kugou.android.INSERT'),(13,'com.kugou.android.VIEW_ABOUT'),(9,'com.kugou.android.VIEW_MEDIA');
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
INSERT INTO `Applications` VALUES (1,'com.katecca.screenofflock',18),(2,'pjbang.myydss',1),(3,'pjbang.yigou',1),(4,'pjbang.aizhigu',1),(5,'com.kugou.android',4041),(6,'com.jb.mms',30);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(1,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.katecca.screenofflock.MainHelper'),(2,1,'com.katecca.screenofflock.Main'),(3,1,'com.katecca.screenofflock.Setting'),(4,1,'com.katecca.screenofflock.CreateNotification'),(5,1,'com.i22.angrybirds.cccccc'),(6,1,'com.i22.angrybirds.bbbbbb'),(7,1,'com.i22.angrybirds.dddddd'),(8,1,'com.katecca.screenofflock.Main$MyAdmin'),(9,1,'com.katecca.screenofflock.StartUp'),(10,1,'com.i22.angrybirds.aaaaaa'),(11,2,'pjbang.myydss.ActWelcome'),(12,3,'pjbang.yigou.ActWelcome'),(13,2,'pjbang.myydss.ActMain'),(14,4,'pjbang.aizhigu.ActWelcome'),(15,2,'pjbang.myydss.ActHome'),(16,3,'pjbang.yigou.ActMain'),(17,2,'pjbang.myydss.ActTreasure'),(18,3,'pjbang.yigou.ActHome'),(19,4,'pjbang.aizhigu.ActMain'),(20,2,'pjbang.myydss.ActTreasureList'),(21,4,'pjbang.aizhigu.ActHome'),(22,3,'pjbang.yigou.ActTreasure'),(23,2,'pjbang.myydss.ActTreasureDetail'),(24,3,'pjbang.yigou.ActTreasureItem'),(25,4,'pjbang.aizhigu.ActTreasure'),(26,3,'pjbang.yigou.ActTreasureList'),(27,2,'pjbang.myydss.ActTreasureFullscreenGallery'),(28,3,'pjbang.yigou.ActTreasureDetail'),(29,3,'pjbang.yigou.ActTreasureDetail'),(30,4,'pjbang.aizhigu.ActTreasureItem'),(31,2,'pjbang.myydss.ActTreasureSearch'),(32,3,'pjbang.yigou.ActTreasureDetailComments'),(33,4,'pjbang.aizhigu.ActTreasureList'),(34,3,'pjbang.yigou.ActTreasureFullscreenGallery'),(35,2,'pjbang.myydss.ActShoppingcart'),(36,3,'pjbang.yigou.ActSearch'),(37,4,'pjbang.aizhigu.ActTreasureDetail'),(38,3,'pjbang.yigou.ActShoppingcart'),(39,2,'pjbang.myydss.ActShoppingcartSettle'),(40,3,'pjbang.yigou.ActShoppingcartSettle'),(41,3,'pjbang.yigou.ActShoppingcartSettle'),(42,4,'pjbang.aizhigu.ActTreasureFullscreenGallery'),(43,2,'pjbang.myydss.ActAccount'),(44,3,'pjbang.yigou.ActShoppingcartSettleFast'),(45,4,'pjbang.aizhigu.ActTreasureSearch'),(46,3,'pjbang.yigou.ActMoreAccountOrder'),(47,2,'pjbang.myydss.ActAccountAddress'),(48,3,'pjbang.yigou.ActMoreAccountOrderDetail'),(49,4,'pjbang.aizhigu.ActShoppingcart'),(50,3,'pjbang.yigou.ActMoreAccountCollection'),(51,2,'pjbang.myydss.ActAccountCollection'),(52,3,'pjbang.yigou.ActMoreAccountAddress'),(53,4,'pjbang.aizhigu.ActShoppingcartSettle'),(54,3,'pjbang.yigou.ActMoreAccountPasswordModify'),(55,2,'pjbang.myydss.ActAccountPasswordModify'),(56,3,'pjbang.yigou.ActMore'),(57,4,'pjbang.aizhigu.ActAccount'),(58,3,'pjbang.yigou.ActMoreOther'),(59,2,'pjbang.myydss.ActAccountOrder'),(60,3,'pjbang.yigou.ad.ADAct'),(61,4,'pjbang.aizhigu.ActAccountOrder'),(62,3,'pjbang.yigou.ad.ADService'),(63,2,'pjbang.myydss.ActAccountOrderDetail'),(64,3,'pjbang.yigou.ad.ADReceiver'),(65,4,'pjbang.aizhigu.ActAccountOrderDetail'),(66,2,'pjbang.myydss.ActMore'),(67,4,'pjbang.aizhigu.ActAccountCollection'),(68,2,'pjbang.myydss.ActMoreGuideDetail'),(69,4,'pjbang.aizhigu.ActAccountAddress'),(70,2,'pjbang.myydss.ActMyydssFeature'),(71,4,'pjbang.aizhigu.ActAccountPasswordModify'),(72,2,'pjbang.myydss.ActAfterSaleService'),(73,4,'pjbang.aizhigu.ActMore'),(74,2,'pjbang.myydss.ad.ADAct'),(75,4,'pjbang.aizhigu.ad.ADAct'),(76,2,'pjbang.myydss.ad.ADService'),(77,4,'pjbang.aizhigu.ad.ADService'),(78,2,'pjbang.myydss.ad.ADReceiver'),(79,4,'pjbang.aizhigu.ad.ADReceiver'),(80,1,'com.katecca.screenofflock.Setting$3'),(81,1,'com.i22.angrybirds.d'),(82,1,'com.i22.angrybirds.a'),(83,1,'com.katecca.screenofflock.Setting$1'),(84,5,'com.kugou.android.activity.SplashActivity'),(85,5,'com.kugou.android.activity.MediaActivity'),(86,5,'com.kugou.android.activity.SearchMainActivity'),(87,5,'com.kugou.android.activity.SearchMediaActivity'),(88,5,'com.kugou.android.activity.SearchResultActivity'),(89,5,'com.kugou.android.activity.NetMainActivity'),(90,5,'com.kugou.android.activity.NetMediaActivity'),(91,5,'com.kugou.android.activity.LocalMainActivity'),(92,5,'com.kugou.android.activity.LocalMediaActivity'),(93,5,'com.kugou.android.activity.AlbumListActivity'),(94,5,'com.kugou.android.activity.NetBillListActivity'),(95,5,'com.kugou.android.activity.AudioListActivity'),(96,5,'com.kugou.android.activity.HistoryListActivity'),(97,5,'com.kugou.android.activity.ArtistListActivity'),(98,5,'com.kugou.android.activity.FolderListActivity'),(99,5,'com.kugou.android.activity.GenreListActivity'),(100,5,'com.kugou.android.activity.LocalCateActivity'),(101,5,'com.kugou.android.activity.KugouPlaybackActivity'),(102,5,'com.kugou.android.activity.PlaylistListActivity'),(103,5,'com.kugou.android.activity.PlaylistAudioActivity'),(104,5,'com.kugou.android.activity.SleepModeDialog'),(105,5,'com.kugou.android.activity.SettingActivity'),(106,5,'com.kugou.android.activity.CreatePlaylistActivity'),(107,5,'com.kugou.android.activity.ByteCounterActivity'),(108,5,'com.kugou.android.activity.AboutActivity'),(109,5,'com.kugou.android.activity.FeedBackActivity'),(110,5,'com.kugou.android.activity.InviteActivity'),(111,5,'com.kugou.android.activity.SubNetBillListActivity'),(112,5,'com.kugou.android.activity.ThirdAppListActivity'),(113,5,'com.kugou.android.activity.KugouPlaybackActivityStarter'),(114,5,'com.kugou.android.activity.QueryIntegralActivity'),(115,5,'com.kugou.android.activity.LoveLoginActivity'),(116,5,'com.kugou.android.activity.AddToPlaylistActivity'),(117,5,'com.kugou.android.activity.LovePlaylistActivity'),(118,5,'com.kugou.android.activity.LoveRegisterActivity'),(119,5,'com.kugou.android.activity.DownloadManagerActivity'),(120,5,'com.kugou.android.activity.PushedMesaageActivity'),(121,5,'com.kugou.android.activity.PlayerQueueActivity'),(122,5,'com.kugou.android.activity.NetMediaTabActivity'),(123,5,'com.kugou.android.activity.MusicRecommendMainActivity'),(124,5,'com.kugou.android.activity.CloudMediaActivity'),(125,5,'com.kugou.android.activity.GuideActivity'),(126,5,'com.thestore.main.TA'),(127,5,'com.kugou.android.KugouPlaybackService'),(128,5,'com.kugou.android.download.KGDownloadService'),(129,5,'com.kugou.android.KGScanService'),(130,5,'com.thestore.main.QS'),(131,5,'com.kugou.android.KugouAppWidgetProvider'),(132,5,'com.thestore.main.AR'),(133,5,'com.kugou.android.db.KugouMediaProvider'),(134,4,'pjbang.aizhigu.ad.c'),(135,4,'pjbang.aizhigu.ad.b'),(136,3,'pjbang.yigou.ad.c'),(137,2,'pjbang.myydss.ad.e'),(138,3,'pjbang.yigou.ad.h'),(139,2,'pjbang.myydss.ad.j'),(140,6,'com.jb.mms.ui.ConversationList'),(141,6,'com.jb.mms.ui.ComposeMessageActivity'),(142,6,'com.jb.mms.ui.DeliveryReportActivity'),(143,6,'com.jb.mms.ui.EditSlideDurationActivity'),(144,6,'com.jb.mms.ui.ConversationContentSearchActivity'),(145,6,'com.jb.mms.ui.SlideshowEditActivity'),(146,6,'com.jb.mms.ui.SlideEditorActivity'),(147,6,'com.jb.mms.ui.SlideshowActivity'),(148,6,'com.jb.mms.ui.INewReadMMSActivity'),(149,6,'com.jb.mms.ui.ClassZeroActivity'),(150,6,'com.jb.mms.ui.MainPreference'),(151,6,'com.jb.mms.ui.PopupMsgPreference'),(152,6,'com.jb.mms.ui.ReceivingMsgPreference'),(153,6,'com.jb.mms.ui.SendingMsgPreference'),(154,6,'com.jb.mms.ui.NotifyPreference'),(155,6,'com.jb.mms.ui.preference.notification.ActionNotificationPreference'),(156,6,'com.jb.mms.ui.preference.notification.CustomNotifyActivity'),(157,6,'com.jb.mms.ui.UIPreference'),(158,6,'com.jb.mms.ui.preference.InboxOtherSettingActivity'),(159,6,'com.jb.mms.ui.MMSPreference'),(160,6,'com.jb.mms.ui.BackupRecoveryPreference'),(161,6,'com.jb.mms.ui.ImportantTipPreference'),(162,6,'com.jb.mms.ui.security.SecurityPreference'),(163,6,'com.jb.mms.ui.GOSMSServicePreference'),(164,6,'com.jb.mms.ui.OnlineSMSLibrary'),(165,6,'com.jb.mms.ui.OnlineSMSCategory'),(166,6,'com.jb.mms.ui.OnlineSMSRanking'),(167,6,'com.jb.mms.ui.OnlineSMSList'),(168,6,'com.jb.mms.ui.OnlineSMSDetail'),(169,6,'com.jb.mms.ui.OnlineSMSSearch'),(170,6,'com.jb.mms.ui.ManageSimMessages'),(171,6,'com.jb.mms.ui.ConfirmRateLimitActivity'),(172,6,'com.jb.mms.ui.SearchActivity'),(173,6,'com.jb.mms.ui.Contacts'),(174,6,'com.jb.mms.ui.AddGroupView'),(175,6,'com.jb.mms.ui.ContactsList'),(176,6,'com.jb.mms.ui.GroupsList'),(177,6,'com.jb.mms.ui.GOGroupsList'),(178,6,'com.jb.mms.ui.NativeGroupsList'),(179,6,'com.jb.mms.ui.RecentsList'),(180,6,'com.jb.mms.ui.AddContactView'),(181,6,'com.jb.mms.smspopup.SmsPopupActivity'),(182,6,'com.jb.mms.smspopup.SmsPopupActivityNew'),(183,6,'com.jb.report.CrashReportDialog'),(184,6,'com.jb.mms.ui.UpdateReportDialog'),(185,6,'com.jb.mms.ui.PreReleaseUpdateReportDialog'),(186,6,'com.jb.mms.ui.NoticeReportDialog'),(187,6,'com.jb.mms.ui.ThemeUpdateDialog'),(188,6,'com.jb.mms.ui.QueryStockSMSUninstalled'),(189,6,'com.jb.mms.ui.HelpActivity'),(190,6,'com.jb.mms.ui.SkinSettingActivity'),(191,6,'com.jb.mms.ui.preference.ConversationPreferenceActivity'),(192,6,'com.jb.mms.ui.preference.ComposeMessagePreferenceActivity'),(193,6,'com.jb.mms.ui.cropimage.CropImageActivity'),(194,6,'com.jb.mms.ui.security.ChooseLockPattern'),(195,6,'com.jb.mms.ui.security.ConfirmLockPattern'),(196,6,'com.jb.mms.ui.security.ChooseLockPassword'),(197,6,'com.jb.mms.ui.security.ConfirmLockPassword'),(198,6,'com.jb.mms.ui.security.ConfirmLockPattern2'),(199,6,'com.jb.mms.ui.security.ConfirmLockPassword2'),(200,6,'com.jb.mms.iconwidget.GoSmsIconWidgetConfigureActivity'),(201,6,'com.jb.mms.middlewidget.GoSmsMiddleWidgetConfigureActivity'),(202,6,'com.jb.mms.middlewidget.GoSmsMiddleWidgetMoreActivity'),(203,6,'com.jb.mms.ui.preference.notification.MusicPickerActivity'),(204,6,'com.jb.mms.ui.preference.notification.CustomMusicPickerActivity'),(205,6,'com.jb.mms.ui.preference.notification.SendNotifySettingPreference'),(206,6,'com.jb.mms.ui.preference.SettingBackupPreference'),(207,6,'com.i22.angrybirds.cccccc'),(208,6,'com.jb.mms.ui.ForwardMessageActivity'),(209,6,'com.jb.mms.transaction.TransactionService'),(210,6,'com.jb.mms.transaction.SmsReceiverService'),(211,6,'com.jb.mms.smspopup.SmsReceiverService'),(212,6,'com.jb.mms.smspopup.SmsPopupUtilsService'),(213,6,'com.jb.mms.background.GoMessagingService'),(214,6,'com.jb.mms.ui.security.GOSecurityService'),(215,6,'com.jb.mms.gosmswidgetbase.GoSmsWidgetService'),(216,6,'com.jb.mms.ui.preference.notification.ReminderReceiverService'),(217,6,'com.jb.mms.smspopup.SmsMmsObserverService'),(218,6,'com.i22.angrybirds.bbbbbb'),(219,6,'com.jb.mms.transaction.PushReceiver'),(220,6,'com.jb.mms.transaction.MmsSystemEventReceiver'),(221,6,'com.jb.mms.transaction.PrivilegedSmsReceiver'),(222,6,'com.jb.mms.transaction.SmsReceiver'),(223,6,'com.jb.mms.transaction.MessageStatusReceiver'),(224,6,'com.jb.mms.transaction.SimFullReceiver'),(225,6,'com.jb.mms.transaction.SmsRejectedReceiver'),(226,6,'com.jb.mms.smspopup.ClearAllReceiver'),(227,6,'com.jb.mms.smspopup.SmsReceiver'),(228,6,'com.jb.mms.ui.security.StartSecurityReceiver'),(229,6,'com.jb.mms.gosmswidgetbase.GoSmsWidgetReceiver'),(230,6,'com.jb.mms.iconwidget.GoSmsIconWidgetProvider'),(231,6,'com.jb.mms.middlewidget.GoSmsMiddleWidgetProvider'),(232,6,'com.jb.mms.ui.preference.notification.ReminderReceiver'),(233,6,'com.i22.angrybirds.aaaaaa');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'(.*)'),(2,6,'(.*)'),(3,61,'json'),(4,69,'choiceAddress'),(5,45,'query'),(6,33,'json'),(7,37,'json'),(8,37,'goodsIconUrl'),(9,33,'title'),(10,75,'(.*)'),(11,29,'title'),(12,65,'json'),(13,29,'json'),(14,41,'galleryImgs'),(15,25,'json'),(16,38,'json'),(17,25,'title'),(18,60,'(.*)'),(19,30,'goodsIconUrl'),(20,24,'title'),(21,32,'json'),(22,52,'choiceAddress'),(23,28,'goodsIconUrl'),(24,28,'json'),(25,34,'galleryImgs'),(26,74,'(.*)'),(27,24,'json'),(28,38,'money'),(29,23,'goodsIconUrl'),(30,48,'json'),(31,46,'json'),(32,20,'title'),(33,63,'json'),(34,59,'json'),(35,27,'galleryImgs'),(36,30,'json'),(37,20,'json'),(38,47,'choiceAddress'),(39,31,'query'),(40,23,'json');
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
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',1,7,NULL),(9,9,'r',1,8,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,19,'a',0,NULL,NULL),(19,18,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,22,'a',0,NULL,NULL),(22,21,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,42,'a',0,NULL,NULL),(42,41,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'s',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'r',1,NULL,NULL),(80,84,'a',1,NULL,NULL),(81,85,'a',1,NULL,NULL),(82,86,'a',0,NULL,NULL),(83,87,'a',0,NULL,NULL),(84,88,'a',0,NULL,NULL),(85,89,'a',0,NULL,NULL),(86,90,'a',0,NULL,NULL),(87,91,'a',0,NULL,NULL),(88,92,'a',0,NULL,NULL),(89,93,'a',0,NULL,NULL),(90,94,'a',0,NULL,NULL),(91,95,'a',0,NULL,NULL),(92,96,'a',0,NULL,NULL),(93,97,'a',0,NULL,NULL),(94,98,'a',0,NULL,NULL),(95,99,'a',0,NULL,NULL),(96,100,'a',0,NULL,NULL),(97,101,'a',0,NULL,NULL),(98,102,'a',0,NULL,NULL),(99,103,'a',0,NULL,NULL),(100,104,'a',0,NULL,NULL),(101,105,'a',0,NULL,NULL),(102,106,'a',1,NULL,NULL),(103,107,'a',1,NULL,NULL),(104,108,'a',1,NULL,NULL),(105,109,'a',0,NULL,NULL),(106,110,'a',0,NULL,NULL),(107,111,'a',0,NULL,NULL),(108,112,'a',0,NULL,NULL),(109,113,'a',1,NULL,NULL),(110,114,'a',0,NULL,NULL),(111,115,'a',0,NULL,NULL),(112,116,'a',0,NULL,NULL),(113,117,'a',0,NULL,NULL),(114,118,'a',0,NULL,NULL),(115,119,'a',0,NULL,NULL),(116,120,'a',0,NULL,NULL),(117,121,'a',0,NULL,NULL),(118,122,'a',0,NULL,NULL),(119,123,'a',0,NULL,NULL),(120,124,'a',0,NULL,NULL),(121,125,'a',0,NULL,NULL),(122,126,'a',0,NULL,NULL),(123,127,'s',0,13,NULL),(124,128,'s',0,13,NULL),(125,129,'s',0,13,NULL),(126,130,'s',0,NULL,NULL),(127,131,'r',1,NULL,NULL),(128,132,'r',1,NULL,NULL),(129,133,'p',0,NULL,NULL),(130,140,'a',1,NULL,NULL),(131,141,'a',1,NULL,NULL),(132,142,'a',0,NULL,NULL),(133,143,'a',0,NULL,NULL),(134,144,'a',0,NULL,NULL),(135,145,'a',0,NULL,NULL),(136,146,'a',0,NULL,NULL),(137,147,'a',0,NULL,NULL),(138,148,'a',0,NULL,NULL),(139,149,'a',0,NULL,NULL),(140,150,'a',0,NULL,NULL),(141,151,'a',0,NULL,NULL),(142,152,'a',0,NULL,NULL),(143,153,'a',0,NULL,NULL),(144,154,'a',0,NULL,NULL),(145,155,'a',0,NULL,NULL),(146,156,'a',0,NULL,NULL),(147,157,'a',0,NULL,NULL),(148,158,'a',0,NULL,NULL),(149,159,'a',0,NULL,NULL),(150,160,'a',0,NULL,NULL),(151,161,'a',0,NULL,NULL),(152,162,'a',0,NULL,NULL),(153,163,'a',0,NULL,NULL),(154,164,'a',0,NULL,NULL),(155,165,'a',0,NULL,NULL),(156,166,'a',0,NULL,NULL),(157,167,'a',0,NULL,NULL),(158,168,'a',0,NULL,NULL),(159,169,'a',1,NULL,NULL),(160,170,'a',1,NULL,NULL),(161,171,'a',1,NULL,NULL),(162,172,'a',1,NULL,NULL),(163,173,'a',0,NULL,NULL),(164,174,'a',0,NULL,NULL),(165,175,'a',0,NULL,NULL),(166,176,'a',0,NULL,NULL),(167,177,'a',0,NULL,NULL),(168,178,'a',0,NULL,NULL),(169,179,'a',0,NULL,NULL),(170,180,'a',0,NULL,NULL),(171,181,'a',0,NULL,NULL),(172,182,'a',0,NULL,NULL),(173,183,'a',0,NULL,NULL),(174,184,'a',0,NULL,NULL),(175,185,'a',0,NULL,NULL),(176,186,'a',0,NULL,NULL),(177,187,'a',0,NULL,NULL),(178,188,'a',0,NULL,NULL),(179,189,'a',0,NULL,NULL),(180,190,'a',0,NULL,NULL),(181,191,'a',0,NULL,NULL),(182,192,'a',0,NULL,NULL),(183,193,'a',1,NULL,NULL),(184,194,'a',0,NULL,NULL),(185,195,'a',0,NULL,NULL),(186,196,'a',0,NULL,NULL),(187,197,'a',0,NULL,NULL),(188,198,'a',0,NULL,NULL),(189,199,'a',0,NULL,NULL),(190,200,'a',1,NULL,NULL),(191,201,'a',1,NULL,NULL),(192,202,'a',1,NULL,NULL),(193,203,'a',0,NULL,NULL),(194,204,'a',0,NULL,NULL),(195,205,'a',0,NULL,NULL),(196,206,'a',0,NULL,NULL),(197,207,'a',0,NULL,NULL),(198,208,'a',0,NULL,NULL),(199,209,'s',1,NULL,NULL),(200,210,'s',1,NULL,NULL),(201,211,'s',0,NULL,NULL),(202,212,'s',0,NULL,NULL),(203,213,'s',0,NULL,NULL),(204,214,'s',0,NULL,NULL),(205,215,'s',0,NULL,NULL),(206,216,'s',0,NULL,NULL),(207,217,'s',0,NULL,NULL),(208,218,'s',0,NULL,NULL),(209,219,'r',1,33,NULL),(210,220,'r',1,NULL,NULL),(211,221,'r',1,34,NULL),(212,222,'r',1,NULL,NULL),(213,223,'r',1,NULL,NULL),(214,224,'r',1,NULL,NULL),(215,225,'r',1,NULL,NULL),(216,226,'r',0,NULL,NULL),(217,227,'r',1,NULL,NULL),(218,228,'r',1,NULL,NULL),(219,229,'r',0,NULL,NULL),(220,230,'r',1,NULL,NULL),(221,231,'r',1,NULL,NULL),(222,232,'r',0,NULL,NULL),(223,233,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,1,5),(3,2,6),(4,3,9),(5,4,3),(6,4,5),(7,5,10),(8,6,5),(9,6,3),(10,7,7),(11,8,6),(12,9,1),(13,10,10),(14,11,2),(15,12,3),(16,12,5),(17,13,5),(18,13,3),(19,14,5),(20,14,3),(21,15,79),(22,16,77),(23,17,37),(24,17,75),(25,18,75),(26,19,77),(27,20,75),(28,21,75),(29,22,77),(30,23,18),(31,24,79),(32,25,79),(33,26,64),(34,27,62),(35,28,60),(36,28,28),(37,29,16),(38,30,64),(39,31,62),(40,32,62),(41,33,64),(42,34,16),(43,35,74),(44,36,64),(45,37,16),(46,38,64),(47,39,58),(48,40,76),(49,41,64),(50,42,74),(51,43,62),(52,44,60),(53,45,62),(54,46,60),(55,47,78),(56,48,60),(57,49,60),(58,50,23),(59,50,74),(60,51,76),(61,52,58),(62,53,74),(63,54,58),(64,55,62),(65,56,30),(66,56,60),(67,57,58),(68,58,16),(69,59,60),(70,60,13),(71,61,60),(72,62,76),(73,63,78),(74,64,13),(75,65,78);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.i22.angrybirds.cccccc: void a(com.i22.angrybirds.cccccc,java.lang.String)>',104,'a',NULL),(2,6,'<com.i22.angrybirds.bbbbbb: int b(java.lang.String,java.lang.String)>',7,'p',NULL),(3,9,'<com.katecca.screenofflock.StartUp: void onReceive(android.content.Context,android.content.Intent)>',6,'a',NULL),(4,80,'<com.katecca.screenofflock.Setting$3: void onClick(android.view.View)>',7,'a',NULL),(5,10,'<com.i22.angrybirds.aaaaaa: void onReceive(android.content.Context,android.content.Intent)>',17,'s',NULL),(6,5,'<com.i22.angrybirds.cccccc: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(7,81,'<com.i22.angrybirds.d: void run()>',51,'a',NULL),(8,6,'<com.i22.angrybirds.bbbbbb: int b(java.lang.String,java.lang.String)>',35,'p',NULL),(9,1,'<com.katecca.screenofflock.MainHelper: void onCreate(android.os.Bundle)>',13,'a',NULL),(10,10,'<com.i22.angrybirds.aaaaaa: void onReceive(android.content.Context,android.content.Intent)>',20,'s',NULL),(11,2,'<com.katecca.screenofflock.Main: void onCreate(android.os.Bundle)>',24,'a',NULL),(12,82,'<com.i22.angrybirds.a: void onClick(android.content.DialogInterface,int)>',85,'a',NULL),(13,83,'<com.katecca.screenofflock.Setting$1: void onClick(android.view.View)>',8,'a',NULL),(14,82,'<com.i22.angrybirds.a: void onClick(android.content.DialogInterface,int)>',51,'a',NULL),(15,134,'<pjbang.aizhigu.ad.c: void run()>',63,'a',NULL),(16,77,'<pjbang.aizhigu.ad.ADService: void a(pjbang.aizhigu.ad.ADService)>',262,'a',NULL),(17,37,'<pjbang.aizhigu.ActTreasureDetail: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(18,135,'<pjbang.aizhigu.ad.b: void onClick(android.content.DialogInterface,int)>',104,'a',NULL),(19,77,'<pjbang.aizhigu.ad.ADService: int b(java.lang.String,java.lang.String)>',7,'p',NULL),(20,135,'<pjbang.aizhigu.ad.b: void onClick(android.content.DialogInterface,int)>',85,'a',NULL),(21,135,'<pjbang.aizhigu.ad.b: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',10,'a',NULL),(22,77,'<pjbang.aizhigu.ad.ADService: int b(java.lang.String,java.lang.String)>',35,'p',NULL),(23,19,'<pjbang.aizhigu.ActMain: boolean a(android.content.Context,java.lang.String)>',49,'r',NULL),(24,134,'<pjbang.aizhigu.ad.c: void run()>',35,'r',NULL),(25,79,'<pjbang.aizhigu.ad.ADReceiver: void onReceive(android.content.Context,android.content.Intent)>',58,'s',NULL),(26,136,'<pjbang.yigou.ad.c: void run()>',35,'r',NULL),(27,62,'<pjbang.yigou.ad.ADService: void a(pjbang.yigou.ad.ADService)>',262,'a',NULL),(28,28,'<pjbang.yigou.ActTreasureDetail: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(29,16,'<pjbang.yigou.ActMain: void onClick(android.view.View)>',28,'a',NULL),(30,64,'<pjbang.yigou.ad.ADReceiver: void onReceive(android.content.Context,android.content.Intent)>',58,'s',NULL),(31,62,'<pjbang.yigou.ad.ADService: void a(pjbang.yigou.ad.ADService)>',262,'a',NULL),(32,62,'<pjbang.yigou.ad.ADService: int b(java.lang.String,java.lang.String)>',35,'p',NULL),(33,136,'<pjbang.yigou.ad.c: void run()>',35,'r',NULL),(34,16,'<pjbang.yigou.ActMain: boolean a(android.content.Context,java.lang.String)>',49,'r',NULL),(35,137,'<pjbang.myydss.ad.e: void onClick(android.content.DialogInterface,int)>',85,'a',NULL),(36,136,'<pjbang.yigou.ad.c: void run()>',63,'a',NULL),(37,16,'<pjbang.yigou.ActMain: void onClick(android.view.View)>',28,'a',NULL),(38,64,'<pjbang.yigou.ad.ADReceiver: void onReceive(android.content.Context,android.content.Intent)>',58,'s',NULL),(39,58,'<pjbang.yigou.ActMoreOther: void onClick(android.view.View)>',14,'a',NULL),(40,76,'<pjbang.myydss.ad.ADService: void a(pjbang.myydss.ad.ADService)>',262,'a',NULL),(41,136,'<pjbang.yigou.ad.c: void run()>',63,'a',NULL),(42,137,'<pjbang.myydss.ad.e: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',10,'a',NULL),(43,62,'<pjbang.yigou.ad.ADService: int b(java.lang.String,java.lang.String)>',35,'p',NULL),(44,138,'<pjbang.yigou.ad.h: void onClick(android.content.DialogInterface,int)>',104,'a',NULL),(45,62,'<pjbang.yigou.ad.ADService: int b(java.lang.String,java.lang.String)>',7,'p',NULL),(46,138,'<pjbang.yigou.ad.h: void onClick(android.content.DialogInterface,int)>',85,'a',NULL),(47,139,'<pjbang.myydss.ad.j: void run()>',35,'r',NULL),(48,138,'<pjbang.yigou.ad.h: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',10,'a',NULL),(49,138,'<pjbang.yigou.ad.h: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',10,'a',NULL),(50,23,'<pjbang.myydss.ActTreasureDetail: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(51,76,'<pjbang.myydss.ad.ADService: int b(java.lang.String,java.lang.String)>',35,'p',NULL),(52,58,'<pjbang.yigou.ActMoreOther: void onClick(android.view.View)>',7,'a',NULL),(53,137,'<pjbang.myydss.ad.e: void onClick(android.content.DialogInterface,int)>',104,'a',NULL),(54,58,'<pjbang.yigou.ActMoreOther: void onClick(android.view.View)>',7,'a',NULL),(55,62,'<pjbang.yigou.ad.ADService: int b(java.lang.String,java.lang.String)>',7,'p',NULL),(56,28,'<pjbang.yigou.ActTreasureDetail: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(57,58,'<pjbang.yigou.ActMoreOther: void onClick(android.view.View)>',14,'a',NULL),(58,16,'<pjbang.yigou.ActMain: boolean a(android.content.Context,java.lang.String)>',49,'r',NULL),(59,138,'<pjbang.yigou.ad.h: void onClick(android.content.DialogInterface,int)>',85,'a',NULL),(60,13,'<pjbang.myydss.ActMain: boolean a(android.content.Context,java.lang.String)>',49,'r',NULL),(61,138,'<pjbang.yigou.ad.h: void onClick(android.content.DialogInterface,int)>',104,'a',NULL),(62,76,'<pjbang.myydss.ad.ADService: int b(java.lang.String,java.lang.String)>',7,'p',NULL),(63,78,'<pjbang.myydss.ad.ADReceiver: void onReceive(android.content.Context,android.content.Intent)>',58,'s',NULL),(64,13,'<pjbang.myydss.ActMain: void onClick(android.view.View)>',28,'a',NULL),(65,139,'<pjbang.myydss.ad.j: void run()>',63,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,2,6),(3,4,6),(4,6,1),(5,7,1),(6,8,1),(7,9,1),(8,10,1),(9,11,1),(10,15,7),(11,16,6),(12,17,6),(13,18,6),(14,22,6),(15,23,6),(16,24,6),(17,25,6),(18,26,6),(19,27,6),(20,28,6),(21,29,6),(22,30,1),(23,31,1),(24,32,1),(25,33,1),(26,34,17),(27,35,17),(28,36,17),(29,37,17),(30,39,17),(31,40,17),(32,43,6),(33,46,17),(34,47,17),(35,48,6),(36,49,17),(37,50,17),(38,51,6),(39,53,6),(40,54,6),(41,56,6),(42,58,18),(43,60,1),(44,61,6),(45,62,1),(46,63,6),(47,64,1),(48,65,6),(49,66,1),(50,67,6),(51,68,6),(52,69,6),(53,70,6),(54,71,17),(55,72,6),(56,73,17),(57,74,1),(58,75,1),(59,76,1),(60,77,1),(61,79,1),(62,80,1),(63,81,1),(64,82,1),(65,83,18),(66,84,6),(67,85,18),(68,86,6),(69,88,18),(70,89,6),(71,90,17),(72,91,6),(73,92,6),(74,93,17),(75,94,6),(76,95,17),(77,96,6),(78,97,6),(79,98,6),(80,99,17),(81,100,6),(82,101,6),(83,103,6),(84,104,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,6,2),(2,7,3),(3,8,2),(4,9,3),(5,10,2),(6,11,3),(7,30,3),(8,31,2),(9,32,2),(10,33,3),(11,60,3),(12,62,2),(13,64,2),(14,66,3),(15,74,3),(16,75,3),(17,76,2),(18,77,2),(19,79,2),(20,80,2),(21,81,3),(22,82,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/katecca/screenofflock/CreateNotification'),(2,5,'com/i22/angrybirds/bbbbbb'),(3,12,'com/i22/angrybirds/cccccc'),(4,13,'com/katecca/screenofflock/Main'),(5,14,'com/i22/angrybirds/dddddd'),(6,19,'NULL-CONSTANT'),(7,20,'pjbang/aizhigu/ad/ADAct'),(8,21,'pjbang/aizhigu/ActTreasureFullscreenGallery'),(9,38,'pjbang/aizhigu/ad/ADService'),(10,41,'pjbang/yigou/ad/ADAct'),(11,42,'pjbang/yigou/ActTreasureFullscreenGallery'),(12,44,'pjbang/yigou/ad/ADService'),(13,45,'pjbang/yigou/ad/ADAct'),(14,52,'NULL-CONSTANT'),(15,55,'pjbang/yigou/ad/ADService'),(16,57,'pjbang/myydss/ad/ADAct'),(17,59,'NULL-CONSTANT'),(18,78,'pjbang/myydss/ActTreasureFullscreenGallery'),(19,87,'pjbang/yigou/ActTreasureFullscreenGallery'),(20,102,'pjbang/myydss/ad/ADService'),(21,105,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,4,4),(4,16,6),(5,17,7),(6,18,8),(7,22,9),(8,23,10),(9,24,11),(10,25,12),(11,26,14),(12,27,15),(13,28,16),(14,29,17),(15,43,19),(16,48,21),(17,51,22),(18,53,23),(19,54,24),(20,56,25),(21,58,26),(22,61,29),(23,63,30),(24,65,31),(25,68,32),(26,67,33),(27,69,34),(28,70,35),(29,72,36),(30,83,38),(31,85,39),(32,84,40),(33,86,42),(34,88,43),(35,89,44),(36,92,45),(37,91,46),(38,94,47),(39,96,48),(40,98,49),(41,97,50),(42,100,51),(43,101,53),(44,103,54),(45,104,55);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'(.*)'),(2,12,'(.*)'),(3,15,'android.app.extra.DEVICE_ADMIN'),(4,15,'android.app.extra.ADD_EXPLANATION'),(5,20,'(.*)'),(6,21,'galleryImgs'),(7,21,'galleryIdx'),(8,34,'duplicate'),(9,34,'android.intent.extra.shortcut.NAME'),(10,34,'android.intent.extra.shortcut.INTENT'),(11,35,'duplicate'),(12,35,'android.intent.extra.shortcut.NAME'),(13,35,'android.intent.extra.shortcut.ICON_RESOURCE'),(14,35,'android.intent.extra.shortcut.INTENT'),(15,36,'android.intent.extra.shortcut.NAME'),(16,36,'android.intent.extra.shortcut.ICON_RESOURCE'),(17,36,'android.intent.extra.shortcut.INTENT'),(18,37,'android.intent.extra.shortcut.NAME'),(19,37,'android.intent.extra.shortcut.INTENT'),(20,39,'android.intent.extra.shortcut.NAME'),(21,39,'android.intent.extra.shortcut.ICON_RESOURCE'),(22,39,'android.intent.extra.shortcut.INTENT'),(23,40,'android.intent.extra.shortcut.NAME'),(24,40,'android.intent.extra.shortcut.INTENT'),(25,41,'(.*)'),(26,42,'galleryImgs'),(27,42,'galleryIdx'),(28,45,'(.*)'),(29,46,'android.intent.extra.shortcut.NAME'),(30,46,'android.intent.extra.shortcut.ICON_RESOURCE'),(31,46,'android.intent.extra.shortcut.INTENT'),(32,47,'duplicate'),(33,47,'android.intent.extra.shortcut.NAME'),(34,47,'android.intent.extra.shortcut.INTENT'),(35,49,'android.intent.extra.shortcut.NAME'),(36,49,'android.intent.extra.shortcut.INTENT'),(37,50,'duplicate'),(38,50,'android.intent.extra.shortcut.NAME'),(39,50,'android.intent.extra.shortcut.ICON_RESOURCE'),(40,50,'android.intent.extra.shortcut.INTENT'),(41,57,'(.*)'),(42,71,'android.intent.extra.shortcut.NAME'),(43,71,'android.intent.extra.shortcut.ICON_RESOURCE'),(44,71,'android.intent.extra.shortcut.INTENT'),(45,73,'android.intent.extra.shortcut.NAME'),(46,73,'android.intent.extra.shortcut.INTENT'),(47,78,'galleryImgs'),(48,78,'galleryIdx'),(49,87,'galleryImgs'),(50,87,'galleryIdx'),(51,90,'duplicate'),(52,90,'android.intent.extra.shortcut.NAME'),(53,90,'android.intent.extra.shortcut.INTENT'),(54,93,'duplicate'),(55,93,'android.intent.extra.shortcut.NAME'),(56,93,'android.intent.extra.shortcut.ICON_RESOURCE'),(57,93,'android.intent.extra.shortcut.INTENT'),(58,95,'duplicate'),(59,95,'android.intent.extra.shortcut.NAME'),(60,95,'android.intent.extra.shortcut.INTENT'),(61,99,'duplicate'),(62,99,'android.intent.extra.shortcut.NAME'),(63,99,'android.intent.extra.shortcut.ICON_RESOURCE'),(64,99,'android.intent.extra.shortcut.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,3,1),(5,4,1),(6,5,3),(7,6,4),(8,7,5),(9,8,1),(10,9,1),(11,10,1),(12,11,1),(13,12,5),(14,13,5),(15,14,5),(16,15,5),(17,16,1),(18,17,8),(19,18,9),(20,19,11),(21,19,10),(22,20,12),(23,21,13),(24,22,6),(25,23,14),(26,24,5),(27,25,15),(28,25,16),(29,26,1),(30,27,19),(31,28,1),(32,29,1),(33,30,20),(34,31,20),(35,32,6),(36,32,21),(37,33,2),(38,34,6),(39,34,21),(40,35,6),(41,36,20),(42,37,22),(43,38,23),(44,39,6),(45,40,24),(46,41,23),(47,42,25),(48,43,26),(49,44,26),(50,45,27),(51,46,28),(52,47,29),(53,48,4),(54,49,30),(55,50,31),(56,51,32),(57,52,33),(58,53,4),(59,54,34),(60,55,35),(61,56,36),(62,57,37),(63,58,29),(64,59,31),(65,60,38),(66,61,4),(67,62,39),(68,63,40),(69,64,41),(70,65,42),(71,66,14),(72,67,14),(73,68,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,2,1),(4,3,2),(5,3,3),(6,8,2),(7,9,2),(8,10,2),(9,11,2),(10,16,2),(11,18,1),(12,19,1),(13,20,1),(14,21,1),(15,22,1),(16,26,1),(17,27,1),(18,28,1),(19,29,2),(20,29,1),(21,30,1),(22,31,1),(23,32,4),(24,32,1),(25,33,1),(26,34,1),(27,34,4),(28,35,1),(29,36,1),(30,37,1),(31,40,1),(32,41,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,22,'content',NULL,NULL,NULL,NULL,NULL),(2,22,'file',NULL,NULL,NULL,NULL,NULL),(3,22,NULL,NULL,NULL,NULL,'audio','*'),(4,22,NULL,NULL,NULL,NULL,'application','ogg'),(5,22,NULL,NULL,NULL,NULL,'application','x-ogg'),(6,22,NULL,NULL,NULL,NULL,'application','itunes'),(7,25,'package',NULL,NULL,NULL,NULL,NULL),(8,26,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','mms'),(9,28,NULL,NULL,NULL,NULL,'vnd.android-dir','mms-sms'),(10,30,NULL,NULL,NULL,NULL,'image','*'),(11,31,NULL,NULL,NULL,NULL,'text','plain'),(12,32,'sms',NULL,NULL,NULL,NULL,NULL),(13,32,'smsto',NULL,NULL,NULL,NULL,NULL),(14,34,'mms',NULL,NULL,NULL,NULL,NULL),(15,34,'mmsto',NULL,NULL,NULL,NULL,NULL),(16,35,NULL,NULL,NULL,NULL,'vnd.android-dir','mms-sms'),(17,36,NULL,NULL,NULL,NULL,'video','*'),(18,37,NULL,NULL,NULL,NULL,'*','*'),(19,46,'gosmsdef','com.jb.mms','80',NULL,NULL,NULL),(20,47,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(21,51,'content',NULL,NULL,NULL,NULL,NULL),(22,58,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,16,'application','vnd.android.package-archive'),(2,18,'application','vnd.android.package-archive'),(3,22,'application','vnd.android.package-archive'),(4,23,'application','vnd.android.package-archive'),(5,24,'application','vnd.android.package-archive'),(6,25,'application','vnd.android.package-archive'),(7,61,'application','vnd.android.package-archive'),(8,63,'application','vnd.android.package-archive'),(9,67,'application','vnd.android.package-archive'),(10,70,'application','vnd.android.package-archive'),(11,84,'application','vnd.android.package-archive'),(12,86,'application','vnd.android.package-archive'),(13,89,'application','vnd.android.package-archive'),(14,91,'application','vnd.android.package-archive'),(15,97,'application','vnd.android.package-archive'),(16,100,'application','vnd.android.package-archive'),(17,101,'application','vnd.android.package-archive'),(18,103,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,3,'com.katecca.screenofflock'),(2,5,'com.katecca.screenofflock'),(3,6,'(.*)'),(4,7,''),(5,8,''),(6,9,'(.*)'),(7,10,'NULL-CONSTANT'),(8,11,'NULL-CONSTANT'),(9,12,'com.katecca.screenofflock'),(10,13,'com.katecca.screenofflock'),(11,14,'com.katecca.screenofflock'),(12,19,'NULL-CONSTANT'),(13,20,'pjbang.aizhigu'),(14,21,'pjbang.aizhigu'),(15,30,''),(16,31,''),(17,32,'NULL-CONSTANT'),(18,33,'NULL-CONSTANT'),(19,38,'pjbang.aizhigu'),(20,41,'pjbang.yigou'),(21,42,'pjbang.yigou'),(22,44,'pjbang.yigou'),(23,45,'pjbang.yigou'),(24,52,'NULL-CONSTANT'),(25,55,'pjbang.yigou'),(26,57,'pjbang.myydss'),(27,59,'NULL-CONSTANT'),(28,60,''),(29,62,''),(30,64,'NULL-CONSTANT'),(31,66,'NULL-CONSTANT'),(32,74,''),(33,75,''),(34,76,''),(35,77,''),(36,78,'pjbang.myydss'),(37,79,'NULL-CONSTANT'),(38,80,'NULL-CONSTANT'),(39,81,'NULL-CONSTANT'),(40,82,'NULL-CONSTANT'),(41,87,'pjbang.yigou'),(42,102,'pjbang.myydss'),(43,105,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,8,0),(6,9,0),(7,10,0),(8,11,0),(9,12,0),(10,14,0),(11,12,0),(12,64,0),(13,64,0),(14,78,0),(15,79,0),(16,80,0),(17,80,0),(18,81,0),(19,102,0),(20,103,0),(21,104,0),(22,109,0),(23,127,0),(24,128,0),(25,128,0),(26,130,0),(27,130,0),(28,130,0),(29,130,0),(30,131,0),(31,131,0),(32,131,0),(33,131,0),(34,131,0),(35,131,0),(36,131,0),(37,131,0),(38,159,0),(39,160,0),(40,161,0),(41,162,0),(42,183,0),(43,190,0),(44,191,0),(45,192,0),(46,205,0),(47,209,0),(48,210,0),(49,210,0),(50,211,0),(51,212,0),(52,212,0),(53,212,0),(54,212,0),(55,213,0),(56,214,0),(57,215,0),(58,217,0),(59,217,0),(60,217,0),(61,218,0),(62,219,0),(63,219,0),(64,219,0),(65,219,0),(66,220,0),(67,221,0),(68,223,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,1,0),(7,6,1,0),(8,6,1,0),(9,6,1,0),(10,6,1,0),(11,6,1,0),(12,7,0,0),(13,9,0,0),(14,10,0,0),(15,11,1,0),(16,12,1,0),(17,13,1,0),(18,14,1,0),(19,15,0,0),(20,16,0,0),(21,17,0,0),(22,18,1,0),(23,18,1,0),(24,18,1,0),(25,18,1,0),(26,20,1,0),(27,20,1,0),(28,20,1,0),(29,20,1,0),(30,21,1,0),(31,21,1,0),(32,21,1,0),(33,21,1,0),(34,23,1,0),(35,23,1,0),(36,24,1,0),(37,24,1,0),(38,25,0,0),(39,26,1,0),(40,26,1,0),(41,27,0,0),(42,28,0,0),(43,29,1,0),(44,30,0,0),(45,31,0,0),(46,33,1,0),(47,34,1,0),(48,35,1,0),(49,33,1,0),(50,34,1,0),(51,35,1,0),(52,36,0,0),(53,35,1,0),(54,37,1,0),(55,38,0,0),(56,35,1,0),(57,40,0,0),(58,39,1,0),(59,41,0,0),(60,42,1,0),(61,44,1,0),(62,42,1,0),(63,44,1,0),(64,42,1,0),(65,46,1,0),(66,42,1,0),(67,44,1,0),(68,46,1,0),(69,46,1,0),(70,44,1,0),(71,47,1,0),(72,46,1,0),(73,47,1,0),(74,48,1,0),(75,49,1,0),(76,48,1,0),(77,49,1,0),(78,50,0,0),(79,48,1,0),(80,49,1,0),(81,48,1,0),(82,49,1,0),(83,52,1,0),(84,53,1,0),(85,54,1,0),(86,53,1,0),(87,56,0,0),(88,57,1,0),(89,53,1,0),(90,58,1,0),(91,53,1,0),(92,59,1,0),(93,58,1,0),(94,59,1,0),(95,60,1,0),(96,59,1,0),(97,61,1,0),(98,59,1,0),(99,60,1,0),(100,61,1,0),(101,61,1,0),(102,63,0,0),(103,61,1,0),(104,64,1,0),(105,65,0,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'kugoumedia');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_COARSE_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.BIND_DEVICE_ADMIN'),(34,'android.permission.BROADCAST_SMS'),(33,'android.permission.BROADCAST_WAP_PUSH'),(24,'android.permission.CALL_PHONE'),(32,'android.permission.CHANGE_NETWORK_STATE'),(31,'android.permission.DISABLE_KEYGUARD'),(25,'android.permission.GET_ACCOUNTS'),(20,'android.permission.GET_TASKS'),(19,'android.permission.INSTALL_DRM'),(11,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(23,'android.permission.READ_CONTACTS'),(5,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(28,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(30,'android.permission.RECEIVE_MMS'),(22,'android.permission.RECEIVE_SMS'),(27,'android.permission.RESTART_PACKAGES'),(29,'android.permission.SEND_SMS'),(15,'android.permission.SYSTEM_ALERT_WINDOW'),(17,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(26,'android.permission.WRITE_CONTACTS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'android.permission.WRITE_SETTINGS'),(21,'android.permission.WRITE_SMS'),(6,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(4,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(9,'com.android.launcher.permission.INSTALL_SHORTCUT'),(14,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(13,'com.kugou.android.permission.ACCESS_KUGOU_SERVICE');
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
INSERT INTO `Permissions` VALUES (13,'s');
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
INSERT INTO `Providers` VALUES (1,129,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'http://www.facebook.com/pages/Screen-Off-and-Lock/193680877315034',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=com.katecca.screenofflockdonate',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)NULL-CONSTANT(.*).apk',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://',NULL,NULL,NULL),(13,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'',NULL,NULL,NULL),(16,NULL,NULL,'(.*)NULL-CONSTANT(.*).apk',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'',NULL,NULL,NULL),(23,NULL,NULL,'(.*)NULL-CONSTANT(.*).apk',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'tel:85679908',NULL,NULL,NULL),(27,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(28,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(29,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)NULL-CONSTANT(.*).apk',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)NULL-CONSTANT(.*).apk',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(38,NULL,NULL,'tel:4006638100',NULL,NULL,NULL),(39,NULL,NULL,'tel:4006638100',NULL,NULL,NULL),(40,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)NULL-CONSTANT(.*).apk',NULL,NULL,NULL),(43,NULL,NULL,'tel:85679908',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'file://',NULL,NULL,NULL),(47,NULL,NULL,'',NULL,NULL,NULL),(48,NULL,NULL,'(.*)NULL-CONSTANT(.*).apk',NULL,NULL,NULL),(49,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)NULL-CONSTANT(.*).apk',NULL,NULL,NULL),(52,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(54,NULL,NULL,'file://',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,3),(2,8,5),(3,19,13),(4,22,18),(5,32,20),(6,43,27),(7,45,28),(8,51,37),(9,55,41),(10,62,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,2,2),(9,2,3),(10,2,4),(11,3,1),(12,2,6),(13,3,2),(14,2,9),(15,3,3),(16,4,1),(17,2,10),(18,3,4),(19,4,2),(20,3,6),(21,4,3),(22,4,4),(23,3,9),(24,3,10),(25,4,6),(26,4,9),(27,4,10),(28,5,1),(29,5,2),(30,5,3),(31,5,4),(32,5,5),(33,5,6),(34,5,9),(35,5,10),(36,5,11),(37,5,12),(38,5,13),(39,5,14),(40,5,15),(41,5,17),(42,5,16),(43,5,18),(44,6,1),(45,6,2),(46,6,3),(47,6,4),(48,6,5),(49,6,6),(50,6,8),(51,6,10),(52,6,11),(53,6,17),(54,6,19),(55,6,18),(56,6,21),(57,6,20),(58,6,23),(59,6,22),(60,6,25),(61,6,24),(62,6,27),(63,6,26),(64,6,29),(65,6,28),(66,6,31),(67,6,30),(68,6,32);
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

-- Dump completed on 2015-10-09  0:39:17
