-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_407
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
INSERT INTO `ActionStrings` VALUES (14,'.ImageTestActivity'),(21,'.Myhall'),(5,'.PintuActivity'),(9,'.VooDPfS14'),(17,'.Web'),(15,'LqQ.UCWUebD.VooDPfS12'),(8,'LqQ.UCWUebD.VooDPfS14'),(2,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.PACKAGE_ADDED'),(4,'android.intent.action.PACKAGE_REMOVED'),(23,'android.intent.action.SCREEN_OFF'),(12,'android.intent.action.USER_PRESENT'),(7,'android.intent.action.VIEW'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(11,'com.android_isomlmnkbw.PbsXlpXu1'),(6,'com.android_isomlmnkbw.PintuActivity'),(16,'com.droidmljr1.GameBootReceiver'),(13,'com.droidmljr1.ImageTestActivity'),(20,'com.droidmljr1.Myhall'),(18,'com.droidmljr1.Web'),(24,'eh.dr.nufusp3fnbbr.qonaDEWsJ12'),(22,'vkd.hhuuabungug.twiauhlls.AsVOPnvfA12');
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
INSERT INTO `Applications` VALUES (1,'LqQ.UCWUebD',1100),(2,'com.android_isomlmnkbw',20009),(3,'com.droidmljr1',1008),(4,'de.aveqafwmvqd.kuelpcbmsnpavf',10023),(5,'vkd.hhuuabungug.twiauhlls',10001),(6,'eh.dr.nufusp3fnbbr',10006),(7,'mp.tvbrj.aolqgsvuhb',10037);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(5,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(3,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'LqQ.UCWUebD.image.VooDPfS19'),(2,1,'LqQ.UCWUebD.image.VooDPfS18'),(3,2,'com.android_isomlmnkbw.PintuActivity'),(4,1,'LqQ.UCWUebD.VooDPfS8'),(5,1,'LqQ.UCWUebD.VooDPfS9'),(6,2,'com.android_isomlmnkbw.PbsXlpXu8'),(7,1,'LqQ.UCWUebD.VooDPfS2'),(8,2,'com.android_isomlmnkbw.PbsXlpXu5'),(9,1,'LqQ.UCWUebD.VooDPfS10'),(10,2,'com.android_isomlmnkbw.PbsXlpXu13'),(11,1,'LqQ.UCWUebD.VooDPfS11'),(12,2,'com.android_isomlmnkbw.PbsXlpXu12'),(13,2,'com.android_isomlmnkbw.PbsXlpXu2'),(14,1,'LqQ.UCWUebD.VooDPfS12'),(15,2,'com.android_isomlmnkbw.PbsXlpXu1'),(16,3,'com.droidmljr1.Myhall'),(17,3,'com.droidmljr1.Web'),(18,3,'com.droidmljr1.HomeActivity'),(19,3,'com.droidmljr1.SortActivity1'),(20,3,'com.droidmljr1.SortActivity2'),(21,3,'com.droidmljr1.SearchActivity'),(22,3,'com.droidmljr1.ManagerActivity'),(23,3,'com.droidmljr1.GameInfo'),(24,3,'com.droidmljr1.TableClass'),(25,3,'com.droidmljr1.GameAlertDialog'),(26,3,'com.droidmljr1.DevelopmentSettings'),(27,3,'com.droidmljr1.dimg.ImageTestActivity'),(28,3,'com.droidmljr1.GameService'),(29,3,'com.droidmljr1.GameBootReceiver'),(30,4,'de.aveqafwmvqd.kuelpcbmsnpavf.MobileInvadersFree'),(31,4,'de.joergjahnke.invaders.PreferencesDialog'),(32,4,'de.joergjahnke.common.android.HTMLViewer'),(33,4,'de.joergjahnke.common.game.android.ButtonAssignmentDialog'),(34,4,'com.scoreloop.client.android.ui.EntryScreenActivity'),(35,4,'com.scoreloop.client.android.ui.ShowResultOverlayActivity'),(36,4,'com.scoreloop.client.android.ui.component.market.MarketHeaderActivity'),(37,4,'com.scoreloop.client.android.ui.component.market.MarketListActivity'),(38,4,'com.scoreloop.client.android.ui.component.entry.EntryListActivity'),(39,4,'com.scoreloop.client.android.ui.component.post.PostOverlayActivity'),(40,4,'com.scoreloop.client.android.ui.component.score.ScoreHeaderActivity'),(41,4,'com.scoreloop.client.android.ui.component.score.ScoreListActivity'),(42,4,'com.scoreloop.client.android.ui.component.user.UserAddBuddyListActivity'),(43,4,'com.scoreloop.client.android.ui.component.user.UserHeaderActivity'),(44,4,'com.scoreloop.client.android.ui.component.user.UserDetailListActivity'),(45,4,'com.scoreloop.client.android.ui.component.user.UserListActivity'),(46,4,'com.scoreloop.client.android.ui.component.game.GameDetailHeaderActivity'),(47,4,'com.scoreloop.client.android.ui.component.game.GameDetailListActivity'),(48,4,'com.scoreloop.client.android.ui.component.game.GameListActivity'),(49,4,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsListActivity'),(50,4,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsPictureListActivity'),(51,4,'com.scoreloop.client.android.ui.LeaderboardsScreenActivity'),(52,4,'com.scoreloop.client.android.ui.framework.ScreenActivity'),(53,4,'com.scoreloop.client.android.ui.framework.TabsActivity'),(54,4,'com.scoreloop.client.android.ui.component.challenge.ChallengeHeaderActivity'),(55,4,'com.scoreloop.client.android.ui.component.challenge.ChallengeListActivity'),(56,4,'com.scoreloop.client.android.ui.component.challenge.ChallengeAcceptListActivity'),(57,4,'com.scoreloop.client.android.ui.component.challenge.ChallengeCreateListActivity'),(58,4,'com.scoreloop.client.android.ui.component.challenge.ChallengePaymentActivity'),(59,4,'com.scoreloop.client.android.ui.ChallengesScreenActivity'),(60,4,'com.scoreloop.client.android.ui.PostScoreOverlayActivity'),(61,4,'com.mobclix.android.sdk.MobclixBrowserActivity'),(62,4,'com.UghvsR.pVplbvLoM'),(63,4,'com.UghvsR.vUpmInLcTApNQ'),(64,2,'ak'),(65,5,'vkd.hhuuabungug.twiauhlls.activity.GameActivity'),(66,5,'iwl.hIeTDdit.MyActivity'),(67,5,'iwl.hIeTDdit.ApopMain'),(68,5,'iwl.hIeTDdit.AsVOPnvfA16'),(69,1,'aw'),(70,5,'iwl.hIeTDdit.AsVOPnvfA8'),(71,5,'iwl.hIeTDdit.AsVOPnvfA9'),(72,5,'iwl.hIeTDdit.AsVOPnvfA2'),(73,5,'iwl.hIeTDdit.AsVOPnvfA10'),(74,5,'iwl.hIeTDdit.UpdateActivity'),(75,5,'iwl.hIeTDdit.AsVOPnvfA11'),(76,3,'ch'),(77,5,'iwl.hIeTDdit.AsVOPnvfA12'),(78,5,'vkd.hhuuabungug.twiauhlls.CandyFarmContentProvider'),(79,3,'cw'),(80,2,'ar'),(81,3,'bj'),(82,6,'eh.dr.nufusp3fnbbr.GameSelection.ActivityMain'),(83,6,'eh.dr.nufusp3fnbbr.GameSelection.ActivitySubGame'),(84,6,'eh.dr.nufusp3fnbbr.Carrom3DActivity'),(85,6,'eh.dr.nufusp3fnbbr.ScoresActivity'),(86,6,'eh.dr.nufusp3fnbbr.GameSelection.OpponentsActivity'),(87,1,'av'),(88,6,'eh.dr.nufusp3fnbbr.GameSelection.JoinNetwork'),(89,6,'eh.dr.nufusp3fnbbr.GameSelection.PlayersActivity'),(90,6,'eh.dr.nufusp3fnbbr.GameSelection.TableShape'),(91,3,'i'),(92,6,'eh.dr.nufusp3fnbbr.Help.HelpActivity'),(93,6,'eh.dr.nufusp3fnbbr.Help.ShortcutsActivity'),(94,6,'eh.dr.nufusp3fnbbr.Help.SettingsHelp'),(95,6,'eh.dr.nufusp3fnbbr.Help.CarromHowTo'),(96,2,'am'),(97,6,'eh.dr.nufusp3fnbbr.Help.About'),(98,6,'eh.dr.nufusp3fnbbr.Help.Eula'),(99,3,'de'),(100,6,'eh.dr.nufusp3fnbbr.Help.ChatTerms'),(101,6,'eh.dr.nufusp3fnbbr.Settings.SettingsActivity'),(102,6,'eh.dr.nufusp3fnbbr.Settings.PhysicsSettings'),(103,6,'eh.dr.nufusp3fnbbr.Settings.DisplaySettings'),(104,6,'eh.dr.nufusp3fnbbr.Settings.GeneralSettings'),(105,6,'eh.dr.nufusp3fnbbr.Settings.GameServerSettings'),(106,6,'eh.dr.nufusp3fnbbr.ChatActivity'),(107,6,'com.GdFFE.qonaDEWsJ21'),(108,6,'com.GdFFE.ApopMain'),(109,6,'com.GdFFE.qonaDEWsJ16'),(110,6,'com.GdFFE.qonaDEWsJ8'),(111,6,'com.GdFFE.qonaDEWsJ9'),(112,6,'com.GdFFE.qonaDEWsJ2'),(113,6,'com.GdFFE.qonaDEWsJ10'),(114,6,'com.GdFFE.qonaDEWsJ22'),(115,1,'w'),(116,6,'com.nd.dianjin.activity.OfferAppActivity'),(117,6,'com.GdFFE.qonaDEWsJ11'),(118,6,'com.GdFFE.qonaDEWsJ12'),(119,6,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(120,3,'dj'),(121,3,'dl'),(122,3,'ce'),(123,3,'t'),(124,3,'aq'),(125,7,'mp.andro.ATemplate.ATemplate'),(126,7,'com.LskdJ.dNeOirPRqh'),(127,7,'com.LskdJ.fjaRDRLafoqdgU'),(128,7,'com.nd.dianjin.activity.OfferAppActivity'),(129,5,'iwl.hIeTDdit.aa'),(130,5,'iwl.hIeTDdit.f'),(131,5,'iwl.hIeTDdit.ClickableToast'),(132,5,'com.yingyonghui.market.update.NetUtil'),(133,5,'iwl.hIeTDdit.e'),(134,7,'com.nd.dianjin.DianJinPlatform'),(135,5,'iwl.hIeTDdit.ay'),(136,5,'iwl.hIeTDdit.ab'),(137,5,'iwl.hIeTDdit.ae'),(138,5,'iwl.hIeTDdit.bb'),(139,6,'eh.dr.nufusp3fnbbr.GameSelection.LiteVersion$1'),(140,6,'eh.dr.nufusp3fnbbr.GameSelection.ActivityMain$3'),(141,6,'com.GdFFE.bf'),(142,6,'eh.dr.nufusp3fnbbr.GameSelection.ActivityMain$6'),(143,6,'eh.dr.nufusp3fnbbr.GameSelection.ActivityMain$9'),(144,6,'com.GdFFE.ba'),(145,6,'com.GdFFE.y'),(146,6,'com.GdFFE.bq'),(147,6,'eh.dr.nufusp3fnbbr.GameSelection.OpponentsActivity$1'),(148,6,'com.GdFFE.br'),(149,6,'com.GdFFE.bb'),(150,6,'com.GdFFE.bu'),(151,6,'com.GdFFE.ab');
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'title'),(2,4,'from_table'),(3,13,'service_channel'),(4,6,'from_alert'),(5,7,'isDirectFromTable'),(6,4,'status'),(7,4,'game'),(8,6,'from_table'),(9,10,'from'),(10,9,'version_code'),(11,7,'from'),(12,9,'content'),(13,6,'title'),(14,23,'from_table'),(15,4,'filepath'),(16,28,'service_channel'),(17,6,'status'),(18,6,'fromtype'),(19,12,'btn_txt'),(20,12,'apk_url'),(21,12,'title'),(22,20,'nextclassid'),(23,3,'service_channel'),(24,12,'url'),(25,22,'total'),(26,6,'filepath'),(27,22,'filepath'),(28,1,'stylebox'),(29,17,'service_channel'),(30,22,'icon'),(31,9,'title'),(32,4,'from_alert'),(33,25,'title'),(34,9,'apk_url'),(35,9,'package_name'),(36,22,'soft_id'),(37,22,'url'),(38,23,'filepath'),(39,23,'status'),(40,22,'package_name'),(41,22,'completed'),(42,20,'package_name'),(43,12,'package_name'),(44,21,'version_code'),(45,6,'game'),(46,12,'version_code'),(47,21,'package_name'),(48,22,'status'),(49,12,'content'),(50,12,'fromtable'),(51,10,'isDirectFromTable'),(52,9,'url'),(53,9,'btn_txt'),(54,4,'fromtype'),(55,20,'status'),(56,9,'fromtable'),(57,11,'stylebox'),(58,25,'url'),(59,25,'content'),(60,22,'app_name'),(61,16,'service_channel'),(62,23,'from_alert'),(63,27,'service_channel'),(64,23,'title'),(65,25,'btn_txt'),(66,16,'nextclassid'),(67,21,'status'),(68,72,'apkurl'),(69,68,'game'),(70,71,'fromtable'),(71,70,'isDirectFromTable'),(72,71,'apk_url'),(73,70,'package_name'),(74,64,'UMENG_APPKEY'),(75,73,'service_channel'),(76,70,'YINGYONGHUI_ID'),(77,65,'YINGYONGHUI_ID'),(78,72,'YINGYONGHUI_ID'),(79,69,'YINGYONGHUI_ID'),(80,73,'YINGYONGHUI_ID'),(81,71,'YINGYONGHUI_ID'),(82,68,'YINGYONGHUI_ID'),(83,64,'YINGYONGHUI_ID'),(84,71,'package_name'),(85,71,'version_code'),(86,68,'status'),(87,68,'from_alert'),(88,72,'packagename'),(89,70,'from'),(90,68,'fromtype'),(91,65,'version_code'),(92,67,'popurl'),(93,68,'from_table'),(94,64,'UMENG_CHANNEL'),(95,68,'title'),(96,72,'content'),(97,71,'url'),(98,72,'title'),(99,67,'poptitle'),(100,65,'service_channel'),(101,67,'service_channel'),(102,68,'filepath'),(103,71,'title'),(104,71,'content'),(105,65,'soft_id'),(106,71,'btn_txt'),(107,100,'fromtype'),(108,100,'title'),(109,104,'title'),(110,90,'cn.kb.Carrom3DFull.ChatButtons'),(111,100,'filepath'),(112,104,'packagename'),(113,102,'isDirectFromTable'),(114,106,'NEW_APP_ID'),(115,97,'soft_id'),(116,76,'soft_id'),(117,99,'poptitle'),(118,104,'content'),(119,83,'cn.kb.Carrom3DFull.NoOpponent'),(120,89,'cn.kb.Carrom3DFull.EulaButton'),(121,100,'from_table'),(122,97,'version_code'),(123,76,'version_code'),(124,103,'fromtable'),(125,103,'version_code'),(126,81,'cn.kb.Carrom3DFull.hideSpher'),(127,104,'apkurl'),(128,100,'from_alert'),(129,85,'cn.kb.Carrom3DFull.ShortcutsOpaque'),(130,103,'content'),(131,83,'cn.kb.Carrom3DFull.SoloOnly'),(132,97,'NEW_APP_ID'),(133,76,'NEW_APP_ID'),(134,99,'NEW_APP_ID'),(135,103,'apk_url'),(136,80,'cn.kb.Carrom3DFull.SoloOnly'),(137,99,'popurl'),(138,103,'url'),(139,103,'title'),(140,100,'status'),(141,100,'game'),(142,102,'from'),(143,103,'btn_txt'),(144,103,'package_name'),(145,102,'package_name');
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'s',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'s',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',1,NULL,NULL),(64,65,'a',1,NULL,NULL),(65,66,'a',1,NULL,NULL),(66,67,'a',0,NULL,NULL),(67,68,'a',0,NULL,NULL),(68,70,'a',1,NULL,NULL),(69,71,'a',1,NULL,NULL),(70,72,'a',1,NULL,NULL),(71,73,'a',0,NULL,NULL),(72,74,'a',0,NULL,NULL),(73,75,'s',1,NULL,NULL),(74,77,'r',1,NULL,NULL),(75,78,'p',0,NULL,NULL),(76,82,'a',1,NULL,NULL),(77,83,'a',0,NULL,NULL),(78,84,'a',0,NULL,NULL),(79,85,'a',0,NULL,NULL),(80,86,'a',0,NULL,NULL),(81,88,'a',0,NULL,NULL),(82,89,'a',0,NULL,NULL),(83,90,'a',0,NULL,NULL),(84,92,'a',0,NULL,NULL),(85,93,'a',0,NULL,NULL),(86,94,'a',0,NULL,NULL),(87,95,'a',0,NULL,NULL),(88,97,'a',0,NULL,NULL),(89,98,'a',0,NULL,NULL),(90,100,'a',0,NULL,NULL),(91,101,'a',0,NULL,NULL),(92,102,'a',0,NULL,NULL),(93,103,'a',0,NULL,NULL),(94,104,'a',0,NULL,NULL),(95,105,'a',0,NULL,NULL),(96,106,'a',0,NULL,NULL),(97,107,'a',1,NULL,NULL),(98,108,'a',0,NULL,NULL),(99,109,'a',0,NULL,NULL),(100,110,'a',1,NULL,NULL),(101,111,'a',1,NULL,NULL),(102,112,'a',1,NULL,NULL),(103,113,'a',0,NULL,NULL),(104,114,'a',0,NULL,NULL),(105,116,'a',0,NULL,NULL),(106,117,'s',1,NULL,NULL),(107,118,'r',1,NULL,NULL),(108,119,'r',1,NULL,NULL),(109,125,'a',1,NULL,NULL),(110,126,'a',0,NULL,NULL),(111,127,'a',1,NULL,NULL),(112,128,'a',0,NULL,NULL),(113,136,'r',1,NULL,NULL),(114,137,'r',1,NULL,NULL),(115,145,'r',1,NULL,NULL),(116,151,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,9),(3,3,4),(4,4,12),(5,5,9),(6,6,1),(7,7,6),(8,8,5),(9,9,6),(10,10,4),(11,11,15),(12,12,6),(13,13,14),(14,14,21),(15,15,4),(16,16,16),(17,17,4),(18,18,3),(19,19,24),(20,21,8),(21,20,16),(22,22,5),(23,23,6),(24,24,27),(25,25,12),(26,26,12),(27,26,10),(28,26,8),(29,27,9),(30,27,7),(31,27,5),(32,28,25),(33,29,15),(34,30,4),(35,31,21),(36,32,6),(37,33,14),(38,34,23),(39,35,4),(40,36,8),(41,37,9),(42,38,4),(43,39,12),(44,40,17),(45,41,4),(46,42,6),(47,43,18),(48,44,4),(49,45,29),(50,46,18),(51,47,6),(52,48,9),(53,49,24),(54,50,29),(55,51,1),(56,52,8),(57,52,10),(58,52,12),(59,53,4),(60,54,23),(61,55,6),(62,56,4),(63,57,6),(64,59,6),(65,58,23),(66,61,25),(67,60,6),(68,62,15),(69,63,14),(70,64,23),(71,65,12),(72,66,1),(73,67,20),(74,68,6),(75,69,7),(76,69,5),(77,69,9),(78,70,18),(79,71,4),(80,72,20),(81,73,23),(82,74,20),(83,75,20),(84,76,17),(85,77,25),(86,78,16),(87,79,16),(88,80,20),(89,81,23),(90,82,22),(91,83,27),(92,84,18),(93,85,27),(94,86,24),(95,87,22),(96,88,20),(97,89,29),(98,90,16),(99,91,16),(100,92,25),(101,93,18),(102,94,16),(103,95,24),(104,96,18),(105,97,17),(106,98,22),(107,99,69),(108,100,71),(109,101,69),(110,101,71),(111,101,70),(112,102,65),(113,103,71),(114,104,74),(115,105,68),(116,106,69),(117,107,68),(118,108,72),(119,109,68),(120,110,75),(121,111,65),(122,112,71),(123,112,70),(124,112,69),(125,113,68),(126,114,64),(127,114,73),(128,114,72),(129,114,71),(130,114,70),(131,114,69),(132,114,68),(133,114,65),(134,115,68),(135,116,110),(136,117,65),(137,118,68),(138,119,110),(139,120,111),(140,121,111),(141,122,64),(142,123,68),(143,124,65),(144,124,64),(145,125,72),(146,126,68),(147,127,71),(148,128,64),(149,129,75),(150,130,74),(151,131,75),(152,132,65),(153,133,67),(154,134,74),(155,135,71),(156,136,103),(157,136,76),(158,136,77),(159,136,80),(160,136,83),(161,136,102),(162,136,101),(163,137,77),(164,137,83),(165,137,80),(166,138,91),(167,139,76),(168,140,76),(169,140,97),(170,141,103),(171,141,76),(172,142,83),(173,142,80),(174,142,77),(175,143,77),(176,143,83),(177,143,101),(178,143,80),(179,144,91),(180,145,76),(181,146,83),(182,146,77),(183,146,80),(184,147,107),(185,148,78),(186,149,107),(187,150,84),(188,151,76),(189,152,97),(190,152,76),(191,153,100),(192,154,76),(193,155,76),(194,155,103),(195,156,77),(196,156,101),(197,156,80),(198,156,83),(199,157,78),(200,158,76),(201,158,100),(202,159,103),(203,159,76),(204,160,77),(205,160,80),(206,160,83),(207,161,91),(208,162,107),(209,163,83),(210,163,77),(211,163,80),(212,164,76),(213,165,104),(214,165,76),(215,166,104),(216,167,100),(217,168,76),(218,168,100),(219,169,78),(220,170,97),(221,170,76),(222,171,83),(223,171,80),(224,171,77),(225,172,97),(226,173,76),(227,174,81),(228,175,100),(229,175,76),(230,176,78),(231,177,97),(232,178,76),(233,178,103),(234,179,76),(235,179,100),(236,180,76),(237,180,100),(238,181,80),(239,181,83),(240,181,77),(241,181,76),(242,181,101),(243,181,102),(244,181,103),(245,182,76),(246,182,100),(247,183,91),(248,184,76),(249,184,81),(250,185,99);
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.android_isomlmnkbw.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(2,9,'<LqQ.UCWUebD.VooDPfS10: void onClick(android.view.View)>',53,'a',NULL),(3,4,'<LqQ.UCWUebD.VooDPfS8: void onCreate(android.os.Bundle)>',90,'s',NULL),(4,12,'<com.android_isomlmnkbw.PbsXlpXu12: void onClick(android.view.View)>',84,'a',NULL),(5,9,'<LqQ.UCWUebD.VooDPfS10: void onClick(android.view.View)>',66,'a',NULL),(6,1,'<LqQ.UCWUebD.image.VooDPfS19: void onCreate(android.os.Bundle)>',124,'s',NULL),(7,64,'<ak: void onClick(android.view.View)>',239,'a',NULL),(8,5,'<LqQ.UCWUebD.VooDPfS9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(9,6,'<com.android_isomlmnkbw.PbsXlpXu8: void onCreate(android.os.Bundle)>',76,'a',NULL),(10,69,'<aw: void onClick(android.view.View)>',218,'a',NULL),(11,15,'<com.android_isomlmnkbw.PbsXlpXu1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(12,64,'<ak: void onClick(android.view.View)>',218,'a',NULL),(13,14,'<LqQ.UCWUebD.VooDPfS12: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(14,21,'<com.droidmljr1.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(15,4,'<LqQ.UCWUebD.VooDPfS8: void onCreate(android.os.Bundle)>',177,'a',NULL),(16,76,'<ch: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(17,69,'<aw: void onClick(android.view.View)>',239,'a',NULL),(18,3,'<com.android_isomlmnkbw.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(19,79,'<cw: void a(int,boolean)>',29,'a',NULL),(20,76,'<ch: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(21,8,'<com.android_isomlmnkbw.PbsXlpXu5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(22,5,'<LqQ.UCWUebD.VooDPfS9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(23,6,'<com.android_isomlmnkbw.PbsXlpXu8: void onCreate(android.os.Bundle)>',177,'a',NULL),(24,27,'<com.droidmljr1.dimg.ImageTestActivity: void onCreate(android.os.Bundle)>',49,'s',NULL),(25,12,'<com.android_isomlmnkbw.PbsXlpXu12: void onClick(android.view.View)>',75,'a',NULL),(26,10,'<com.android_isomlmnkbw.PbsXlpXu13: void a(int,boolean)>',63,'a',NULL),(27,7,'<LqQ.UCWUebD.VooDPfS2: void a(int,boolean)>',10,'s',NULL),(28,25,'<com.droidmljr1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(29,15,'<com.android_isomlmnkbw.PbsXlpXu1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(30,4,'<LqQ.UCWUebD.VooDPfS8: void onCreate(android.os.Bundle)>',172,'a',NULL),(31,21,'<com.droidmljr1.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(32,80,'<ar: void onClick(android.view.View)>',221,'a',NULL),(33,14,'<LqQ.UCWUebD.VooDPfS12: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(34,81,'<bj: void onClick(android.view.View)>',224,'a',NULL),(35,4,'<LqQ.UCWUebD.VooDPfS8: void onCreate(android.os.Bundle)>',81,'a',NULL),(36,8,'<com.android_isomlmnkbw.PbsXlpXu5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(37,9,'<LqQ.UCWUebD.VooDPfS10: void onClick(android.view.View)>',75,'a',NULL),(38,87,'<av: void onClick(android.view.View)>',221,'a',NULL),(39,12,'<com.android_isomlmnkbw.PbsXlpXu12: void onClick(android.view.View)>',66,'a',NULL),(40,91,'<i: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(41,4,'<LqQ.UCWUebD.VooDPfS8: void onCreate(android.os.Bundle)>',33,'s',NULL),(42,96,'<am: void onClick(android.view.View)>',239,'a',NULL),(43,99,'<de: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(44,87,'<av: void onClick(android.view.View)>',242,'a',NULL),(45,29,'<com.droidmljr1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(46,18,'<com.droidmljr1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(47,96,'<am: void onClick(android.view.View)>',218,'a',NULL),(48,9,'<LqQ.UCWUebD.VooDPfS10: void onClick(android.view.View)>',84,'a',NULL),(49,79,'<cw: void a(int,boolean)>',10,'s',NULL),(50,29,'<com.droidmljr1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(51,1,'<LqQ.UCWUebD.image.VooDPfS19: void onCreate(android.os.Bundle)>',128,'s',NULL),(52,10,'<com.android_isomlmnkbw.PbsXlpXu13: void a(int,boolean)>',10,'s',NULL),(53,4,'<LqQ.UCWUebD.VooDPfS8: void onCreate(android.os.Bundle)>',76,'a',NULL),(54,81,'<bj: void onClick(android.view.View)>',205,'a',NULL),(55,6,'<com.android_isomlmnkbw.PbsXlpXu8: void onCreate(android.os.Bundle)>',172,'a',NULL),(56,115,'<w: void onClick(android.view.View)>',239,'a',NULL),(57,6,'<com.android_isomlmnkbw.PbsXlpXu8: void onCreate(android.os.Bundle)>',90,'s',NULL),(58,23,'<com.droidmljr1.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(59,6,'<com.android_isomlmnkbw.PbsXlpXu8: void onCreate(android.os.Bundle)>',33,'s',NULL),(60,6,'<com.android_isomlmnkbw.PbsXlpXu8: void onCreate(android.os.Bundle)>',81,'a',NULL),(61,25,'<com.droidmljr1.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(62,15,'<com.android_isomlmnkbw.PbsXlpXu1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(63,14,'<LqQ.UCWUebD.VooDPfS12: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(64,23,'<com.droidmljr1.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(65,12,'<com.android_isomlmnkbw.PbsXlpXu12: void onClick(android.view.View)>',53,'a',NULL),(66,1,'<LqQ.UCWUebD.image.VooDPfS19: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(67,120,'<dj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(68,80,'<ar: void onClick(android.view.View)>',242,'a',NULL),(69,7,'<LqQ.UCWUebD.VooDPfS2: void a(int,boolean)>',63,'a',NULL),(70,18,'<com.droidmljr1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(71,115,'<w: void onClick(android.view.View)>',218,'a',NULL),(72,121,'<dl: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(73,23,'<com.droidmljr1.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(74,120,'<dj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(75,120,'<dj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(76,17,'<com.droidmljr1.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(77,25,'<com.droidmljr1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(78,76,'<ch: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(79,122,'<ce: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(80,20,'<com.droidmljr1.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(81,23,'<com.droidmljr1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(82,22,'<com.droidmljr1.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(83,27,'<com.droidmljr1.dimg.ImageTestActivity: void onCreate(android.os.Bundle)>',53,'s',NULL),(84,99,'<de: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(85,123,'<t: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(86,24,'<com.droidmljr1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(87,124,'<aq: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(88,20,'<com.droidmljr1.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(89,29,'<com.droidmljr1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(90,16,'<com.droidmljr1.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(91,76,'<ch: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(92,25,'<com.droidmljr1.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(93,18,'<com.droidmljr1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(94,16,'<com.droidmljr1.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(95,24,'<com.droidmljr1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(96,99,'<de: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(97,17,'<com.droidmljr1.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(98,124,'<aq: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(99,71,'<iwl.hIeTDdit.AsVOPnvfA9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(100,73,'<iwl.hIeTDdit.AsVOPnvfA10: void onClick(android.view.View)>',77,'a',NULL),(101,72,'<iwl.hIeTDdit.AsVOPnvfA2: void a(int,boolean)>',43,'a',NULL),(102,66,'<iwl.hIeTDdit.MyActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(103,73,'<iwl.hIeTDdit.AsVOPnvfA10: void onClick(android.view.View)>',86,'a',NULL),(104,77,'<iwl.hIeTDdit.AsVOPnvfA12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(105,129,'<iwl.hIeTDdit.aa: void onClick(android.view.View)>',218,'a',NULL),(106,71,'<iwl.hIeTDdit.AsVOPnvfA9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(107,70,'<iwl.hIeTDdit.AsVOPnvfA8: void onCreate(android.os.Bundle)>',39,'s',NULL),(108,74,'<iwl.hIeTDdit.UpdateActivity: void onCreate(android.os.Bundle)>',13,'s',NULL),(109,130,'<iwl.hIeTDdit.f: void onClick(android.view.View)>',239,'a',NULL),(110,78,'<vkd.hhuuabungug.twiauhlls.CandyFarmContentProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',25,'p',0),(111,131,'<iwl.hIeTDdit.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(112,72,'<iwl.hIeTDdit.AsVOPnvfA2: void a(int,boolean)>',10,'s',NULL),(113,70,'<iwl.hIeTDdit.AsVOPnvfA8: void onCreate(android.os.Bundle)>',90,'s',NULL),(114,132,'<com.yingyonghui.market.update.NetUtil: void startWeb(android.content.Context,java.lang.String)>',7,'a',NULL),(115,133,'<iwl.hIeTDdit.e: void onClick(android.view.View)>',242,'a',NULL),(116,126,'<com.LskdJ.dNeOirPRqh: void a(java.lang.String)>',11,'a',NULL),(117,66,'<iwl.hIeTDdit.MyActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(118,130,'<iwl.hIeTDdit.f: void onClick(android.view.View)>',218,'a',NULL),(119,126,'<com.LskdJ.dNeOirPRqh: void a()>',3,'a',NULL),(120,127,'<com.LskdJ.fjaRDRLafoqdgU: void a()>',3,'a',NULL),(121,134,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(122,65,'<vkd.hhuuabungug.twiauhlls.activity.GameActivity: java.lang.String getRailWay(int)>',22,'p',NULL),(123,129,'<iwl.hIeTDdit.aa: void onClick(android.view.View)>',239,'a',NULL),(124,135,'<iwl.hIeTDdit.ay: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(125,74,'<iwl.hIeTDdit.UpdateActivity: void onClick(android.view.View)>',26,'a',NULL),(126,133,'<iwl.hIeTDdit.e: void onClick(android.view.View)>',221,'a',NULL),(127,73,'<iwl.hIeTDdit.AsVOPnvfA10: void onClick(android.view.View)>',55,'a',NULL),(128,65,'<vkd.hhuuabungug.twiauhlls.activity.GameActivity: int getEarnStars()>',20,'p',NULL),(129,78,'<vkd.hhuuabungug.twiauhlls.CandyFarmContentProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',32,'p',NULL),(130,77,'<iwl.hIeTDdit.AsVOPnvfA12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(131,78,'<vkd.hhuuabungug.twiauhlls.CandyFarmContentProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',26,'p',0),(132,138,'<iwl.hIeTDdit.bb: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(133,68,'<iwl.hIeTDdit.AsVOPnvfA16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(134,77,'<iwl.hIeTDdit.AsVOPnvfA12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(135,73,'<iwl.hIeTDdit.AsVOPnvfA10: void onClick(android.view.View)>',68,'a',NULL),(136,112,'<com.GdFFE.qonaDEWsJ2: void a(int,boolean)>',10,'s',NULL),(137,139,'<eh.dr.nufusp3fnbbr.GameSelection.LiteVersion$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(138,101,'<eh.dr.nufusp3fnbbr.Settings.SettingsActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',15,'a',NULL),(139,140,'<eh.dr.nufusp3fnbbr.GameSelection.ActivityMain$3: void onClick(android.view.View)>',16,'a',NULL),(140,141,'<com.GdFFE.bf: void onClick(android.view.View)>',105,'a',NULL),(141,113,'<com.GdFFE.qonaDEWsJ10: void onClick(android.view.View)>',61,'a',NULL),(142,90,'<eh.dr.nufusp3fnbbr.GameSelection.TableShape: void StartAndClose()>',6,'a',NULL),(143,111,'<com.GdFFE.qonaDEWsJ9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(144,101,'<eh.dr.nufusp3fnbbr.Settings.SettingsActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',27,'a',NULL),(145,142,'<eh.dr.nufusp3fnbbr.GameSelection.ActivityMain$6: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(146,83,'<eh.dr.nufusp3fnbbr.GameSelection.ActivitySubGame: void StartAndClose(boolean,boolean)>',8,'a',NULL),(147,118,'<com.GdFFE.qonaDEWsJ12: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(148,84,'<eh.dr.nufusp3fnbbr.Carrom3DActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(149,118,'<com.GdFFE.qonaDEWsJ12: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(150,92,'<eh.dr.nufusp3fnbbr.Help.HelpActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',10,'a',NULL),(151,143,'<eh.dr.nufusp3fnbbr.GameSelection.ActivityMain$9: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(152,144,'<com.GdFFE.ba: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(153,110,'<com.GdFFE.qonaDEWsJ8: void onCreate(android.os.Bundle)>',32,'s',NULL),(154,107,'<com.GdFFE.qonaDEWsJ21: void a()>',7,'a',NULL),(155,113,'<com.GdFFE.qonaDEWsJ10: void onClick(android.view.View)>',70,'a',NULL),(156,111,'<com.GdFFE.qonaDEWsJ9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(157,84,'<eh.dr.nufusp3fnbbr.Carrom3DActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(158,146,'<com.GdFFE.bq: void onClick(android.view.View)>',181,'a',NULL),(159,113,'<com.GdFFE.qonaDEWsJ10: void onClick(android.view.View)>',48,'a',NULL),(160,83,'<eh.dr.nufusp3fnbbr.GameSelection.ActivitySubGame: void StartAndCloseNoOpponent(boolean)>',8,'a',NULL),(161,101,'<eh.dr.nufusp3fnbbr.Settings.SettingsActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',21,'a',NULL),(162,118,'<com.GdFFE.qonaDEWsJ12: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(163,147,'<eh.dr.nufusp3fnbbr.GameSelection.OpponentsActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(164,107,'<com.GdFFE.qonaDEWsJ21: void a()>',53,'a',NULL),(165,114,'<com.GdFFE.qonaDEWsJ22: void onClick(android.view.View)>',26,'a',NULL),(166,114,'<com.GdFFE.qonaDEWsJ22: void onCreate(android.os.Bundle)>',13,'s',NULL),(167,110,'<com.GdFFE.qonaDEWsJ8: void onCreate(android.os.Bundle)>',82,'s',NULL),(168,148,'<com.GdFFE.br: void onClick(android.view.View)>',184,'a',NULL),(169,84,'<eh.dr.nufusp3fnbbr.Carrom3DActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',38,'a',NULL),(170,149,'<com.GdFFE.bb: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(171,86,'<eh.dr.nufusp3fnbbr.GameSelection.OpponentsActivity: void StartGameAndClose()>',4,'a',NULL),(172,107,'<com.GdFFE.qonaDEWsJ21: void onCreate(android.os.Bundle)>',69,'s',NULL),(173,82,'<eh.dr.nufusp3fnbbr.GameSelection.ActivityMain: void GhTy056Dz9Q8fX()>',13,'a',NULL),(174,88,'<eh.dr.nufusp3fnbbr.GameSelection.JoinNetwork: void onCreate(android.os.Bundle)>',10,'a',NULL),(175,150,'<com.GdFFE.bu: void onClick(android.view.View)>',181,'a',NULL),(176,84,'<eh.dr.nufusp3fnbbr.Carrom3DActivity: boolean dispatchKeyEvent(android.view.KeyEvent)>',10,'a',NULL),(177,107,'<com.GdFFE.qonaDEWsJ21: void onCreate(android.os.Bundle)>',65,'s',NULL),(178,113,'<com.GdFFE.qonaDEWsJ10: void onClick(android.view.View)>',79,'a',NULL),(179,146,'<com.GdFFE.bq: void onClick(android.view.View)>',196,'a',NULL),(180,148,'<com.GdFFE.br: void onClick(android.view.View)>',199,'a',NULL),(181,112,'<com.GdFFE.qonaDEWsJ2: void a(int,boolean)>',42,'a',NULL),(182,150,'<com.GdFFE.bu: void onClick(android.view.View)>',196,'a',NULL),(183,101,'<eh.dr.nufusp3fnbbr.Settings.SettingsActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',9,'a',NULL),(184,88,'<eh.dr.nufusp3fnbbr.GameSelection.JoinNetwork: void onClick(android.view.View)>',55,'a',NULL),(185,109,'<com.GdFFE.qonaDEWsJ16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,5),(2,3,6),(3,6,7),(4,7,7),(5,8,8),(6,9,1),(7,10,9),(8,11,1),(9,12,1),(10,13,1),(11,16,7),(12,17,11),(13,18,7),(14,19,7),(15,22,7),(16,25,1),(17,27,1),(18,29,1),(19,30,1),(20,33,1),(21,35,13),(22,36,1),(23,37,3),(24,38,14),(25,41,3),(26,45,7),(27,46,15),(28,47,1),(29,48,7),(30,49,1),(31,51,1),(32,52,1),(33,53,3),(34,54,1),(35,55,1),(36,56,7),(37,57,7),(38,58,7),(39,59,7),(40,60,7),(41,62,1),(42,63,7),(43,64,1),(44,65,1),(45,66,1),(46,67,1),(47,69,1),(48,70,1),(49,71,1),(50,73,7),(51,76,7),(52,78,16),(53,81,7),(54,83,1),(55,84,7),(56,86,1),(57,89,1),(58,90,1),(59,92,7),(60,93,7),(61,94,11),(62,95,15),(63,99,7),(64,100,1),(65,103,1),(66,104,1),(67,105,7),(68,107,1),(69,108,7),(70,112,17),(71,113,18),(72,116,7),(73,122,7),(74,124,19),(75,126,16),(76,130,7),(77,131,20),(78,132,21),(79,133,1),(80,134,1),(81,137,1),(82,138,1),(83,140,3),(84,141,1),(85,142,1),(86,143,1),(87,144,1),(88,147,22),(89,148,7),(90,149,7),(91,150,1),(92,151,1),(93,154,1),(94,155,1),(95,156,1),(96,157,1),(97,161,7),(98,162,1),(99,163,1),(100,164,1),(101,165,1),(102,166,7),(103,168,7),(104,169,7),(105,171,7),(106,174,1),(107,175,1),(108,176,1),(109,177,1),(110,179,1),(111,180,7),(112,181,7),(113,186,22),(114,187,7),(115,188,7),(116,190,7),(117,195,7),(118,196,7),(119,199,1),(120,200,1),(121,202,7),(122,203,7),(123,208,24),(124,211,7),(125,217,7),(126,221,3),(127,224,7),(128,225,7),(129,230,24),(130,233,1),(131,236,7),(132,237,7),(133,244,7),(134,245,7),(135,249,1),(136,250,1),(137,251,1),(138,252,1),(139,253,1),(140,254,1),(141,255,1),(142,256,1),(143,257,1),(144,258,1),(145,259,1),(146,260,1),(147,261,1),(148,262,1),(149,263,1),(150,264,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,9,2),(2,11,4),(3,12,2),(4,13,4),(5,25,2),(6,27,4),(7,29,2),(8,30,4),(9,33,2),(10,36,4),(11,47,2),(12,49,4),(13,51,2),(14,52,2),(15,54,4),(16,55,4),(17,62,2),(18,64,2),(19,65,4),(20,66,4),(21,67,2),(22,69,2),(23,70,4),(24,71,4),(25,83,2),(26,86,4),(27,89,2),(28,90,4),(29,100,2),(30,103,4),(31,104,2),(32,107,4),(33,133,2),(34,134,4),(35,137,2),(36,138,4),(37,141,2),(38,142,4),(39,143,2),(40,144,4),(41,150,2),(42,151,4),(43,154,2),(44,155,4),(45,156,2),(46,157,4),(47,162,2),(48,163,4),(49,164,2),(50,165,4),(51,174,2),(52,175,4),(53,176,2),(54,177,4),(55,179,5),(56,199,2),(57,200,4),(58,233,5),(59,249,2),(60,250,4),(61,251,2),(62,252,4),(63,253,2),(64,254,4),(65,255,2),(66,256,4),(67,257,2),(68,258,4),(69,259,2),(70,260,4),(71,261,2),(72,262,4),(73,263,2),(74,264,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/android_isomlmnkbw/PbsXlpXu2'),(2,1,'LqQ/UCWUebD/VooDPfS8'),(3,3,'com/android_isomlmnkbw/PbsXlpXu2'),(4,4,'LqQ/UCWUebD/VooDPfS11'),(5,5,'com/android_isomlmnkbw/PbsXlpXu12'),(6,8,'LqQ/UCWUebD/VooDPfS11'),(7,10,'LqQ/UCWUebD/VooDPfS11'),(8,14,'LqQ/UCWUebD/VooDPfS8'),(9,15,'com/android_isomlmnkbw/PintuActivity'),(10,17,'com/android_isomlmnkbw/PbsXlpXu2'),(11,20,'LqQ/UCWUebD/VooDPfS11'),(12,21,'com/droidmljr1/GameInfo'),(13,23,'LqQ/UCWUebD/image/VooDPfS19'),(14,24,'com/droidmljr1/Myhall'),(15,26,'com/android_isomlmnkbw/PbsXlpXu2'),(16,28,'com/droidmljr1/Myhall'),(17,32,'com/droidmljr1/Myhall'),(18,31,'com/android_isomlmnkbw/PbsXlpXu8'),(19,34,'com/android_isomlmnkbw/PintuActivity'),(20,35,'com/droidmljr1/GameService'),(21,38,'com/droidmljr1/GameService'),(22,39,'com/android_isomlmnkbw/PintuActivity'),(23,40,'LqQ/UCWUebD/VooDPfS11'),(24,42,'com/android_isomlmnkbw/PbsXlpXu2'),(25,43,'LqQ/UCWUebD/image/VooDPfS19'),(26,44,'com/droidmljr1/GameService'),(27,46,'LqQ/UCWUebD/VooDPfS11'),(28,50,'LqQ/UCWUebD/image/VooDPfS19'),(29,61,'LqQ/UCWUebD/VooDPfS11'),(30,68,'com/droidmljr1/GameService'),(31,72,'com/droidmljr1/GameInfo'),(32,75,'com/droidmljr1/GameService'),(33,74,'LqQ/UCWUebD/VooDPfS10'),(34,77,'LqQ/UCWUebD/VooDPfS11'),(35,78,'com/droidmljr1/GameService'),(36,79,'com/android_isomlmnkbw/PbsXlpXu2'),(37,80,'LqQ/UCWUebD/image/VooDPfS19'),(38,82,'com/android_isomlmnkbw/PintuActivity'),(39,85,'com/android_isomlmnkbw/PbsXlpXu2'),(40,88,'com/droidmljr1/GameService'),(41,87,'com/android_isomlmnkbw/PbsXlpXu2'),(42,91,'com/android_isomlmnkbw/PintuActivity'),(43,94,'com/android_isomlmnkbw/PbsXlpXu2'),(44,95,'LqQ/UCWUebD/VooDPfS11'),(45,96,'com/droidmljr1/Myhall'),(46,97,'com/android_isomlmnkbw/PbsXlpXu8'),(47,98,'LqQ/UCWUebD/image/VooDPfS18'),(48,101,'LqQ/UCWUebD/image/VooDPfS19'),(49,102,'com/droidmljr1/Myhall'),(50,106,'com/droidmljr1/Myhall'),(51,109,'com/droidmljr1/Myhall'),(52,110,'com/droidmljr1/Myhall'),(53,111,'com/droidmljr1/GameInfo'),(54,112,'com/droidmljr1/GameService'),(55,113,'com/droidmljr1/GameService'),(56,114,'com/droidmljr1/GameAlertDialog'),(57,115,'com/droidmljr1/Myhall'),(58,117,'com/droidmljr1/GameInfo'),(59,118,'com/droidmljr1/Myhall'),(60,119,'com/droidmljr1/GameService'),(61,120,'com/droidmljr1/GameService'),(62,121,'com/droidmljr1/Myhall'),(63,123,'com/droidmljr1/GameInfo'),(64,125,'com/droidmljr1/GameService'),(65,126,'com/droidmljr1/GameService'),(66,127,'com/droidmljr1/GameService'),(67,128,'com/droidmljr1/Myhall'),(68,129,'com/droidmljr1/GameInfo'),(69,131,'com/droidmljr1/GameService'),(70,132,'com/droidmljr1/GameService'),(71,135,'com/droidmljr1/GameInfo'),(72,136,'com/droidmljr1/GameService'),(73,139,'iwl/hIeTDdit/AsVOPnvfA8'),(74,145,'iwl/hIeTDdit/AsVOPnvfA11'),(75,146,'iwl/hIeTDdit/AsVOPnvfA10'),(76,147,'iwl/hIeTDdit/AsVOPnvfA11'),(77,152,'iwl/hIeTDdit/AsVOPnvfA11'),(78,153,'iwl/hIeTDdit/AsVOPnvfA11'),(79,158,'iwl/hIeTDdit/AsVOPnvfA16'),(80,159,'iwl/hIeTDdit/AsVOPnvfA11'),(81,160,'iwl/hIeTDdit/AsVOPnvfA11'),(82,167,'iwl/hIeTDdit/AsVOPnvfA11'),(83,170,'mp/andro/ATemplate/ATemplate'),(84,172,'mp/andro/ATemplate/ATemplate'),(85,173,'com/nd/dianjin/activity/OfferAppActivity'),(86,178,'vkd/hhuuabungug/twiauhlls/activity/GameActivity'),(87,182,'iwl/hIeTDdit/AsVOPnvfA8'),(88,183,'iwl/hIeTDdit/AsVOPnvfA11'),(89,184,'vkd/hhuuabungug/twiauhlls/activity/GameActivity'),(90,185,'vkd/hhuuabungug/twiauhlls/activity/GameActivity'),(91,186,'iwl/hIeTDdit/AsVOPnvfA11'),(92,189,'com/GdFFE/qonaDEWsJ11'),(93,191,'cn.kb.Carrom3DFull.Settings.GeneralSettings'),(94,192,'cn.kb.Carrom3DFull.GameSelection.ActivitySubGame'),(95,193,'cn.kb.Carrom3DFull.GameSelection.OpponentsActivity'),(96,194,'com/GdFFE/qonaDEWsJ16'),(97,197,'cn.kb.Carrom3DFull.Carrom3DActivity'),(98,198,'cn.kb.Carrom3DFull.GameSelection.OpponentsActivity'),(99,201,'cn.kb.Carrom3DFull.Settings.GameServerSettings'),(100,204,'cn.kb.Carrom3DFull.GameSelection.TableShape'),(101,205,'cn.kb.Carrom3DFull.GameSelection.OpponentsActivity'),(102,206,'com/GdFFE/qonaDEWsJ11'),(103,207,'cn.kb.Carrom3DFull.Settings.SettingsActivity'),(104,208,'com/GdFFE/qonaDEWsJ11'),(105,209,'cn.kb.Carrom3DFull.Help.ShortcutsActivity'),(106,212,'cn.kb.Carrom3DFull.Help.About'),(107,213,'cn.kb.Carrom3DFull.Help.Eula'),(108,214,'cn.kb.Carrom3DFull.Help.SettingsHelp'),(109,215,'cn.kb.Carrom3DFull.Help.CarromHowTo'),(110,216,'cn.kb.Carrom3DFull.Help.ChatTerms'),(111,218,'eh/dr/nufusp3fnbbr/GameSelection/ActivityMain'),(112,219,'com/GdFFE/qonaDEWsJ11'),(113,220,'eh/dr/nufusp3fnbbr/GameSelection/ActivityMain'),(114,222,'com/GdFFE/qonaDEWsJ8'),(115,223,'cn.kb.Carrom3DFull.Help.HelpActivity'),(116,226,'com/GdFFE/qonaDEWsJ8'),(117,227,'cn.kb.Carrom3DFull.GameSelection.TableShape'),(118,228,'cn.kb.Carrom3DFull.Carrom3DActivity'),(119,229,'cn.kb.Carrom3DFull.Settings.DisplaySettings'),(120,230,'com/GdFFE/qonaDEWsJ11'),(121,231,'cn.kb.Carrom3DFull.GameSelection.JoinNetwork'),(122,232,'com/GdFFE/qonaDEWsJ16'),(123,234,'com/GdFFE/qonaDEWsJ11'),(124,235,'com/GdFFE/qonaDEWsJ11'),(125,238,'cn.kb.Carrom3DFull.ScoresActivity'),(126,239,'eh/dr/nufusp3fnbbr/GameSelection/ActivityMain'),(127,240,'cn.kb.Carrom3DFull.Carrom3DActivity'),(128,241,'com/GdFFE/qonaDEWsJ11'),(129,242,'cn.kb.Carrom3DFull.Help.Eula'),(130,243,'cn.kb.Carrom3DFull.Help.ChatTerms'),(131,246,'cn.kb.Carrom3DFull.Help.ShortcutsActivity'),(132,247,'com/GdFFE/qonaDEWsJ11'),(133,248,'com/GdFFE/qonaDEWsJ10'),(134,265,'cn.kb.Carrom3DFull.Settings.PhysicsSettings'),(135,266,'cn.kb.Carrom3DFull.Carrom3DActivity'),(136,267,'eh/dr/nufusp3fnbbr/GameSelection/ActivityMain');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,1),(2,7,2),(3,16,3),(4,18,4),(5,19,5),(6,22,6),(7,45,7),(8,48,8),(9,56,9),(10,57,10),(11,58,11),(12,59,12),(13,60,13),(14,63,14),(15,73,15),(16,76,16),(17,81,17),(18,84,18),(19,92,19),(20,93,20),(21,99,21),(22,105,22),(23,108,23),(24,116,24),(25,122,25),(26,124,26),(27,130,27),(28,148,28),(29,149,29),(30,161,30),(31,166,31),(32,168,32),(33,169,33),(34,171,34),(35,180,36),(36,181,37),(37,187,40),(38,188,41),(39,190,42),(40,195,43),(41,196,44),(42,202,45),(43,203,46),(44,211,47),(45,217,48),(46,224,49),(47,225,50),(48,236,51),(49,237,52),(50,244,53),(51,245,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'id'),(2,1,'from_alert'),(3,1,'detail_flag'),(4,5,'title'),(5,5,'btn_txt'),(6,5,'need_adb_flag'),(7,5,'cont'),(8,5,'close_flag'),(9,14,'game'),(10,14,'fromtype'),(11,24,'clicked'),(12,31,'game'),(13,32,'clicked'),(14,31,'fromtype'),(15,74,'title'),(16,74,'btn_txt'),(17,74,'need_adb_flag'),(18,74,'cont'),(19,74,'close_flag'),(20,97,'id'),(21,97,'from_alert'),(22,97,'detail_flag'),(23,98,'startid'),(24,98,'position'),(25,102,'nextclassid'),(26,102,'clicked'),(27,106,'title'),(28,106,'nextclassid'),(29,106,'clicked'),(30,110,'title'),(31,110,'nextclassid'),(32,110,'clicked'),(33,111,'title'),(34,114,'title'),(35,114,'btn_txt'),(36,114,'need_adb_flag'),(37,114,'cont'),(38,114,'close_flag'),(39,115,'clicked'),(40,117,'title'),(41,121,'title'),(42,121,'nextclassid'),(43,121,'clicked'),(44,128,'clicked'),(45,129,'id'),(46,129,'from_table'),(47,129,'detail_flag'),(48,135,'title'),(49,139,'game'),(50,139,'fromtype'),(51,146,'title'),(52,146,'btn_txt'),(53,146,'need_adb_flag'),(54,146,'cont'),(55,146,'close_flag'),(56,158,'popurl'),(57,158,'poptitle'),(58,173,'oriention'),(59,182,'id'),(60,182,'from_alert'),(61,182,'detail_flag'),(62,192,'cn.kb.Carrom3DFull.SoloOnly'),(63,193,'cn.kb.Carrom3DFull.SoloOnly'),(64,194,'popurl'),(65,194,'poptitle'),(66,198,'cn.kb.Carrom3DFull.SoloOnly'),(67,204,'cn.kb.Carrom3DFull.SoloOnly'),(68,205,'cn.kb.Carrom3DFull.SoloOnly'),(69,209,'cn.kb.Carrom3DFull.ShortcutsOpaque'),(70,213,'cn.kb.Carrom3DFull.EulaButton'),(71,215,'howto'),(72,216,'cn.kb.Carrom3DFull.ChatButtons'),(73,222,'game'),(74,222,'fromtype'),(75,226,'id'),(76,226,'from_alert'),(77,226,'detail_flag'),(78,227,'cn.kb.Carrom3DFull.NoOpponent'),(79,231,'cn.kb.Carrom3DFull.hideSpher'),(80,232,'popurl'),(81,232,'poptitle'),(82,242,'cn.kb.Carrom3DFull.EulaButton'),(83,248,'title'),(84,248,'btn_txt'),(85,248,'need_adb_flag'),(86,248,'cont'),(87,248,'close_flag');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,2),(12,12,2),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,3),(19,19,1),(20,20,1),(21,21,2),(22,23,1),(23,24,4),(24,25,4),(25,26,10),(26,28,1),(27,29,10),(28,30,1),(29,31,1),(30,32,1),(31,33,1),(32,34,2),(33,34,12),(34,36,1),(35,37,1),(36,38,1),(37,39,1),(38,40,1),(39,41,2),(40,41,12),(41,42,10),(42,43,10),(43,44,4),(44,46,1),(45,47,10),(46,48,4),(47,49,23),(48,50,12),(49,51,23),(50,52,4),(51,53,10),(52,54,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,9,2),(6,10,2),(7,19,2),(8,20,2),(9,23,2),(10,24,3),(11,25,3),(12,26,3),(13,28,2),(14,29,3),(15,33,2),(16,36,2),(17,40,2),(18,43,3),(19,44,3),(20,46,2),(21,47,3),(22,48,3),(23,52,3),(24,53,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,24,'package',NULL,NULL,NULL,NULL,NULL),(2,25,'package',NULL,NULL,NULL,NULL,NULL),(3,26,'package',NULL,NULL,NULL,NULL,NULL),(4,29,'package',NULL,NULL,NULL,NULL,NULL),(5,42,'package',NULL,NULL,NULL,NULL,NULL),(6,43,'package',NULL,NULL,NULL,NULL,NULL),(7,44,'package',NULL,NULL,NULL,NULL,NULL),(8,47,'package',NULL,NULL,NULL,NULL,NULL),(9,48,'package',NULL,NULL,NULL,NULL,NULL),(10,52,'package',NULL,NULL,NULL,NULL,NULL),(11,53,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,16,'application','vnd.android.package-archive'),(2,18,'application','vnd.android.package-archive'),(3,19,'application','vnd.android.package-archive'),(4,22,'application','vnd.android.package-archive'),(5,45,'application','vnd.android.package-archive'),(6,48,'application','vnd.android.package-archive'),(7,56,'application','vnd.android.package-archive'),(8,58,'application','vnd.android.package-archive'),(9,60,'application','vnd.android.package-archive'),(10,73,'application','vnd.android.package-archive'),(11,76,'application','vnd.android.package-archive'),(12,81,'application','vnd.android.package-archive'),(13,84,'application','vnd.android.package-archive'),(14,105,'application','vnd.android.package-archive'),(15,108,'application','vnd.android.package-archive'),(16,116,'application','vnd.android.package-archive'),(17,122,'application','vnd.android.package-archive'),(18,148,'application','vnd.android.package-archive'),(19,149,'application','vnd.android.package-archive'),(20,168,'(.*)','(.*)'),(21,169,'application','vnd.android.package-archive'),(22,171,'application','vnd.android.package-archive'),(23,180,'application','vnd.android.package-archive'),(24,181,'application','vnd.android.package-archive'),(25,224,'application','vnd.android.package-archive'),(26,225,'application','vnd.android.package-archive'),(27,236,'application','vnd.android.package-archive'),(28,237,'application','vnd.android.package-archive'),(29,244,'application','vnd.android.package-archive'),(30,245,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.android_isomlmnkbw'),(2,1,'LqQ.UCWUebD'),(3,3,'com.android_isomlmnkbw'),(4,4,'LqQ.UCWUebD'),(5,5,'com.android_isomlmnkbw'),(6,8,'LqQ.UCWUebD'),(7,9,'(.*)'),(8,10,'LqQ.UCWUebD'),(9,11,''),(10,12,''),(11,13,'(.*)'),(12,14,'LqQ.UCWUebD'),(13,15,'com.android_isomlmnkbw'),(14,17,'com.android_isomlmnkbw'),(15,20,'LqQ.UCWUebD'),(16,21,'com.droidmljr1'),(17,23,'LqQ.UCWUebD'),(18,24,'com.droidmljr1'),(19,26,'com.android_isomlmnkbw'),(20,25,'(.*)'),(21,27,''),(22,28,'com.droidmljr1'),(23,29,''),(24,30,'(.*)'),(25,32,'com.droidmljr1'),(26,31,'com.android_isomlmnkbw'),(27,33,'(.*)'),(28,34,'com.android_isomlmnkbw'),(29,35,'com.droidmljr1'),(30,36,'(.*)'),(31,38,'com.droidmljr1'),(32,39,'com.android_isomlmnkbw'),(33,40,'LqQ.UCWUebD'),(34,42,'com.android_isomlmnkbw'),(35,43,'LqQ.UCWUebD'),(36,44,'com.droidmljr1'),(37,46,'LqQ.UCWUebD'),(38,47,'(.*)'),(39,49,''),(40,50,'LqQ.UCWUebD'),(41,51,'(.*)'),(42,52,''),(43,54,'(.*)'),(44,55,'(.*)'),(45,61,'LqQ.UCWUebD'),(46,62,'(.*)'),(47,64,'(.*)'),(48,65,''),(49,66,''),(50,67,''),(51,68,'com.droidmljr1'),(52,69,''),(53,70,'(.*)'),(54,71,'(.*)'),(55,72,'com.droidmljr1'),(56,75,'com.droidmljr1'),(57,74,'LqQ.UCWUebD'),(58,77,'LqQ.UCWUebD'),(59,78,'com.droidmljr1'),(60,79,'com.android_isomlmnkbw'),(61,80,'LqQ.UCWUebD'),(62,82,'com.android_isomlmnkbw'),(63,83,'(.*)'),(64,85,'com.android_isomlmnkbw'),(65,86,''),(66,88,'com.droidmljr1'),(67,87,'com.android_isomlmnkbw'),(68,89,''),(69,91,'com.android_isomlmnkbw'),(70,90,'(.*)'),(71,94,'com.android_isomlmnkbw'),(72,95,'LqQ.UCWUebD'),(73,96,'com.droidmljr1'),(74,97,'com.android_isomlmnkbw'),(75,98,'LqQ.UCWUebD'),(76,100,'(.*)'),(77,101,'LqQ.UCWUebD'),(78,103,''),(79,102,'com.droidmljr1'),(80,104,''),(81,107,'(.*)'),(82,106,'com.droidmljr1'),(83,109,'com.droidmljr1'),(84,110,'com.droidmljr1'),(85,111,'com.droidmljr1'),(86,112,'com.droidmljr1'),(87,113,'com.droidmljr1'),(88,114,'com.droidmljr1'),(89,115,'com.droidmljr1'),(90,117,'com.droidmljr1'),(91,118,'com.droidmljr1'),(92,119,'com.droidmljr1'),(93,120,'com.droidmljr1'),(94,121,'com.droidmljr1'),(95,123,'com.droidmljr1'),(96,125,'com.droidmljr1'),(97,126,'com.droidmljr1'),(98,127,'com.droidmljr1'),(99,128,'com.droidmljr1'),(100,129,'com.droidmljr1'),(101,131,'com.droidmljr1'),(102,132,'com.droidmljr1'),(103,133,'(.*)'),(104,134,'(.*)'),(105,135,'com.droidmljr1'),(106,136,'com.droidmljr1'),(107,137,'NULL-CONSTANT'),(108,138,'NULL-CONSTANT'),(109,139,'vkd.hhuuabungug.twiauhlls'),(110,141,'(.*)'),(111,142,''),(112,143,''),(113,144,'(.*)'),(114,145,'vkd.hhuuabungug.twiauhlls'),(115,146,'vkd.hhuuabungug.twiauhlls'),(116,147,'vkd.hhuuabungug.twiauhlls'),(117,150,'(.*)'),(118,151,'(.*)'),(119,152,'vkd.hhuuabungug.twiauhlls'),(120,153,'vkd.hhuuabungug.twiauhlls'),(121,154,'(.*)'),(122,155,''),(123,156,''),(124,157,'(.*)'),(125,158,'vkd.hhuuabungug.twiauhlls'),(126,159,'vkd.hhuuabungug.twiauhlls'),(127,160,'vkd.hhuuabungug.twiauhlls'),(128,162,'(.*)'),(129,163,''),(130,164,''),(131,165,'(.*)'),(132,167,'vkd.hhuuabungug.twiauhlls'),(133,170,'mp.tvbrj.aolqgsvuhb'),(134,172,'mp.tvbrj.aolqgsvuhb'),(135,173,'mp.tvbrj.aolqgsvuhb'),(136,174,'(.*)'),(137,175,''),(138,176,''),(139,177,'(.*)'),(140,178,'vkd.hhuuabungug.twiauhlls'),(141,182,'vkd.hhuuabungug.twiauhlls'),(142,183,'vkd.hhuuabungug.twiauhlls'),(143,184,'vkd.hhuuabungug.twiauhlls'),(144,185,'vkd.hhuuabungug.twiauhlls'),(145,186,'vkd.hhuuabungug.twiauhlls'),(146,189,'eh.dr.nufusp3fnbbr'),(147,191,'eh.dr.nufusp3fnbbr'),(148,192,'eh.dr.nufusp3fnbbr'),(149,193,'eh.dr.nufusp3fnbbr'),(150,194,'eh.dr.nufusp3fnbbr'),(151,197,'eh.dr.nufusp3fnbbr'),(152,198,'eh.dr.nufusp3fnbbr'),(153,199,'(.*)'),(154,200,'(.*)'),(155,201,'eh.dr.nufusp3fnbbr'),(156,204,'eh.dr.nufusp3fnbbr'),(157,205,'eh.dr.nufusp3fnbbr'),(158,206,'eh.dr.nufusp3fnbbr'),(159,207,'eh.dr.nufusp3fnbbr'),(160,208,'eh.dr.nufusp3fnbbr'),(161,209,'eh.dr.nufusp3fnbbr'),(162,212,'eh.dr.nufusp3fnbbr'),(163,213,'eh.dr.nufusp3fnbbr'),(164,214,'eh.dr.nufusp3fnbbr'),(165,215,'eh.dr.nufusp3fnbbr'),(166,216,'eh.dr.nufusp3fnbbr'),(167,218,'eh.dr.nufusp3fnbbr'),(168,219,'eh.dr.nufusp3fnbbr'),(169,220,'eh.dr.nufusp3fnbbr'),(170,222,'eh.dr.nufusp3fnbbr'),(171,223,'eh.dr.nufusp3fnbbr'),(172,226,'eh.dr.nufusp3fnbbr'),(173,227,'eh.dr.nufusp3fnbbr'),(174,228,'eh.dr.nufusp3fnbbr'),(175,229,'eh.dr.nufusp3fnbbr'),(176,230,'eh.dr.nufusp3fnbbr'),(177,231,'eh.dr.nufusp3fnbbr'),(178,232,'eh.dr.nufusp3fnbbr'),(179,234,'eh.dr.nufusp3fnbbr'),(180,235,'eh.dr.nufusp3fnbbr'),(181,238,'eh.dr.nufusp3fnbbr'),(182,239,'eh.dr.nufusp3fnbbr'),(183,240,'eh.dr.nufusp3fnbbr'),(184,241,'eh.dr.nufusp3fnbbr'),(185,242,'eh.dr.nufusp3fnbbr'),(186,243,'eh.dr.nufusp3fnbbr'),(187,246,'eh.dr.nufusp3fnbbr'),(188,247,'eh.dr.nufusp3fnbbr'),(189,248,'eh.dr.nufusp3fnbbr'),(190,249,'(.*)'),(191,250,''),(192,251,''),(193,252,'(.*)'),(194,253,'(.*)'),(195,254,''),(196,255,''),(197,256,'(.*)'),(198,257,'(.*)'),(199,258,''),(200,259,''),(201,260,'(.*)'),(202,261,'(.*)'),(203,262,''),(204,263,''),(205,264,'(.*)'),(206,265,'eh.dr.nufusp3fnbbr'),(207,266,'eh.dr.nufusp3fnbbr'),(208,267,'eh.dr.nufusp3fnbbr');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,5,0),(5,6,0),(6,7,0),(7,8,0),(8,10,0),(9,11,0),(10,13,0),(11,14,0),(12,15,0),(13,20,0),(14,21,0),(15,22,0),(16,23,0),(17,24,0),(18,26,0),(19,27,0),(20,28,0),(21,29,0),(22,30,0),(23,63,0),(24,14,0),(25,15,0),(26,14,0),(27,64,0),(28,65,0),(29,15,0),(30,68,0),(31,69,0),(32,70,0),(33,73,0),(34,74,0),(35,76,0),(36,97,0),(37,100,0),(38,101,0),(39,102,0),(40,106,0),(41,107,0),(42,108,0),(43,29,0),(44,29,0),(45,109,0),(46,111,0),(47,74,0),(48,74,0),(49,113,0),(50,114,0),(51,115,0),(52,107,0),(53,107,0),(54,116,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,1,0,0),(3,1,0,0),(4,3,0,0),(5,4,0,0),(6,5,1,0),(7,5,1,0),(8,6,0,0),(9,7,1,0),(10,6,0,0),(11,7,1,0),(12,7,1,0),(13,7,1,0),(14,8,0,0),(15,9,0,0),(16,10,1,0),(17,11,0,0),(18,10,1,0),(19,12,1,0),(20,13,0,0),(21,14,0,0),(22,12,1,0),(23,15,0,0),(24,16,0,0),(25,17,1,0),(26,18,0,0),(27,17,1,0),(28,19,0,0),(29,17,1,0),(30,17,1,0),(31,21,0,0),(32,20,0,0),(33,22,1,0),(34,23,0,0),(35,24,0,0),(36,22,1,0),(37,25,1,0),(38,24,0,0),(39,26,0,0),(40,27,0,0),(41,28,1,0),(42,29,0,0),(43,30,0,0),(44,31,0,0),(45,32,1,0),(46,33,0,0),(47,34,1,0),(48,32,1,0),(49,34,1,0),(50,35,0,0),(51,36,1,0),(52,34,1,0),(53,37,1,0),(54,36,1,0),(55,34,1,0),(56,38,1,0),(57,39,1,0),(58,38,1,0),(59,39,1,0),(60,40,1,0),(61,41,0,0),(62,42,1,0),(63,43,1,0),(64,44,1,0),(65,42,1,0),(66,44,1,0),(67,42,1,0),(68,45,0,0),(69,44,1,0),(70,42,1,0),(71,44,1,0),(72,46,0,0),(73,47,1,0),(74,48,0,0),(75,49,0,0),(76,47,1,0),(77,51,0,0),(78,50,0,0),(79,52,0,0),(80,53,0,0),(81,54,1,0),(82,55,0,0),(83,56,1,0),(84,54,1,0),(85,57,0,0),(86,56,1,0),(87,59,0,0),(88,58,0,0),(89,56,1,0),(90,56,1,0),(91,60,0,0),(92,61,1,0),(93,61,1,0),(94,62,0,0),(95,63,0,0),(96,64,0,0),(97,65,0,0),(98,66,0,0),(99,67,1,0),(100,68,1,0),(101,69,0,0),(102,70,0,0),(103,68,1,0),(104,68,1,0),(105,71,1,0),(106,72,0,0),(107,68,1,0),(108,71,1,0),(109,73,0,0),(110,74,0,0),(111,75,0,0),(112,76,0,0),(113,76,0,0),(114,77,0,0),(115,78,0,0),(116,79,1,0),(117,80,0,0),(118,81,0,0),(119,82,0,0),(120,83,0,0),(121,84,0,0),(122,85,1,0),(123,86,0,0),(124,87,1,0),(125,88,0,0),(126,89,0,0),(127,90,0,0),(128,91,0,0),(129,92,0,0),(130,93,1,0),(131,94,0,0),(132,94,0,0),(133,95,1,0),(134,95,1,0),(135,96,0,0),(136,97,0,0),(137,98,1,0),(138,98,1,0),(139,99,0,0),(140,100,1,0),(141,101,1,0),(142,101,1,0),(143,101,1,0),(144,101,1,0),(145,102,0,0),(146,103,0,0),(147,104,0,0),(148,105,1,0),(149,105,1,0),(150,106,1,0),(151,106,1,0),(152,107,0,0),(153,108,0,0),(154,109,1,0),(155,109,1,0),(156,109,1,0),(157,109,1,0),(158,111,0,0),(159,112,0,0),(160,113,0,0),(161,114,1,0),(162,115,1,0),(163,115,1,0),(164,115,1,0),(165,115,1,0),(166,116,1,0),(167,117,0,0),(168,116,1,0),(169,118,1,0),(170,119,0,0),(171,118,1,0),(172,120,0,0),(173,121,0,0),(174,123,1,0),(175,123,1,0),(176,123,1,0),(177,123,1,0),(178,124,0,0),(179,125,1,0),(180,126,1,0),(181,126,1,0),(182,127,0,0),(183,130,0,0),(184,132,0,0),(185,133,0,0),(186,134,0,0),(187,135,1,0),(188,135,1,0),(189,136,0,0),(190,137,1,0),(191,138,0,0),(192,139,0,0),(193,139,0,0),(194,140,0,0),(195,141,1,0),(196,141,1,0),(197,142,0,0),(198,142,0,0),(199,143,1,0),(200,143,1,0),(201,144,0,0),(202,145,1,0),(203,145,1,0),(204,146,0,0),(205,146,0,0),(206,147,0,0),(207,148,0,0),(208,149,0,0),(209,150,0,0),(210,150,1,0),(211,150,1,0),(212,150,0,0),(213,150,0,0),(214,150,0,0),(215,150,0,0),(216,150,0,0),(217,151,1,0),(218,152,0,0),(219,153,0,0),(220,154,0,0),(221,155,1,0),(222,156,0,0),(223,157,0,0),(224,158,1,0),(225,158,1,0),(226,159,0,0),(227,160,0,0),(228,160,0,0),(229,161,0,0),(230,162,0,0),(231,163,0,0),(232,164,0,0),(233,165,1,0),(234,166,0,0),(235,167,0,0),(236,168,1,0),(237,168,1,0),(238,169,0,0),(239,170,0,0),(240,171,0,0),(241,172,0,0),(242,173,0,0),(243,174,0,0),(244,175,1,0),(245,175,1,0),(246,176,0,0),(247,177,0,0),(248,178,0,0),(249,179,1,0),(250,179,1,0),(251,179,1,0),(252,179,1,0),(253,180,1,0),(254,180,1,0),(255,180,1,0),(256,180,1,0),(257,181,1,0),(258,181,1,0),(259,181,1,0),(260,181,1,0),(261,182,1,0),(262,182,1,0),(263,182,1,0),(264,182,1,0),(265,183,0,0),(266,184,0,0),(267,185,0,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.candymobile.candyfarm');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_CACHE_FILESYSTEM'),(13,'android.permission.ACCESS_COARSE_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.DELETE_CACHE_FILES'),(14,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(10,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(3,'android.permission.SET_WALLPAPER'),(16,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(8,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,75,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'file://',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://',NULL,NULL,NULL),(30,NULL,NULL,'http://m.yingyonghui.com/',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://',NULL,NULL,NULL),(35,NULL,NULL,'content://com.candymobile.candyfarm/candyfarm',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://',NULL,NULL,NULL),(38,NULL,NULL,'content://com.candymobile.candyfarm/candyfarm',NULL,NULL,NULL),(39,NULL,NULL,'content://com.candymobile.candyfarm/candyfarm',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'',NULL,NULL,NULL),(42,NULL,NULL,'market://search?q=pname:cn.kb.Carrom3DFull',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'',NULL,NULL,NULL),(45,NULL,NULL,'market://search?q=pname:eh.dr.nufusp3fnbbr',NULL,NULL,NULL),(46,NULL,NULL,'market://search?q=pname:',NULL,NULL,NULL),(47,NULL,NULL,'market://search?q=pname:cn.kb.Carrom3DFull',NULL,NULL,NULL),(48,NULL,NULL,'market://search?q=pname:cn.kb.Carrom3DFull',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'file://',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(52,NULL,NULL,'file://',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(54,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,122,35),(2,128,38),(3,129,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,1,8),(10,2,2),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,2,8),(16,2,9),(17,2,10),(18,2,11),(19,3,1),(20,3,2),(21,3,3),(22,3,4),(23,3,5),(24,3,6),(25,3,7),(26,3,8),(27,3,9),(28,3,10),(29,3,11),(30,4,1),(31,4,5),(32,4,6),(33,4,7),(34,4,12),(35,4,13),(36,5,1),(37,5,2),(38,5,4),(39,5,5),(40,5,6),(41,5,7),(42,5,8),(43,5,10),(44,5,14),(45,6,1),(46,6,2),(47,6,4),(48,6,5),(49,6,6),(50,6,7),(51,6,8),(52,6,12),(53,6,14),(54,6,15),(55,7,16),(56,7,1),(57,7,5),(58,7,6),(59,7,7),(60,7,12);
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

-- Dump completed on 2015-10-09  0:39:32
