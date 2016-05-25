-- MySQL dump 10.13  Distrib 5.5.20, for Win32 (x86)
--
-- Host: localhost    Database: pag
-- ------------------------------------------------------
-- Server version	5.5.20

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add article',7,'add_article'),(20,'Can change article',7,'change_article'),(21,'Can delete article',7,'delete_article');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'pag','article'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-05-25 08:10:15'),(2,'auth','0001_initial','2016-05-25 08:10:17'),(3,'admin','0001_initial','2016-05-25 08:10:18'),(4,'admin','0002_logentry_remove_auto_add','2016-05-25 08:10:18'),(5,'contenttypes','0002_remove_content_type_name','2016-05-25 08:10:18'),(6,'auth','0002_alter_permission_name_max_length','2016-05-25 08:10:18'),(7,'auth','0003_alter_user_email_max_length','2016-05-25 08:10:19'),(8,'auth','0004_alter_user_username_opts','2016-05-25 08:10:19'),(9,'auth','0005_alter_user_last_login_null','2016-05-25 08:10:19'),(10,'auth','0006_require_contenttypes_0002','2016-05-25 08:10:19'),(11,'auth','0007_alter_validators_add_error_messages','2016-05-25 08:10:19'),(12,'pag','0001_initial','2016-05-25 08:10:19'),(13,'sessions','0001_initial','2016-05-25 08:10:19');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pag_article`
--

DROP TABLE IF EXISTS `pag_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pag_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_titile` varchar(128) NOT NULL,
  `article_content` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pag_article`
--

