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
-- Table structure for table `scholarship_institution_choice_statuses`
--

DROP TABLE IF EXISTS `scholarship_institution_choice_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scholarship_institution_choice_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table contains the fixed list of statuses for institution choices in scholarship applications';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholarship_institution_choice_statuses`
--

LOCK TABLES `scholarship_institution_choice_statuses` WRITE;
/*!40000 ALTER TABLE `scholarship_institution_choice_statuses` DISABLE KEYS */;
INSERT INTO `scholarship_institution_choice_statuses` VALUES (1,'PENDING_ACCEPTANCE','Pending Acceptance'),(2,'ACCEPTED','Accepted'),(3,'CONDITIONAL_OFFER','Conditional Offer'),(4,'UNCONDITIONAL_OFFER','Unconditional Offer'),(5,'REJECTED','Rejected');
/*!40000 ALTER TABLE `scholarship_institution_choice_statuses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-21 21:45:42
