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
-- Table structure for table `training_courses`
--

DROP TABLE IF EXISTS `training_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(60) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text,
  `objective` text,
  `credit_hours` int(3) NOT NULL,
  `duration` int(3) NOT NULL,
  `number_of_months` int(3) NOT NULL,
  `file_name` varchar(250) DEFAULT NULL,
  `file_content` longblob,
  `training_field_of_study_id` int(11) NOT NULL COMMENT 'links to training_field_of_studies.id',
  `training_course_type_id` int(11) NOT NULL COMMENT 'links to training_course_types.id',
  `training_mode_of_delivery_id` int(11) NOT NULL COMMENT 'links to training_mode_deliveries.id',
  `training_requirement_id` int(11) NOT NULL COMMENT 'links to training_requirements.id',
  `training_level_id` int(11) NOT NULL COMMENT 'links to training_levels.id',
  `assignee_id` int(11) NOT NULL DEFAULT '0' COMMENT 'links to security_users.id',
  `status_id` int(11) NOT NULL COMMENT 'links to workflow_steps.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `training_field_of_study_id` (`training_field_of_study_id`),
  KEY `training_course_type_id` (`training_course_type_id`),
  KEY `training_mode_of_delivery_id` (`training_mode_of_delivery_id`),
  KEY `training_requirement_id` (`training_requirement_id`),
  KEY `training_level_id` (`training_level_id`),
  KEY `assignee_id` (`assignee_id`),
  KEY `status_id` (`status_id`),
  KEY `modified_user_id` (`modified_user_id`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_courses`
--

LOCK TABLES `training_courses` WRITE;
/*!40000 ALTER TABLE `training_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23  9:31:01
