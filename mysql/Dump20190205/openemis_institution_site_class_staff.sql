-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: openemis
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `institution_site_class_staff`
--

DROP TABLE IF EXISTS `institution_site_class_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_site_class_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(1) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `institution_site_class_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `institution_site_class_id` (`institution_site_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_site_class_staff`
--

LOCK TABLES `institution_site_class_staff` WRITE;
/*!40000 ALTER TABLE `institution_site_class_staff` DISABLE KEYS */;
INSERT INTO `institution_site_class_staff` VALUES (1,1,5,1,NULL,NULL,1,'2014-12-29 10:00:31'),(2,1,67,99,NULL,NULL,1,'2014-12-29 10:01:47'),(3,0,0,211,NULL,NULL,1,'2015-03-16 14:13:12'),(4,1,0,212,NULL,NULL,1,'2015-03-16 14:13:12'),(5,1,0,213,NULL,NULL,1,'2015-03-16 14:13:12'),(6,1,0,214,NULL,NULL,1,'2015-03-16 14:13:12'),(7,1,0,215,NULL,NULL,1,'2015-03-16 14:13:12'),(8,1,0,216,NULL,NULL,1,'2015-03-16 14:13:12'),(9,1,0,217,NULL,NULL,1,'2015-03-16 14:13:12'),(10,1,0,218,NULL,NULL,1,'2015-03-16 14:13:12'),(11,1,0,219,NULL,NULL,1,'2015-03-16 14:13:12'),(12,1,0,220,NULL,NULL,1,'2015-03-16 14:13:12'),(13,1,0,221,NULL,NULL,1,'2015-03-16 14:13:12'),(14,1,0,222,NULL,NULL,1,'2015-03-16 14:13:12'),(15,1,0,223,NULL,NULL,1,'2015-03-16 14:13:12'),(16,1,0,224,NULL,NULL,1,'2015-03-16 14:13:12'),(17,1,0,225,NULL,NULL,1,'2015-03-16 14:13:12'),(18,1,0,226,NULL,NULL,1,'2015-03-16 14:13:12'),(19,1,0,227,NULL,NULL,1,'2015-03-16 14:13:12'),(20,1,0,228,NULL,NULL,1,'2015-03-16 14:13:12'),(21,1,0,229,NULL,NULL,1,'2015-03-16 14:13:12'),(22,1,0,230,NULL,NULL,1,'2015-03-16 14:13:12'),(23,1,0,231,NULL,NULL,1,'2015-03-16 14:13:12'),(24,1,0,232,NULL,NULL,1,'2015-03-16 14:13:12'),(25,1,0,233,NULL,NULL,1,'2015-03-16 14:13:12'),(26,1,0,234,NULL,NULL,1,'2015-03-16 14:13:12'),(27,1,101,235,NULL,NULL,1,'2015-03-16 14:18:59'),(28,1,101,236,NULL,NULL,1,'2015-03-16 14:18:59'),(29,1,101,237,NULL,NULL,1,'2015-03-16 14:18:59'),(30,1,101,238,NULL,NULL,1,'2015-03-16 14:18:59'),(31,1,101,239,NULL,NULL,1,'2015-03-16 14:18:59'),(32,1,101,240,NULL,NULL,1,'2015-03-16 14:18:59'),(33,1,101,241,NULL,NULL,1,'2015-03-16 14:18:59'),(34,1,101,242,NULL,NULL,1,'2015-03-16 14:18:59'),(35,1,101,243,NULL,NULL,1,'2015-03-16 14:18:59'),(36,1,101,244,NULL,NULL,1,'2015-03-16 14:18:59'),(37,1,101,245,NULL,NULL,1,'2015-03-16 14:18:59'),(38,1,101,246,NULL,NULL,1,'2015-03-16 14:18:59'),(39,1,101,247,NULL,NULL,1,'2015-03-16 14:18:59'),(40,1,101,248,NULL,NULL,1,'2015-03-16 14:18:59'),(41,1,101,249,NULL,NULL,1,'2015-03-16 14:18:59'),(42,1,101,250,NULL,NULL,1,'2015-03-16 14:18:59'),(43,1,101,251,NULL,NULL,1,'2015-03-16 14:18:59'),(44,1,101,252,NULL,NULL,1,'2015-03-16 14:19:00'),(45,1,101,253,NULL,NULL,1,'2015-03-16 14:19:00'),(46,1,101,254,NULL,NULL,1,'2015-03-16 14:19:00'),(47,1,101,255,NULL,NULL,1,'2015-03-16 14:19:00'),(48,1,101,256,NULL,NULL,1,'2015-03-16 14:19:00'),(49,1,101,257,NULL,NULL,1,'2015-03-16 14:19:00'),(50,1,101,258,NULL,NULL,1,'2015-03-16 14:19:00');
/*!40000 ALTER TABLE `institution_site_class_staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:26
