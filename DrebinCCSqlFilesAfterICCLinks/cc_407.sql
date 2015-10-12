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
) ENGINE=InnoDB AUTO_INCREMENT=1665 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,2,13,2,NULL),(2,3,13,2,NULL),(3,26,13,2,NULL),(4,33,3,2,NULL),(5,36,3,2,NULL),(6,6,3,2,NULL),(7,7,3,2,NULL),(8,53,3,2,NULL),(9,51,3,2,NULL),(10,54,3,2,NULL),(11,37,3,2,NULL),(12,57,3,2,NULL),(13,59,3,2,NULL),(14,130,3,2,NULL),(15,133,3,2,NULL),(16,134,3,2,NULL),(17,41,3,2,NULL),(18,92,3,2,NULL),(19,93,3,2,NULL),(20,150,3,2,NULL),(21,151,3,2,NULL),(22,141,3,2,NULL),(23,142,3,2,NULL),(24,143,3,2,NULL),(25,144,3,2,NULL),(26,140,3,2,NULL),(27,187,3,2,NULL),(28,188,3,2,NULL),(29,179,3,2,NULL),(30,210,3,2,NULL),(31,199,3,2,NULL),(32,200,3,2,NULL),(33,257,3,2,NULL),(34,258,3,2,NULL),(35,259,3,2,NULL),(36,260,3,2,NULL),(37,195,3,2,NULL),(38,196,3,2,NULL),(39,221,3,2,NULL),(40,233,3,2,NULL),(41,15,3,2,NULL),(42,34,3,2,NULL),(43,82,3,2,NULL),(44,85,13,2,NULL),(45,87,13,2,NULL),(46,91,3,2,NULL),(47,33,6,2,NULL),(48,36,6,2,NULL),(49,6,6,2,NULL),(50,7,6,2,NULL),(51,53,6,2,NULL),(52,51,6,2,NULL),(53,54,6,2,NULL),(54,37,6,2,NULL),(55,57,6,2,NULL),(56,59,6,2,NULL),(57,130,6,2,NULL),(58,133,6,2,NULL),(59,134,6,2,NULL),(60,41,6,2,NULL),(61,92,6,2,NULL),(62,93,6,2,NULL),(63,150,6,2,NULL),(64,151,6,2,NULL),(65,141,6,2,NULL),(66,142,6,2,NULL),(67,143,6,2,NULL),(68,144,6,2,NULL),(69,140,6,2,NULL),(70,187,6,2,NULL),(71,188,6,2,NULL),(72,179,6,2,NULL),(73,210,6,2,NULL),(74,199,6,2,NULL),(75,200,6,2,NULL),(76,257,6,2,NULL),(77,258,6,2,NULL),(78,259,6,2,NULL),(79,260,6,2,NULL),(80,195,6,2,NULL),(81,196,6,2,NULL),(82,221,6,2,NULL),(83,233,6,2,NULL),(84,31,6,2,NULL),(85,51,1,2,NULL),(86,54,1,2,NULL),(87,51,4,2,NULL),(88,54,4,2,NULL),(89,51,5,2,NULL),(90,54,5,2,NULL),(91,33,8,2,NULL),(92,36,8,2,NULL),(93,51,7,2,NULL),(94,54,7,2,NULL),(95,6,8,2,NULL),(96,7,8,2,NULL),(97,53,8,2,NULL),(98,51,11,2,NULL),(99,54,11,2,NULL),(100,51,14,2,NULL),(101,54,14,2,NULL),(102,51,10,2,NULL),(103,54,10,2,NULL),(104,37,8,2,NULL),(105,57,8,2,NULL),(106,59,8,2,NULL),(107,51,13,2,NULL),(108,54,13,2,NULL),(109,51,15,2,NULL),(110,54,15,2,NULL),(111,130,8,2,NULL),(112,51,20,2,NULL),(113,54,20,2,NULL),(114,51,21,2,NULL),(115,54,21,2,NULL),(116,51,22,2,NULL),(117,54,22,2,NULL),(118,51,23,2,NULL),(119,54,23,2,NULL),(120,51,24,2,NULL),(121,54,24,2,NULL),(122,133,8,2,NULL),(123,134,8,2,NULL),(124,41,8,2,NULL),(125,92,8,2,NULL),(126,93,8,2,NULL),(127,51,26,2,NULL),(128,54,26,2,NULL),(129,51,27,2,NULL),(130,54,27,2,NULL),(131,51,28,2,NULL),(132,54,28,2,NULL),(133,51,29,2,NULL),(134,54,29,2,NULL),(135,51,30,2,NULL),(136,54,30,2,NULL),(137,51,63,2,NULL),(138,54,63,2,NULL),(139,51,64,2,NULL),(140,54,64,2,NULL),(141,51,65,2,NULL),(142,54,65,2,NULL),(143,51,68,2,NULL),(144,54,68,2,NULL),(145,51,69,2,NULL),(146,54,69,2,NULL),(147,150,8,2,NULL),(148,151,8,2,NULL),(149,51,70,2,NULL),(150,54,70,2,NULL),(151,141,8,2,NULL),(152,142,8,2,NULL),(153,143,8,2,NULL),(154,144,8,2,NULL),(155,140,8,2,NULL),(156,187,8,2,NULL),(157,188,8,2,NULL),(158,179,8,2,NULL),(159,51,73,2,NULL),(160,54,73,2,NULL),(161,51,74,2,NULL),(162,54,74,2,NULL),(163,51,113,2,NULL),(164,54,113,2,NULL),(165,51,114,2,NULL),(166,54,114,2,NULL),(167,51,76,2,NULL),(168,54,76,2,NULL),(169,210,8,2,NULL),(170,51,97,2,NULL),(171,54,97,2,NULL),(172,51,100,2,NULL),(173,54,100,2,NULL),(174,51,101,2,NULL),(175,54,101,2,NULL),(176,199,8,2,NULL),(177,200,8,2,NULL),(178,51,102,2,NULL),(179,54,102,2,NULL),(180,257,8,2,NULL),(181,258,8,2,NULL),(182,259,8,2,NULL),(183,260,8,2,NULL),(184,195,8,2,NULL),(185,196,8,2,NULL),(186,221,8,2,NULL),(187,233,8,2,NULL),(188,51,106,2,NULL),(189,54,106,2,NULL),(190,51,107,2,NULL),(191,54,107,2,NULL),(192,51,115,2,NULL),(193,54,115,2,NULL),(194,51,116,2,NULL),(195,54,116,2,NULL),(196,51,109,2,NULL),(197,54,109,2,NULL),(198,51,111,2,NULL),(199,54,111,2,NULL),(200,39,3,2,NULL),(201,79,13,2,NULL),(202,33,10,2,NULL),(203,36,10,2,NULL),(204,6,10,2,NULL),(205,7,10,2,NULL),(206,53,10,2,NULL),(207,37,10,2,NULL),(208,57,10,2,NULL),(209,59,10,2,NULL),(210,130,10,2,NULL),(211,133,10,2,NULL),(212,134,10,2,NULL),(213,41,10,2,NULL),(214,92,10,2,NULL),(215,93,10,2,NULL),(216,150,10,2,NULL),(217,151,10,2,NULL),(218,141,10,2,NULL),(219,142,10,2,NULL),(220,143,10,2,NULL),(221,144,10,2,NULL),(222,140,10,2,NULL),(223,187,10,2,NULL),(224,188,10,2,NULL),(225,179,10,2,NULL),(226,210,10,2,NULL),(227,199,10,2,NULL),(228,200,10,2,NULL),(229,257,10,2,NULL),(230,258,10,2,NULL),(231,259,10,2,NULL),(232,260,10,2,NULL),(233,195,10,2,NULL),(234,196,10,2,NULL),(235,221,10,2,NULL),(236,233,10,2,NULL),(237,5,12,2,NULL),(238,97,6,2,NULL),(239,37,1,2,NULL),(240,57,1,2,NULL),(241,59,1,2,NULL),(242,37,4,2,NULL),(243,57,4,2,NULL),(244,59,4,2,NULL),(245,37,5,2,NULL),(246,57,5,2,NULL),(247,59,5,2,NULL),(248,37,7,2,NULL),(249,57,7,2,NULL),(250,59,7,2,NULL),(251,37,11,2,NULL),(252,57,11,2,NULL),(253,59,11,2,NULL),(254,37,14,2,NULL),(255,57,14,2,NULL),(256,59,14,2,NULL),(257,37,13,2,NULL),(258,57,13,2,NULL),(259,59,13,2,NULL),(260,37,15,2,NULL),(261,57,15,2,NULL),(262,59,15,2,NULL),(263,37,20,2,NULL),(264,57,20,2,NULL),(265,59,20,2,NULL),(266,37,21,2,NULL),(267,57,21,2,NULL),(268,59,21,2,NULL),(269,37,22,2,NULL),(270,57,22,2,NULL),(271,59,22,2,NULL),(272,37,23,2,NULL),(273,57,23,2,NULL),(274,59,23,2,NULL),(275,37,24,2,NULL),(276,57,24,2,NULL),(277,59,24,2,NULL),(278,37,26,2,NULL),(279,57,26,2,NULL),(280,59,26,2,NULL),(281,37,27,2,NULL),(282,57,27,2,NULL),(283,59,27,2,NULL),(284,37,28,2,NULL),(285,57,28,2,NULL),(286,59,28,2,NULL),(287,37,29,2,NULL),(288,57,29,2,NULL),(289,59,29,2,NULL),(290,37,30,2,NULL),(291,57,30,2,NULL),(292,59,30,2,NULL),(293,37,63,2,NULL),(294,57,63,2,NULL),(295,59,63,2,NULL),(296,37,64,2,NULL),(297,57,64,2,NULL),(298,59,64,2,NULL),(299,37,65,2,NULL),(300,57,65,2,NULL),(301,59,65,2,NULL),(302,37,68,2,NULL),(303,57,68,2,NULL),(304,59,68,2,NULL),(305,37,69,2,NULL),(306,57,69,2,NULL),(307,59,69,2,NULL),(308,37,70,2,NULL),(309,57,70,2,NULL),(310,59,70,2,NULL),(311,37,73,2,NULL),(312,57,73,2,NULL),(313,59,73,2,NULL),(314,37,74,2,NULL),(315,57,74,2,NULL),(316,59,74,2,NULL),(317,37,113,2,NULL),(318,57,113,2,NULL),(319,59,113,2,NULL),(320,37,114,2,NULL),(321,57,114,2,NULL),(322,59,114,2,NULL),(323,37,76,2,NULL),(324,57,76,2,NULL),(325,59,76,2,NULL),(326,37,97,2,NULL),(327,57,97,2,NULL),(328,59,97,2,NULL),(329,37,100,2,NULL),(330,57,100,2,NULL),(331,59,100,2,NULL),(332,37,101,2,NULL),(333,57,101,2,NULL),(334,59,101,2,NULL),(335,37,102,2,NULL),(336,57,102,2,NULL),(337,59,102,2,NULL),(338,37,106,2,NULL),(339,57,106,2,NULL),(340,59,106,2,NULL),(341,37,107,2,NULL),(342,57,107,2,NULL),(343,59,107,2,NULL),(344,37,115,2,NULL),(345,57,115,2,NULL),(346,59,115,2,NULL),(347,37,116,2,NULL),(348,57,116,2,NULL),(349,59,116,2,NULL),(350,37,109,2,NULL),(351,57,109,2,NULL),(352,59,109,2,NULL),(353,37,111,2,NULL),(354,57,111,2,NULL),(355,59,111,2,NULL),(356,33,13,2,NULL),(357,36,13,2,NULL),(358,6,13,2,NULL),(359,7,13,2,NULL),(360,53,13,2,NULL),(361,130,13,2,NULL),(362,133,13,2,NULL),(363,134,13,2,NULL),(364,41,13,2,NULL),(365,92,13,2,NULL),(366,93,13,2,NULL),(367,150,13,2,NULL),(368,151,13,2,NULL),(369,141,13,2,NULL),(370,142,13,2,NULL),(371,143,13,2,NULL),(372,144,13,2,NULL),(373,140,13,2,NULL),(374,187,13,2,NULL),(375,188,13,2,NULL),(376,179,13,2,NULL),(377,210,13,2,NULL),(378,199,13,2,NULL),(379,200,13,2,NULL),(380,257,13,2,NULL),(381,258,13,2,NULL),(382,259,13,2,NULL),(383,260,13,2,NULL),(384,195,13,2,NULL),(385,196,13,2,NULL),(386,221,13,2,NULL),(387,233,13,2,NULL),(388,17,13,2,NULL),(389,42,13,2,NULL),(390,94,13,2,NULL),(391,33,15,2,NULL),(392,36,15,2,NULL),(393,6,15,2,NULL),(394,7,15,2,NULL),(395,53,15,2,NULL),(396,130,15,2,NULL),(397,133,15,2,NULL),(398,134,15,2,NULL),(399,41,15,2,NULL),(400,92,15,2,NULL),(401,93,15,2,NULL),(402,150,15,2,NULL),(403,151,15,2,NULL),(404,141,15,2,NULL),(405,142,15,2,NULL),(406,143,15,2,NULL),(407,144,15,2,NULL),(408,140,15,2,NULL),(409,187,15,2,NULL),(410,188,15,2,NULL),(411,179,15,2,NULL),(412,210,15,2,NULL),(413,199,15,2,NULL),(414,200,15,2,NULL),(415,257,15,2,NULL),(416,258,15,2,NULL),(417,259,15,2,NULL),(418,260,15,2,NULL),(419,195,15,2,NULL),(420,196,15,2,NULL),(421,221,15,2,NULL),(422,233,15,2,NULL),(423,33,30,2,NULL),(424,36,30,2,NULL),(425,6,30,2,NULL),(426,7,30,2,NULL),(427,53,30,2,NULL),(428,130,30,2,NULL),(429,133,30,2,NULL),(430,134,30,2,NULL),(431,41,30,2,NULL),(432,92,30,2,NULL),(433,93,30,2,NULL),(434,150,30,2,NULL),(435,151,30,2,NULL),(436,141,30,2,NULL),(437,142,30,2,NULL),(438,143,30,2,NULL),(439,144,30,2,NULL),(440,140,30,2,NULL),(441,187,30,2,NULL),(442,188,30,2,NULL),(443,179,30,2,NULL),(444,210,30,2,NULL),(445,199,30,2,NULL),(446,200,30,2,NULL),(447,257,30,2,NULL),(448,258,30,2,NULL),(449,259,30,2,NULL),(450,260,30,2,NULL),(451,195,30,2,NULL),(452,196,30,2,NULL),(453,221,30,2,NULL),(454,233,30,2,NULL),(455,33,63,2,NULL),(456,36,63,2,NULL),(457,6,63,2,NULL),(458,7,63,2,NULL),(459,53,63,2,NULL),(460,130,63,2,NULL),(461,133,63,2,NULL),(462,134,63,2,NULL),(463,41,63,2,NULL),(464,92,63,2,NULL),(465,93,63,2,NULL),(466,150,63,2,NULL),(467,151,63,2,NULL),(468,141,63,2,NULL),(469,142,63,2,NULL),(470,143,63,2,NULL),(471,144,63,2,NULL),(472,140,63,2,NULL),(473,187,63,2,NULL),(474,188,63,2,NULL),(475,179,63,2,NULL),(476,210,63,2,NULL),(477,199,63,2,NULL),(478,200,63,2,NULL),(479,257,63,2,NULL),(480,258,63,2,NULL),(481,259,63,2,NULL),(482,260,63,2,NULL),(483,195,63,2,NULL),(484,196,63,2,NULL),(485,221,63,2,NULL),(486,233,63,2,NULL),(487,8,11,2,NULL),(488,10,11,2,NULL),(489,77,11,2,NULL),(490,98,2,2,NULL),(491,33,1,2,NULL),(492,36,1,2,NULL),(493,6,1,2,NULL),(494,7,1,2,NULL),(495,53,1,2,NULL),(496,130,1,2,NULL),(497,133,1,2,NULL),(498,134,1,2,NULL),(499,41,1,2,NULL),(500,92,1,2,NULL),(501,93,1,2,NULL),(502,150,1,2,NULL),(503,151,1,2,NULL),(504,141,1,2,NULL),(505,142,1,2,NULL),(506,143,1,2,NULL),(507,144,1,2,NULL),(508,140,1,2,NULL),(509,187,1,2,NULL),(510,188,1,2,NULL),(511,179,1,2,NULL),(512,210,1,2,NULL),(513,199,1,2,NULL),(514,200,1,2,NULL),(515,257,1,2,NULL),(516,258,1,2,NULL),(517,259,1,2,NULL),(518,260,1,2,NULL),(519,195,1,2,NULL),(520,196,1,2,NULL),(521,221,1,2,NULL),(522,233,1,2,NULL),(523,4,11,2,NULL),(524,23,1,2,NULL),(525,43,1,2,NULL),(526,50,1,2,NULL),(527,61,11,2,NULL),(528,80,1,2,NULL),(529,33,4,2,NULL),(530,36,4,2,NULL),(531,6,4,2,NULL),(532,7,4,2,NULL),(533,53,4,2,NULL),(534,130,4,2,NULL),(535,133,4,2,NULL),(536,134,4,2,NULL),(537,41,4,2,NULL),(538,92,4,2,NULL),(539,93,4,2,NULL),(540,150,4,2,NULL),(541,151,4,2,NULL),(542,141,4,2,NULL),(543,142,4,2,NULL),(544,143,4,2,NULL),(545,144,4,2,NULL),(546,140,4,2,NULL),(547,187,4,2,NULL),(548,188,4,2,NULL),(549,179,4,2,NULL),(550,210,4,2,NULL),(551,199,4,2,NULL),(552,200,4,2,NULL),(553,257,4,2,NULL),(554,258,4,2,NULL),(555,259,4,2,NULL),(556,260,4,2,NULL),(557,195,4,2,NULL),(558,196,4,2,NULL),(559,221,4,2,NULL),(560,233,4,2,NULL),(561,14,4,2,NULL),(562,33,7,2,NULL),(563,36,7,2,NULL),(564,6,5,2,NULL),(565,7,5,2,NULL),(566,53,5,2,NULL),(567,33,11,2,NULL),(568,36,11,2,NULL),(569,33,14,2,NULL),(570,36,14,2,NULL),(571,130,5,2,NULL),(572,33,20,2,NULL),(573,36,20,2,NULL),(574,33,21,2,NULL),(575,36,21,2,NULL),(576,33,22,2,NULL),(577,36,22,2,NULL),(578,33,23,2,NULL),(579,36,23,2,NULL),(580,33,24,2,NULL),(581,36,24,2,NULL),(582,133,5,2,NULL),(583,134,5,2,NULL),(584,41,5,2,NULL),(585,92,5,2,NULL),(586,93,5,2,NULL),(587,33,26,2,NULL),(588,36,26,2,NULL),(589,33,27,2,NULL),(590,36,27,2,NULL),(591,33,28,2,NULL),(592,36,28,2,NULL),(593,33,29,2,NULL),(594,36,29,2,NULL),(595,33,64,2,NULL),(596,36,64,2,NULL),(597,33,65,2,NULL),(598,36,65,2,NULL),(599,33,68,2,NULL),(600,36,68,2,NULL),(601,33,69,2,NULL),(602,36,69,2,NULL),(603,150,5,2,NULL),(604,151,5,2,NULL),(605,33,70,2,NULL),(606,36,70,2,NULL),(607,141,5,2,NULL),(608,142,5,2,NULL),(609,143,5,2,NULL),(610,144,5,2,NULL),(611,140,5,2,NULL),(612,187,5,2,NULL),(613,188,5,2,NULL),(614,179,5,2,NULL),(615,33,73,2,NULL),(616,36,73,2,NULL),(617,33,74,2,NULL),(618,36,74,2,NULL),(619,33,113,2,NULL),(620,36,113,2,NULL),(621,33,114,2,NULL),(622,36,114,2,NULL),(623,33,76,2,NULL),(624,36,76,2,NULL),(625,210,5,2,NULL),(626,33,97,2,NULL),(627,36,97,2,NULL),(628,33,100,2,NULL),(629,36,100,2,NULL),(630,33,101,2,NULL),(631,36,101,2,NULL),(632,199,5,2,NULL),(633,200,5,2,NULL),(634,33,102,2,NULL),(635,36,102,2,NULL),(636,257,5,2,NULL),(637,258,5,2,NULL),(638,259,5,2,NULL),(639,260,5,2,NULL),(640,195,5,2,NULL),(641,196,5,2,NULL),(642,221,5,2,NULL),(643,233,5,2,NULL),(644,33,106,2,NULL),(645,36,106,2,NULL),(646,33,107,2,NULL),(647,36,107,2,NULL),(648,33,115,2,NULL),(649,36,115,2,NULL),(650,33,116,2,NULL),(651,36,116,2,NULL),(652,33,109,2,NULL),(653,36,109,2,NULL),(654,33,111,2,NULL),(655,36,111,2,NULL),(656,40,11,2,NULL),(657,101,1,2,NULL),(658,6,7,2,NULL),(659,7,7,2,NULL),(660,53,7,2,NULL),(661,130,7,2,NULL),(662,133,7,2,NULL),(663,134,7,2,NULL),(664,41,7,2,NULL),(665,92,7,2,NULL),(666,93,7,2,NULL),(667,150,7,2,NULL),(668,151,7,2,NULL),(669,141,7,2,NULL),(670,142,7,2,NULL),(671,143,7,2,NULL),(672,144,7,2,NULL),(673,140,7,2,NULL),(674,187,7,2,NULL),(675,188,7,2,NULL),(676,179,7,2,NULL),(677,210,7,2,NULL),(678,199,7,2,NULL),(679,200,7,2,NULL),(680,257,7,2,NULL),(681,258,7,2,NULL),(682,259,7,2,NULL),(683,260,7,2,NULL),(684,195,7,2,NULL),(685,196,7,2,NULL),(686,221,7,2,NULL),(687,233,7,2,NULL),(688,1,4,2,NULL),(689,74,9,2,NULL),(690,6,11,2,NULL),(691,7,11,2,NULL),(692,53,11,2,NULL),(693,6,14,2,NULL),(694,7,14,2,NULL),(695,53,14,2,NULL),(696,6,20,2,NULL),(697,7,20,2,NULL),(698,53,20,2,NULL),(699,6,21,2,NULL),(700,7,21,2,NULL),(701,53,21,2,NULL),(702,6,22,2,NULL),(703,7,22,2,NULL),(704,53,22,2,NULL),(705,6,23,2,NULL),(706,7,23,2,NULL),(707,53,23,2,NULL),(708,6,24,2,NULL),(709,7,24,2,NULL),(710,53,24,2,NULL),(711,6,26,2,NULL),(712,7,26,2,NULL),(713,53,26,2,NULL),(714,6,27,2,NULL),(715,7,27,2,NULL),(716,53,27,2,NULL),(717,6,28,2,NULL),(718,7,28,2,NULL),(719,53,28,2,NULL),(720,6,29,2,NULL),(721,7,29,2,NULL),(722,53,29,2,NULL),(723,6,64,2,NULL),(724,7,64,2,NULL),(725,53,64,2,NULL),(726,6,65,2,NULL),(727,7,65,2,NULL),(728,53,65,2,NULL),(729,6,68,2,NULL),(730,7,68,2,NULL),(731,53,68,2,NULL),(732,6,69,2,NULL),(733,7,69,2,NULL),(734,53,69,2,NULL),(735,6,70,2,NULL),(736,7,70,2,NULL),(737,53,70,2,NULL),(738,6,73,2,NULL),(739,7,73,2,NULL),(740,53,73,2,NULL),(741,6,74,2,NULL),(742,7,74,2,NULL),(743,53,74,2,NULL),(744,6,113,2,NULL),(745,7,113,2,NULL),(746,53,113,2,NULL),(747,6,114,2,NULL),(748,7,114,2,NULL),(749,53,114,2,NULL),(750,6,76,2,NULL),(751,7,76,2,NULL),(752,53,76,2,NULL),(753,6,97,2,NULL),(754,7,97,2,NULL),(755,53,97,2,NULL),(756,6,100,2,NULL),(757,7,100,2,NULL),(758,53,100,2,NULL),(759,6,101,2,NULL),(760,7,101,2,NULL),(761,53,101,2,NULL),(762,6,102,2,NULL),(763,7,102,2,NULL),(764,53,102,2,NULL),(765,6,106,2,NULL),(766,7,106,2,NULL),(767,53,106,2,NULL),(768,6,107,2,NULL),(769,7,107,2,NULL),(770,53,107,2,NULL),(771,6,115,2,NULL),(772,7,115,2,NULL),(773,53,115,2,NULL),(774,6,116,2,NULL),(775,7,116,2,NULL),(776,53,116,2,NULL),(777,6,109,2,NULL),(778,7,109,2,NULL),(779,53,109,2,NULL),(780,6,111,2,NULL),(781,7,111,2,NULL),(782,53,111,2,NULL),(783,130,11,2,NULL),(784,133,11,2,NULL),(785,134,11,2,NULL),(786,41,11,2,NULL),(787,92,11,2,NULL),(788,93,11,2,NULL),(789,150,11,2,NULL),(790,151,11,2,NULL),(791,141,11,2,NULL),(792,142,11,2,NULL),(793,143,11,2,NULL),(794,144,11,2,NULL),(795,140,11,2,NULL),(796,187,11,2,NULL),(797,188,11,2,NULL),(798,179,11,2,NULL),(799,210,11,2,NULL),(800,199,11,2,NULL),(801,200,11,2,NULL),(802,257,11,2,NULL),(803,258,11,2,NULL),(804,259,11,2,NULL),(805,260,11,2,NULL),(806,195,11,2,NULL),(807,196,11,2,NULL),(808,221,11,2,NULL),(809,233,11,2,NULL),(810,20,11,2,NULL),(811,46,11,2,NULL),(812,95,11,2,NULL),(813,130,14,2,NULL),(814,133,14,2,NULL),(815,134,14,2,NULL),(816,41,14,2,NULL),(817,92,14,2,NULL),(818,93,14,2,NULL),(819,150,14,2,NULL),(820,151,14,2,NULL),(821,141,14,2,NULL),(822,142,14,2,NULL),(823,143,14,2,NULL),(824,144,14,2,NULL),(825,140,14,2,NULL),(826,187,14,2,NULL),(827,188,14,2,NULL),(828,179,14,2,NULL),(829,210,14,2,NULL),(830,199,14,2,NULL),(831,200,14,2,NULL),(832,257,14,2,NULL),(833,258,14,2,NULL),(834,259,14,2,NULL),(835,260,14,2,NULL),(836,195,14,2,NULL),(837,196,14,2,NULL),(838,221,14,2,NULL),(839,233,14,2,NULL),(840,130,64,2,NULL),(841,130,109,2,NULL),(842,133,64,2,NULL),(843,133,109,2,NULL),(844,134,64,2,NULL),(845,134,109,2,NULL),(846,41,64,2,NULL),(847,41,109,2,NULL),(848,92,64,2,NULL),(849,92,109,2,NULL),(850,93,64,2,NULL),(851,93,109,2,NULL),(852,150,64,2,NULL),(853,150,109,2,NULL),(854,151,64,2,NULL),(855,151,109,2,NULL),(856,141,64,2,NULL),(857,141,109,2,NULL),(858,142,64,2,NULL),(859,142,109,2,NULL),(860,143,64,2,NULL),(861,143,109,2,NULL),(862,144,64,2,NULL),(863,144,109,2,NULL),(864,140,64,2,NULL),(865,140,109,2,NULL),(866,187,64,2,NULL),(867,187,109,2,NULL),(868,188,64,2,NULL),(869,188,109,2,NULL),(870,179,64,2,NULL),(871,179,109,2,NULL),(872,210,109,2,NULL),(873,210,64,2,NULL),(874,199,109,2,NULL),(875,199,64,2,NULL),(876,200,109,2,NULL),(877,200,64,2,NULL),(878,257,109,2,NULL),(879,257,64,2,NULL),(880,258,109,2,NULL),(881,258,64,2,NULL),(882,259,109,2,NULL),(883,259,64,2,NULL),(884,260,109,2,NULL),(885,260,64,2,NULL),(886,195,109,2,NULL),(887,195,64,2,NULL),(888,196,109,2,NULL),(889,196,64,2,NULL),(890,221,109,2,NULL),(891,221,64,2,NULL),(892,233,109,2,NULL),(893,233,64,2,NULL),(894,170,109,2,NULL),(895,145,73,2,NULL),(896,172,109,2,NULL),(897,167,73,2,NULL),(898,130,111,2,NULL),(899,130,65,2,NULL),(900,133,111,2,NULL),(901,133,65,2,NULL),(902,134,111,2,NULL),(903,134,65,2,NULL),(904,41,111,2,NULL),(905,41,65,2,NULL),(906,92,111,2,NULL),(907,92,65,2,NULL),(908,93,111,2,NULL),(909,93,65,2,NULL),(910,150,111,2,NULL),(911,150,65,2,NULL),(912,151,111,2,NULL),(913,151,65,2,NULL),(914,141,111,2,NULL),(915,141,65,2,NULL),(916,142,111,2,NULL),(917,142,65,2,NULL),(918,143,111,2,NULL),(919,143,65,2,NULL),(920,144,111,2,NULL),(921,144,65,2,NULL),(922,140,111,2,NULL),(923,140,65,2,NULL),(924,187,111,2,NULL),(925,187,65,2,NULL),(926,188,111,2,NULL),(927,188,65,2,NULL),(928,179,111,2,NULL),(929,179,65,2,NULL),(930,210,111,2,NULL),(931,210,65,2,NULL),(932,199,111,2,NULL),(933,199,65,2,NULL),(934,200,111,2,NULL),(935,200,65,2,NULL),(936,257,111,2,NULL),(937,257,65,2,NULL),(938,258,111,2,NULL),(939,258,65,2,NULL),(940,259,111,2,NULL),(941,259,65,2,NULL),(942,260,111,2,NULL),(943,260,65,2,NULL),(944,195,111,2,NULL),(945,195,65,2,NULL),(946,196,111,2,NULL),(947,196,65,2,NULL),(948,221,111,2,NULL),(949,221,65,2,NULL),(950,233,111,2,NULL),(951,233,65,2,NULL),(952,185,64,2,NULL),(953,152,73,2,NULL),(954,160,73,2,NULL),(955,130,68,2,NULL),(956,133,68,2,NULL),(957,134,68,2,NULL),(958,41,68,2,NULL),(959,92,68,2,NULL),(960,93,68,2,NULL),(961,150,68,2,NULL),(962,151,68,2,NULL),(963,141,68,2,NULL),(964,142,68,2,NULL),(965,143,68,2,NULL),(966,144,68,2,NULL),(967,140,68,2,NULL),(968,187,68,2,NULL),(969,188,68,2,NULL),(970,179,68,2,NULL),(971,210,68,2,NULL),(972,199,68,2,NULL),(973,200,68,2,NULL),(974,257,68,2,NULL),(975,258,68,2,NULL),(976,259,68,2,NULL),(977,260,68,2,NULL),(978,195,68,2,NULL),(979,196,68,2,NULL),(980,221,68,2,NULL),(981,233,68,2,NULL),(982,139,68,2,NULL),(983,130,69,2,NULL),(984,150,20,2,NULL),(985,151,20,2,NULL),(986,150,21,2,NULL),(987,151,21,2,NULL),(988,150,22,2,NULL),(989,151,22,2,NULL),(990,150,23,2,NULL),(991,151,23,2,NULL),(992,150,24,2,NULL),(993,151,24,2,NULL),(994,133,69,2,NULL),(995,134,69,2,NULL),(996,41,69,2,NULL),(997,92,69,2,NULL),(998,93,69,2,NULL),(999,150,26,2,NULL),(1000,151,26,2,NULL),(1001,150,27,2,NULL),(1002,151,27,2,NULL),(1003,150,28,2,NULL),(1004,151,28,2,NULL),(1005,150,29,2,NULL),(1006,151,29,2,NULL),(1007,150,70,2,NULL),(1008,151,70,2,NULL),(1009,141,69,2,NULL),(1010,142,69,2,NULL),(1011,143,69,2,NULL),(1012,144,69,2,NULL),(1013,140,69,2,NULL),(1014,187,69,2,NULL),(1015,188,69,2,NULL),(1016,179,69,2,NULL),(1017,150,73,2,NULL),(1018,151,73,2,NULL),(1019,150,74,2,NULL),(1020,151,74,2,NULL),(1021,150,113,2,NULL),(1022,151,113,2,NULL),(1023,150,114,2,NULL),(1024,151,114,2,NULL),(1025,150,76,2,NULL),(1026,151,76,2,NULL),(1027,210,69,2,NULL),(1028,150,97,2,NULL),(1029,151,97,2,NULL),(1030,150,100,2,NULL),(1031,151,100,2,NULL),(1032,150,101,2,NULL),(1033,151,101,2,NULL),(1034,199,69,2,NULL),(1035,200,69,2,NULL),(1036,150,102,2,NULL),(1037,151,102,2,NULL),(1038,257,69,2,NULL),(1039,258,69,2,NULL),(1040,259,69,2,NULL),(1041,260,69,2,NULL),(1042,195,69,2,NULL),(1043,196,69,2,NULL),(1044,221,69,2,NULL),(1045,233,69,2,NULL),(1046,150,106,2,NULL),(1047,151,106,2,NULL),(1048,150,107,2,NULL),(1049,151,107,2,NULL),(1050,150,115,2,NULL),(1051,151,115,2,NULL),(1052,150,116,2,NULL),(1053,151,116,2,NULL),(1054,159,73,2,NULL),(1055,130,70,2,NULL),(1056,141,20,2,NULL),(1057,142,20,2,NULL),(1058,143,20,2,NULL),(1059,144,20,2,NULL),(1060,141,21,2,NULL),(1061,142,21,2,NULL),(1062,143,21,2,NULL),(1063,144,21,2,NULL),(1064,141,22,2,NULL),(1065,142,22,2,NULL),(1066,143,22,2,NULL),(1067,144,22,2,NULL),(1068,141,23,2,NULL),(1069,142,23,2,NULL),(1070,143,23,2,NULL),(1071,144,23,2,NULL),(1072,141,24,2,NULL),(1073,142,24,2,NULL),(1074,143,24,2,NULL),(1075,144,24,2,NULL),(1076,133,70,2,NULL),(1077,134,70,2,NULL),(1078,41,70,2,NULL),(1079,92,70,2,NULL),(1080,93,70,2,NULL),(1081,141,26,2,NULL),(1082,142,26,2,NULL),(1083,143,26,2,NULL),(1084,144,26,2,NULL),(1085,141,27,2,NULL),(1086,142,27,2,NULL),(1087,143,27,2,NULL),(1088,144,27,2,NULL),(1089,141,28,2,NULL),(1090,142,28,2,NULL),(1091,143,28,2,NULL),(1092,144,28,2,NULL),(1093,141,29,2,NULL),(1094,142,29,2,NULL),(1095,143,29,2,NULL),(1096,144,29,2,NULL),(1097,140,70,2,NULL),(1098,187,70,2,NULL),(1099,188,70,2,NULL),(1100,179,70,2,NULL),(1101,141,73,2,NULL),(1102,142,73,2,NULL),(1103,143,73,2,NULL),(1104,144,73,2,NULL),(1105,141,74,2,NULL),(1106,142,74,2,NULL),(1107,143,74,2,NULL),(1108,144,74,2,NULL),(1109,141,113,2,NULL),(1110,142,113,2,NULL),(1111,143,113,2,NULL),(1112,144,113,2,NULL),(1113,141,114,2,NULL),(1114,142,114,2,NULL),(1115,143,114,2,NULL),(1116,144,114,2,NULL),(1117,141,76,2,NULL),(1118,142,76,2,NULL),(1119,143,76,2,NULL),(1120,144,76,2,NULL),(1121,210,70,2,NULL),(1122,141,97,2,NULL),(1123,142,97,2,NULL),(1124,143,97,2,NULL),(1125,144,97,2,NULL),(1126,141,100,2,NULL),(1127,142,100,2,NULL),(1128,143,100,2,NULL),(1129,144,100,2,NULL),(1130,141,101,2,NULL),(1131,142,101,2,NULL),(1132,143,101,2,NULL),(1133,144,101,2,NULL),(1134,199,70,2,NULL),(1135,200,70,2,NULL),(1136,141,102,2,NULL),(1137,142,102,2,NULL),(1138,143,102,2,NULL),(1139,144,102,2,NULL),(1140,257,70,2,NULL),(1141,258,70,2,NULL),(1142,259,70,2,NULL),(1143,260,70,2,NULL),(1144,195,70,2,NULL),(1145,196,70,2,NULL),(1146,221,70,2,NULL),(1147,233,70,2,NULL),(1148,141,106,2,NULL),(1149,142,106,2,NULL),(1150,143,106,2,NULL),(1151,144,106,2,NULL),(1152,141,107,2,NULL),(1153,142,107,2,NULL),(1154,143,107,2,NULL),(1155,144,107,2,NULL),(1156,141,115,2,NULL),(1157,142,115,2,NULL),(1158,143,115,2,NULL),(1159,144,115,2,NULL),(1160,141,116,2,NULL),(1161,142,116,2,NULL),(1162,143,116,2,NULL),(1163,144,116,2,NULL),(1164,146,71,2,NULL),(1165,182,68,2,NULL),(1166,140,20,2,NULL),(1167,187,20,2,NULL),(1168,188,20,2,NULL),(1169,140,21,2,NULL),(1170,187,21,2,NULL),(1171,188,21,2,NULL),(1172,140,22,2,NULL),(1173,187,22,2,NULL),(1174,188,22,2,NULL),(1175,140,23,2,NULL),(1176,187,23,2,NULL),(1177,188,23,2,NULL),(1178,140,24,2,NULL),(1179,187,24,2,NULL),(1180,188,24,2,NULL),(1181,140,26,2,NULL),(1182,187,26,2,NULL),(1183,188,26,2,NULL),(1184,140,27,2,NULL),(1185,187,27,2,NULL),(1186,188,27,2,NULL),(1187,140,28,2,NULL),(1188,187,28,2,NULL),(1189,188,28,2,NULL),(1190,140,29,2,NULL),(1191,187,29,2,NULL),(1192,188,29,2,NULL),(1193,140,73,2,NULL),(1194,187,73,2,NULL),(1195,188,73,2,NULL),(1196,140,74,2,NULL),(1197,187,74,2,NULL),(1198,188,74,2,NULL),(1199,140,113,2,NULL),(1200,187,113,2,NULL),(1201,188,113,2,NULL),(1202,140,114,2,NULL),(1203,187,114,2,NULL),(1204,188,114,2,NULL),(1205,140,76,2,NULL),(1206,187,76,2,NULL),(1207,188,76,2,NULL),(1208,140,97,2,NULL),(1209,187,97,2,NULL),(1210,188,97,2,NULL),(1211,140,100,2,NULL),(1212,187,100,2,NULL),(1213,188,100,2,NULL),(1214,140,101,2,NULL),(1215,187,101,2,NULL),(1216,188,101,2,NULL),(1217,140,102,2,NULL),(1218,187,102,2,NULL),(1219,188,102,2,NULL),(1220,140,106,2,NULL),(1221,187,106,2,NULL),(1222,188,106,2,NULL),(1223,140,107,2,NULL),(1224,187,107,2,NULL),(1225,188,107,2,NULL),(1226,140,115,2,NULL),(1227,187,115,2,NULL),(1228,188,115,2,NULL),(1229,140,116,2,NULL),(1230,187,116,2,NULL),(1231,188,116,2,NULL),(1232,153,73,2,NULL),(1233,179,20,2,NULL),(1234,179,21,2,NULL),(1235,179,22,2,NULL),(1236,179,23,2,NULL),(1237,179,24,2,NULL),(1238,179,26,2,NULL),(1239,179,27,2,NULL),(1240,179,28,2,NULL),(1241,179,29,2,NULL),(1242,179,73,2,NULL),(1243,179,74,2,NULL),(1244,179,113,2,NULL),(1245,179,114,2,NULL),(1246,179,76,2,NULL),(1247,179,97,2,NULL),(1248,179,100,2,NULL),(1249,179,101,2,NULL),(1250,179,102,2,NULL),(1251,179,106,2,NULL),(1252,179,107,2,NULL),(1253,179,115,2,NULL),(1254,179,116,2,NULL),(1255,130,73,2,NULL),(1256,133,73,2,NULL),(1257,134,73,2,NULL),(1258,41,73,2,NULL),(1259,92,73,2,NULL),(1260,93,73,2,NULL),(1261,210,73,2,NULL),(1262,199,73,2,NULL),(1263,200,73,2,NULL),(1264,257,73,2,NULL),(1265,258,73,2,NULL),(1266,259,73,2,NULL),(1267,260,73,2,NULL),(1268,195,73,2,NULL),(1269,196,73,2,NULL),(1270,221,73,2,NULL),(1271,233,73,2,NULL),(1272,147,73,2,NULL),(1273,183,73,2,NULL),(1274,186,73,2,NULL),(1275,130,74,2,NULL),(1276,133,74,2,NULL),(1277,134,74,2,NULL),(1278,41,74,2,NULL),(1279,92,74,2,NULL),(1280,93,74,2,NULL),(1281,210,74,2,NULL),(1282,199,74,2,NULL),(1283,200,74,2,NULL),(1284,257,74,2,NULL),(1285,258,74,2,NULL),(1286,259,74,2,NULL),(1287,260,74,2,NULL),(1288,195,74,2,NULL),(1289,196,74,2,NULL),(1290,221,74,2,NULL),(1291,233,74,2,NULL),(1292,130,113,2,NULL),(1293,133,113,2,NULL),(1294,134,113,2,NULL),(1295,41,113,2,NULL),(1296,92,113,2,NULL),(1297,93,113,2,NULL),(1298,210,113,2,NULL),(1299,199,113,2,NULL),(1300,200,113,2,NULL),(1301,257,113,2,NULL),(1302,258,113,2,NULL),(1303,259,113,2,NULL),(1304,260,113,2,NULL),(1305,195,113,2,NULL),(1306,196,113,2,NULL),(1307,221,113,2,NULL),(1308,233,113,2,NULL),(1309,130,114,2,NULL),(1310,133,114,2,NULL),(1311,134,114,2,NULL),(1312,41,114,2,NULL),(1313,92,114,2,NULL),(1314,93,114,2,NULL),(1315,210,114,2,NULL),(1316,199,114,2,NULL),(1317,200,114,2,NULL),(1318,257,114,2,NULL),(1319,258,114,2,NULL),(1320,259,114,2,NULL),(1321,260,114,2,NULL),(1322,195,114,2,NULL),(1323,196,114,2,NULL),(1324,221,114,2,NULL),(1325,233,114,2,NULL),(1326,127,28,2,NULL),(1327,131,28,2,NULL),(1328,132,28,2,NULL),(1329,112,28,2,NULL),(1330,113,28,2,NULL),(1331,136,28,2,NULL),(1332,72,23,2,NULL),(1333,102,16,2,NULL),(1334,130,20,2,NULL),(1335,130,21,2,NULL),(1336,130,22,2,NULL),(1337,130,23,2,NULL),(1338,130,24,2,NULL),(1339,130,26,2,NULL),(1340,130,27,2,NULL),(1341,130,28,2,NULL),(1342,130,29,2,NULL),(1343,130,76,2,NULL),(1344,130,97,2,NULL),(1345,130,100,2,NULL),(1346,130,101,2,NULL),(1347,130,102,2,NULL),(1348,130,106,2,NULL),(1349,130,107,2,NULL),(1350,130,115,2,NULL),(1351,130,116,2,NULL),(1352,117,23,2,NULL),(1353,125,28,2,NULL),(1354,133,20,2,NULL),(1355,134,20,2,NULL),(1356,41,20,2,NULL),(1357,92,20,2,NULL),(1358,93,20,2,NULL),(1359,210,20,2,NULL),(1360,199,20,2,NULL),(1361,200,20,2,NULL),(1362,257,20,2,NULL),(1363,258,20,2,NULL),(1364,259,20,2,NULL),(1365,260,20,2,NULL),(1366,195,20,2,NULL),(1367,196,20,2,NULL),(1368,221,20,2,NULL),(1369,233,20,2,NULL),(1370,21,23,2,NULL),(1371,44,28,2,NULL),(1372,133,21,2,NULL),(1373,134,21,2,NULL),(1374,41,21,2,NULL),(1375,92,21,2,NULL),(1376,93,21,2,NULL),(1377,210,21,2,NULL),(1378,199,21,2,NULL),(1379,200,21,2,NULL),(1380,257,21,2,NULL),(1381,258,21,2,NULL),(1382,259,21,2,NULL),(1383,260,21,2,NULL),(1384,195,21,2,NULL),(1385,196,21,2,NULL),(1386,221,21,2,NULL),(1387,233,21,2,NULL),(1388,119,28,2,NULL),(1389,133,22,2,NULL),(1390,134,22,2,NULL),(1391,41,22,2,NULL),(1392,92,22,2,NULL),(1393,93,22,2,NULL),(1394,210,22,2,NULL),(1395,199,22,2,NULL),(1396,200,22,2,NULL),(1397,257,22,2,NULL),(1398,258,22,2,NULL),(1399,259,22,2,NULL),(1400,260,22,2,NULL),(1401,195,22,2,NULL),(1402,196,22,2,NULL),(1403,221,22,2,NULL),(1404,233,22,2,NULL),(1405,88,28,2,NULL),(1406,96,16,2,NULL),(1407,109,16,2,NULL),(1408,118,16,2,NULL),(1409,133,23,2,NULL),(1410,134,23,2,NULL),(1411,41,23,2,NULL),(1412,92,23,2,NULL),(1413,93,23,2,NULL),(1414,210,23,2,NULL),(1415,199,23,2,NULL),(1416,200,23,2,NULL),(1417,257,23,2,NULL),(1418,258,23,2,NULL),(1419,259,23,2,NULL),(1420,260,23,2,NULL),(1421,195,23,2,NULL),(1422,196,23,2,NULL),(1423,221,23,2,NULL),(1424,233,23,2,NULL),(1425,123,23,2,NULL),(1426,41,24,2,NULL),(1427,92,24,2,NULL),(1428,93,24,2,NULL),(1429,133,26,2,NULL),(1430,134,26,2,NULL),(1431,133,27,2,NULL),(1432,134,27,2,NULL),(1433,133,28,2,NULL),(1434,134,28,2,NULL),(1435,133,29,2,NULL),(1436,134,29,2,NULL),(1437,133,76,2,NULL),(1438,134,76,2,NULL),(1439,210,24,2,NULL),(1440,133,97,2,NULL),(1441,134,97,2,NULL),(1442,133,100,2,NULL),(1443,134,100,2,NULL),(1444,133,101,2,NULL),(1445,134,101,2,NULL),(1446,199,24,2,NULL),(1447,200,24,2,NULL),(1448,133,102,2,NULL),(1449,134,102,2,NULL),(1450,257,24,2,NULL),(1451,258,24,2,NULL),(1452,259,24,2,NULL),(1453,260,24,2,NULL),(1454,195,24,2,NULL),(1455,196,24,2,NULL),(1456,221,24,2,NULL),(1457,233,24,2,NULL),(1458,133,106,2,NULL),(1459,134,106,2,NULL),(1460,133,107,2,NULL),(1461,134,107,2,NULL),(1462,133,115,2,NULL),(1463,134,115,2,NULL),(1464,133,116,2,NULL),(1465,134,116,2,NULL),(1466,114,25,2,NULL),(1467,129,23,2,NULL),(1468,41,26,2,NULL),(1469,92,26,2,NULL),(1470,93,26,2,NULL),(1471,41,27,2,NULL),(1472,92,27,2,NULL),(1473,93,27,2,NULL),(1474,41,28,2,NULL),(1475,92,28,2,NULL),(1476,93,28,2,NULL),(1477,41,29,2,NULL),(1478,92,29,2,NULL),(1479,93,29,2,NULL),(1480,41,76,2,NULL),(1481,92,76,2,NULL),(1482,93,76,2,NULL),(1483,41,97,2,NULL),(1484,92,97,2,NULL),(1485,93,97,2,NULL),(1486,41,100,2,NULL),(1487,92,100,2,NULL),(1488,93,100,2,NULL),(1489,41,101,2,NULL),(1490,92,101,2,NULL),(1491,93,101,2,NULL),(1492,41,102,2,NULL),(1493,92,102,2,NULL),(1494,93,102,2,NULL),(1495,41,106,2,NULL),(1496,92,106,2,NULL),(1497,93,106,2,NULL),(1498,41,107,2,NULL),(1499,92,107,2,NULL),(1500,93,107,2,NULL),(1501,41,115,2,NULL),(1502,92,115,2,NULL),(1503,93,115,2,NULL),(1504,41,116,2,NULL),(1505,92,116,2,NULL),(1506,93,116,2,NULL),(1507,210,26,2,NULL),(1508,199,26,2,NULL),(1509,200,26,2,NULL),(1510,257,26,2,NULL),(1511,258,26,2,NULL),(1512,259,26,2,NULL),(1513,260,26,2,NULL),(1514,195,26,2,NULL),(1515,196,26,2,NULL),(1516,221,26,2,NULL),(1517,233,26,2,NULL),(1518,35,28,2,NULL),(1519,38,28,2,NULL),(1520,120,28,2,NULL),(1521,210,27,2,NULL),(1522,199,27,2,NULL),(1523,200,27,2,NULL),(1524,257,27,2,NULL),(1525,258,27,2,NULL),(1526,259,27,2,NULL),(1527,260,27,2,NULL),(1528,195,27,2,NULL),(1529,196,27,2,NULL),(1530,221,27,2,NULL),(1531,233,27,2,NULL),(1532,210,28,2,NULL),(1533,199,28,2,NULL),(1534,200,28,2,NULL),(1535,257,28,2,NULL),(1536,258,28,2,NULL),(1537,259,28,2,NULL),(1538,260,28,2,NULL),(1539,195,28,2,NULL),(1540,196,28,2,NULL),(1541,221,28,2,NULL),(1542,233,28,2,NULL),(1543,68,28,2,NULL),(1544,78,28,2,NULL),(1545,126,28,2,NULL),(1546,210,29,2,NULL),(1547,199,29,2,NULL),(1548,200,29,2,NULL),(1549,257,29,2,NULL),(1550,258,29,2,NULL),(1551,259,29,2,NULL),(1552,260,29,2,NULL),(1553,195,29,2,NULL),(1554,196,29,2,NULL),(1555,221,29,2,NULL),(1556,233,29,2,NULL),(1557,210,76,2,NULL),(1558,199,76,2,NULL),(1559,200,76,2,NULL),(1560,257,76,2,NULL),(1561,258,76,2,NULL),(1562,259,76,2,NULL),(1563,260,76,2,NULL),(1564,195,76,2,NULL),(1565,196,76,2,NULL),(1566,221,76,2,NULL),(1567,233,76,2,NULL),(1568,210,97,2,NULL),(1569,210,100,2,NULL),(1570,210,101,2,NULL),(1571,210,102,2,NULL),(1572,210,106,2,NULL),(1573,210,107,2,NULL),(1574,210,115,2,NULL),(1575,210,116,2,NULL),(1576,220,76,2,NULL),(1577,232,99,2,NULL),(1578,241,106,2,NULL),(1579,247,106,2,NULL),(1580,199,97,2,NULL),(1581,200,97,2,NULL),(1582,257,97,2,NULL),(1583,258,97,2,NULL),(1584,259,97,2,NULL),(1585,260,97,2,NULL),(1586,195,97,2,NULL),(1587,196,97,2,NULL),(1588,221,97,2,NULL),(1589,233,97,2,NULL),(1590,267,76,2,NULL),(1591,219,106,2,NULL),(1592,235,106,2,NULL),(1593,199,100,2,NULL),(1594,200,100,2,NULL),(1595,257,100,2,NULL),(1596,258,100,2,NULL),(1597,259,100,2,NULL),(1598,260,100,2,NULL),(1599,195,100,2,NULL),(1600,196,100,2,NULL),(1601,221,100,2,NULL),(1602,233,100,2,NULL),(1603,222,100,2,NULL),(1604,199,102,2,NULL),(1605,200,102,2,NULL),(1606,257,101,2,NULL),(1607,258,101,2,NULL),(1608,259,101,2,NULL),(1609,260,101,2,NULL),(1610,195,101,2,NULL),(1611,196,101,2,NULL),(1612,221,101,2,NULL),(1613,233,101,2,NULL),(1614,199,106,2,NULL),(1615,200,106,2,NULL),(1616,199,107,2,NULL),(1617,200,107,2,NULL),(1618,199,115,2,NULL),(1619,200,115,2,NULL),(1620,199,116,2,NULL),(1621,200,116,2,NULL),(1622,189,106,2,NULL),(1623,195,102,2,NULL),(1624,196,102,2,NULL),(1625,221,102,2,NULL),(1626,233,102,2,NULL),(1627,257,106,2,NULL),(1628,258,106,2,NULL),(1629,259,106,2,NULL),(1630,260,106,2,NULL),(1631,257,107,2,NULL),(1632,258,107,2,NULL),(1633,259,107,2,NULL),(1634,260,107,2,NULL),(1635,257,115,2,NULL),(1636,258,115,2,NULL),(1637,259,115,2,NULL),(1638,260,115,2,NULL),(1639,257,116,2,NULL),(1640,258,116,2,NULL),(1641,259,116,2,NULL),(1642,260,116,2,NULL),(1643,226,100,2,NULL),(1644,248,103,2,NULL),(1645,195,106,2,NULL),(1646,196,106,2,NULL),(1647,221,106,2,NULL),(1648,195,107,2,NULL),(1649,196,107,2,NULL),(1650,221,107,2,NULL),(1651,195,115,2,NULL),(1652,196,115,2,NULL),(1653,221,115,2,NULL),(1654,195,116,2,NULL),(1655,196,116,2,NULL),(1656,221,116,2,NULL),(1657,234,106,2,NULL),(1658,233,106,2,NULL),(1659,233,107,2,NULL),(1660,233,115,2,NULL),(1661,233,116,2,NULL),(1662,206,106,2,NULL),(1663,208,106,2,NULL),(1664,230,106,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,64,75,NULL);
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

-- Dump completed on 2015-10-12  3:30:23
