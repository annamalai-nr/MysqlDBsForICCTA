-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_414
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (6,'(.*)'),(19,'.ImageTestActivity'),(21,'.Myhall'),(9,'.Web'),(4,'android.intent.action.BOOT_COMPLETED'),(29,'android.intent.action.CREATE_SHORTCUT'),(8,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(11,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.PACKAGE_REMOVED'),(15,'android.intent.action.SCREEN_OFF'),(5,'android.intent.action.USER_PRESENT'),(7,'android.intent.action.VIEW'),(30,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(14,'com.droswimsuit.GameBootReceiver'),(18,'com.droswimsuit.ImageTestActivity'),(27,'com.droswimsuit.Myhall'),(10,'com.droswimsuit.Web'),(12,'com.m_cpgbz.GameBootReceiver'),(28,'com.m_cpgbz.ImageTestActivity'),(20,'com.m_cpgbz.Myhall'),(23,'com.m_cpgbz.Web'),(22,'com.stepbystep.GameBootReceiver'),(24,'com.stepbystep.ImageTestActivity'),(25,'com.stepbystep.Myhall'),(16,'com.stepbystep.Web'),(26,'po.echoqih.adcmcwgcff.UTfelpdQf12'),(2,'pocket.sdiueur.GAME'),(17,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh.AsVOPnvfA12');
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
INSERT INTO `Applications` VALUES (1,'com.m_cpgbz',10019),(2,'com.droswimsuit',1009),(3,'com.stepbystep',1016),(4,'pocket.sdiueur',10041),(5,'po.echoqih.adcmcwgcff',11),(6,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh',10001),(7,'tgi.bdomtl.uwjkhek.mprmtib.cdjn',10001);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(1,'android.intent.category.DEFAULT'),(6,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.m_cpgbz.Myhall'),(2,1,'com.m_cpgbz.Web'),(3,1,'com.m_cpgbz.HomeActivity'),(4,1,'com.m_cpgbz.SortActivity1'),(5,2,'com.droswimsuit.Myhall'),(6,3,'com.stepbystep.Myhall'),(7,1,'com.m_cpgbz.SortActivity2'),(8,2,'com.droswimsuit.Web'),(9,3,'com.stepbystep.Web'),(10,2,'com.droswimsuit.HomeActivity'),(11,3,'com.stepbystep.HomeActivity'),(12,4,'pocket.sdiueur.FrozenBubble'),(13,2,'com.droswimsuit.SortActivity1'),(14,1,'com.m_cpgbz.SearchActivity'),(15,3,'com.stepbystep.SortActivity1'),(16,2,'com.droswimsuit.SortActivity2'),(17,3,'com.stepbystep.SortActivity2'),(18,1,'com.m_cpgbz.ManagerActivity'),(19,2,'com.droswimsuit.SearchActivity'),(20,3,'com.stepbystep.SearchActivity'),(21,4,'com.google.ads.AdActivity'),(22,1,'com.m_cpgbz.GameInfo'),(23,4,'com.uLDpA.oTokiUwvwpsPvTO'),(24,2,'com.droswimsuit.ManagerActivity'),(25,3,'com.stepbystep.ManagerActivity'),(26,4,'com.uLDpA.WFUabFkwCdhnINo'),(27,1,'com.m_cpgbz.TableClass'),(28,2,'com.droswimsuit.GameInfo'),(29,3,'com.stepbystep.GameInfo'),(30,1,'com.m_cpgbz.GameAlertDialog'),(31,2,'com.droswimsuit.TableClass'),(32,1,'com.m_cpgbz.DevelopmentSettings'),(33,3,'com.stepbystep.TableClass'),(34,2,'com.droswimsuit.GameAlertDialog'),(35,3,'com.stepbystep.GameAlertDialog'),(36,1,'com.m_cpgbz.image.ImageTestActivity'),(37,2,'com.droswimsuit.DevelopmentSettings'),(38,3,'com.stepbystep.DevelopmentSettings'),(39,2,'com.droswimsuit.droimg.ImageTestActivity'),(40,1,'com.m_cpgbz.image.ADactivity'),(41,3,'com.stepbystep.qimg.ImageTestActivity'),(42,1,'com.m_cpgbz.GameService'),(43,2,'com.droswimsuit.GameService'),(44,3,'com.stepbystep.qimg.ADactivity'),(45,1,'com.m_cpgbz.GameBootReceiver'),(46,3,'com.stepbystep.GameService'),(47,2,'com.droswimsuit.GameBootReceiver'),(48,3,'com.stepbystep.GameBootReceiver'),(49,5,'po.echoqih.adcmcwgcff.MenuActivity'),(50,5,'po.echoqih.adcmcwgcff.ControlActivity'),(51,5,'po.echoqih.adcmcwgcff.GameTypeActivity'),(52,5,'po.echoqih.adcmcwgcff.ScoreActivity'),(53,5,'po.echoqih.adcmcwgcff.type.original.OriginalActivity'),(54,5,'po.echoqih.adcmcwgcff.type.original.OriginalMazeActivity'),(55,5,'po.echoqih.adcmcwgcff.type.original.OriginalDarkMazeActivity'),(56,5,'po.echoqih.adcmcwgcff.type.original.OriginalTimeMazeActivity'),(57,5,'po.echoqih.adcmcwgcff.type.hunter.HunterActivity'),(58,5,'po.echoqih.adcmcwgcff.type.hunter.HunterMazeActivity'),(59,5,'po.echoqih.adcmcwgcff.type.adventurer.AdventurerActivity'),(60,5,'po.echoqih.adcmcwgcff.type.adventurer.AdventurerMazeActivity'),(61,5,'po.echoqih.adcmcwgcff.type.adventurer.AdventurerMonsterMazeActivity'),(62,5,'po.echoqih.adcmcwgcff.type.adventurer.AdventurerDarkMazeActivity'),(63,5,'po.echoqih.adcmcwgcff.type.longmaze.LongActivity'),(64,5,'po.echoqih.adcmcwgcff.type.longmaze.LongMazeActivity'),(65,5,'po.echoqih.adcmcwgcff.type.ultimate.UltimateActivity'),(66,5,'po.echoqih.adcmcwgcff.type.ultimate.UltimateMazeActivity'),(67,5,'jgf.TmcEojp.MyActivity'),(68,5,'jgf.TmcEojp.ApopMain'),(69,5,'jgf.TmcEojp.UTfelpdQf16'),(70,5,'jgf.TmcEojp.UTfelpdQf8'),(71,5,'jgf.TmcEojp.UTfelpdQf9'),(72,5,'jgf.TmcEojp.UTfelpdQf2'),(73,5,'jgf.TmcEojp.UTfelpdQf10'),(74,5,'jgf.TmcEojp.UTfelpdQf11'),(75,5,'jgf.TmcEojp.UTfelpdQf12'),(76,6,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh.GloftNYN2'),(77,6,'hlq.lwORAHu.MyActivity'),(78,6,'hlq.lwORAHu.ApopMain'),(79,6,'hlq.lwORAHu.AsVOPnvfA16'),(80,6,'hlq.lwORAHu.AsVOPnvfA8'),(81,6,'hlq.lwORAHu.AsVOPnvfA9'),(82,6,'hlq.lwORAHu.AsVOPnvfA2'),(83,6,'hlq.lwORAHu.AsVOPnvfA10'),(84,6,'hlq.lwORAHu.UpdateActivity'),(85,6,'hlq.lwORAHu.AsVOPnvfA11'),(86,6,'hlq.lwORAHu.AsVOPnvfA12'),(87,2,'dc'),(88,3,'bh'),(89,2,'co'),(90,3,'di'),(91,3,'bd'),(92,6,'hlq.lwORAHu.ay'),(93,2,'av'),(94,6,'hlq.lwORAHu.aa'),(95,3,'cx'),(96,2,'ai'),(97,1,'de'),(98,1,'b'),(99,3,'h'),(100,2,'cc'),(101,6,'hlq.lwORAHu.bb'),(102,1,'br'),(103,6,'hlq.lwORAHu.e'),(104,3,'x'),(105,3,'y'),(106,1,'cm'),(107,2,'bp'),(108,3,'cv'),(109,1,'ar'),(110,6,'hlq.lwORAHu.f'),(111,1,'g'),(112,1,'n'),(113,6,'hlq.lwORAHu.ab'),(114,2,'bv'),(115,1,'du'),(116,1,'dc'),(117,2,'ax'),(118,3,'ao'),(119,6,'hlq.lwORAHu.ClickableToast'),(120,2,'am'),(121,1,'bp'),(122,3,'aj'),(123,6,'hlq.lwORAHu.ae'),(124,2,'du'),(125,1,'da'),(126,5,'jgf.TmcEojp.ag'),(127,3,'i'),(128,5,'jgf.TmcEojp.al'),(129,5,'jgf.TmcEojp.br'),(130,5,'jgf.TmcEojp.ae'),(131,5,'po.echoqih.adcmcwgcff.MenuActivity$1'),(132,5,'jgf.TmcEojp.am'),(133,5,'jgf.TmcEojp.ClickableToast'),(134,5,'po.echoqih.adcmcwgcff.MenuActivity$2'),(135,5,'jgf.TmcEojp.af'),(136,5,'jgf.TmcEojp.bo'),(137,7,'com.tashequ1.android.Home'),(138,7,'com.tashequ1.android.MySelf'),(139,7,'com.tashequ1.android.LogoActivity'),(140,7,'com.tashequ1.android.WidgetInput'),(141,7,'com.tashequ1.android.NewsActivity'),(142,7,'com.tashequ1.android.PhotoCommentsActivity'),(143,7,'com.tashequ1.android.FindPassword'),(144,7,'com.tashequ1.android.SendActivity'),(145,7,'com.tashequ1.android.FindFriendActivity'),(146,7,'com.tashequ1.android.Top10Activity'),(147,7,'com.tashequ1.android.MyRecords'),(148,7,'com.tashequ1.android.UserList'),(149,7,'com.tashequ1.android.tab1'),(150,7,'com.tashequ1.android.tab2'),(151,7,'com.tashequ1.android.ZuiXinNewsActivity'),(152,7,'com.tashequ1.android.FriendNewActivity'),(153,7,'com.tashequ1.android.CanYuActivity'),(154,7,'com.tashequ1.android.ValidationActivity'),(155,7,'com.tashequ1.android.FriendNews'),(156,7,'com.tashequ1.android.MessageAc'),(157,7,'com.tashequ1.android.Message_FriendActivity'),(158,7,'com.tashequ1.android.Message_MessageActivity'),(159,7,'com.tashequ1.android.Message_GroupActivity'),(160,7,'com.tashequ1.android.MessageActivity'),(161,7,'com.tashequ1.android.MapViewActivity'),(162,7,'com.tashequ1.android.Map_'),(163,7,'com.tashequ1.android.Near'),(164,7,'com.tashequ1.android.FriendActivity'),(165,7,'com.tashequ1.android.PrivateMessage'),(166,7,'com.tashequ1.android.SoMoreActivity'),(167,7,'com.tashequ1.android.InstalledActivity'),(168,7,'com.tashequ1.android.SettingNewsActivity'),(169,7,'com.tashequ1.android.SettingPushActivity'),(170,7,'com.tashequ1.android.AccountAssociationActivity'),(171,7,'com.tashequ1.android.SettingPasswordActivity'),(172,7,'com.tashequ1.android.AssocationItemActivity'),(173,7,'com.tashequ1.android.SettingMyInfo'),(174,7,'com.tashequ1.android.PersonalSpaceActivity'),(175,7,'com.tashequ1.android.PersonalInfoActivity'),(176,7,'com.tashequ1.android.PersonalDynamic'),(177,7,'com.tashequ1.android.TalkActivity'),(178,7,'com.tashequ1.android.Contactlist'),(179,7,'com.tashequ1.android.TomsixFrind'),(180,7,'com.tashequ1.android.SendSmsActivity'),(181,7,'com.tashequ1.android.ForwardActivity'),(182,7,'com.tashequ1.android.BuildGroup'),(183,7,'com.tashequ1.android.MyIntegralActivity'),(184,7,'com.tashequ1.android.PropsActivity'),(185,7,'com.tashequ1.android.MorePropsActivity'),(186,7,'com.tashequ1.android.PropsRecordActivity'),(187,7,'com.tashequ1.android.AboutActivity'),(188,7,'com.tashequ1.android.MorePhotoActivity'),(189,7,'com.tashequ1.android.AllGroupActivity'),(190,7,'com.tashequ1.android.GroupActivity'),(191,7,'com.tashequ1.android.GroupManageActivity'),(192,7,'com.tashequ1.android.MoreSearchActivity'),(193,7,'com.tashequ1.android.ZhuceActivity'),(194,7,'com.tashequ1.android.DengluActivity'),(195,7,'com.tashequ1.android.GroupAdminActivity'),(196,7,'com.tashequ1.android.MyGroupActivity'),(197,7,'com.tashequ1.android.TengxunActivity'),(198,7,'com.tashequ1.android.InvitedActivity'),(199,7,'com.tashequ1.android.PersonalZuixinActivity'),(200,7,'com.tashequ1.android.SettingLoginName'),(201,7,'com.tashequ1.android.Zhuce2Activity'),(202,7,'com.tashequ1.android.ShareActivity'),(203,7,'com.tashequ1.android.PushDialog'),(204,7,'com.tashequ1.android..UItest'),(205,7,'com.tashequ1.android.splash'),(206,7,'com.tashequ1.android.ImageBrowser'),(207,7,'com.tashequ1.android.ExchangeActivity'),(208,7,'com.tashequ1.android.PointsActivity'),(209,7,'com.tashequ1.android.Group_Members_Ac'),(210,7,'com.tashequ1.android.WebBrowser'),(211,7,'com.tashequ1.android.test.TestListView'),(212,7,'com.weibo.net.ShareActivity'),(213,7,'gem.wJibFP.MyActivity'),(214,7,'gem.wJibFP.ApopMain'),(215,7,'gem.wJibFP.dmLBBVFB16'),(216,7,'gem.wJibFP.dmLBBVFB8'),(217,7,'gem.wJibFP.dmLBBVFB9'),(218,7,'gem.wJibFP.dmLBBVFB2'),(219,7,'gem.wJibFP.dmLBBVFB10'),(220,7,'gem.wJibFP.UpdateActivity'),(221,7,'com.tashequ1.android.PushService'),(222,7,'gem.wJibFP.dmLBBVFB11'),(223,7,'com.tashequ1.android.BootBroadcastReceiver'),(224,7,'gem.wJibFP.dmLBBVFB12');
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
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,12,'(.*)'),(2,12,'moveDown'),(3,12,'numGameSprites'),(4,12,'levels'),(5,12,'nextColor'),(6,12,'movingBubbleId'),(7,12,'hurryTime'),(8,12,'frozenifyY'),(9,12,'compressor-steps'),(10,12,'currentColor'),(11,12,'LevelManager-currentLevel'),(12,12,'launchBubbleId'),(13,12,'blinkDelay'),(14,12,'nextBubbleId'),(15,12,'numSavedSprites'),(16,12,'BubbleManager-bubblesLeft'),(17,12,'frozenifyX'),(18,12,'numJumpingSprites'),(19,12,'launchBubblePosition'),(20,12,'numFallingSprites'),(21,12,'penguinId'),(22,12,'fixedBubbles'),(23,12,'frozenify'),(24,12,'endOfGame'),(25,21,'action'),(26,12,'hurryId'),(27,12,'readyToFire'),(28,12,'BubbleManager-countBubbles'),(29,21,'params'),(30,21,'com.google.ads.AdOpener'),(31,12,'nbBubbles'),(32,43,'service_channel'),(33,28,'status'),(34,24,'app_name'),(35,24,'package_name'),(36,24,'url'),(37,20,'status'),(38,17,'nextclassid'),(39,20,'version_code'),(40,24,'status'),(41,19,'status'),(42,6,'service_channel'),(43,41,'service_channel'),(44,9,'service_channel'),(45,35,'title'),(46,29,'status'),(47,18,'package_name'),(48,24,'completed'),(49,18,'soft_id'),(50,18,'app_name'),(51,18,'total'),(52,6,'nextclassid'),(53,30,'content'),(54,83,'package_name'),(55,34,'title'),(56,84,'content'),(57,19,'version_code'),(58,20,'package_name'),(59,24,'soft_id'),(60,34,'content'),(61,28,'title'),(62,84,'packagename'),(63,80,'from_table'),(64,25,'soft_id'),(65,25,'package_name'),(66,25,'url'),(67,83,'version_code'),(68,80,'title'),(69,18,'status'),(70,18,'completed'),(71,18,'url'),(72,1,'service_channel'),(73,18,'filepath'),(74,14,'version_code'),(75,83,'url'),(76,34,'btn_txt'),(77,19,'package_name'),(78,5,'nextclassid'),(79,25,'filepath'),(80,25,'completed'),(81,17,'package_name'),(82,18,'icon'),(83,24,'icon'),(84,2,'service_channel'),(85,28,'from_table'),(86,16,'status'),(87,1,'nextclassid'),(88,77,'version_code'),(89,22,'from_alert'),(90,7,'nextclassid'),(91,36,'service_channel'),(92,22,'from_table'),(93,83,'title'),(94,16,'nextclassid'),(95,25,'icon'),(96,22,'filepath'),(97,8,'service_channel'),(98,5,'service_channel'),(99,39,'service_channel'),(100,24,'filepath'),(101,80,'from_alert'),(102,82,'from'),(103,83,'content'),(104,22,'game'),(105,85,'service_channel'),(106,22,'status'),(107,80,'filepath'),(108,84,'title'),(109,29,'title'),(110,25,'app_name'),(111,35,'content'),(112,25,'total'),(113,29,'filepath'),(114,83,'apk_url'),(115,25,'status'),(116,14,'package_name'),(117,22,'fromtype'),(118,35,'url'),(119,79,'popurl'),(120,34,'url'),(121,24,'total'),(122,22,'title'),(123,42,'service_channel'),(124,83,'btn_txt'),(125,84,'apkurl'),(126,79,'poptitle'),(127,46,'service_channel'),(128,16,'package_name'),(129,77,'service_channel'),(130,79,'service_channel'),(131,80,'status'),(132,82,'isDirectFromTable'),(133,83,'fromtable'),(134,80,'game'),(135,77,'soft_id'),(136,82,'package_name'),(137,80,'fromtype'),(138,28,'filepath'),(139,29,'from_alert'),(140,29,'from_table'),(141,70,'fromtype'),(142,35,'btn_txt'),(143,30,'version_code'),(144,7,'package_name'),(145,7,'status'),(146,30,'btn_txt'),(147,72,'isDirectFromTable'),(148,28,'from_alert'),(149,30,'apk_url'),(150,17,'status'),(151,69,'popurl'),(152,69,'poptitle'),(153,70,'title'),(154,30,'url'),(155,70,'from_table'),(156,73,'btn_txt'),(157,30,'title'),(158,14,'status'),(159,30,'package_name'),(160,67,'service_channel'),(161,69,'service_channel'),(162,70,'game'),(163,70,'status'),(164,70,'from_alert'),(165,73,'title'),(166,73,'url'),(167,72,'from'),(168,74,'service_channel'),(169,67,'version_code'),(170,73,'version_code'),(171,73,'content'),(172,70,'filepath'),(173,73,'apk_url'),(174,73,'fromtable'),(175,67,'soft_id'),(176,73,'package_name');
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
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'s',1,NULL,NULL),(43,43,'s',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'s',1,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',1,NULL,NULL),(71,71,'a',1,NULL,NULL),(72,72,'a',1,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',1,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,76,'a',1,NULL,NULL),(77,77,'a',1,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',1,NULL,NULL),(81,81,'a',1,NULL,NULL),(82,82,'a',1,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'s',1,NULL,NULL),(86,86,'r',1,NULL,NULL),(87,113,'r',1,NULL,NULL),(88,123,'r',1,NULL,NULL),(89,129,'r',1,NULL,NULL),(90,136,'r',1,NULL,NULL),(91,137,'a',0,NULL,NULL),(92,138,'a',0,NULL,NULL),(93,139,'a',1,NULL,NULL),(94,140,'a',0,NULL,NULL),(95,141,'a',0,NULL,NULL),(96,142,'a',0,NULL,NULL),(97,143,'a',0,NULL,NULL),(98,144,'a',0,NULL,NULL),(99,145,'a',0,NULL,NULL),(100,146,'a',0,NULL,NULL),(101,147,'a',0,NULL,NULL),(102,148,'a',0,NULL,NULL),(103,149,'a',0,NULL,NULL),(104,150,'a',0,NULL,NULL),(105,151,'a',0,NULL,NULL),(106,152,'a',0,NULL,NULL),(107,153,'a',0,NULL,NULL),(108,154,'a',0,NULL,NULL),(109,155,'a',0,NULL,NULL),(110,156,'a',0,NULL,NULL),(111,157,'a',0,NULL,NULL),(112,158,'a',0,NULL,NULL),(113,159,'a',0,NULL,NULL),(114,160,'a',0,NULL,NULL),(115,161,'a',0,NULL,NULL),(116,162,'a',0,NULL,NULL),(117,163,'a',0,NULL,NULL),(118,164,'a',0,NULL,NULL),(119,165,'a',0,NULL,NULL),(120,166,'a',0,NULL,NULL),(121,167,'a',0,NULL,NULL),(122,168,'a',0,NULL,NULL),(123,169,'a',0,NULL,NULL),(124,170,'a',1,NULL,NULL),(125,171,'a',0,NULL,NULL),(126,172,'a',0,NULL,NULL),(127,173,'a',0,NULL,NULL),(128,174,'a',0,NULL,NULL),(129,175,'a',0,NULL,NULL),(130,176,'a',0,NULL,NULL),(131,177,'a',0,NULL,NULL),(132,178,'a',0,NULL,NULL),(133,179,'a',0,NULL,NULL),(134,180,'a',0,NULL,NULL),(135,181,'a',0,NULL,NULL),(136,182,'a',0,NULL,NULL),(137,183,'a',0,NULL,NULL),(138,184,'a',0,NULL,NULL),(139,185,'a',0,NULL,NULL),(140,186,'a',0,NULL,NULL),(141,187,'a',0,NULL,NULL),(142,188,'a',0,NULL,NULL),(143,189,'a',0,NULL,NULL),(144,190,'a',0,NULL,NULL),(145,191,'a',0,NULL,NULL),(146,192,'a',0,NULL,NULL),(147,193,'a',0,NULL,NULL),(148,194,'a',0,NULL,NULL),(149,195,'a',0,NULL,NULL),(150,196,'a',0,NULL,NULL),(151,197,'a',0,NULL,NULL),(152,198,'a',0,NULL,NULL),(153,199,'a',0,NULL,NULL),(154,200,'a',0,NULL,NULL),(155,201,'a',0,NULL,NULL),(156,202,'a',0,NULL,NULL),(157,203,'a',0,NULL,NULL),(158,204,'a',0,NULL,NULL),(159,205,'a',0,NULL,NULL),(160,206,'a',0,NULL,NULL),(161,207,'a',0,NULL,NULL),(162,208,'a',0,NULL,NULL),(163,209,'a',0,NULL,NULL),(164,210,'a',0,NULL,NULL),(165,211,'a',0,NULL,NULL),(166,212,'a',0,NULL,NULL),(167,213,'a',1,NULL,NULL),(168,214,'a',0,NULL,NULL),(169,215,'a',0,NULL,NULL),(170,216,'a',1,NULL,NULL),(171,217,'a',1,NULL,NULL),(172,218,'a',1,NULL,NULL),(173,219,'a',0,NULL,NULL),(174,220,'a',0,NULL,NULL),(175,221,'s',0,NULL,NULL),(176,222,'s',1,NULL,NULL),(177,223,'r',1,NULL,NULL),(178,224,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,26),(2,2,21),(3,3,23),(4,4,47),(5,5,31),(6,6,29),(7,7,24),(8,8,8),(9,9,35),(10,9,33),(11,10,31),(12,11,11),(13,12,39),(14,13,24),(15,14,11),(16,15,18),(17,17,77),(18,16,45),(19,18,35),(20,19,16),(21,20,80),(22,21,47),(23,22,27),(24,23,6),(25,24,28),(26,25,35),(27,27,77),(28,26,1),(29,28,83),(30,29,18),(31,30,20),(32,31,25),(33,32,10),(34,33,77),(35,34,29),(36,35,3),(37,36,80),(38,37,25),(39,38,47),(40,39,30),(41,40,17),(42,41,5),(43,42,17),(44,43,77),(45,44,40),(46,45,5),(47,46,80),(48,47,7),(49,48,6),(50,49,16),(51,50,81),(52,51,44),(53,52,34),(54,53,22),(55,54,25),(56,55,81),(57,56,34),(58,57,2),(59,58,11),(60,60,10),(61,59,80),(62,61,22),(63,62,29),(64,63,10),(65,64,7),(66,65,19),(67,66,9),(68,67,7),(69,68,5),(70,69,80),(71,70,36),(72,71,34),(73,72,41),(74,73,1),(75,75,86),(76,74,17),(77,76,16),(78,77,40),(79,78,11),(80,79,83),(81,80,10),(82,81,7),(83,82,17),(84,83,39),(85,84,82),(86,84,81),(87,84,83),(88,85,30),(89,85,27),(90,86,86),(91,87,44),(92,88,22),(93,89,84),(94,90,16),(95,91,29),(96,92,30),(97,93,83),(98,93,82),(99,93,81),(100,94,6),(101,95,5),(102,96,14),(103,97,6),(104,98,34),(105,99,36),(106,101,9),(107,100,3),(108,102,31),(109,103,80),(110,104,11),(111,105,30),(112,106,19),(113,107,1),(114,108,33),(115,109,16),(116,110,41),(117,111,77),(118,112,28),(119,113,18),(120,114,48),(121,115,79),(122,116,39),(123,117,29),(124,118,1),(125,119,83),(126,120,28),(127,121,35),(128,122,22),(129,123,48),(130,124,8),(131,125,86),(132,126,24),(133,127,6),(134,128,2),(135,129,84),(136,130,17),(137,131,28),(138,133,80),(139,132,20),(140,134,3),(141,135,44),(142,136,3),(143,137,5),(144,138,6),(145,139,80),(146,140,40),(147,141,28),(148,142,48),(149,143,10),(150,144,22),(151,145,41),(152,146,83),(153,147,16),(154,148,17),(155,149,30),(156,150,31),(157,151,33),(158,152,28),(159,153,45),(160,154,8),(161,155,33),(162,155,35),(163,156,27),(164,157,10),(165,158,6),(166,159,75),(167,160,5),(168,161,1),(169,162,70),(170,163,9),(171,164,5),(172,165,45),(173,166,29),(174,167,1),(175,168,70),(176,169,11),(177,170,7),(178,171,35),(179,172,36),(180,173,67),(181,174,2),(182,175,69),(183,176,3),(184,177,67),(185,178,70),(186,179,14),(187,180,70),(188,181,30),(189,181,27),(190,182,7),(191,183,3),(192,184,71),(193,185,1),(194,186,49),(195,187,70),(196,188,53),(197,189,70),(198,190,75),(199,191,71),(200,192,67),(201,193,51),(202,194,65),(203,195,73),(204,196,49),(205,197,67),(206,198,72),(207,198,71),(208,198,73),(209,199,59),(210,200,51),(211,201,63),(212,202,51),(213,203,73),(214,204,73),(215,205,73),(216,206,65),(217,207,75),(218,208,57),(219,209,70),(220,210,51),(221,211,70),(222,212,51),(223,213,67);
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
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,26,'<com.uLDpA.WFUabFkwCdhnINo: void a()>',3,'a',NULL),(2,21,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(3,23,'<com.uLDpA.oTokiUwvwpsPvTO: void b()>',3,'a',NULL),(4,47,'<com.droswimsuit.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(5,87,'<dc: void a(int,boolean)>',29,'a',NULL),(6,88,'<bh: void onClick(android.view.View)>',224,'a',NULL),(7,89,'<co: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(8,8,'<com.droswimsuit.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(9,90,'<di: void a(int,boolean)>',29,'a',NULL),(10,87,'<dc: void a(int,boolean)>',10,'s',NULL),(11,91,'<bd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(12,39,'<com.droswimsuit.droimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(13,24,'<com.droswimsuit.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(14,11,'<com.stepbystep.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(15,18,'<com.m_cpgbz.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(16,45,'<com.m_cpgbz.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(17,92,'<hlq.lwORAHu.ay: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(18,35,'<com.stepbystep.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(19,93,'<av: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(20,94,'<hlq.lwORAHu.aa: void onClick(android.view.View)>',218,'a',NULL),(21,47,'<com.droswimsuit.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(22,27,'<com.m_cpgbz.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(23,95,'<cx: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(24,96,'<ai: void onClick(android.view.View)>',224,'a',NULL),(25,35,'<com.stepbystep.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(26,97,'<de: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(27,77,'<hlq.lwORAHu.MyActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(28,83,'<hlq.lwORAHu.AsVOPnvfA10: void onClick(android.view.View)>',86,'a',NULL),(29,98,'<b: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(30,20,'<com.stepbystep.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(31,99,'<h: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(32,100,'<cc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(33,101,'<hlq.lwORAHu.bb: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(34,29,'<com.stepbystep.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(35,102,'<br: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(36,103,'<hlq.lwORAHu.e: void onClick(android.view.View)>',242,'a',NULL),(37,25,'<com.stepbystep.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(38,47,'<com.droswimsuit.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(39,30,'<com.m_cpgbz.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(40,104,'<x: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(41,5,'<com.droswimsuit.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(42,105,'<y: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(43,77,'<hlq.lwORAHu.MyActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(44,106,'<cm: void onClick(android.view.View)>',6,'a',NULL),(45,107,'<bp: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(46,80,'<hlq.lwORAHu.AsVOPnvfA8: void onCreate(android.os.Bundle)>',90,'s',NULL),(47,7,'<com.m_cpgbz.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(48,108,'<cv: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(49,16,'<com.droswimsuit.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(50,81,'<hlq.lwORAHu.AsVOPnvfA9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(51,44,'<com.stepbystep.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(52,34,'<com.droswimsuit.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(53,22,'<com.m_cpgbz.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(54,99,'<h: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(55,81,'<hlq.lwORAHu.AsVOPnvfA9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(56,34,'<com.droswimsuit.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(57,109,'<ar: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(58,11,'<com.stepbystep.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(59,110,'<hlq.lwORAHu.f: void onClick(android.view.View)>',239,'a',NULL),(60,10,'<com.droswimsuit.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(61,22,'<com.m_cpgbz.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(62,88,'<bh: void onClick(android.view.View)>',205,'a',NULL),(63,100,'<cc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(64,111,'<g: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(65,19,'<com.droswimsuit.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(66,9,'<com.stepbystep.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(67,112,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(68,114,'<bv: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(69,103,'<hlq.lwORAHu.e: void onClick(android.view.View)>',221,'a',NULL),(70,115,'<du: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(71,34,'<com.droswimsuit.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(72,41,'<com.stepbystep.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(73,97,'<de: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(74,104,'<x: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(75,86,'<hlq.lwORAHu.AsVOPnvfA12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(76,16,'<com.droswimsuit.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(77,40,'<com.m_cpgbz.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(78,11,'<com.stepbystep.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(79,83,'<hlq.lwORAHu.AsVOPnvfA10: void onClick(android.view.View)>',77,'a',NULL),(80,10,'<com.droswimsuit.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(81,112,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(82,17,'<com.stepbystep.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(83,39,'<com.droswimsuit.droimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(84,82,'<hlq.lwORAHu.AsVOPnvfA2: void a(int,boolean)>',10,'s',NULL),(85,116,'<dc: void a(int,boolean)>',10,'s',NULL),(86,86,'<hlq.lwORAHu.AsVOPnvfA12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(87,44,'<com.stepbystep.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(88,22,'<com.m_cpgbz.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(89,84,'<hlq.lwORAHu.UpdateActivity: void onCreate(android.os.Bundle)>',13,'s',NULL),(90,117,'<ax: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(91,29,'<com.stepbystep.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(92,30,'<com.m_cpgbz.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(93,82,'<hlq.lwORAHu.AsVOPnvfA2: void a(int,boolean)>',43,'a',NULL),(94,108,'<cv: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(95,107,'<bp: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(96,14,'<com.m_cpgbz.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(97,108,'<cv: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(98,34,'<com.droswimsuit.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(99,36,'<com.m_cpgbz.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(100,3,'<com.m_cpgbz.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(101,9,'<com.stepbystep.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(102,31,'<com.droswimsuit.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(103,94,'<hlq.lwORAHu.aa: void onClick(android.view.View)>',239,'a',NULL),(104,91,'<bd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(105,30,'<com.m_cpgbz.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(106,19,'<com.droswimsuit.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(107,1,'<com.m_cpgbz.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(108,33,'<com.stepbystep.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(109,93,'<av: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(110,118,'<ao: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(111,119,'<hlq.lwORAHu.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(112,28,'<com.droswimsuit.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(113,98,'<b: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(114,48,'<com.stepbystep.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(115,79,'<hlq.lwORAHu.AsVOPnvfA16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(116,120,'<am: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(117,29,'<com.stepbystep.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(118,97,'<de: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(119,83,'<hlq.lwORAHu.AsVOPnvfA10: void onClick(android.view.View)>',55,'a',NULL),(120,28,'<com.droswimsuit.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(121,35,'<com.stepbystep.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(122,121,'<bp: void onClick(android.view.View)>',218,'a',NULL),(123,48,'<com.stepbystep.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(124,8,'<com.droswimsuit.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(125,86,'<hlq.lwORAHu.AsVOPnvfA12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(126,89,'<co: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(127,6,'<com.stepbystep.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(128,2,'<com.m_cpgbz.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(129,84,'<hlq.lwORAHu.UpdateActivity: void onClick(android.view.View)>',26,'a',NULL),(130,17,'<com.stepbystep.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(131,96,'<ai: void onClick(android.view.View)>',205,'a',NULL),(132,20,'<com.stepbystep.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(133,110,'<hlq.lwORAHu.f: void onClick(android.view.View)>',218,'a',NULL),(134,3,'<com.m_cpgbz.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(135,122,'<aj: void onClick(android.view.View)>',6,'a',NULL),(136,3,'<com.m_cpgbz.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(137,107,'<bp: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(138,108,'<cv: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(139,80,'<hlq.lwORAHu.AsVOPnvfA8: void onCreate(android.os.Bundle)>',39,'s',NULL),(140,40,'<com.m_cpgbz.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(141,28,'<com.droswimsuit.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(142,48,'<com.stepbystep.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(143,100,'<cc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(144,121,'<bp: void onClick(android.view.View)>',239,'a',NULL),(145,41,'<com.stepbystep.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(146,83,'<hlq.lwORAHu.AsVOPnvfA10: void onClick(android.view.View)>',68,'a',NULL),(147,93,'<av: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(148,104,'<x: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(149,30,'<com.m_cpgbz.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(150,31,'<com.droswimsuit.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(151,33,'<com.stepbystep.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(152,28,'<com.droswimsuit.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(153,45,'<com.m_cpgbz.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(154,124,'<du: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(155,90,'<di: void a(int,boolean)>',10,'s',NULL),(156,27,'<com.m_cpgbz.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(157,10,'<com.droswimsuit.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(158,6,'<com.stepbystep.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(159,75,'<jgf.TmcEojp.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(160,5,'<com.droswimsuit.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(161,125,'<da: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(162,126,'<jgf.TmcEojp.ag: void onClick(android.view.View)>',218,'a',NULL),(163,127,'<i: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(164,107,'<bp: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(165,45,'<com.m_cpgbz.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(166,29,'<com.stepbystep.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(167,97,'<de: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(168,128,'<jgf.TmcEojp.al: void onClick(android.view.View)>',221,'a',NULL),(169,91,'<bd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(170,7,'<com.m_cpgbz.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(171,35,'<com.stepbystep.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(172,36,'<com.m_cpgbz.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(173,67,'<jgf.TmcEojp.MyActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(174,2,'<com.m_cpgbz.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(175,69,'<jgf.TmcEojp.UTfelpdQf16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(176,102,'<br: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(177,130,'<jgf.TmcEojp.ae: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(178,70,'<jgf.TmcEojp.UTfelpdQf8: void onCreate(android.os.Bundle)>',33,'s',NULL),(179,14,'<com.m_cpgbz.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(180,128,'<jgf.TmcEojp.al: void onClick(android.view.View)>',242,'a',NULL),(181,116,'<dc: void a(int,boolean)>',57,'a',NULL),(182,112,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(183,102,'<br: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(184,71,'<jgf.TmcEojp.UTfelpdQf9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(185,1,'<com.m_cpgbz.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(186,131,'<po.echoqih.adcmcwgcff.MenuActivity$1: void onClick(android.view.View)>',7,'a',NULL),(187,126,'<jgf.TmcEojp.ag: void onClick(android.view.View)>',239,'a',NULL),(188,53,'<po.echoqih.adcmcwgcff.type.original.OriginalActivity: void startMaze()>',8,'a',NULL),(189,132,'<jgf.TmcEojp.am: void onClick(android.view.View)>',239,'a',NULL),(190,75,'<jgf.TmcEojp.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(191,71,'<jgf.TmcEojp.UTfelpdQf9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(192,133,'<jgf.TmcEojp.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(193,51,'<po.echoqih.adcmcwgcff.GameTypeActivity: void startLongGame()>',4,'a',NULL),(194,65,'<po.echoqih.adcmcwgcff.type.ultimate.UltimateActivity: void showHighCoreButton()>',4,'a',NULL),(195,73,'<jgf.TmcEojp.UTfelpdQf10: void onClick(android.view.View)>',66,'a',NULL),(196,134,'<po.echoqih.adcmcwgcff.MenuActivity$2: void onClick(android.view.View)>',7,'a',NULL),(197,135,'<jgf.TmcEojp.af: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(198,72,'<jgf.TmcEojp.UTfelpdQf2: void a(int,boolean)>',10,'s',NULL),(199,59,'<po.echoqih.adcmcwgcff.type.adventurer.AdventurerActivity: void startMaze()>',8,'a',NULL),(200,51,'<po.echoqih.adcmcwgcff.GameTypeActivity: void startHunterGame()>',4,'a',NULL),(201,63,'<po.echoqih.adcmcwgcff.type.longmaze.LongActivity: void startMaze()>',8,'a',NULL),(202,51,'<po.echoqih.adcmcwgcff.GameTypeActivity: void startUltimateGame()>',4,'a',NULL),(203,73,'<jgf.TmcEojp.UTfelpdQf10: void onClick(android.view.View)>',53,'a',NULL),(204,73,'<jgf.TmcEojp.UTfelpdQf10: void onClick(android.view.View)>',84,'a',NULL),(205,73,'<jgf.TmcEojp.UTfelpdQf10: void onClick(android.view.View)>',75,'a',NULL),(206,65,'<po.echoqih.adcmcwgcff.type.ultimate.UltimateActivity: void startMaze()>',4,'a',NULL),(207,75,'<jgf.TmcEojp.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(208,57,'<po.echoqih.adcmcwgcff.type.hunter.HunterActivity: void startMaze()>',8,'a',NULL),(209,132,'<jgf.TmcEojp.am: void onClick(android.view.View)>',218,'a',NULL),(210,51,'<po.echoqih.adcmcwgcff.GameTypeActivity: void startAdventurerGame()>',4,'a',NULL),(211,70,'<jgf.TmcEojp.UTfelpdQf8: void onCreate(android.os.Bundle)>',84,'s',NULL),(212,51,'<po.echoqih.adcmcwgcff.GameTypeActivity: void startOriginalGame()>',4,'a',NULL),(213,67,'<jgf.TmcEojp.MyActivity: void onCreate(android.os.Bundle)>',50,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,6),(2,3,7),(3,4,6),(4,8,1),(5,9,8),(6,10,1),(7,11,1),(8,12,9),(9,13,1),(10,14,10),(11,17,7),(12,20,7),(13,24,12),(14,25,7),(15,26,7),(16,27,14),(17,29,7),(18,30,7),(19,31,1),(20,35,1),(21,36,1),(22,38,1),(23,40,1),(24,41,1),(25,42,8),(26,47,1),(27,49,14),(28,50,1),(29,52,1),(30,53,7),(31,55,1),(32,64,1),(33,65,1),(34,69,1),(35,71,1),(36,72,3),(37,73,7),(38,76,1),(39,78,1),(40,79,7),(41,81,1),(42,83,7),(43,84,1),(44,86,9),(45,88,16),(46,89,7),(47,90,7),(48,91,7),(49,92,7),(50,93,7),(51,95,7),(52,98,17),(53,100,7),(54,102,3),(55,107,18),(56,109,17),(57,110,19),(58,111,7),(59,117,1),(60,119,1),(61,123,1),(62,126,1),(63,129,1),(64,130,1),(65,131,1),(66,133,1),(67,134,3),(68,135,1),(69,137,20),(70,138,1),(71,141,21),(72,142,7),(73,145,8),(74,148,7),(75,153,3),(76,154,7),(77,157,22),(78,158,7),(79,159,1),(80,161,1),(81,162,9),(82,164,1),(83,165,23),(84,166,7),(85,168,7),(86,170,7),(87,171,7),(88,173,7),(89,179,22),(90,180,7),(91,181,1),(92,182,1),(93,183,24),(94,184,7),(95,185,1),(96,187,19),(97,188,7),(98,189,1),(99,191,7),(100,193,7),(101,194,1),(102,196,1),(103,197,12),(104,198,7),(105,200,1),(106,201,7),(107,202,1),(108,203,25),(109,204,26),(110,205,27),(111,206,21),(112,207,7),(113,208,21),(114,209,7),(115,210,7),(116,211,7),(117,216,7),(118,219,7),(119,220,7),(120,222,28),(121,223,7),(122,224,19),(123,231,1),(124,233,1),(125,234,7),(126,235,1),(127,236,1),(128,237,7),(129,238,1),(130,240,1),(131,242,1),(132,243,1),(133,244,1),(134,245,1),(135,249,1),(136,250,1),(137,251,1),(138,252,1),(139,258,7),(140,259,7),(141,271,3),(142,273,26),(143,275,7),(144,276,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,3),(2,3,3),(3,4,3),(4,8,2),(5,10,4),(6,11,2),(7,13,4),(8,31,2),(9,35,4),(10,36,2),(11,38,2),(12,40,4),(13,41,4),(14,47,2),(15,50,4),(16,52,2),(17,55,4),(18,64,2),(19,65,4),(20,69,2),(21,71,4),(22,76,2),(23,78,4),(24,81,2),(25,84,4),(26,117,2),(27,119,4),(28,123,2),(29,126,4),(30,129,2),(31,130,2),(32,131,4),(33,133,4),(34,135,2),(35,138,4),(36,159,2),(37,161,4),(38,164,6),(39,181,2),(40,182,4),(41,185,2),(42,189,4),(43,194,2),(44,196,4),(45,200,2),(46,202,4),(47,231,2),(48,233,4),(49,235,2),(50,236,4),(51,238,2),(52,240,4),(53,242,2),(54,243,4),(55,244,2),(56,245,4),(57,249,2),(58,250,4),(59,251,2),(60,252,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'pocket/sdiueur/FrozenBubble'),(2,5,'pocket/sdiueur/FrozenBubble'),(3,6,'com/droswimsuit/GameService'),(4,7,'com/droswimsuit/Myhall'),(5,12,'com/droswimsuit/GameService'),(6,14,'com/droswimsuit/GameService'),(7,15,'com/stepbystep/Myhall'),(8,16,'com/droswimsuit/GameService'),(9,18,'com/droswimsuit/GameService'),(10,19,'com/droswimsuit/GameService'),(11,21,'com/m_cpgbz/GameService'),(12,22,'shd/nsnamtwl/nlogllb/wvvoqnwbrwtbg2_nh/GloftNYN2'),(13,24,'com/m_cpgbz/GameService'),(14,23,'com/stepbystep/GameInfo'),(15,27,'com/droswimsuit/GameService'),(16,28,'com/m_cpgbz/GameInfo'),(17,34,'hlq/lwORAHu/AsVOPnvfA11'),(18,33,'com/m_cpgbz/Myhall'),(19,32,'com/stepbystep/GameAlertDialog'),(20,39,'com/stepbystep/GameInfo'),(21,37,'hlq/lwORAHu/AsVOPnvfA10'),(22,44,'shd/nsnamtwl/nlogllb/wvvoqnwbrwtbg2_nh/GloftNYN2'),(23,43,'com/droswimsuit/Myhall'),(24,45,'com/stepbystep/Myhall'),(25,48,'com/stepbystep/GameService'),(26,46,'com/m_cpgbz/Myhall'),(27,49,'com/droswimsuit/GameService'),(28,54,'com/droswimsuit/GameService'),(29,51,'com/m_cpgbz/GameAlertDialog'),(30,57,'hlq/lwORAHu/AsVOPnvfA11'),(31,58,'com/m_cpgbz/image/ImageTestActivity'),(32,56,'com/stepbystep/Myhall'),(33,59,'com/droswimsuit/Myhall'),(34,60,'hlq/lwORAHu/AsVOPnvfA11'),(35,63,'com/droswimsuit/GameService'),(36,62,'com/stepbystep/Myhall'),(37,61,'com/m_cpgbz/GameInfo'),(38,66,'com/stepbystep/GameInfo'),(39,67,'com/m_cpgbz/GameService'),(40,68,'com/droswimsuit/GameAlertDialog'),(41,70,'hlq/lwORAHu/AsVOPnvfA8'),(42,74,'com/stepbystep/GameInfo'),(43,75,'com/droswimsuit/Myhall'),(44,77,'com/m_cpgbz/Myhall'),(45,80,'com/droswimsuit/GameInfo'),(46,82,'com/m_cpgbz/Myhall'),(47,85,'com/droswimsuit/GameService'),(48,86,'com/stepbystep/GameService'),(49,87,'com/m_cpgbz/GameInfo'),(50,88,'com/stepbystep/GameService'),(51,94,'com/stepbystep/GameService'),(52,96,'com/m_cpgbz/Myhall'),(53,97,'com/stepbystep/GameInfo'),(54,98,'hlq/lwORAHu/AsVOPnvfA11'),(55,99,'com/droswimsuit/GameInfo'),(56,101,'com/stepbystep/Myhall'),(57,103,'com/droswimsuit/GameInfo'),(58,104,'com/m_cpgbz/Myhall'),(59,106,'hlq/lwORAHu/AsVOPnvfA11'),(60,105,'com/stepbystep/GameInfo'),(61,107,'com/droswimsuit/GameService'),(62,108,'com/m_cpgbz/GameService'),(63,109,'hlq/lwORAHu/AsVOPnvfA11'),(64,110,'com/droswimsuit/GameService'),(65,112,'com/m_cpgbz/Myhall'),(66,113,'hlq/lwORAHu/AsVOPnvfA11'),(67,115,'com/stepbystep/Myhall'),(68,114,'com/droswimsuit/Myhall'),(69,116,'com/m_cpgbz/GameInfo'),(70,118,'com/stepbystep/Myhall'),(71,120,'com/droswimsuit/Myhall'),(72,121,'com/m_cpgbz/GameService'),(73,122,'com/stepbystep/Myhall'),(74,125,'com/m_cpgbz/GameService'),(75,124,'com/droswimsuit/GameInfo'),(76,127,'com/stepbystep/GameService'),(77,128,'com/m_cpgbz/GameInfo'),(78,132,'com/stepbystep/Myhall'),(79,136,'com/droswimsuit/GameInfo'),(80,137,'com/m_cpgbz/GameService'),(81,139,'com/stepbystep/GameInfo'),(82,140,'com/droswimsuit/GameInfo'),(83,141,'com/m_cpgbz/GameService'),(84,143,'hlq/lwORAHu/AsVOPnvfA16'),(85,144,'com/droswimsuit/Myhall'),(86,146,'com/stepbystep/GameService'),(87,147,'shd/nsnamtwl/nlogllb/wvvoqnwbrwtbg2_nh/GloftNYN2'),(88,149,'com/stepbystep/Myhall'),(89,150,'com/m_cpgbz/Myhall'),(90,151,'hlq/lwORAHu/AsVOPnvfA8'),(91,152,'com/droswimsuit/Myhall'),(92,155,'com/droswimsuit/GameService'),(93,156,'hlq/lwORAHu/AsVOPnvfA11'),(94,157,'com/stepbystep/GameService'),(95,160,'com/stepbystep/GameService'),(96,162,'com/m_cpgbz/GameService'),(97,163,'com/stepbystep/GameService'),(98,165,'com/m_cpgbz/GameService'),(99,167,'com/stepbystep/GameService'),(100,169,'com/m_cpgbz/Myhall'),(101,172,'com/stepbystep/qimg/ImageTestActivity'),(102,174,'com/droswimsuit/Myhall'),(103,175,'com/stepbystep/Myhall'),(104,176,'hlq/lwORAHu/AsVOPnvfA11'),(105,178,'com/droswimsuit/Myhall'),(106,179,'com/stepbystep/GameService'),(107,177,'com/m_cpgbz/GameInfo'),(108,183,'com/stepbystep/GameService'),(109,187,'com/stepbystep/GameService'),(110,186,'com/droswimsuit/Myhall'),(111,190,'com/stepbystep/Myhall'),(112,192,'com/droswimsuit/GameInfo'),(113,195,'com/droswimsuit/GameService'),(114,197,'com/m_cpgbz/GameService'),(115,199,'com/stepbystep/GameService'),(116,203,'com/stepbystep/GameService'),(117,204,'jgf/TmcEojp/UTfelpdQf11'),(118,205,'com/droswimsuit/GameService'),(119,206,'com/stepbystep/GameService'),(120,208,'com/droswimsuit/GameService'),(121,212,'com/droswimsuit/Myhall'),(122,213,'com/m_cpgbz/GameService'),(123,214,'com/stepbystep/GameService'),(124,215,'com/m_cpgbz/Myhall'),(125,217,'com/stepbystep/GameInfo'),(126,218,'com/m_cpgbz/GameService'),(127,221,'jgf/TmcEojp/UTfelpdQf11'),(128,222,'com/m_cpgbz/GameService'),(129,224,'com/m_cpgbz/GameService'),(130,225,'com/m_cpgbz/GameService'),(131,226,'po/echoqih/adcmcwgcff/MenuActivity'),(132,228,'po/echoqih/adcmcwgcff/MenuActivity'),(133,227,'com/m_cpgbz/GameInfo'),(134,229,'jgf/TmcEojp/UTfelpdQf11'),(135,230,'com/m_cpgbz/GameInfo'),(136,232,'com/m_cpgbz/image/ImageTestActivity'),(137,239,'com/m_cpgbz/GameService'),(138,241,'po/echoqih/adcmcwgcff/GameTypeActivity'),(139,246,'po/echoqih/adcmcwgcff/type/original/OriginalDarkMazeActivity'),(140,247,'po/echoqih/adcmcwgcff/type/original/OriginalTimeMazeActivity'),(141,248,'po/echoqih/adcmcwgcff/type/original/OriginalMazeActivity'),(142,253,'jgf/TmcEojp/UTfelpdQf11'),(143,254,'jgf/TmcEojp/UTfelpdQf8'),(144,255,'jgf/TmcEojp/UTfelpdQf16'),(145,256,'po/echoqih/adcmcwgcff/type/longmaze/LongActivity'),(146,257,'po/echoqih/adcmcwgcff/ScoreActivity'),(147,260,'po/echoqih/adcmcwgcff/ControlActivity'),(148,261,'po/echoqih/adcmcwgcff/MenuActivity'),(149,262,'jgf/TmcEojp/UTfelpdQf11'),(150,263,'po/echoqih/adcmcwgcff/type/adventurer/AdventurerMonsterMazeActivity'),(151,264,'po/echoqih/adcmcwgcff/type/adventurer/AdventurerMazeActivity'),(152,265,'po/echoqih/adcmcwgcff/type/adventurer/AdventurerDarkMazeActivity'),(153,266,'po/echoqih/adcmcwgcff/type/hunter/HunterActivity'),(154,267,'po/echoqih/adcmcwgcff/type/longmaze/LongMazeActivity'),(155,268,'po/echoqih/adcmcwgcff/type/ultimate/UltimateActivity'),(156,269,'jgf/TmcEojp/UTfelpdQf8'),(157,270,'jgf/TmcEojp/UTfelpdQf10'),(158,272,'po/echoqih/adcmcwgcff/type/ultimate/UltimateMazeActivity'),(159,273,'jgf/TmcEojp/UTfelpdQf11'),(160,274,'po/echoqih/adcmcwgcff/type/hunter/HunterMazeActivity'),(161,277,'po/echoqih/adcmcwgcff/type/adventurer/AdventurerActivity'),(162,278,'jgf/TmcEojp/UTfelpdQf11'),(163,279,'po/echoqih/adcmcwgcff/type/original/OriginalActivity'),(164,280,'jgf/TmcEojp/UTfelpdQf11');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,4,3),(4,9,4),(5,17,5),(6,20,6),(7,25,7),(8,26,8),(9,29,9),(10,30,10),(11,42,11),(12,53,12),(13,73,13),(14,79,14),(15,83,15),(16,89,16),(17,90,17),(18,91,18),(19,92,19),(20,93,20),(21,95,21),(22,100,22),(23,111,23),(24,142,24),(25,145,25),(26,148,26),(27,154,27),(28,158,28),(29,166,29),(30,168,30),(31,170,31),(32,171,32),(33,173,33),(34,180,34),(35,184,35),(36,188,36),(37,191,37),(38,193,38),(39,198,39),(40,201,40),(41,207,41),(42,209,42),(43,210,43),(44,211,44),(45,216,45),(46,219,46),(47,220,47),(48,223,48),(49,234,49),(50,237,50),(51,258,51),(52,259,52),(53,275,53),(54,276,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,23,'id'),(2,23,'from_alert'),(3,23,'detail_flag'),(4,28,'game'),(5,28,'fromtype'),(6,32,'title'),(7,33,'clicked'),(8,32,'btn_txt'),(9,32,'need_adb_flag'),(10,32,'cont'),(11,32,'close_flag'),(12,37,'title'),(13,37,'btn_txt'),(14,37,'need_adb_flag'),(15,37,'cont'),(16,37,'close_flag'),(17,43,'title'),(18,43,'nextclassid'),(19,43,'clicked'),(20,46,'title'),(21,46,'nextclassid'),(22,46,'clicked'),(23,51,'title'),(24,51,'btn_txt'),(25,51,'need_adb_flag'),(26,51,'cont'),(27,51,'close_flag'),(28,56,'title'),(29,56,'nextclassid'),(30,56,'clicked'),(31,59,'clicked'),(32,61,'title'),(33,61,'game'),(34,62,'clicked'),(35,61,'fromtype'),(36,68,'title'),(37,68,'btn_txt'),(38,68,'need_adb_flag'),(39,68,'cont'),(40,68,'close_flag'),(41,70,'game'),(42,70,'fromtype'),(43,75,'nextclassid'),(44,75,'clicked'),(45,80,'title'),(46,82,'title'),(47,82,'nextclassid'),(48,82,'clicked'),(49,87,'title'),(50,87,'game'),(51,87,'fromtype'),(52,96,'clicked'),(53,97,'title'),(54,99,'title'),(55,101,'nextclassid'),(56,101,'clicked'),(57,104,'title'),(58,104,'nextclassid'),(59,104,'clicked'),(60,105,'title'),(61,114,'title'),(62,114,'nextclassid'),(63,114,'clicked'),(64,116,'id'),(65,116,'from_alert'),(66,116,'detail_flag'),(67,118,'clicked'),(68,120,'clicked'),(69,122,'clicked'),(70,124,'id'),(71,124,'from_table'),(72,124,'detail_flag'),(73,128,'game'),(74,128,'fromtype'),(75,132,'title'),(76,132,'nextclassid'),(77,132,'clicked'),(78,140,'title'),(79,143,'popurl'),(80,143,'poptitle'),(81,150,'clicked'),(82,151,'id'),(83,151,'from_alert'),(84,151,'detail_flag'),(85,169,'nextclassid'),(86,169,'clicked'),(87,174,'clicked'),(88,175,'clicked'),(89,177,'game'),(90,177,'fromtype'),(91,186,'title'),(92,186,'nextclassid'),(93,186,'clicked'),(94,190,'title'),(95,190,'nextclassid'),(96,190,'clicked'),(97,212,'clicked'),(98,215,'clicked'),(99,217,'title'),(100,227,'title'),(101,227,'game'),(102,227,'fromtype'),(103,230,'game'),(104,230,'fromtype'),(105,246,'mazeSize'),(106,247,'mazeSize'),(107,248,'mazeSize'),(108,254,'game'),(109,254,'fromtype'),(110,255,'popurl'),(111,255,'poptitle'),(112,263,'mazeSize'),(113,264,'mazeSize'),(114,265,'mazeSize'),(115,267,'mazeSize'),(116,267,'long_type'),(117,269,'id'),(118,269,'from_alert'),(119,269,'detail_flag'),(120,270,'title'),(121,270,'btn_txt'),(122,270,'need_adb_flag'),(123,270,'cont'),(124,270,'close_flag'),(125,274,'sheep_size'),(126,274,'mazeSize');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,1),(6,7,1),(7,8,1),(8,9,1),(9,10,1),(10,11,1),(11,12,1),(12,13,1),(13,14,1),(14,15,1),(15,16,1),(16,17,1),(17,18,1),(18,19,3),(19,20,1),(20,21,3),(21,22,3),(22,23,1),(23,24,1),(24,25,1),(25,26,1),(26,27,1),(27,28,4),(28,29,4),(29,30,4),(30,32,1),(31,33,1),(32,34,1),(33,35,1),(34,36,1),(35,37,4),(36,37,5),(37,39,1),(38,40,1),(39,41,1),(40,42,1),(41,43,1),(42,44,5),(43,44,4),(44,45,11),(45,46,13),(46,47,13),(47,48,15),(48,49,13),(49,50,11),(50,51,5),(51,52,11),(52,53,11),(53,54,13),(54,55,15),(55,56,11),(56,57,5),(57,58,13),(58,59,29),(59,61,7),(60,62,1),(61,63,1),(62,64,1),(63,65,1),(64,66,1),(65,67,30),(66,67,4),(67,68,4),(68,68,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,3,1),(2,14,2),(3,20,2),(4,23,2),(5,24,2),(6,25,2),(7,26,2),(8,27,2),(9,32,2),(10,36,2),(11,39,2),(12,43,2),(13,45,5),(14,46,5),(15,47,5),(16,49,5),(17,50,5),(18,52,5),(19,53,5),(20,54,5),(21,56,5),(22,58,5),(23,61,1),(24,61,3),(25,62,2),(26,66,2);
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
INSERT INTO `IFData` VALUES (1,45,'package',NULL,NULL,NULL,NULL,NULL),(2,46,'package',NULL,NULL,NULL,NULL,NULL),(3,47,'package',NULL,NULL,NULL,NULL,NULL),(4,49,'package',NULL,NULL,NULL,NULL,NULL),(5,50,'package',NULL,NULL,NULL,NULL,NULL),(6,52,'package',NULL,NULL,NULL,NULL,NULL),(7,53,'package',NULL,NULL,NULL,NULL,NULL),(8,54,'package',NULL,NULL,NULL,NULL,NULL),(9,56,'package',NULL,NULL,NULL,NULL,NULL),(10,58,'package',NULL,NULL,NULL,NULL,NULL),(11,61,'@2131165656','@2131165657',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,4,'(.*)','(.*)'),(2,26,'application','vnd.android.package-archive'),(3,29,'application','vnd.android.package-archive'),(4,30,'application','vnd.android.package-archive'),(5,73,'application','vnd.android.package-archive'),(6,79,'application','vnd.android.package-archive'),(7,83,'application','vnd.android.package-archive'),(8,89,'application','vnd.android.package-archive'),(9,90,'application','vnd.android.package-archive'),(10,91,'application','vnd.android.package-archive'),(11,93,'application','vnd.android.package-archive'),(12,142,'application','vnd.android.package-archive'),(13,148,'application','vnd.android.package-archive'),(14,154,'application','vnd.android.package-archive'),(15,158,'application','vnd.android.package-archive'),(16,166,'application','vnd.android.package-archive'),(17,168,'application','vnd.android.package-archive'),(18,170,'application','vnd.android.package-archive'),(19,171,'application','vnd.android.package-archive'),(20,198,'application','vnd.android.package-archive'),(21,207,'application','vnd.android.package-archive'),(22,209,'application','vnd.android.package-archive'),(23,210,'application','vnd.android.package-archive'),(24,211,'application','vnd.android.package-archive'),(25,216,'application','vnd.android.package-archive'),(26,219,'application','vnd.android.package-archive'),(27,275,'application','vnd.android.package-archive'),(28,276,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'pocket.sdiueur'),(2,5,'pocket.sdiueur'),(3,6,'com.droswimsuit'),(4,7,'com.droswimsuit'),(5,8,'(.*)'),(6,10,''),(7,11,''),(8,12,'com.droswimsuit'),(9,13,'(.*)'),(10,14,'com.droswimsuit'),(11,15,'com.stepbystep'),(12,16,'com.droswimsuit'),(13,18,'com.droswimsuit'),(14,19,'com.droswimsuit'),(15,21,'com.m_cpgbz'),(16,22,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(17,24,'com.m_cpgbz'),(18,23,'com.stepbystep'),(19,27,'com.droswimsuit'),(20,28,'com.m_cpgbz'),(21,31,'(.*)'),(22,34,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(23,33,'com.m_cpgbz'),(24,35,''),(25,32,'com.stepbystep'),(26,36,''),(27,39,'com.stepbystep'),(28,38,'NULL-CONSTANT'),(29,40,'(.*)'),(30,37,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(31,41,'NULL-CONSTANT'),(32,44,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(33,43,'com.droswimsuit'),(34,45,'com.stepbystep'),(35,47,'(.*)'),(36,48,'com.stepbystep'),(37,46,'com.m_cpgbz'),(38,49,'com.droswimsuit'),(39,50,''),(40,52,''),(41,54,'com.droswimsuit'),(42,51,'com.m_cpgbz'),(43,55,'(.*)'),(44,57,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(45,58,'com.m_cpgbz'),(46,56,'com.stepbystep'),(47,59,'com.droswimsuit'),(48,60,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(49,63,'com.droswimsuit'),(50,62,'com.stepbystep'),(51,61,'com.m_cpgbz'),(52,64,'(.*)'),(53,66,'com.stepbystep'),(54,65,'(.*)'),(55,67,'com.m_cpgbz'),(56,68,'com.droswimsuit'),(57,69,'NULL-CONSTANT'),(58,70,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(59,71,'NULL-CONSTANT'),(60,74,'com.stepbystep'),(61,76,'(.*)'),(62,75,'com.droswimsuit'),(63,77,'com.m_cpgbz'),(64,78,''),(65,80,'com.droswimsuit'),(66,81,''),(67,84,'(.*)'),(68,82,'com.m_cpgbz'),(69,85,'com.droswimsuit'),(70,86,'com.stepbystep'),(71,87,'com.m_cpgbz'),(72,88,'com.stepbystep'),(73,94,'com.stepbystep'),(74,96,'com.m_cpgbz'),(75,97,'com.stepbystep'),(76,98,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(77,99,'com.droswimsuit'),(78,101,'com.stepbystep'),(79,103,'com.droswimsuit'),(80,104,'com.m_cpgbz'),(81,105,'com.stepbystep'),(82,106,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(83,107,'com.droswimsuit'),(84,108,'com.m_cpgbz'),(85,109,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(86,110,'com.droswimsuit'),(87,112,'com.m_cpgbz'),(88,113,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(89,115,'com.stepbystep'),(90,114,'com.droswimsuit'),(91,117,'(.*)'),(92,116,'com.m_cpgbz'),(93,118,'com.stepbystep'),(94,119,''),(95,120,'com.droswimsuit'),(96,121,'com.m_cpgbz'),(97,123,''),(98,122,'com.stepbystep'),(99,125,'com.m_cpgbz'),(100,126,'(.*)'),(101,124,'com.droswimsuit'),(102,127,'com.stepbystep'),(103,128,'com.m_cpgbz'),(104,129,'(.*)'),(105,130,'(.*)'),(106,131,'(.*)'),(107,133,''),(108,132,'com.stepbystep'),(109,135,''),(110,136,'com.droswimsuit'),(111,138,'(.*)'),(112,139,'com.stepbystep'),(113,137,'com.m_cpgbz'),(114,140,'com.droswimsuit'),(115,141,'com.m_cpgbz'),(116,143,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(117,144,'com.droswimsuit'),(118,146,'com.stepbystep'),(119,147,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(120,149,'com.stepbystep'),(121,150,'com.m_cpgbz'),(122,151,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(123,152,'com.droswimsuit'),(124,155,'com.droswimsuit'),(125,156,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(126,157,'com.stepbystep'),(127,159,'NULL-CONSTANT'),(128,160,'com.stepbystep'),(129,161,'NULL-CONSTANT'),(130,162,'com.m_cpgbz'),(131,163,'com.stepbystep'),(132,165,'com.m_cpgbz'),(133,167,'com.stepbystep'),(134,169,'com.m_cpgbz'),(135,172,'com.stepbystep'),(136,174,'com.droswimsuit'),(137,176,'shd.nsnamtwl.nlogllb.wvvoqnwbrwtbg2_nh'),(138,175,'com.stepbystep'),(139,178,'com.droswimsuit'),(140,179,'com.stepbystep'),(141,177,'com.m_cpgbz'),(142,181,'(.*)'),(143,182,''),(144,183,'com.stepbystep'),(145,185,''),(146,187,'com.stepbystep'),(147,186,'com.droswimsuit'),(148,189,'(.*)'),(149,190,'com.stepbystep'),(150,192,'com.droswimsuit'),(151,194,'(.*)'),(152,195,'com.droswimsuit'),(153,196,'(.*)'),(154,197,'com.m_cpgbz'),(155,199,'com.stepbystep'),(156,200,'(.*)'),(157,202,'(.*)'),(158,203,'com.stepbystep'),(159,204,'po.echoqih.adcmcwgcff'),(160,205,'com.droswimsuit'),(161,206,'com.stepbystep'),(162,208,'com.droswimsuit'),(163,212,'com.droswimsuit'),(164,213,'com.m_cpgbz'),(165,214,'com.stepbystep'),(166,215,'com.m_cpgbz'),(167,217,'com.stepbystep'),(168,218,'com.m_cpgbz'),(169,221,'po.echoqih.adcmcwgcff'),(170,222,'com.m_cpgbz'),(171,224,'com.m_cpgbz'),(172,225,'com.m_cpgbz'),(173,226,'po.echoqih.adcmcwgcff'),(174,228,'po.echoqih.adcmcwgcff'),(175,227,'com.m_cpgbz'),(176,229,'po.echoqih.adcmcwgcff'),(177,230,'com.m_cpgbz'),(178,231,'(.*)'),(179,232,'com.m_cpgbz'),(180,233,''),(181,235,''),(182,236,'(.*)'),(183,238,'(.*)'),(184,239,'com.m_cpgbz'),(185,240,'(.*)'),(186,241,'po.echoqih.adcmcwgcff'),(187,242,'(.*)'),(188,243,''),(189,244,''),(190,245,'(.*)'),(191,246,'po.echoqih.adcmcwgcff'),(192,247,'po.echoqih.adcmcwgcff'),(193,248,'po.echoqih.adcmcwgcff'),(194,249,'(.*)'),(195,250,''),(196,251,''),(197,252,'(.*)'),(198,253,'po.echoqih.adcmcwgcff'),(199,254,'po.echoqih.adcmcwgcff'),(200,255,'po.echoqih.adcmcwgcff'),(201,256,'po.echoqih.adcmcwgcff'),(202,257,'po.echoqih.adcmcwgcff'),(203,260,'po.echoqih.adcmcwgcff'),(204,261,'po.echoqih.adcmcwgcff'),(205,262,'po.echoqih.adcmcwgcff'),(206,263,'po.echoqih.adcmcwgcff'),(207,264,'po.echoqih.adcmcwgcff'),(208,265,'po.echoqih.adcmcwgcff'),(209,266,'po.echoqih.adcmcwgcff'),(210,267,'po.echoqih.adcmcwgcff'),(211,268,'po.echoqih.adcmcwgcff'),(212,269,'po.echoqih.adcmcwgcff'),(213,270,'po.echoqih.adcmcwgcff'),(214,272,'po.echoqih.adcmcwgcff'),(215,273,'po.echoqih.adcmcwgcff'),(216,274,'po.echoqih.adcmcwgcff'),(217,277,'po.echoqih.adcmcwgcff'),(218,278,'po.echoqih.adcmcwgcff'),(219,279,'po.echoqih.adcmcwgcff'),(220,280,'po.echoqih.adcmcwgcff');
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
INSERT INTO `IntentFilters` VALUES (1,7,0),(2,14,0),(3,12,0),(4,16,0),(5,17,0),(6,12,0),(7,18,0),(8,19,0),(9,20,0),(10,22,0),(11,24,0),(12,25,0),(13,27,0),(14,26,0),(15,28,0),(16,29,0),(17,31,0),(18,33,0),(19,32,0),(20,36,0),(21,37,0),(22,38,0),(23,39,0),(24,41,0),(25,42,0),(26,43,0),(27,46,0),(28,45,0),(29,47,0),(30,48,0),(31,49,0),(32,67,0),(33,70,0),(34,71,0),(35,72,0),(36,74,0),(37,75,0),(38,76,0),(39,77,0),(40,80,0),(41,81,0),(42,82,0),(43,85,0),(44,86,0),(45,45,0),(46,45,0),(47,47,0),(48,87,0),(49,48,0),(50,86,0),(51,88,0),(52,48,0),(53,47,0),(54,86,0),(55,89,0),(56,75,0),(57,90,0),(58,75,0),(59,93,0),(60,93,0),(61,124,0),(62,167,0),(63,170,0),(64,171,0),(65,172,0),(66,176,0),(67,177,0),(68,178,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,2,1,0),(5,3,0,0),(6,4,0,0),(7,5,0,0),(8,6,1,0),(9,7,1,0),(10,6,1,0),(11,6,1,0),(12,8,0,0),(13,6,1,0),(14,8,0,0),(15,9,0,0),(16,10,0,0),(17,11,1,0),(18,12,0,0),(19,13,0,0),(20,14,1,0),(21,15,0,0),(22,17,0,0),(23,18,0,0),(24,16,0,0),(25,19,1,0),(26,20,1,0),(27,21,0,0),(28,22,0,0),(29,23,1,0),(30,20,1,0),(31,24,1,0),(32,25,0,0),(33,26,0,0),(34,27,0,0),(35,24,1,0),(36,24,1,0),(37,28,0,0),(38,29,1,0),(39,30,0,0),(40,24,1,0),(41,29,1,0),(42,31,1,0),(43,32,0,0),(44,33,0,0),(45,34,0,0),(46,35,0,0),(47,36,1,0),(48,37,0,0),(49,38,0,0),(50,36,1,0),(51,39,0,0),(52,36,1,0),(53,40,1,0),(54,41,0,0),(55,36,1,0),(56,42,0,0),(57,43,0,0),(58,44,0,0),(59,45,0,0),(60,46,0,0),(61,47,0,0),(62,48,0,0),(63,49,0,0),(64,50,1,0),(65,50,1,0),(66,51,0,0),(67,53,0,0),(68,52,0,0),(69,54,1,0),(70,55,0,0),(71,54,1,0),(72,56,1,0),(73,57,1,0),(74,58,0,0),(75,60,0,0),(76,59,1,0),(77,61,0,0),(78,59,1,0),(79,62,1,0),(80,63,0,0),(81,59,1,0),(82,64,0,0),(83,62,1,0),(84,59,1,0),(85,65,0,0),(86,66,0,0),(87,67,0,0),(88,66,0,0),(89,68,1,0),(90,69,1,0),(91,70,1,0),(92,71,1,0),(93,69,1,0),(94,72,0,0),(95,71,1,0),(96,73,0,0),(97,74,0,0),(98,75,0,0),(99,76,0,0),(100,77,1,0),(101,78,0,0),(102,79,1,0),(103,80,0,0),(104,81,0,0),(105,82,0,0),(106,84,0,0),(107,83,0,0),(108,85,0,0),(109,86,0,0),(110,83,0,0),(111,87,1,0),(112,88,0,0),(113,89,0,0),(114,90,0,0),(115,91,0,0),(116,92,0,0),(117,93,1,0),(118,94,0,0),(119,93,1,0),(120,95,0,0),(121,96,0,0),(122,97,0,0),(123,93,1,0),(124,98,0,0),(125,99,0,0),(126,93,1,0),(127,101,0,0),(128,100,0,0),(129,102,1,0),(130,103,1,0),(131,102,1,0),(132,104,0,0),(133,103,1,0),(134,105,1,0),(135,103,1,0),(136,106,0,0),(137,107,0,0),(138,103,1,0),(139,108,0,0),(140,109,0,0),(141,107,0,0),(142,110,1,0),(143,111,0,0),(144,112,0,0),(145,113,1,0),(146,114,0,0),(147,115,0,0),(148,116,1,0),(149,117,0,0),(150,118,0,0),(151,119,0,0),(152,120,0,0),(153,121,1,0),(154,122,1,0),(155,124,0,0),(156,125,0,0),(157,123,0,0),(158,122,1,0),(159,126,1,0),(160,127,0,0),(161,126,1,0),(162,128,0,0),(163,130,0,0),(164,129,1,0),(165,128,0,0),(166,131,1,0),(167,132,0,0),(168,133,1,0),(169,134,0,0),(170,131,1,0),(171,133,1,0),(172,135,0,0),(173,136,1,0),(174,137,0,0),(175,138,0,0),(176,139,0,0),(177,140,0,0),(178,141,0,0),(179,142,0,0),(180,143,1,0),(181,144,1,0),(182,144,1,0),(183,145,0,0),(184,146,1,0),(185,144,1,0),(186,147,0,0),(187,145,0,0),(188,146,1,0),(189,144,1,0),(190,148,0,0),(191,149,1,0),(192,150,0,0),(193,149,1,0),(194,151,1,0),(195,152,0,0),(196,151,1,0),(197,153,0,0),(198,154,1,0),(199,155,0,0),(200,156,1,0),(201,157,1,0),(202,156,1,0),(203,158,0,0),(204,159,0,0),(205,160,0,0),(206,158,0,0),(207,161,1,0),(208,160,0,0),(209,162,1,0),(210,163,1,0),(211,162,1,0),(212,164,0,0),(213,165,0,0),(214,166,0,0),(215,167,0,0),(216,168,1,0),(217,169,0,0),(218,170,0,0),(219,168,1,0),(220,171,1,0),(221,173,0,0),(222,172,0,0),(223,171,1,0),(224,172,0,0),(225,174,0,0),(226,175,0,0),(227,176,0,0),(228,177,0,0),(229,178,0,0),(230,179,0,0),(231,180,1,0),(232,181,0,0),(233,180,1,0),(234,182,1,0),(235,180,1,0),(236,180,1,0),(237,183,1,0),(238,184,1,0),(239,185,0,0),(240,184,1,0),(241,186,0,0),(242,187,1,0),(243,187,1,0),(244,187,1,0),(245,187,1,0),(246,188,0,0),(247,188,0,0),(248,188,0,0),(249,189,1,0),(250,189,1,0),(251,189,1,0),(252,189,1,0),(253,190,0,0),(254,191,0,0),(255,192,0,0),(256,193,0,0),(257,194,0,0),(258,195,1,0),(259,195,1,0),(260,196,0,0),(261,197,0,0),(262,198,0,0),(263,199,0,0),(264,199,0,0),(265,199,0,0),(266,200,0,0),(267,201,0,0),(268,202,0,0),(269,203,0,0),(270,204,0,0),(271,205,1,0),(272,206,0,0),(273,207,0,0),(274,208,0,0),(275,209,1,0),(276,209,1,0),(277,210,0,0),(278,211,0,0),(279,212,0,0),(280,213,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_CACHE_FILESYSTEM'),(18,'android.permission.ACCESS_COARSE_LOCATION'),(24,'android.permission.ACCESS_FINE_LOCATION'),(23,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(21,'android.permission.ACCESS_LOCATTON_MOCK_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(20,'android.permission.CALL_PHONE'),(9,'android.permission.DELETE_CACHE_FILES'),(16,'android.permission.FULLSCREEN'),(13,'android.permission.GET_TASKS'),(6,'android.permission.INTERNET'),(22,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(19,'android.permission.READ_CONTACTS'),(8,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(25,'android.permission.RECORD_AUDIO'),(17,'android.permission.SEND_SMS'),(3,'android.permission.SET_WALLPAPER'),(15,'android.permission.VIBRATE'),(14,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(11,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'file://',NULL,NULL,NULL),(11,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://',NULL,NULL,NULL),(25,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'file://',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://',NULL,NULL,NULL),(32,NULL,NULL,'file://',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'',NULL,NULL,NULL),(39,NULL,NULL,'file://',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'file://',NULL,NULL,NULL),(44,NULL,NULL,'file://',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,NULL,NULL,'file://',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(54,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,1,8),(10,3,1),(11,2,2),(12,1,9),(13,3,2),(14,2,3),(15,1,10),(16,3,3),(17,2,4),(18,1,11),(19,3,4),(20,2,5),(21,3,5),(22,2,6),(23,3,6),(24,2,7),(25,3,7),(26,2,8),(27,3,8),(28,2,9),(29,3,9),(30,2,10),(31,3,10),(32,2,11),(33,3,11),(34,4,1),(35,4,6),(36,4,7),(37,4,10),(38,4,12),(39,5,1),(40,5,2),(41,5,4),(42,5,6),(43,5,7),(44,5,10),(45,5,11),(46,5,13),(47,5,14),(48,6,16),(49,6,1),(50,6,2),(51,6,4),(52,6,6),(53,6,7),(54,6,10),(55,6,11),(56,6,13),(57,6,15),(58,7,1),(59,7,2),(60,7,4),(61,7,6),(62,7,7),(63,7,10),(64,7,11),(65,7,12),(66,7,13),(67,7,15),(68,7,17),(69,7,19),(70,7,18),(71,7,21),(72,7,20),(73,7,23),(74,7,22),(75,7,25),(76,7,24);
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

-- Dump completed on 2015-10-09  0:39:34