LOCK TABLES `pag_article` WRITE;
/*!40000 ALTER TABLE `pag_article` DISABLE KEYS */;
INSERT INTO `pag_article` VALUES (1,'titile1','content1'),(2,'titile2','content2'),(3,'titile3','content3'),(4,'titile4','content4'),(5,'titile5','content5'),(6,'titile6','content6'),(7,'titile7','content7'),(8,'titile8','content8'),(9,'titile9','content9'),(10,'titile10','content10'),(11,'titile11','content11'),(12,'titile12','content12'),(13,'titile13','content13'),(14,'titile14','content14'),(15,'titile15','content15'),(16,'titile16','content16'),(17,'titile17','content17'),(18,'titile18','content18'),(19,'titile19','content19'),(20,'titile20','content20'),(21,'titile21','content21'),(22,'titile22','content22'),(23,'titile23','content23'),(24,'titile24','content24'),(25,'titile25','content25'),(26,'titile26','content26'),(27,'titile27','content27'),(28,'titile28','content28'),(29,'titile29','content29'),(30,'titile30','content30'),(31,'titile31','content31'),(32,'titile32','content32'),(33,'titile33','content33'),(34,'titile34','content34'),(35,'titile35','content35'),(36,'titile36','content36'),(37,'titile37','content37'),(38,'titile38','content38'),(39,'titile39','content39'),(40,'titile40','content40'),(41,'titile41','content41'),(42,'titile42','content42'),(43,'titile43','content43'),(44,'titile44','content44'),(45,'titile45','content45'),(46,'titile46','content46'),(47,'titile47','content47'),(48,'titile48','content48'),(49,'titile49','content49'),(50,'titile50','content50'),(51,'titile51','content51'),(52,'titile52','content52'),(53,'titile53','content53'),(54,'titile54','content54'),(55,'titile55','content55'),(56,'titile56','content56'),(57,'titile57','content57'),(58,'titile58','content58'),(59,'titile59','content59'),(60,'titile60','content60'),(61,'titile61','content61'),(62,'titile62','content62'),(63,'titile63','content63'),(64,'titile64','content64'),(65,'titile65','content65'),(66,'titile66','content66'),(67,'titile67','content67'),(68,'titile68','content68'),(69,'titile69','content69'),(70,'titile70','content70'),(71,'titile71','content71'),(72,'titile72','content72'),(73,'titile73','content73'),(74,'titile74','content74'),(75,'titile75','content75'),(76,'titile76','content76'),(77,'titile77','content77'),(78,'titile78','content78'),(79,'titile79','content79'),(80,'titile80','content80'),(81,'titile81','content81'),(82,'titile82','content82'),(83,'titile83','content83'),(84,'titile84','content84'),(85,'titile85','content85'),(86,'titile86','content86'),(87,'titile87','content87'),(88,'titile88','content88'),(89,'titile89','content89'),(90,'titile90','content90'),(91,'titile91','content91'),(92,'titile92','content92'),(93,'titile93','content93'),(94,'titile94','content94'),(95,'titile95','content95'),(96,'titile96','content96'),(97,'titile97','content97'),(98,'titile98','content98'),(99,'titile99','content99'),(100,'titile100','content100'),(101,'titile101','content101'),(102,'titile102','content102'),(103,'titile103','content103'),(104,'titile104','content104'),(105,'titile105','content105'),(106,'titile106','content106'),(107,'titile107','content107'),(108,'titile108','content108'),(109,'titile109','content109'),(110,'titile110','content110'),(111,'titile111','content111'),(112,'titile112','content112'),(113,'titile113','content113'),(114,'titile114','content114'),(115,'titile115','content115'),(116,'titile116','content116'),(117,'titile117','content117'),(118,'titile118','content118'),(119,'titile119','content119'),(120,'titile120','content120'),(121,'titile121','content121'),(122,'titile122','content122'),(123,'titile123','content123'),(124,'titile124','content124'),(125,'titile125','content125'),(126,'titile126','content126'),(127,'titile127','content127'),(128,'titile128','content128'),(129,'titile129','content129'),(130,'titile130','content130'),(131,'titile131','content131'),(132,'titile132','content132'),(133,'titile133','content133'),(134,'titile134','content134'),(135,'titile135','content135'),(136,'titile136','content136'),(137,'titile137','content137'),(138,'titile138','content138'),(139,'titile139','content139'),(140,'titile140','content140'),(141,'titile141','content141'),(142,'titile142','content142'),(143,'titile143','content143'),(144,'titile144','content144'),(145,'titile145','content145'),(146,'titile146','content146'),(147,'titile147','content147'),(148,'titile148','content148'),(149,'titile149','content149'),(150,'titile150','content150'),(151,'titile151','content151'),(152,'titile152','content152'),(153,'titile153','content153'),(154,'titile154','content154'),(155,'titile155','content155'),(156,'titile156','content156'),(157,'titile157','content157'),(158,'titile158','content158'),(159,'titile159','content159'),(160,'titile160','content160'),(161,'titile161','content161'),(162,'titile162','content162'),(163,'titile163','content163'),(164,'titile164','content164'),(165,'titile165','content165'),(166,'titile166','content166'),(167,'titile167','content167'),(168,'titile168','content168'),(169,'titile169','content169'),(170,'titile170','content170'),(171,'titile171','content171'),(172,'titile172','content172'),(173,'titile173','content173'),(174,'titile174','content174'),(175,'titile175','content175'),(176,'titile176','content176'),(177,'titile177','content177'),(178,'titile178','content178'),(179,'titile179','content179'),(180,'titile180','content180'),(181,'titile181','content181'),(182,'titile182','content182'),(183,'titile183','content183'),(184,'titile184','content184'),(185,'titile185','content185'),(186,'titile186','content186'),(187,'titile187','content187'),(188,'titile188','content188'),(189,'titile189','content189'),(190,'titile190','content190'),(191,'titile191','content191'),(192,'titile192','content192'),(193,'titile193','content193'),(194,'titile194','content194'),(195,'titile195','content195'),(196,'titile196','content196'),(197,'titile197','content197'),(198,'titile198','content198'),(199,'titile199','content199'),(200,'titile200','content200'),(201,'titile201','content201'),(202,'titile202','content202'),(203,'titile203','content203'),(204,'titile204','content204'),(205,'titile205','content205'),(206,'titile206','content206'),(207,'titile207','content207'),(208,'titile208','content208'),(209,'titile209','content209'),(210,'titile210','content210'),(211,'titile211','content211'),(212,'titile212','content212'),(213,'titile213','content213'),(214,'titile214','content214'),(215,'titile215','content215'),(216,'titile216','content216'),(217,'titile217','content217'),(218,'titile218','content218'),(219,'titile219','content219'),(220,'titile220','content220'),(221,'titile221','content221'),(222,'titile222','content222'),(223,'titile223','content223'),(224,'titile224','content224'),(225,'titile225','content225'),(226,'titile226','content226'),(227,'titile227','content227'),(228,'titile228','content228'),(229,'titile229','content229'),(230,'titile230','content230'),(231,'titile231','content231'),(232,'titile232','content232'),(233,'titile233','content233'),(234,'titile234','content234'),(235,'titile235','content235'),(236,'titile236','content236'),(237,'titile237','content237'),(238,'titile238','content238'),(239,'titile239','content239'),(240,'titile240','content240'),(241,'titile241','content241'),(242,'titile242','content242'),(243,'titile243','content243'),(244,'titile244','content244'),(245,'titile245','content245'),(246,'titile246','content246'),(247,'titile247','content247'),(248,'titile248','content248'),(249,'titile249','content249'),(250,'titile250','content250'),(251,'titile251','content251'),(252,'titile252','content252'),(253,'titile253','content253'),(254,'titile254','content254'),(255,'titile255','content255'),(256,'titile256','content256'),(257,'titile257','content257'),(258,'titile258','content258'),(259,'titile259','content259'),(260,'titile260','content260'),(261,'titile261','content261'),(262,'titile262','content262'),(263,'titile263','content263'),(264,'titile264','content264'),(265,'titile265','content265'),(266,'titile266','content266'),(267,'titile267','content267'),(268,'titile268','content268'),(269,'titile269','content269'),(270,'titile270','content270'),(271,'titile271','content271'),(272,'titile272','content272'),(273,'titile273','content273'),(274,'titile274','content274'),(275,'titile275','content275'),(276,'titile276','content276'),(277,'titile277','content277'),(278,'titile278','content278'),(279,'titile279','content279'),(280,'titile280','content280'),(281,'titile281','content281'),(282,'titile282','content282'),(283,'titile283','content283'),(284,'titile284','content284'),(285,'titile285','content285'),(286,'titile286','content286'),(287,'titile287','content287'),(288,'titile288','content288'),(289,'titile289','content289'),(290,'titile290','content290'),(291,'titile291','content291'),(292,'titile292','content292'),(293,'titile293','content293'),(294,'titile294','content294'),(295,'titile295','content295'),(296,'titile296','content296'),(297,'titile297','content297'),(298,'titile298','content298'),(299,'titile299','content299');
/*!40000 ALTER TABLE `pag_article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-25 18:10:20
