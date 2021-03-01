-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: openemis
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `order` int(3) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  `default` int(1) NOT NULL DEFAULT '0',
  `international_code` varchar(10) DEFAULT NULL,
  `national_code` varchar(10) DEFAULT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan',1,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(2,'Aland Islands',2,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(3,'Albania',3,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(4,'Algeria',4,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(5,'American Samoa',5,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(6,'Andorra',6,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(7,'Angola',7,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(8,'Anguilla',8,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(9,'Antarctica',9,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(10,'Antigua and Barbuda',10,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(11,'Argentina',11,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(12,'Armenia',12,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(13,'Aruba',13,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(14,'Australia',14,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(15,'Austria',15,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(16,'Azerbaijan',16,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(17,'Bahamas',17,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(18,'Bahrain',18,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(19,'Bangladesh',19,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(20,'Barbados',20,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(21,'Belarus',21,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(22,'Belgium',22,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(23,'Belize',23,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(24,'Benin',24,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(25,'Bermuda',25,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(26,'Bhutan',26,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(27,'Bolivia',27,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(28,'Bonaire, Sint Eustatius and Saba',28,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(29,'Bosnia and Herzegovina',29,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(30,'Botswana',30,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(31,'Bouvet Island',31,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(32,'Brazil',32,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(33,'British Indian Ocean Territory',33,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(34,'Brunei',34,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(35,'Bulgaria',35,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(36,'Burkina Faso',36,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(37,'Burundi',37,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(38,'Cambodia',38,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(39,'Cameroon',39,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(40,'Canada',40,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(41,'Cape Verde',41,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(42,'Cayman Islands',42,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(43,'Central African Republic',43,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(44,'Chad',44,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(45,'Chile',45,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(46,'China',46,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(47,'Christmas Island',47,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(48,'Cocos (Keeling) Islands',48,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(49,'Colombia',49,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(50,'Comoros',50,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(51,'Congo',51,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(52,'Cook Islands',52,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(53,'Costa Rica',53,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(54,'Cote d\'ivoire (Ivory Coast)',54,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(55,'Croatia',55,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(56,'Cuba',56,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(57,'Curacao',57,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(58,'Cyprus',58,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(59,'Czech Republic',59,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(60,'Democratic Republic of the Congo',60,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(61,'Denmark',61,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(62,'Djibouti',62,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(63,'Dominica',63,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(64,'Dominican Republic',64,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(65,'Ecuador',65,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(66,'Egypt',66,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(67,'El Salvador',67,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(68,'Equatorial Guinea',68,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(69,'Eritrea',69,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(70,'Estonia',70,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(71,'Ethiopia',71,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(72,'Falkland Islands (Malvinas)',72,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(73,'Faroe Islands',73,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(74,'Fiji',74,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(75,'Finland',75,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(76,'France',76,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(77,'French Guiana',77,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(78,'French Polynesia',78,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(79,'French Southern Territories',79,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(80,'Gabon',80,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(81,'Gambia',81,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(82,'Georgia',82,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(83,'Germany',83,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(84,'Ghana',84,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(85,'Gibraltar',85,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(86,'Greece',86,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(87,'Greenland',87,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(88,'Grenada',88,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(89,'Guadaloupe',89,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(90,'Guam',90,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(91,'Guatemala',91,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(92,'Guernsey',92,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(93,'Guinea',93,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(94,'Guinea-Bissau',94,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(95,'Guyana',95,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(96,'Haiti',96,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(97,'Heard Island and McDonald Islands',97,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(98,'Honduras',98,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(99,'Hong Kong',99,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(100,'Hungary',100,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(101,'Iceland',101,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(102,'India',102,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(103,'Indonesia',103,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(104,'Iran',104,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(105,'Iraq',105,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(106,'Ireland',106,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(107,'Isle of Man',107,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(108,'Israel',108,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(109,'Italy',109,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(110,'Jamaica',110,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(111,'Japan',111,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(112,'Jersey',112,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(113,'Jordan',113,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(114,'Kazakhstan',114,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(115,'Kenya',115,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(116,'Kiribati',116,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(117,'Kosovo',117,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(118,'Kuwait',118,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(119,'Kyrgyzstan',119,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(120,'Laos',120,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(121,'Latvia',121,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(122,'Lebanon',122,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(123,'Lesotho',123,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(124,'Liberia',124,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(125,'Libya',125,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(126,'Liechtenstein',126,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(127,'Lithuania',127,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(128,'Luxembourg',128,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(129,'Macao',129,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(130,'Macedonia',130,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(131,'Madagascar',131,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(132,'Malawi',132,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(133,'Malaysia',133,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(134,'Maldives',134,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(135,'Mali',135,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(136,'Malta',136,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(137,'Marshall Islands',137,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(138,'Martinique',138,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(139,'Mauritania',139,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(140,'Mauritius',140,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(141,'Mayotte',141,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(142,'Mexico',142,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(143,'Micronesia',143,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(144,'Moldava',144,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(145,'Monaco',145,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(146,'Mongolia',146,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(147,'Montenegro',147,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(148,'Montserrat',148,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(149,'Morocco',149,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(150,'Mozambique',150,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(151,'Myanmar (Burma)',151,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(152,'Namibia',152,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(153,'Nauru',153,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(154,'Nepal',154,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(155,'Netherlands',155,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(156,'New Caledonia',156,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(157,'New Zealand',157,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(158,'Nicaragua',158,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(159,'Niger',159,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(160,'Nigeria',160,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(161,'Niue',161,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(162,'Norfolk Island',162,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(163,'North Korea',163,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(164,'Northern Mariana Islands',164,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(165,'Norway',165,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(166,'Oman',166,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(167,'Pakistan',167,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(168,'Palau',168,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(169,'Palestine',169,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(170,'Panama',170,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(171,'Papua New Guinea',171,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(172,'Paraguay',172,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(173,'Peru',173,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(174,'Phillipines',174,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(175,'Pitcairn',175,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(176,'Poland',176,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(177,'Portugal',177,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(178,'Puerto Rico',178,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(179,'Qatar',179,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(180,'Reunion',180,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(181,'Romania',181,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(182,'Russia',182,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(183,'Rwanda',183,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(184,'Saint Barthelemy',184,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(185,'Saint Helena',185,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(186,'Saint Kitts and Nevis',186,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(187,'Saint Lucia',187,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(188,'Saint Martin',188,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(189,'Saint Pierre and Miquelon',189,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(190,'Saint Vincent and the Grenadines',190,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(191,'Samoa',191,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(192,'San Marino',192,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(193,'Sao Tome and Principe',193,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(194,'Saudi Arabia',194,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(195,'Senegal',195,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(196,'Serbia',196,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(197,'Seychelles',197,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(198,'Sierra Leone',198,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(199,'Singapore',199,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(200,'Sint Maarten',200,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(201,'Slovakia',201,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(202,'Slovenia',202,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(203,'Solomon Islands',203,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(204,'Somalia',204,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(205,'South Africa',205,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(206,'South Georgia and the South Sandwich Islands',206,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(207,'South Korea',207,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(208,'South Sudan',208,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(209,'Spain',209,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(210,'Sri Lanka',210,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(211,'Sudan',211,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(212,'Suriname',212,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(213,'Svalbard and Jan Mayen',213,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(214,'Swaziland',214,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(215,'Sweden',215,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(216,'Switzerland',216,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(217,'Syria',217,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(218,'Taiwan',218,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(219,'Tajikistan',219,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(220,'Tanzania',220,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(221,'Thailand',221,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(222,'Timor-Leste (East Timor)',222,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(223,'Togo',223,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(224,'Tokelau',224,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(225,'Tonga',225,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(226,'Trinidad and Tobago',226,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(227,'Tunisia',227,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(228,'Turkey',228,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(229,'Turkmenistan',229,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(230,'Turks and Caicos Islands',230,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(231,'Tuvalu',231,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(232,'Uganda',232,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(233,'Ukraine',233,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(234,'United Arab Emirates',234,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(235,'United Kingdom',235,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(236,'United States',236,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(237,'United States Minor Outlying Islands',237,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(238,'Uruguay',238,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(239,'Uzbekistan',239,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(240,'Vanuatu',240,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(241,'Vatican City',241,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(242,'Venezuela',242,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(243,'Vietnam',243,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(244,'Virgin Islands, British',244,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(245,'Virgin Islands, US',245,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(246,'Wallis and Futuna',246,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(247,'Western Sahara',247,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(248,'Yemen',248,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(249,'Zambia',249,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(250,'Zimbabwe',250,1,0,NULL,NULL,NULL,NULL,1,'2013-11-29 11:21:09'),(251,'Salvador',251,1,0,NULL,NULL,NULL,NULL,1,'2014-09-30 00:00:00'),(252,'Samoan',252,1,0,NULL,NULL,NULL,NULL,1,'2014-09-30 00:00:00');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23  9:31:03
