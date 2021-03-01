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
-- Table structure for table `institution_quality_rubrics`
--

DROP TABLE IF EXISTS `institution_quality_rubrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_quality_rubrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '-1 -> Expired, 0 -> New, 1 -> Draft, 2 -> Completed',
  `comment` text,
  `rubric_template_id` int(11) NOT NULL COMMENT 'links to rubric_templates.id',
  `academic_period_id` int(11) NOT NULL COMMENT 'links to academic_periods.id',
  `education_grade_id` int(11) NOT NULL COMMENT 'links to education_grades.id',
  `institution_class_id` int(11) NOT NULL COMMENT 'links to institution_classes.id',
  `institution_subject_id` int(11) NOT NULL COMMENT 'links to institution_subjects.id',
  `staff_id` int(11) NOT NULL COMMENT 'links to security_users.id',
  `institution_id` int(11) NOT NULL COMMENT 'links to institutions.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rubric_template_id` (`rubric_template_id`),
  KEY `academic_period_id` (`academic_period_id`),
  KEY `education_grade_id` (`education_grade_id`),
  KEY `institution_class_id` (`institution_class_id`),
  KEY `institution_subject_id` (`institution_subject_id`),
  KEY `staff_id` (`staff_id`),
  KEY `institution_id` (`institution_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_quality_rubrics`
--

LOCK TABLES `institution_quality_rubrics` WRITE;
/*!40000 ALTER TABLE `institution_quality_rubrics` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_quality_rubrics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:45
