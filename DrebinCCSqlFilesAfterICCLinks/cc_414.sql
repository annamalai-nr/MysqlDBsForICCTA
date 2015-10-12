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
) ENGINE=InnoDB AUTO_INCREMENT=2143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,173,12,2,NULL),(2,200,12,2,NULL),(3,202,12,2,NULL),(4,134,12,2,NULL),(5,191,12,2,NULL),(6,193,12,2,NULL),(7,100,12,2,NULL),(8,201,12,2,NULL),(9,129,12,2,NULL),(10,131,12,2,NULL),(11,72,12,2,NULL),(12,92,12,2,NULL),(13,95,12,2,NULL),(14,20,12,2,NULL),(15,194,12,2,NULL),(16,196,12,2,NULL),(17,153,12,2,NULL),(18,220,12,2,NULL),(19,223,12,2,NULL),(20,111,12,2,NULL),(21,2,12,2,NULL),(22,3,12,2,NULL),(23,238,12,2,NULL),(24,240,12,2,NULL),(25,258,12,2,NULL),(26,259,12,2,NULL),(27,271,12,2,NULL),(28,64,12,2,NULL),(29,65,12,2,NULL),(30,117,12,2,NULL),(31,119,12,2,NULL),(32,123,12,2,NULL),(33,126,12,2,NULL),(34,102,12,2,NULL),(35,184,12,2,NULL),(36,188,12,2,NULL),(37,164,12,2,NULL),(38,2,7,2,NULL),(39,3,7,2,NULL),(40,2,14,2,NULL),(41,3,14,2,NULL),(42,2,18,2,NULL),(43,3,18,2,NULL),(44,2,22,2,NULL),(45,3,22,2,NULL),(46,2,27,2,NULL),(47,3,27,2,NULL),(48,2,32,2,NULL),(49,3,32,2,NULL),(50,2,36,2,NULL),(51,3,36,2,NULL),(52,2,42,2,NULL),(53,3,42,2,NULL),(54,2,45,2,NULL),(55,3,45,2,NULL),(56,2,16,2,NULL),(57,3,16,2,NULL),(58,2,19,2,NULL),(59,3,19,2,NULL),(60,2,24,2,NULL),(61,3,24,2,NULL),(62,2,28,2,NULL),(63,3,28,2,NULL),(64,2,31,2,NULL),(65,3,31,2,NULL),(66,2,37,2,NULL),(67,3,37,2,NULL),(68,2,39,2,NULL),(69,3,39,2,NULL),(70,2,43,2,NULL),(71,3,43,2,NULL),(72,2,47,2,NULL),(73,3,47,2,NULL),(74,2,17,2,NULL),(75,3,17,2,NULL),(76,2,20,2,NULL),(77,3,20,2,NULL),(78,2,25,2,NULL),(79,3,25,2,NULL),(80,2,29,2,NULL),(81,3,29,2,NULL),(82,2,33,2,NULL),(83,3,33,2,NULL),(84,2,38,2,NULL),(85,3,38,2,NULL),(86,2,41,2,NULL),(87,3,41,2,NULL),(88,2,46,2,NULL),(89,3,46,2,NULL),(90,2,48,2,NULL),(91,3,48,2,NULL),(92,2,26,2,NULL),(93,3,26,2,NULL),(94,2,49,2,NULL),(95,3,49,2,NULL),(96,2,67,2,NULL),(97,3,67,2,NULL),(98,2,70,2,NULL),(99,3,70,2,NULL),(100,2,71,2,NULL),(101,3,71,2,NULL),(102,2,72,2,NULL),(103,3,72,2,NULL),(104,2,74,2,NULL),(105,3,74,2,NULL),(106,2,75,2,NULL),(107,3,75,2,NULL),(108,2,89,2,NULL),(109,3,89,2,NULL),(110,2,90,2,NULL),(111,3,90,2,NULL),(112,2,76,2,NULL),(113,3,76,2,NULL),(114,2,77,2,NULL),(115,3,77,2,NULL),(116,2,80,2,NULL),(117,3,80,2,NULL),(118,2,81,2,NULL),(119,3,81,2,NULL),(120,2,82,2,NULL),(121,3,82,2,NULL),(122,2,85,2,NULL),(123,3,85,2,NULL),(124,2,86,2,NULL),(125,3,86,2,NULL),(126,2,87,2,NULL),(127,3,87,2,NULL),(128,2,88,2,NULL),(129,3,88,2,NULL),(130,2,93,2,NULL),(131,3,93,2,NULL),(132,2,167,2,NULL),(133,3,167,2,NULL),(134,2,170,2,NULL),(135,3,170,2,NULL),(136,2,171,2,NULL),(137,3,171,2,NULL),(138,2,172,2,NULL),(139,3,172,2,NULL),(140,2,176,2,NULL),(141,3,176,2,NULL),(142,2,177,2,NULL),(143,3,177,2,NULL),(144,2,178,2,NULL),(145,3,178,2,NULL),(146,5,12,2,NULL),(147,1,12,2,NULL),(148,173,26,2,NULL),(149,200,26,2,NULL),(150,202,26,2,NULL),(151,134,26,2,NULL),(152,191,26,2,NULL),(153,193,26,2,NULL),(154,100,26,2,NULL),(155,201,26,2,NULL),(156,129,26,2,NULL),(157,131,26,2,NULL),(158,72,26,2,NULL),(159,92,26,2,NULL),(160,95,26,2,NULL),(161,20,26,2,NULL),(162,194,26,2,NULL),(163,196,26,2,NULL),(164,153,26,2,NULL),(165,220,26,2,NULL),(166,223,26,2,NULL),(167,111,26,2,NULL),(168,238,26,2,NULL),(169,240,26,2,NULL),(170,258,26,2,NULL),(171,259,26,2,NULL),(172,271,26,2,NULL),(173,64,26,2,NULL),(174,65,26,2,NULL),(175,117,26,2,NULL),(176,119,26,2,NULL),(177,123,26,2,NULL),(178,126,26,2,NULL),(179,102,26,2,NULL),(180,184,26,2,NULL),(181,188,26,2,NULL),(182,164,26,2,NULL),(183,173,49,2,NULL),(184,200,49,2,NULL),(185,202,49,2,NULL),(186,134,49,2,NULL),(187,191,49,2,NULL),(188,193,49,2,NULL),(189,100,49,2,NULL),(190,201,49,2,NULL),(191,129,49,2,NULL),(192,131,49,2,NULL),(193,72,49,2,NULL),(194,92,49,2,NULL),(195,95,49,2,NULL),(196,20,49,2,NULL),(197,194,49,2,NULL),(198,196,49,2,NULL),(199,153,49,2,NULL),(200,220,49,2,NULL),(201,223,49,2,NULL),(202,111,49,2,NULL),(203,238,49,2,NULL),(204,240,49,2,NULL),(205,258,49,2,NULL),(206,259,49,2,NULL),(207,271,49,2,NULL),(208,64,49,2,NULL),(209,65,49,2,NULL),(210,117,49,2,NULL),(211,119,49,2,NULL),(212,123,49,2,NULL),(213,126,49,2,NULL),(214,102,49,2,NULL),(215,184,49,2,NULL),(216,188,49,2,NULL),(217,164,49,2,NULL),(218,256,63,2,NULL),(219,266,57,2,NULL),(220,268,65,2,NULL),(221,277,59,2,NULL),(222,279,53,2,NULL),(223,246,55,2,NULL),(224,247,56,2,NULL),(225,248,54,2,NULL),(226,274,58,2,NULL),(227,263,61,2,NULL),(228,264,60,2,NULL),(229,265,62,2,NULL),(230,267,64,2,NULL),(231,257,52,2,NULL),(232,272,66,2,NULL),(233,221,74,2,NULL),(234,280,74,2,NULL),(235,173,67,2,NULL),(236,200,67,2,NULL),(237,202,67,2,NULL),(238,134,67,2,NULL),(239,191,67,2,NULL),(240,193,67,2,NULL),(241,100,67,2,NULL),(242,201,67,2,NULL),(243,129,67,2,NULL),(244,131,67,2,NULL),(245,72,67,2,NULL),(246,92,67,2,NULL),(247,95,67,2,NULL),(248,20,67,2,NULL),(249,194,67,2,NULL),(250,196,67,2,NULL),(251,153,67,2,NULL),(252,220,67,2,NULL),(253,223,67,2,NULL),(254,111,67,2,NULL),(255,238,67,2,NULL),(256,240,67,2,NULL),(257,258,67,2,NULL),(258,259,67,2,NULL),(259,271,67,2,NULL),(260,64,67,2,NULL),(261,65,67,2,NULL),(262,117,67,2,NULL),(263,119,67,2,NULL),(264,123,67,2,NULL),(265,126,67,2,NULL),(266,102,67,2,NULL),(267,184,67,2,NULL),(268,188,67,2,NULL),(269,164,67,2,NULL),(270,226,49,2,NULL),(271,229,74,2,NULL),(272,278,74,2,NULL),(273,173,70,2,NULL),(274,200,70,2,NULL),(275,202,70,2,NULL),(276,134,70,2,NULL),(277,191,70,2,NULL),(278,193,70,2,NULL),(279,100,70,2,NULL),(280,201,70,2,NULL),(281,129,70,2,NULL),(282,131,70,2,NULL),(283,72,70,2,NULL),(284,92,70,2,NULL),(285,95,70,2,NULL),(286,20,70,2,NULL),(287,194,70,2,NULL),(288,196,70,2,NULL),(289,153,70,2,NULL),(290,220,70,2,NULL),(291,223,70,2,NULL),(292,111,70,2,NULL),(293,238,70,2,NULL),(294,240,70,2,NULL),(295,258,70,2,NULL),(296,259,70,2,NULL),(297,271,70,2,NULL),(298,64,70,2,NULL),(299,65,70,2,NULL),(300,117,70,2,NULL),(301,119,70,2,NULL),(302,123,70,2,NULL),(303,126,70,2,NULL),(304,102,70,2,NULL),(305,184,70,2,NULL),(306,188,70,2,NULL),(307,164,70,2,NULL),(308,254,70,2,NULL),(309,173,71,2,NULL),(310,238,7,2,NULL),(311,240,7,2,NULL),(312,238,14,2,NULL),(313,240,14,2,NULL),(314,238,18,2,NULL),(315,240,18,2,NULL),(316,238,22,2,NULL),(317,240,22,2,NULL),(318,238,27,2,NULL),(319,240,27,2,NULL),(320,200,71,2,NULL),(321,202,71,2,NULL),(322,134,71,2,NULL),(323,191,71,2,NULL),(324,193,71,2,NULL),(325,238,32,2,NULL),(326,240,32,2,NULL),(327,238,36,2,NULL),(328,240,36,2,NULL),(329,100,71,2,NULL),(330,238,42,2,NULL),(331,240,42,2,NULL),(332,238,45,2,NULL),(333,240,45,2,NULL),(334,201,71,2,NULL),(335,238,16,2,NULL),(336,240,16,2,NULL),(337,238,19,2,NULL),(338,240,19,2,NULL),(339,238,24,2,NULL),(340,240,24,2,NULL),(341,238,28,2,NULL),(342,240,28,2,NULL),(343,238,31,2,NULL),(344,240,31,2,NULL),(345,129,71,2,NULL),(346,131,71,2,NULL),(347,72,71,2,NULL),(348,92,71,2,NULL),(349,95,71,2,NULL),(350,238,37,2,NULL),(351,240,37,2,NULL),(352,238,39,2,NULL),(353,240,39,2,NULL),(354,238,43,2,NULL),(355,240,43,2,NULL),(356,238,47,2,NULL),(357,240,47,2,NULL),(358,20,71,2,NULL),(359,238,17,2,NULL),(360,240,17,2,NULL),(361,238,20,2,NULL),(362,240,20,2,NULL),(363,238,25,2,NULL),(364,240,25,2,NULL),(365,238,29,2,NULL),(366,240,29,2,NULL),(367,238,33,2,NULL),(368,240,33,2,NULL),(369,194,71,2,NULL),(370,196,71,2,NULL),(371,153,71,2,NULL),(372,220,71,2,NULL),(373,223,71,2,NULL),(374,238,38,2,NULL),(375,240,38,2,NULL),(376,238,41,2,NULL),(377,240,41,2,NULL),(378,111,71,2,NULL),(379,238,46,2,NULL),(380,240,46,2,NULL),(381,238,48,2,NULL),(382,240,48,2,NULL),(383,238,72,2,NULL),(384,240,72,2,NULL),(385,258,71,2,NULL),(386,259,71,2,NULL),(387,271,71,2,NULL),(388,238,74,2,NULL),(389,240,74,2,NULL),(390,238,75,2,NULL),(391,240,75,2,NULL),(392,238,89,2,NULL),(393,240,89,2,NULL),(394,238,90,2,NULL),(395,240,90,2,NULL),(396,238,76,2,NULL),(397,240,76,2,NULL),(398,238,77,2,NULL),(399,240,77,2,NULL),(400,238,80,2,NULL),(401,240,80,2,NULL),(402,238,81,2,NULL),(403,240,81,2,NULL),(404,64,71,2,NULL),(405,65,71,2,NULL),(406,238,82,2,NULL),(407,240,82,2,NULL),(408,117,71,2,NULL),(409,119,71,2,NULL),(410,123,71,2,NULL),(411,126,71,2,NULL),(412,102,71,2,NULL),(413,184,71,2,NULL),(414,188,71,2,NULL),(415,164,71,2,NULL),(416,238,85,2,NULL),(417,240,85,2,NULL),(418,238,86,2,NULL),(419,240,86,2,NULL),(420,238,87,2,NULL),(421,240,87,2,NULL),(422,238,88,2,NULL),(423,240,88,2,NULL),(424,238,93,2,NULL),(425,240,93,2,NULL),(426,238,167,2,NULL),(427,240,167,2,NULL),(428,238,170,2,NULL),(429,240,170,2,NULL),(430,238,171,2,NULL),(431,240,171,2,NULL),(432,238,172,2,NULL),(433,240,172,2,NULL),(434,238,176,2,NULL),(435,240,176,2,NULL),(436,238,177,2,NULL),(437,240,177,2,NULL),(438,238,178,2,NULL),(439,240,178,2,NULL),(440,262,74,2,NULL),(441,173,72,2,NULL),(442,200,72,2,NULL),(443,202,72,2,NULL),(444,134,72,2,NULL),(445,191,72,2,NULL),(446,193,72,2,NULL),(447,100,72,2,NULL),(448,201,72,2,NULL),(449,129,72,2,NULL),(450,131,72,2,NULL),(451,72,72,2,NULL),(452,92,72,2,NULL),(453,95,72,2,NULL),(454,20,72,2,NULL),(455,194,72,2,NULL),(456,196,72,2,NULL),(457,153,72,2,NULL),(458,220,72,2,NULL),(459,223,72,2,NULL),(460,111,72,2,NULL),(461,258,72,2,NULL),(462,259,72,2,NULL),(463,271,72,2,NULL),(464,64,72,2,NULL),(465,65,72,2,NULL),(466,117,72,2,NULL),(467,119,72,2,NULL),(468,123,72,2,NULL),(469,126,72,2,NULL),(470,102,72,2,NULL),(471,184,72,2,NULL),(472,188,72,2,NULL),(473,164,72,2,NULL),(474,269,70,2,NULL),(475,270,73,2,NULL),(476,258,7,2,NULL),(477,259,7,2,NULL),(478,271,7,2,NULL),(479,258,14,2,NULL),(480,259,14,2,NULL),(481,271,14,2,NULL),(482,258,18,2,NULL),(483,259,18,2,NULL),(484,271,18,2,NULL),(485,258,22,2,NULL),(486,259,22,2,NULL),(487,271,22,2,NULL),(488,258,27,2,NULL),(489,259,27,2,NULL),(490,271,27,2,NULL),(491,258,32,2,NULL),(492,259,32,2,NULL),(493,271,32,2,NULL),(494,258,36,2,NULL),(495,259,36,2,NULL),(496,271,36,2,NULL),(497,258,42,2,NULL),(498,259,42,2,NULL),(499,271,42,2,NULL),(500,258,45,2,NULL),(501,259,45,2,NULL),(502,271,45,2,NULL),(503,258,16,2,NULL),(504,259,16,2,NULL),(505,271,16,2,NULL),(506,258,19,2,NULL),(507,259,19,2,NULL),(508,271,19,2,NULL),(509,258,24,2,NULL),(510,259,24,2,NULL),(511,271,24,2,NULL),(512,258,28,2,NULL),(513,259,28,2,NULL),(514,271,28,2,NULL),(515,258,31,2,NULL),(516,259,31,2,NULL),(517,271,31,2,NULL),(518,258,37,2,NULL),(519,259,37,2,NULL),(520,271,37,2,NULL),(521,258,39,2,NULL),(522,259,39,2,NULL),(523,271,39,2,NULL),(524,258,43,2,NULL),(525,259,43,2,NULL),(526,271,43,2,NULL),(527,258,47,2,NULL),(528,259,47,2,NULL),(529,271,47,2,NULL),(530,258,17,2,NULL),(531,259,17,2,NULL),(532,271,17,2,NULL),(533,258,20,2,NULL),(534,259,20,2,NULL),(535,271,20,2,NULL),(536,258,25,2,NULL),(537,259,25,2,NULL),(538,271,25,2,NULL),(539,258,29,2,NULL),(540,259,29,2,NULL),(541,271,29,2,NULL),(542,258,33,2,NULL),(543,259,33,2,NULL),(544,271,33,2,NULL),(545,258,38,2,NULL),(546,259,38,2,NULL),(547,271,38,2,NULL),(548,258,41,2,NULL),(549,259,41,2,NULL),(550,271,41,2,NULL),(551,258,46,2,NULL),(552,259,46,2,NULL),(553,271,46,2,NULL),(554,258,48,2,NULL),(555,259,48,2,NULL),(556,271,48,2,NULL),(557,258,74,2,NULL),(558,259,74,2,NULL),(559,271,74,2,NULL),(560,258,75,2,NULL),(561,259,75,2,NULL),(562,271,75,2,NULL),(563,258,89,2,NULL),(564,259,89,2,NULL),(565,271,89,2,NULL),(566,258,90,2,NULL),(567,259,90,2,NULL),(568,271,90,2,NULL),(569,258,76,2,NULL),(570,259,76,2,NULL),(571,271,76,2,NULL),(572,258,77,2,NULL),(573,259,77,2,NULL),(574,271,77,2,NULL),(575,258,80,2,NULL),(576,259,80,2,NULL),(577,271,80,2,NULL),(578,258,81,2,NULL),(579,259,81,2,NULL),(580,271,81,2,NULL),(581,258,82,2,NULL),(582,259,82,2,NULL),(583,271,82,2,NULL),(584,258,85,2,NULL),(585,259,85,2,NULL),(586,271,85,2,NULL),(587,258,86,2,NULL),(588,259,86,2,NULL),(589,271,86,2,NULL),(590,258,87,2,NULL),(591,259,87,2,NULL),(592,271,87,2,NULL),(593,258,88,2,NULL),(594,259,88,2,NULL),(595,271,88,2,NULL),(596,258,93,2,NULL),(597,259,93,2,NULL),(598,271,93,2,NULL),(599,258,167,2,NULL),(600,259,167,2,NULL),(601,271,167,2,NULL),(602,258,170,2,NULL),(603,259,170,2,NULL),(604,271,170,2,NULL),(605,258,171,2,NULL),(606,259,171,2,NULL),(607,271,171,2,NULL),(608,258,172,2,NULL),(609,259,172,2,NULL),(610,271,172,2,NULL),(611,258,176,2,NULL),(612,259,176,2,NULL),(613,271,176,2,NULL),(614,258,177,2,NULL),(615,259,177,2,NULL),(616,271,177,2,NULL),(617,258,178,2,NULL),(618,259,178,2,NULL),(619,271,178,2,NULL),(620,173,74,2,NULL),(621,200,74,2,NULL),(622,202,74,2,NULL),(623,134,74,2,NULL),(624,54,43,2,NULL),(625,191,74,2,NULL),(626,205,43,2,NULL),(627,193,74,2,NULL),(628,208,43,2,NULL),(629,100,74,2,NULL),(630,12,43,2,NULL),(631,201,74,2,NULL),(632,14,43,2,NULL),(633,129,74,2,NULL),(634,155,43,2,NULL),(635,131,74,2,NULL),(636,75,5,2,NULL),(637,72,74,2,NULL),(638,103,28,2,NULL),(639,92,74,2,NULL),(640,201,7,2,NULL),(641,95,74,2,NULL),(642,201,14,2,NULL),(643,20,74,2,NULL),(644,201,18,2,NULL),(645,194,74,2,NULL),(646,201,22,2,NULL),(647,196,74,2,NULL),(648,201,27,2,NULL),(649,153,74,2,NULL),(650,201,32,2,NULL),(651,220,74,2,NULL),(652,201,36,2,NULL),(653,223,74,2,NULL),(654,201,42,2,NULL),(655,111,74,2,NULL),(656,201,45,2,NULL),(657,64,74,2,NULL),(658,201,16,2,NULL),(659,65,74,2,NULL),(660,201,19,2,NULL),(661,117,74,2,NULL),(662,201,24,2,NULL),(663,119,74,2,NULL),(664,201,28,2,NULL),(665,123,74,2,NULL),(666,201,31,2,NULL),(667,126,74,2,NULL),(668,201,37,2,NULL),(669,102,74,2,NULL),(670,201,39,2,NULL),(671,184,74,2,NULL),(672,201,43,2,NULL),(673,188,74,2,NULL),(674,201,47,2,NULL),(675,164,74,2,NULL),(676,201,17,2,NULL),(677,204,74,2,NULL),(678,201,20,2,NULL),(679,253,74,2,NULL),(680,201,25,2,NULL),(681,273,74,2,NULL),(682,201,29,2,NULL),(683,173,75,2,NULL),(684,201,33,2,NULL),(685,200,75,2,NULL),(686,201,38,2,NULL),(687,202,75,2,NULL),(688,201,41,2,NULL),(689,134,75,2,NULL),(690,201,46,2,NULL),(691,191,75,2,NULL),(692,201,48,2,NULL),(693,193,75,2,NULL),(694,201,75,2,NULL),(695,100,75,2,NULL),(696,201,89,2,NULL),(697,129,75,2,NULL),(698,201,90,2,NULL),(699,131,75,2,NULL),(700,201,76,2,NULL),(701,72,75,2,NULL),(702,201,77,2,NULL),(703,92,75,2,NULL),(704,201,80,2,NULL),(705,95,75,2,NULL),(706,201,81,2,NULL),(707,20,75,2,NULL),(708,201,82,2,NULL),(709,194,75,2,NULL),(710,201,85,2,NULL),(711,196,75,2,NULL),(712,201,86,2,NULL),(713,153,75,2,NULL),(714,201,87,2,NULL),(715,220,75,2,NULL),(716,201,88,2,NULL),(717,223,75,2,NULL),(718,201,93,2,NULL),(719,111,75,2,NULL),(720,201,167,2,NULL),(721,64,75,2,NULL),(722,201,170,2,NULL),(723,65,75,2,NULL),(724,201,171,2,NULL),(725,117,75,2,NULL),(726,201,172,2,NULL),(727,119,75,2,NULL),(728,201,176,2,NULL),(729,123,75,2,NULL),(730,201,177,2,NULL),(731,126,75,2,NULL),(732,201,178,2,NULL),(733,102,75,2,NULL),(734,63,43,2,NULL),(735,184,75,2,NULL),(736,99,28,2,NULL),(737,188,75,2,NULL),(738,173,16,2,NULL),(739,164,75,2,NULL),(740,200,16,2,NULL),(741,173,89,2,NULL),(742,202,16,2,NULL),(743,200,89,2,NULL),(744,134,16,2,NULL),(745,202,89,2,NULL),(746,191,16,2,NULL),(747,134,89,2,NULL),(748,193,16,2,NULL),(749,191,89,2,NULL),(750,100,16,2,NULL),(751,193,89,2,NULL),(752,129,16,2,NULL),(753,100,89,2,NULL),(754,131,16,2,NULL),(755,129,89,2,NULL),(756,72,16,2,NULL),(757,131,89,2,NULL),(758,92,16,2,NULL),(759,72,89,2,NULL),(760,95,16,2,NULL),(761,92,89,2,NULL),(762,20,16,2,NULL),(763,95,89,2,NULL),(764,194,16,2,NULL),(765,20,89,2,NULL),(766,196,16,2,NULL),(767,194,89,2,NULL),(768,153,16,2,NULL),(769,196,89,2,NULL),(770,220,16,2,NULL),(771,153,89,2,NULL),(772,223,16,2,NULL),(773,220,89,2,NULL),(774,111,16,2,NULL),(775,223,89,2,NULL),(776,64,16,2,NULL),(777,111,89,2,NULL),(778,65,16,2,NULL),(779,64,89,2,NULL),(780,117,16,2,NULL),(781,65,89,2,NULL),(782,119,16,2,NULL),(783,117,89,2,NULL),(784,123,16,2,NULL),(785,119,89,2,NULL),(786,126,16,2,NULL),(787,123,89,2,NULL),(788,102,16,2,NULL),(789,126,89,2,NULL),(790,184,16,2,NULL),(791,102,89,2,NULL),(792,188,16,2,NULL),(793,184,89,2,NULL),(794,164,16,2,NULL),(795,188,89,2,NULL),(796,85,43,2,NULL),(797,164,89,2,NULL),(798,136,28,2,NULL),(799,173,90,2,NULL),(800,173,19,2,NULL),(801,200,90,2,NULL),(802,200,19,2,NULL),(803,202,90,2,NULL),(804,202,19,2,NULL),(805,134,90,2,NULL),(806,134,19,2,NULL),(807,191,90,2,NULL),(808,191,19,2,NULL),(809,193,90,2,NULL),(810,193,19,2,NULL),(811,100,90,2,NULL),(812,100,19,2,NULL),(813,129,90,2,NULL),(814,129,19,2,NULL),(815,131,90,2,NULL),(816,131,19,2,NULL),(817,72,90,2,NULL),(818,72,19,2,NULL),(819,92,90,2,NULL),(820,92,19,2,NULL),(821,95,90,2,NULL),(822,95,19,2,NULL),(823,20,90,2,NULL),(824,20,19,2,NULL),(825,194,90,2,NULL),(826,194,19,2,NULL),(827,196,90,2,NULL),(828,196,19,2,NULL),(829,153,90,2,NULL),(830,153,19,2,NULL),(831,220,90,2,NULL),(832,220,19,2,NULL),(833,223,90,2,NULL),(834,223,19,2,NULL),(835,111,90,2,NULL),(836,111,19,2,NULL),(837,64,90,2,NULL),(838,64,19,2,NULL),(839,65,90,2,NULL),(840,65,19,2,NULL),(841,117,90,2,NULL),(842,117,19,2,NULL),(843,119,90,2,NULL),(844,119,19,2,NULL),(845,123,90,2,NULL),(846,123,19,2,NULL),(847,126,90,2,NULL),(848,126,19,2,NULL),(849,102,90,2,NULL),(850,102,19,2,NULL),(851,184,90,2,NULL),(852,184,19,2,NULL),(853,188,90,2,NULL),(854,188,19,2,NULL),(855,164,90,2,NULL),(856,164,19,2,NULL),(857,19,43,2,NULL),(858,173,24,2,NULL),(859,200,24,2,NULL),(860,202,24,2,NULL),(861,134,24,2,NULL),(862,191,24,2,NULL),(863,193,24,2,NULL),(864,100,24,2,NULL),(865,129,24,2,NULL),(866,131,24,2,NULL),(867,72,24,2,NULL),(868,92,24,2,NULL),(869,95,24,2,NULL),(870,20,24,2,NULL),(871,194,24,2,NULL),(872,196,24,2,NULL),(873,153,24,2,NULL),(874,220,24,2,NULL),(875,223,24,2,NULL),(876,111,24,2,NULL),(877,64,24,2,NULL),(878,65,24,2,NULL),(879,117,24,2,NULL),(880,119,24,2,NULL),(881,123,24,2,NULL),(882,126,24,2,NULL),(883,102,24,2,NULL),(884,184,24,2,NULL),(885,188,24,2,NULL),(886,164,24,2,NULL),(887,144,5,2,NULL),(888,152,5,2,NULL),(889,178,5,2,NULL),(890,195,43,2,NULL),(891,173,28,2,NULL),(892,200,28,2,NULL),(893,202,28,2,NULL),(894,134,28,2,NULL),(895,191,28,2,NULL),(896,193,28,2,NULL),(897,100,28,2,NULL),(898,129,28,2,NULL),(899,131,28,2,NULL),(900,72,28,2,NULL),(901,92,28,2,NULL),(902,95,28,2,NULL),(903,20,28,2,NULL),(904,194,28,2,NULL),(905,196,28,2,NULL),(906,153,28,2,NULL),(907,220,28,2,NULL),(908,223,28,2,NULL),(909,111,28,2,NULL),(910,64,28,2,NULL),(911,65,28,2,NULL),(912,117,28,2,NULL),(913,119,28,2,NULL),(914,123,28,2,NULL),(915,126,28,2,NULL),(916,102,28,2,NULL),(917,184,28,2,NULL),(918,188,28,2,NULL),(919,164,28,2,NULL),(920,192,28,2,NULL),(921,173,31,2,NULL),(922,129,7,2,NULL),(923,131,7,2,NULL),(924,129,14,2,NULL),(925,131,14,2,NULL),(926,129,18,2,NULL),(927,131,18,2,NULL),(928,129,22,2,NULL),(929,131,22,2,NULL),(930,129,27,2,NULL),(931,131,27,2,NULL),(932,200,31,2,NULL),(933,202,31,2,NULL),(934,134,31,2,NULL),(935,191,31,2,NULL),(936,193,31,2,NULL),(937,129,32,2,NULL),(938,131,32,2,NULL),(939,129,36,2,NULL),(940,131,36,2,NULL),(941,100,31,2,NULL),(942,129,42,2,NULL),(943,131,42,2,NULL),(944,129,45,2,NULL),(945,131,45,2,NULL),(946,72,31,2,NULL),(947,92,31,2,NULL),(948,95,31,2,NULL),(949,129,37,2,NULL),(950,131,37,2,NULL),(951,129,39,2,NULL),(952,131,39,2,NULL),(953,129,43,2,NULL),(954,131,43,2,NULL),(955,129,47,2,NULL),(956,131,47,2,NULL),(957,20,31,2,NULL),(958,129,17,2,NULL),(959,131,17,2,NULL),(960,129,20,2,NULL),(961,131,20,2,NULL),(962,129,25,2,NULL),(963,131,25,2,NULL),(964,129,29,2,NULL),(965,131,29,2,NULL),(966,129,33,2,NULL),(967,131,33,2,NULL),(968,194,31,2,NULL),(969,196,31,2,NULL),(970,153,31,2,NULL),(971,220,31,2,NULL),(972,223,31,2,NULL),(973,129,38,2,NULL),(974,131,38,2,NULL),(975,129,41,2,NULL),(976,131,41,2,NULL),(977,111,31,2,NULL),(978,129,46,2,NULL),(979,131,46,2,NULL),(980,129,48,2,NULL),(981,131,48,2,NULL),(982,129,76,2,NULL),(983,131,76,2,NULL),(984,129,77,2,NULL),(985,131,77,2,NULL),(986,129,80,2,NULL),(987,131,80,2,NULL),(988,129,81,2,NULL),(989,131,81,2,NULL),(990,64,31,2,NULL),(991,65,31,2,NULL),(992,129,82,2,NULL),(993,131,82,2,NULL),(994,117,31,2,NULL),(995,119,31,2,NULL),(996,123,31,2,NULL),(997,126,31,2,NULL),(998,102,31,2,NULL),(999,184,31,2,NULL),(1000,188,31,2,NULL),(1001,164,31,2,NULL),(1002,129,85,2,NULL),(1003,131,85,2,NULL),(1004,129,86,2,NULL),(1005,131,86,2,NULL),(1006,129,87,2,NULL),(1007,131,87,2,NULL),(1008,129,88,2,NULL),(1009,131,88,2,NULL),(1010,129,93,2,NULL),(1011,131,93,2,NULL),(1012,129,167,2,NULL),(1013,131,167,2,NULL),(1014,129,170,2,NULL),(1015,131,170,2,NULL),(1016,129,171,2,NULL),(1017,131,171,2,NULL),(1018,129,172,2,NULL),(1019,131,172,2,NULL),(1020,129,176,2,NULL),(1021,131,176,2,NULL),(1022,129,177,2,NULL),(1023,131,177,2,NULL),(1024,129,178,2,NULL),(1025,131,178,2,NULL),(1026,68,34,2,NULL),(1027,124,28,2,NULL),(1028,72,7,2,NULL),(1029,92,7,2,NULL),(1030,95,7,2,NULL),(1031,72,14,2,NULL),(1032,92,14,2,NULL),(1033,95,14,2,NULL),(1034,72,18,2,NULL),(1035,92,18,2,NULL),(1036,95,18,2,NULL),(1037,72,22,2,NULL),(1038,92,22,2,NULL),(1039,95,22,2,NULL),(1040,72,27,2,NULL),(1041,92,27,2,NULL),(1042,95,27,2,NULL),(1043,72,32,2,NULL),(1044,92,32,2,NULL),(1045,95,32,2,NULL),(1046,72,36,2,NULL),(1047,92,36,2,NULL),(1048,95,36,2,NULL),(1049,72,42,2,NULL),(1050,92,42,2,NULL),(1051,95,42,2,NULL),(1052,72,45,2,NULL),(1053,92,45,2,NULL),(1054,95,45,2,NULL),(1055,72,37,2,NULL),(1056,92,37,2,NULL),(1057,95,37,2,NULL),(1058,72,39,2,NULL),(1059,92,39,2,NULL),(1060,95,39,2,NULL),(1061,72,43,2,NULL),(1062,92,43,2,NULL),(1063,95,43,2,NULL),(1064,72,47,2,NULL),(1065,92,47,2,NULL),(1066,95,47,2,NULL),(1067,72,17,2,NULL),(1068,92,17,2,NULL),(1069,95,17,2,NULL),(1070,72,20,2,NULL),(1071,92,20,2,NULL),(1072,95,20,2,NULL),(1073,72,25,2,NULL),(1074,92,25,2,NULL),(1075,95,25,2,NULL),(1076,72,29,2,NULL),(1077,92,29,2,NULL),(1078,95,29,2,NULL),(1079,72,33,2,NULL),(1080,92,33,2,NULL),(1081,95,33,2,NULL),(1082,72,38,2,NULL),(1083,92,38,2,NULL),(1084,95,38,2,NULL),(1085,72,41,2,NULL),(1086,92,41,2,NULL),(1087,95,41,2,NULL),(1088,72,46,2,NULL),(1089,92,46,2,NULL),(1090,95,46,2,NULL),(1091,72,48,2,NULL),(1092,92,48,2,NULL),(1093,95,48,2,NULL),(1094,72,76,2,NULL),(1095,92,76,2,NULL),(1096,95,76,2,NULL),(1097,72,77,2,NULL),(1098,92,77,2,NULL),(1099,95,77,2,NULL),(1100,72,80,2,NULL),(1101,92,80,2,NULL),(1102,95,80,2,NULL),(1103,72,81,2,NULL),(1104,92,81,2,NULL),(1105,95,81,2,NULL),(1106,72,82,2,NULL),(1107,92,82,2,NULL),(1108,95,82,2,NULL),(1109,72,85,2,NULL),(1110,92,85,2,NULL),(1111,95,85,2,NULL),(1112,72,86,2,NULL),(1113,92,86,2,NULL),(1114,95,86,2,NULL),(1115,72,87,2,NULL),(1116,92,87,2,NULL),(1117,95,87,2,NULL),(1118,72,88,2,NULL),(1119,92,88,2,NULL),(1120,95,88,2,NULL),(1121,72,93,2,NULL),(1122,92,93,2,NULL),(1123,95,93,2,NULL),(1124,72,167,2,NULL),(1125,92,167,2,NULL),(1126,95,167,2,NULL),(1127,72,170,2,NULL),(1128,92,170,2,NULL),(1129,95,170,2,NULL),(1130,72,171,2,NULL),(1131,92,171,2,NULL),(1132,95,171,2,NULL),(1133,72,172,2,NULL),(1134,92,172,2,NULL),(1135,95,172,2,NULL),(1136,72,176,2,NULL),(1137,92,176,2,NULL),(1138,95,176,2,NULL),(1139,72,177,2,NULL),(1140,92,177,2,NULL),(1141,95,177,2,NULL),(1142,72,178,2,NULL),(1143,92,178,2,NULL),(1144,95,178,2,NULL),(1145,173,37,2,NULL),(1146,200,37,2,NULL),(1147,202,37,2,NULL),(1148,134,37,2,NULL),(1149,191,37,2,NULL),(1150,193,37,2,NULL),(1151,100,37,2,NULL),(1152,20,37,2,NULL),(1153,194,37,2,NULL),(1154,196,37,2,NULL),(1155,153,37,2,NULL),(1156,220,37,2,NULL),(1157,223,37,2,NULL),(1158,111,37,2,NULL),(1159,64,37,2,NULL),(1160,65,37,2,NULL),(1161,117,37,2,NULL),(1162,119,37,2,NULL),(1163,123,37,2,NULL),(1164,126,37,2,NULL),(1165,102,37,2,NULL),(1166,184,37,2,NULL),(1167,188,37,2,NULL),(1168,164,37,2,NULL),(1169,18,43,2,NULL),(1170,107,43,2,NULL),(1171,110,43,2,NULL),(1172,173,39,2,NULL),(1173,200,39,2,NULL),(1174,202,39,2,NULL),(1175,134,39,2,NULL),(1176,191,39,2,NULL),(1177,193,39,2,NULL),(1178,100,39,2,NULL),(1179,20,39,2,NULL),(1180,194,39,2,NULL),(1181,196,39,2,NULL),(1182,153,39,2,NULL),(1183,220,39,2,NULL),(1184,223,39,2,NULL),(1185,111,39,2,NULL),(1186,64,39,2,NULL),(1187,65,39,2,NULL),(1188,117,39,2,NULL),(1189,119,39,2,NULL),(1190,123,39,2,NULL),(1191,126,39,2,NULL),(1192,102,39,2,NULL),(1193,184,39,2,NULL),(1194,188,39,2,NULL),(1195,164,39,2,NULL),(1196,173,43,2,NULL),(1197,200,43,2,NULL),(1198,202,43,2,NULL),(1199,134,43,2,NULL),(1200,191,43,2,NULL),(1201,193,43,2,NULL),(1202,100,43,2,NULL),(1203,20,43,2,NULL),(1204,194,43,2,NULL),(1205,196,43,2,NULL),(1206,153,43,2,NULL),(1207,220,43,2,NULL),(1208,223,43,2,NULL),(1209,111,43,2,NULL),(1210,64,43,2,NULL),(1211,65,43,2,NULL),(1212,117,43,2,NULL),(1213,119,43,2,NULL),(1214,123,43,2,NULL),(1215,126,43,2,NULL),(1216,102,43,2,NULL),(1217,184,43,2,NULL),(1218,188,43,2,NULL),(1219,164,43,2,NULL),(1220,6,43,2,NULL),(1221,27,43,2,NULL),(1222,49,43,2,NULL),(1223,173,47,2,NULL),(1224,200,47,2,NULL),(1225,202,47,2,NULL),(1226,134,47,2,NULL),(1227,191,47,2,NULL),(1228,193,47,2,NULL),(1229,100,47,2,NULL),(1230,20,47,2,NULL),(1231,194,47,2,NULL),(1232,196,47,2,NULL),(1233,153,47,2,NULL),(1234,220,47,2,NULL),(1235,223,47,2,NULL),(1236,111,47,2,NULL),(1237,64,47,2,NULL),(1238,65,47,2,NULL),(1239,117,47,2,NULL),(1240,119,47,2,NULL),(1241,123,47,2,NULL),(1242,126,47,2,NULL),(1243,102,47,2,NULL),(1244,184,47,2,NULL),(1245,188,47,2,NULL),(1246,164,47,2,NULL),(1247,173,76,2,NULL),(1248,200,76,2,NULL),(1249,202,76,2,NULL),(1250,134,76,2,NULL),(1251,191,76,2,NULL),(1252,193,76,2,NULL),(1253,100,76,2,NULL),(1254,20,76,2,NULL),(1255,194,76,2,NULL),(1256,196,76,2,NULL),(1257,153,76,2,NULL),(1258,220,76,2,NULL),(1259,223,76,2,NULL),(1260,111,76,2,NULL),(1261,64,76,2,NULL),(1262,65,76,2,NULL),(1263,117,76,2,NULL),(1264,119,76,2,NULL),(1265,123,76,2,NULL),(1266,126,76,2,NULL),(1267,102,76,2,NULL),(1268,184,76,2,NULL),(1269,188,76,2,NULL),(1270,164,76,2,NULL),(1271,34,85,2,NULL),(1272,57,85,2,NULL),(1273,173,77,2,NULL),(1274,200,77,2,NULL),(1275,202,77,2,NULL),(1276,134,77,2,NULL),(1277,191,77,2,NULL),(1278,193,77,2,NULL),(1279,100,77,2,NULL),(1280,20,77,2,NULL),(1281,194,77,2,NULL),(1282,196,77,2,NULL),(1283,153,77,2,NULL),(1284,220,77,2,NULL),(1285,223,77,2,NULL),(1286,111,77,2,NULL),(1287,64,77,2,NULL),(1288,65,77,2,NULL),(1289,117,77,2,NULL),(1290,119,77,2,NULL),(1291,123,77,2,NULL),(1292,126,77,2,NULL),(1293,102,77,2,NULL),(1294,184,77,2,NULL),(1295,188,77,2,NULL),(1296,164,77,2,NULL),(1297,147,76,2,NULL),(1298,60,85,2,NULL),(1299,176,85,2,NULL),(1300,173,80,2,NULL),(1301,200,80,2,NULL),(1302,202,80,2,NULL),(1303,134,80,2,NULL),(1304,191,80,2,NULL),(1305,193,80,2,NULL),(1306,100,80,2,NULL),(1307,20,80,2,NULL),(1308,194,80,2,NULL),(1309,196,80,2,NULL),(1310,153,80,2,NULL),(1311,220,80,2,NULL),(1312,223,80,2,NULL),(1313,111,80,2,NULL),(1314,64,80,2,NULL),(1315,65,80,2,NULL),(1316,117,80,2,NULL),(1317,119,80,2,NULL),(1318,123,80,2,NULL),(1319,126,80,2,NULL),(1320,102,80,2,NULL),(1321,184,80,2,NULL),(1322,188,80,2,NULL),(1323,164,80,2,NULL),(1324,70,80,2,NULL),(1325,173,81,2,NULL),(1326,64,7,2,NULL),(1327,65,7,2,NULL),(1328,64,14,2,NULL),(1329,65,14,2,NULL),(1330,64,18,2,NULL),(1331,65,18,2,NULL),(1332,64,22,2,NULL),(1333,65,22,2,NULL),(1334,64,27,2,NULL),(1335,65,27,2,NULL),(1336,200,81,2,NULL),(1337,202,81,2,NULL),(1338,134,81,2,NULL),(1339,191,81,2,NULL),(1340,193,81,2,NULL),(1341,64,32,2,NULL),(1342,65,32,2,NULL),(1343,64,36,2,NULL),(1344,65,36,2,NULL),(1345,100,81,2,NULL),(1346,64,42,2,NULL),(1347,65,42,2,NULL),(1348,64,45,2,NULL),(1349,65,45,2,NULL),(1350,20,81,2,NULL),(1351,64,17,2,NULL),(1352,65,17,2,NULL),(1353,64,20,2,NULL),(1354,65,20,2,NULL),(1355,64,25,2,NULL),(1356,65,25,2,NULL),(1357,64,29,2,NULL),(1358,65,29,2,NULL),(1359,64,33,2,NULL),(1360,65,33,2,NULL),(1361,194,81,2,NULL),(1362,196,81,2,NULL),(1363,153,81,2,NULL),(1364,220,81,2,NULL),(1365,223,81,2,NULL),(1366,64,38,2,NULL),(1367,65,38,2,NULL),(1368,64,41,2,NULL),(1369,65,41,2,NULL),(1370,111,81,2,NULL),(1371,64,46,2,NULL),(1372,65,46,2,NULL),(1373,64,48,2,NULL),(1374,65,48,2,NULL),(1375,64,82,2,NULL),(1376,65,82,2,NULL),(1377,117,81,2,NULL),(1378,119,81,2,NULL),(1379,123,81,2,NULL),(1380,126,81,2,NULL),(1381,102,81,2,NULL),(1382,184,81,2,NULL),(1383,188,81,2,NULL),(1384,164,81,2,NULL),(1385,64,85,2,NULL),(1386,65,85,2,NULL),(1387,64,86,2,NULL),(1388,65,86,2,NULL),(1389,64,87,2,NULL),(1390,65,87,2,NULL),(1391,64,88,2,NULL),(1392,65,88,2,NULL),(1393,64,93,2,NULL),(1394,65,93,2,NULL),(1395,64,167,2,NULL),(1396,65,167,2,NULL),(1397,64,170,2,NULL),(1398,65,170,2,NULL),(1399,64,171,2,NULL),(1400,65,171,2,NULL),(1401,64,172,2,NULL),(1402,65,172,2,NULL),(1403,64,176,2,NULL),(1404,65,176,2,NULL),(1405,64,177,2,NULL),(1406,65,177,2,NULL),(1407,64,178,2,NULL),(1408,65,178,2,NULL),(1409,106,85,2,NULL),(1410,173,82,2,NULL),(1411,117,7,2,NULL),(1412,119,7,2,NULL),(1413,123,7,2,NULL),(1414,126,7,2,NULL),(1415,117,14,2,NULL),(1416,119,14,2,NULL),(1417,123,14,2,NULL),(1418,126,14,2,NULL),(1419,117,18,2,NULL),(1420,119,18,2,NULL),(1421,123,18,2,NULL),(1422,126,18,2,NULL),(1423,117,22,2,NULL),(1424,119,22,2,NULL),(1425,123,22,2,NULL),(1426,126,22,2,NULL),(1427,117,27,2,NULL),(1428,119,27,2,NULL),(1429,123,27,2,NULL),(1430,126,27,2,NULL),(1431,200,82,2,NULL),(1432,202,82,2,NULL),(1433,134,82,2,NULL),(1434,191,82,2,NULL),(1435,193,82,2,NULL),(1436,117,32,2,NULL),(1437,119,32,2,NULL),(1438,123,32,2,NULL),(1439,126,32,2,NULL),(1440,117,36,2,NULL),(1441,119,36,2,NULL),(1442,123,36,2,NULL),(1443,126,36,2,NULL),(1444,100,82,2,NULL),(1445,117,42,2,NULL),(1446,119,42,2,NULL),(1447,123,42,2,NULL),(1448,126,42,2,NULL),(1449,117,45,2,NULL),(1450,119,45,2,NULL),(1451,123,45,2,NULL),(1452,160,46,2,NULL),(1453,126,45,2,NULL),(1454,203,46,2,NULL),(1455,20,82,2,NULL),(1456,206,46,2,NULL),(1457,117,17,2,NULL),(1458,86,46,2,NULL),(1459,119,17,2,NULL),(1460,88,46,2,NULL),(1461,123,17,2,NULL),(1462,127,46,2,NULL),(1463,126,17,2,NULL),(1464,117,20,2,NULL),(1465,74,29,2,NULL),(1466,119,20,2,NULL),(1467,101,6,2,NULL),(1468,123,20,2,NULL),(1469,20,7,2,NULL),(1470,126,20,2,NULL),(1471,20,14,2,NULL),(1472,117,25,2,NULL),(1473,20,18,2,NULL),(1474,119,25,2,NULL),(1475,20,22,2,NULL),(1476,123,25,2,NULL),(1477,20,27,2,NULL),(1478,126,25,2,NULL),(1479,20,32,2,NULL),(1480,117,29,2,NULL),(1481,20,36,2,NULL),(1482,119,29,2,NULL),(1483,20,42,2,NULL),(1484,123,29,2,NULL),(1485,20,45,2,NULL),(1486,126,29,2,NULL),(1487,20,17,2,NULL),(1488,117,33,2,NULL),(1489,20,20,2,NULL),(1490,119,33,2,NULL),(1491,20,25,2,NULL),(1492,123,33,2,NULL),(1493,20,29,2,NULL),(1494,126,33,2,NULL),(1495,20,33,2,NULL),(1496,194,82,2,NULL),(1497,20,38,2,NULL),(1498,196,82,2,NULL),(1499,20,41,2,NULL),(1500,153,82,2,NULL),(1501,20,46,2,NULL),(1502,220,82,2,NULL),(1503,20,48,2,NULL),(1504,223,82,2,NULL),(1505,20,85,2,NULL),(1506,117,38,2,NULL),(1507,20,86,2,NULL),(1508,119,38,2,NULL),(1509,20,87,2,NULL),(1510,123,38,2,NULL),(1511,20,88,2,NULL),(1512,126,38,2,NULL),(1513,20,93,2,NULL),(1514,117,41,2,NULL),(1515,20,167,2,NULL),(1516,119,41,2,NULL),(1517,20,170,2,NULL),(1518,123,41,2,NULL),(1519,20,171,2,NULL),(1520,126,41,2,NULL),(1521,20,172,2,NULL),(1522,111,82,2,NULL),(1523,20,176,2,NULL),(1524,117,46,2,NULL),(1525,20,177,2,NULL),(1526,119,46,2,NULL),(1527,20,178,2,NULL),(1528,123,46,2,NULL),(1529,105,29,2,NULL),(1530,126,46,2,NULL),(1531,163,46,2,NULL),(1532,117,48,2,NULL),(1533,173,17,2,NULL),(1534,119,48,2,NULL),(1535,200,17,2,NULL),(1536,123,48,2,NULL),(1537,202,17,2,NULL),(1538,126,48,2,NULL),(1539,134,17,2,NULL),(1540,191,17,2,NULL),(1541,102,82,2,NULL),(1542,193,17,2,NULL),(1543,184,82,2,NULL),(1544,100,17,2,NULL),(1545,188,82,2,NULL),(1546,194,17,2,NULL),(1547,164,82,2,NULL),(1548,196,17,2,NULL),(1549,117,85,2,NULL),(1550,153,17,2,NULL),(1551,119,85,2,NULL),(1552,220,17,2,NULL),(1553,123,85,2,NULL),(1554,223,17,2,NULL),(1555,126,85,2,NULL),(1556,111,17,2,NULL),(1557,117,86,2,NULL),(1558,119,86,2,NULL),(1559,102,17,2,NULL),(1560,123,86,2,NULL),(1561,184,17,2,NULL),(1562,126,86,2,NULL),(1563,188,17,2,NULL),(1564,117,87,2,NULL),(1565,164,17,2,NULL),(1566,119,87,2,NULL),(1567,39,29,2,NULL),(1568,123,87,2,NULL),(1569,167,46,2,NULL),(1570,126,87,2,NULL),(1571,173,20,2,NULL),(1572,117,88,2,NULL),(1573,200,20,2,NULL),(1574,119,88,2,NULL),(1575,202,20,2,NULL),(1576,123,88,2,NULL),(1577,134,20,2,NULL),(1578,126,88,2,NULL),(1579,191,20,2,NULL),(1580,117,93,2,NULL),(1581,193,20,2,NULL),(1582,119,93,2,NULL),(1583,100,20,2,NULL),(1584,123,93,2,NULL),(1585,194,20,2,NULL),(1586,126,93,2,NULL),(1587,196,20,2,NULL),(1588,117,167,2,NULL),(1589,153,20,2,NULL),(1590,119,167,2,NULL),(1591,220,20,2,NULL),(1592,123,167,2,NULL),(1593,223,20,2,NULL),(1594,126,167,2,NULL),(1595,111,20,2,NULL),(1596,117,170,2,NULL),(1597,102,20,2,NULL),(1598,119,170,2,NULL),(1599,184,20,2,NULL),(1600,123,170,2,NULL),(1601,188,20,2,NULL),(1602,126,170,2,NULL),(1603,164,20,2,NULL),(1604,117,171,2,NULL),(1605,48,46,2,NULL),(1606,119,171,2,NULL),(1607,173,25,2,NULL),(1608,123,171,2,NULL),(1609,200,25,2,NULL),(1610,126,171,2,NULL),(1611,202,25,2,NULL),(1612,117,172,2,NULL),(1613,134,25,2,NULL),(1614,119,172,2,NULL),(1615,191,25,2,NULL),(1616,123,172,2,NULL),(1617,193,25,2,NULL),(1618,126,172,2,NULL),(1619,100,25,2,NULL),(1620,117,176,2,NULL),(1621,194,25,2,NULL),(1622,119,176,2,NULL),(1623,196,25,2,NULL),(1624,123,176,2,NULL),(1625,153,25,2,NULL),(1626,126,176,2,NULL),(1627,220,25,2,NULL),(1628,117,177,2,NULL),(1629,223,25,2,NULL),(1630,119,177,2,NULL),(1631,111,25,2,NULL),(1632,123,177,2,NULL),(1633,102,25,2,NULL),(1634,126,177,2,NULL),(1635,184,25,2,NULL),(1636,117,178,2,NULL),(1637,188,25,2,NULL),(1638,119,178,2,NULL),(1639,164,25,2,NULL),(1640,123,178,2,NULL),(1641,45,6,2,NULL),(1642,126,178,2,NULL),(1643,115,6,2,NULL),(1644,37,83,2,NULL),(1645,149,6,2,NULL),(1646,151,80,2,NULL),(1647,214,46,2,NULL),(1648,102,7,2,NULL),(1649,173,29,2,NULL),(1650,184,7,2,NULL),(1651,200,29,2,NULL),(1652,188,7,2,NULL),(1653,202,29,2,NULL),(1654,102,14,2,NULL),(1655,134,29,2,NULL),(1656,184,14,2,NULL),(1657,191,29,2,NULL),(1658,188,14,2,NULL),(1659,193,29,2,NULL),(1660,102,18,2,NULL),(1661,100,29,2,NULL),(1662,184,18,2,NULL),(1663,194,29,2,NULL),(1664,188,18,2,NULL),(1665,196,29,2,NULL),(1666,102,22,2,NULL),(1667,153,29,2,NULL),(1668,184,22,2,NULL),(1669,220,29,2,NULL),(1670,188,22,2,NULL),(1671,223,29,2,NULL),(1672,102,27,2,NULL),(1673,111,29,2,NULL),(1674,184,27,2,NULL),(1675,188,27,2,NULL),(1676,102,29,2,NULL),(1677,102,32,2,NULL),(1678,184,29,2,NULL),(1679,184,32,2,NULL),(1680,188,29,2,NULL),(1681,188,32,2,NULL),(1682,164,29,2,NULL),(1683,102,36,2,NULL),(1684,139,29,2,NULL),(1685,184,36,2,NULL),(1686,173,33,2,NULL),(1687,188,36,2,NULL),(1688,194,7,2,NULL),(1689,102,42,2,NULL),(1690,196,7,2,NULL),(1691,184,42,2,NULL),(1692,194,14,2,NULL),(1693,188,42,2,NULL),(1694,196,14,2,NULL),(1695,102,45,2,NULL),(1696,194,18,2,NULL),(1697,184,45,2,NULL),(1698,196,18,2,NULL),(1699,188,45,2,NULL),(1700,194,22,2,NULL),(1701,102,33,2,NULL),(1702,196,22,2,NULL),(1703,184,33,2,NULL),(1704,194,27,2,NULL),(1705,188,33,2,NULL),(1706,196,27,2,NULL),(1707,102,38,2,NULL),(1708,200,33,2,NULL),(1709,184,38,2,NULL),(1710,202,33,2,NULL),(1711,188,38,2,NULL),(1712,134,33,2,NULL),(1713,102,41,2,NULL),(1714,191,33,2,NULL),(1715,184,41,2,NULL),(1716,193,33,2,NULL),(1717,188,41,2,NULL),(1718,194,32,2,NULL),(1719,102,46,2,NULL),(1720,196,32,2,NULL),(1721,184,46,2,NULL),(1722,194,36,2,NULL),(1723,188,46,2,NULL),(1724,196,36,2,NULL),(1725,102,48,2,NULL),(1726,100,33,2,NULL),(1727,184,48,2,NULL),(1728,194,42,2,NULL),(1729,188,48,2,NULL),(1730,196,42,2,NULL),(1731,194,45,2,NULL),(1732,102,85,2,NULL),(1733,196,45,2,NULL),(1734,184,85,2,NULL),(1735,188,85,2,NULL),(1736,153,33,2,NULL),(1737,102,86,2,NULL),(1738,220,33,2,NULL),(1739,184,86,2,NULL),(1740,223,33,2,NULL),(1741,188,86,2,NULL),(1742,194,38,2,NULL),(1743,102,87,2,NULL),(1744,196,38,2,NULL),(1745,184,87,2,NULL),(1746,194,41,2,NULL),(1747,188,87,2,NULL),(1748,196,41,2,NULL),(1749,102,88,2,NULL),(1750,111,33,2,NULL),(1751,184,88,2,NULL),(1752,194,46,2,NULL),(1753,188,88,2,NULL),(1754,196,46,2,NULL),(1755,102,93,2,NULL),(1756,194,48,2,NULL),(1757,184,93,2,NULL),(1758,196,48,2,NULL),(1759,188,93,2,NULL),(1760,102,167,2,NULL),(1761,164,33,2,NULL),(1762,184,167,2,NULL),(1763,194,85,2,NULL),(1764,188,167,2,NULL),(1765,196,85,2,NULL),(1766,102,170,2,NULL),(1767,194,86,2,NULL),(1768,184,170,2,NULL),(1769,196,86,2,NULL),(1770,188,170,2,NULL),(1771,194,87,2,NULL),(1772,102,171,2,NULL),(1773,196,87,2,NULL),(1774,184,171,2,NULL),(1775,194,88,2,NULL),(1776,188,171,2,NULL),(1777,196,88,2,NULL),(1778,102,172,2,NULL),(1779,194,93,2,NULL),(1780,184,172,2,NULL),(1781,196,93,2,NULL),(1782,188,172,2,NULL),(1783,194,167,2,NULL),(1784,102,176,2,NULL),(1785,196,167,2,NULL),(1786,184,176,2,NULL),(1787,194,170,2,NULL),(1788,188,176,2,NULL),(1789,196,170,2,NULL),(1790,102,177,2,NULL),(1791,194,171,2,NULL),(1792,184,177,2,NULL),(1793,196,171,2,NULL),(1794,188,177,2,NULL),(1795,194,172,2,NULL),(1796,102,178,2,NULL),(1797,196,172,2,NULL),(1798,184,178,2,NULL),(1799,194,176,2,NULL),(1800,188,178,2,NULL),(1801,196,176,2,NULL),(1802,113,85,2,NULL),(1803,194,177,2,NULL),(1804,164,7,2,NULL),(1805,196,177,2,NULL),(1806,164,14,2,NULL),(1807,194,178,2,NULL),(1808,164,18,2,NULL),(1809,196,178,2,NULL),(1810,164,22,2,NULL),(1811,23,29,2,NULL),(1812,164,27,2,NULL),(1813,32,35,2,NULL),(1814,164,32,2,NULL),(1815,153,7,2,NULL),(1816,164,36,2,NULL),(1817,220,7,2,NULL),(1818,164,42,2,NULL),(1819,223,7,2,NULL),(1820,164,45,2,NULL),(1821,153,14,2,NULL),(1822,164,38,2,NULL),(1823,220,14,2,NULL),(1824,164,41,2,NULL),(1825,223,14,2,NULL),(1826,164,46,2,NULL),(1827,153,18,2,NULL),(1828,164,48,2,NULL),(1829,220,18,2,NULL),(1830,164,85,2,NULL),(1831,223,18,2,NULL),(1832,164,86,2,NULL),(1833,153,22,2,NULL),(1834,164,87,2,NULL),(1835,220,22,2,NULL),(1836,164,88,2,NULL),(1837,223,22,2,NULL),(1838,164,93,2,NULL),(1839,153,27,2,NULL),(1840,164,167,2,NULL),(1841,220,27,2,NULL),(1842,164,170,2,NULL),(1843,223,27,2,NULL),(1844,164,171,2,NULL),(1845,153,32,2,NULL),(1846,164,172,2,NULL),(1847,220,32,2,NULL),(1848,164,176,2,NULL),(1849,223,32,2,NULL),(1850,164,177,2,NULL),(1851,153,36,2,NULL),(1852,220,36,2,NULL),(1853,223,36,2,NULL),(1854,164,178,2,NULL),(1855,153,42,2,NULL),(1856,173,85,2,NULL),(1857,220,42,2,NULL),(1858,200,85,2,NULL),(1859,223,42,2,NULL),(1860,202,85,2,NULL),(1861,153,45,2,NULL),(1862,134,85,2,NULL),(1863,220,45,2,NULL),(1864,191,85,2,NULL),(1865,223,45,2,NULL),(1866,193,85,2,NULL),(1867,153,38,2,NULL),(1868,100,85,2,NULL),(1869,220,38,2,NULL),(1870,153,85,2,NULL),(1871,223,38,2,NULL),(1872,220,85,2,NULL),(1873,153,41,2,NULL),(1874,223,85,2,NULL),(1875,220,41,2,NULL),(1876,111,85,2,NULL),(1877,223,41,2,NULL),(1878,153,46,2,NULL),(1879,98,85,2,NULL),(1880,220,46,2,NULL),(1881,109,85,2,NULL),(1882,223,46,2,NULL),(1883,156,85,2,NULL),(1884,153,48,2,NULL),(1885,173,86,2,NULL),(1886,220,48,2,NULL),(1887,200,86,2,NULL),(1888,223,48,2,NULL),(1889,202,86,2,NULL),(1890,134,86,2,NULL),(1891,191,86,2,NULL),(1892,153,86,2,NULL),(1893,193,86,2,NULL),(1894,220,86,2,NULL),(1895,100,86,2,NULL),(1896,223,86,2,NULL),(1897,111,86,2,NULL),(1898,153,87,2,NULL),(1899,173,87,2,NULL),(1900,220,87,2,NULL),(1901,200,87,2,NULL),(1902,223,87,2,NULL),(1903,202,87,2,NULL),(1904,153,88,2,NULL),(1905,134,87,2,NULL),(1906,220,88,2,NULL),(1907,191,87,2,NULL),(1908,223,88,2,NULL),(1909,193,87,2,NULL),(1910,153,93,2,NULL),(1911,100,87,2,NULL),(1912,220,93,2,NULL),(1913,111,87,2,NULL),(1914,223,93,2,NULL),(1915,173,88,2,NULL),(1916,153,167,2,NULL),(1917,200,88,2,NULL),(1918,220,167,2,NULL),(1919,202,88,2,NULL),(1920,223,167,2,NULL),(1921,134,88,2,NULL),(1922,153,170,2,NULL),(1923,191,88,2,NULL),(1924,220,170,2,NULL),(1925,193,88,2,NULL),(1926,223,170,2,NULL),(1927,100,88,2,NULL),(1928,153,171,2,NULL),(1929,111,88,2,NULL),(1930,220,171,2,NULL),(1931,223,171,2,NULL),(1932,153,172,2,NULL),(1933,220,172,2,NULL),(1934,223,172,2,NULL),(1935,153,176,2,NULL),(1936,220,176,2,NULL),(1937,223,176,2,NULL),(1938,153,177,2,NULL),(1939,220,177,2,NULL),(1940,223,177,2,NULL),(1941,153,178,2,NULL),(1942,220,178,2,NULL),(1943,223,178,2,NULL),(1944,173,38,2,NULL),(1945,200,38,2,NULL),(1946,202,38,2,NULL),(1947,134,38,2,NULL),(1948,191,38,2,NULL),(1949,193,38,2,NULL),(1950,100,38,2,NULL),(1951,111,38,2,NULL),(1952,94,46,2,NULL),(1953,183,46,2,NULL),(1954,187,46,2,NULL),(1955,173,41,2,NULL),(1956,200,41,2,NULL),(1957,202,41,2,NULL),(1958,134,41,2,NULL),(1959,191,41,2,NULL),(1960,193,41,2,NULL),(1961,100,41,2,NULL),(1962,111,41,2,NULL),(1963,66,29,2,NULL),(1964,111,7,2,NULL),(1965,111,14,2,NULL),(1966,111,18,2,NULL),(1967,111,22,2,NULL),(1968,111,27,2,NULL),(1969,111,32,2,NULL),(1970,111,36,2,NULL),(1971,111,42,2,NULL),(1972,111,45,2,NULL),(1973,111,46,2,NULL),(1974,111,48,2,NULL),(1975,111,93,2,NULL),(1976,111,167,2,NULL),(1977,111,170,2,NULL),(1978,111,171,2,NULL),(1979,111,172,2,NULL),(1980,111,176,2,NULL),(1981,111,177,2,NULL),(1982,111,178,2,NULL),(1983,173,46,2,NULL),(1984,200,46,2,NULL),(1985,202,46,2,NULL),(1986,134,46,2,NULL),(1987,191,46,2,NULL),(1988,193,46,2,NULL),(1989,100,46,2,NULL),(1990,146,46,2,NULL),(1991,157,46,2,NULL),(1992,179,46,2,NULL),(1993,173,48,2,NULL),(1994,200,48,2,NULL),(1995,202,48,2,NULL),(1996,134,48,2,NULL),(1997,191,48,2,NULL),(1998,193,48,2,NULL),(1999,100,48,2,NULL),(2000,137,42,2,NULL),(2001,141,42,2,NULL),(2002,239,42,2,NULL),(2003,162,42,2,NULL),(2004,165,42,2,NULL),(2005,225,42,2,NULL),(2006,128,22,2,NULL),(2007,169,1,2,NULL),(2008,173,7,2,NULL),(2009,173,14,2,NULL),(2010,173,18,2,NULL),(2011,173,22,2,NULL),(2012,173,27,2,NULL),(2013,173,32,2,NULL),(2014,173,36,2,NULL),(2015,173,42,2,NULL),(2016,173,45,2,NULL),(2017,173,93,2,NULL),(2018,173,167,2,NULL),(2019,173,170,2,NULL),(2020,173,171,2,NULL),(2021,173,172,2,NULL),(2022,173,176,2,NULL),(2023,173,177,2,NULL),(2024,173,178,2,NULL),(2025,61,22,2,NULL),(2026,218,42,2,NULL),(2027,200,7,2,NULL),(2028,202,7,2,NULL),(2029,134,7,2,NULL),(2030,191,7,2,NULL),(2031,193,7,2,NULL),(2032,100,7,2,NULL),(2033,121,42,2,NULL),(2034,230,22,2,NULL),(2035,200,14,2,NULL),(2036,202,14,2,NULL),(2037,134,14,2,NULL),(2038,191,14,2,NULL),(2039,193,14,2,NULL),(2040,100,14,2,NULL),(2041,21,42,2,NULL),(2042,200,18,2,NULL),(2043,202,18,2,NULL),(2044,134,18,2,NULL),(2045,191,18,2,NULL),(2046,193,18,2,NULL),(2047,100,18,2,NULL),(2048,67,42,2,NULL),(2049,77,1,2,NULL),(2050,112,1,2,NULL),(2051,200,22,2,NULL),(2052,202,22,2,NULL),(2053,134,22,2,NULL),(2054,191,22,2,NULL),(2055,193,22,2,NULL),(2056,100,22,2,NULL),(2057,28,22,2,NULL),(2058,134,27,2,NULL),(2059,191,27,2,NULL),(2060,193,27,2,NULL),(2061,200,32,2,NULL),(2062,202,32,2,NULL),(2063,200,36,2,NULL),(2064,202,36,2,NULL),(2065,100,27,2,NULL),(2066,200,42,2,NULL),(2067,202,42,2,NULL),(2068,200,45,2,NULL),(2069,202,45,2,NULL),(2070,200,93,2,NULL),(2071,202,93,2,NULL),(2072,200,167,2,NULL),(2073,202,167,2,NULL),(2074,200,170,2,NULL),(2075,202,170,2,NULL),(2076,200,171,2,NULL),(2077,202,171,2,NULL),(2078,200,172,2,NULL),(2079,202,172,2,NULL),(2080,200,176,2,NULL),(2081,202,176,2,NULL),(2082,200,177,2,NULL),(2083,202,177,2,NULL),(2084,200,178,2,NULL),(2085,202,178,2,NULL),(2086,51,30,2,NULL),(2087,116,22,2,NULL),(2088,134,32,2,NULL),(2089,191,32,2,NULL),(2090,193,32,2,NULL),(2091,134,36,2,NULL),(2092,191,36,2,NULL),(2093,193,36,2,NULL),(2094,134,42,2,NULL),(2095,191,42,2,NULL),(2096,193,42,2,NULL),(2097,134,45,2,NULL),(2098,191,45,2,NULL),(2099,193,45,2,NULL),(2100,134,93,2,NULL),(2101,191,93,2,NULL),(2102,193,93,2,NULL),(2103,134,167,2,NULL),(2104,191,167,2,NULL),(2105,193,167,2,NULL),(2106,134,170,2,NULL),(2107,191,170,2,NULL),(2108,193,170,2,NULL),(2109,134,171,2,NULL),(2110,191,171,2,NULL),(2111,193,171,2,NULL),(2112,134,172,2,NULL),(2113,191,172,2,NULL),(2114,193,172,2,NULL),(2115,134,176,2,NULL),(2116,191,176,2,NULL),(2117,193,176,2,NULL),(2118,134,177,2,NULL),(2119,191,177,2,NULL),(2120,193,177,2,NULL),(2121,134,178,2,NULL),(2122,191,178,2,NULL),(2123,193,178,2,NULL),(2124,100,32,2,NULL),(2125,125,42,2,NULL),(2126,222,42,2,NULL),(2127,224,42,2,NULL),(2128,100,36,2,NULL),(2129,177,22,2,NULL),(2130,100,42,2,NULL),(2131,100,45,2,NULL),(2132,100,93,2,NULL),(2133,100,167,2,NULL),(2134,100,170,2,NULL),(2135,100,171,2,NULL),(2136,100,172,2,NULL),(2137,100,176,2,NULL),(2138,100,177,2,NULL),(2139,100,178,2,NULL),(2140,24,42,2,NULL),(2141,197,42,2,NULL),(2142,213,42,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:24
