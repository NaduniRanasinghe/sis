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
-- Table structure for table `workflow_transitions`
--

DROP TABLE IF EXISTS `workflow_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_transitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `prev_workflow_step_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workflow_step_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workflow_action_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workflow_model_id` int(11) NOT NULL COMMENT 'links to workflow_models.id',
  `model_reference` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_model_id` (`workflow_model_id`),
  KEY `model_reference` (`model_reference`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table contains specific action executed by users to transit from one step to another';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_transitions`
--

LOCK TABLES `workflow_transitions` WRITE;
/*!40000 ALTER TABLE `workflow_transitions` DISABLE KEYS */;
INSERT INTO `workflow_transitions` VALUES (5,'','New','Open','Administration - Record Created',16,'5',1,'2019-01-29 07:44:25'),(6,'On Auto Approve Student Admission','Open','Pending For Posting','Administration - Approve Record',16,'5',1,'2019-01-29 07:44:25'),(7,'','New','Open','Administration - Record Created',16,'6',1,'2019-01-29 07:45:53'),(8,'On Auto Approve Student Admission','Open','Pending For Posting','Administration - Approve Record',16,'6',1,'2019-01-29 07:45:53'),(9,'','New','Open','Administration - Record Created',16,'7',1,'2019-01-29 07:52:31'),(10,'On Auto Approve Student Admission','Open','Pending For Posting','Administration - Approve Record',16,'7',1,'2019-01-29 07:52:31'),(11,'','New','Open','Administration - Record Created',16,'8',1,'2019-01-29 08:01:23'),(12,'On Auto Approve Student Admission','Open','Pending For Posting','Administration - Approve Record',16,'8',1,'2019-01-29 08:01:23'),(14,'','New','Open','Administration - Record Created',16,'10',1,'2019-01-29 08:23:40'),(15,'On Auto Approve Student Admission','Open','Posted','Administration - Approve Record',16,'10',1,'2019-01-29 08:23:40'),(16,'','New','Open','Administration - Record Created',16,'11',1,'2019-01-29 08:27:05'),(17,'On Auto Approve Student Admission','Open','Pending For Posting','Administration - Approve Record',16,'11',1,'2019-01-29 08:27:05'),(46,'','New','Open','Administration - Record Created',7,'11',35,'2019-01-30 08:57:41'),(48,'From Test User to <Unassigned>','Open','Open','Administration - Change Assignee',7,'11',1,'2019-01-30 09:06:19'),(49,'From <Unassigned> to Test User','Open','Open','Administration - Change Assignee',7,'11',1,'2019-01-30 09:06:36'),(50,'','New','Open','Administration - Record Created',7,'13',38,'2019-01-30 09:07:19'),(51,'From Test User to <Unassigned>','Open','Open','Administration - Change Assignee',7,'11',1,'2019-01-30 09:07:29'),(52,'From Royal Cordinator Cordi to <Unassigned>','Open','Open','Administration - Change Assignee',7,'13',1,'2019-01-30 09:07:29'),(53,'From <Unassigned> to Test User','Open','Open','Administration - Change Assignee',7,'11',1,'2019-01-30 09:09:27'),(54,'From <Unassigned> to Royal Cordinator Cordi','Open','Open','Administration - Change Assignee',7,'13',1,'2019-01-30 09:09:27'),(55,'','New','Open','Administration - Record Created',7,'14',38,'2019-01-30 09:10:53'),(56,'','New','Open','Administration - Record Created',7,'15',38,'2019-01-30 09:17:54'),(58,'','New','Open','Administration - Record Created',16,'12',38,'2019-01-30 09:28:31'),(59,'On Auto Approve Student Admission','Open','Pending For Posting','Administration - Approve Record',16,'12',1,'2019-01-30 09:28:31'),(60,'','Pending For Posting','Posted','Post',5,'12',1,'2019-01-30 09:29:39'),(61,'From <Unassigned> to Administrator','Pending For Posting','Pending For Posting','Administration - Change Assignee',16,'5',1,'2019-01-30 10:02:08'),(62,'From <Unassigned> to Administrator','Pending For Posting','Pending For Posting','Administration - Change Assignee',16,'6',1,'2019-01-30 10:02:08'),(63,'From <Unassigned> to Administrator','Pending For Posting','Pending For Posting','Administration - Change Assignee',16,'7',1,'2019-01-30 10:02:08'),(64,'From <Unassigned> to Administrator','Pending For Posting','Pending For Posting','Administration - Change Assignee',16,'8',1,'2019-01-30 10:02:08'),(65,'From <Unassigned> to Administrator','Pending For Posting','Pending For Posting','Administration - Change Assignee',16,'11',1,'2019-01-30 10:02:08'),(66,'','Pending For Posting','Posted','Post',5,'5',1,'2019-01-30 10:19:05'),(67,'','Pending For Posting','Posted','Post',5,'6',1,'2019-01-30 10:19:56'),(68,'From Royal Cordinator Cordi to Administrator','Posted','Posted','Administration - Change Assignee',16,'12',1,'2019-01-30 10:25:51'),(73,'','New','Open','Administration - Record Created',16,'16',1,'2019-01-30 10:58:23'),(74,'On Auto Approve Student Admission','Open','Active','Administration - Approve Record',16,'16',1,'2019-01-30 10:58:23'),(75,'','New','Open','Administration - Record Created',16,'17',1,'2019-01-30 11:04:34'),(76,'On Auto Approve Student Admission','Open','Closed','Administration - Approve Record',16,'17',1,'2019-01-30 11:04:34'),(77,'','New','Open','Administration - Record Created',16,'18',1,'2019-01-30 11:19:21'),(78,'On Auto Approve Student Admission','Open','Closed','Administration - Approve Record',16,'18',1,'2019-01-30 11:19:21'),(79,'','New','Open','Administration - Record Created',16,'19',1,'2019-01-30 11:23:03'),(80,'On Auto Approve Student Admission','Open','Posted','Administration - Approve Record',16,'19',1,'2019-01-30 11:23:03'),(81,'','New','Open','Administration - Record Created',16,'20',1,'2019-01-30 11:30:22'),(82,'On Auto Approve Student Admission','Open','Posted','Administration - Approve Record',16,'20',1,'2019-01-30 11:30:22'),(83,'','New','Open','Administration - Record Created',16,'21',1,'2019-01-30 11:32:22'),(84,'On Auto Approve Student Admission','Open','Posted','Administration - Approve Record',16,'21',1,'2019-01-30 11:32:22'),(85,'','New','Open','Administration - Record Created',16,'22',1,'2019-01-30 11:34:14'),(86,'On Auto Approve Student Admission','Open','Posted','Administration - Approve Record',16,'22',1,'2019-01-30 11:34:14'),(87,'','New','Open','Administration - Record Created',16,'23',1,'2019-01-30 11:40:16'),(88,'On Auto Approve Student Admission','Open','Posted','Administration - Approve Record',16,'23',1,'2019-01-30 11:40:16'),(89,'','New','Open','Administration - Record Created',16,'24',1,'2019-01-30 11:43:32'),(90,'On Auto Approve Student Admission','Open','Posted','Administration - Approve Record',16,'24',1,'2019-01-30 11:43:32'),(91,'','New','Open','Administration - Record Created',16,'25',1,'2019-01-30 11:45:20'),(92,'On Auto Approve Student Admission','Open','Posted','Administration - Approve Record',16,'25',1,'2019-01-30 11:45:20'),(93,'','New','Open','Administration - Record Created',16,'26',1,'2019-01-30 11:50:43'),(94,'On Auto Approve Student Admission','Open','Posted','Administration - Approve Record',16,'26',1,'2019-01-30 11:50:43'),(99,'','New','Open','Administration - Record Created',16,'29',1,'2019-01-30 12:03:36'),(100,'On Auto Approve Student Admission','Open','Posted','Administration - Approve Record',16,'29',1,'2019-01-30 12:03:36'),(101,'','New','Open','Administration - Record Created',16,'30',1,'2019-01-30 12:04:54'),(102,'On Auto Approve Student Admission','Open','Posted','Administration - Approve Record',16,'30',1,'2019-01-30 12:04:54'),(143,'sa','Posted','Closed','Inactive',5,'23',1,'2019-01-30 19:33:08'),(144,'sasa','Closed','Open','Reopen',5,'23',1,'2019-01-30 19:33:18'),(145,'','Open','Pending For Evaluation','Submit For Evaluation',5,'23',1,'2019-01-30 19:33:25'),(146,'','Pending For Evaluation','Pending For Approval','Submit For Approval',5,'23',1,'2019-01-30 19:33:32'),(147,'','Pending For Approval','Pending For Posting','Submit For Posting',5,'23',1,'2019-01-30 19:33:38'),(148,'','Pending For Posting','Posted','Post',5,'23',1,'2019-01-30 19:33:45'),(198,'','New','Open','Administration - Record Created',16,'96',1,'2019-01-31 10:33:08'),(199,'On Auto Approve Student Admission','Open','Approved','Administration - Approve Record',16,'96',1,'2019-01-31 10:33:08'),(200,'From <Unassigned> to Administrator','Posted','Posted','Administration - Change Assignee',16,'10',1,'2019-01-31 10:42:25'),(201,'','Pending For Posting','Posted','Post',5,'11',1,'2019-01-31 10:43:31'),(202,'','New','Open','Administration - Record Created',16,'97',1,'2019-01-31 10:43:57'),(203,'On Auto Approve Student Admission','Open','Approved','Administration - Approve Record',16,'97',1,'2019-01-31 10:43:57'),(204,'','Pending For Posting','Posted','Post',5,'8',1,'2019-01-31 10:44:40'),(205,'','Open','Pending Approval','Submit For Approval',8,'13',38,'2019-01-31 10:45:27'),(206,'','Pending Approval','Approved','Approve',8,'13',38,'2019-01-31 10:45:36'),(207,'','New','Open','Administration - Record Created',16,'98',38,'2019-01-31 10:46:47'),(208,'On Auto Approve Student Admission','Open','Approved','Administration - Approve Record',16,'98',1,'2019-01-31 10:46:47'),(209,'','New','Open','Administration - Record Created',16,'99',38,'2019-01-31 10:47:24'),(210,'On Auto Approve Student Admission','Open','Approved','Administration - Approve Record',16,'99',1,'2019-01-31 10:47:24'),(211,'','New','Open','Administration - Record Created',16,'100',38,'2019-01-31 10:48:48'),(212,'On Auto Approve Student Admission','Open','Approved','Administration - Approve Record',16,'100',1,'2019-01-31 10:48:48'),(214,'From Royal Cordinator Cordi to Administrator','Approved','Approved','Administration - Change Assignee',7,'14',1,'2019-01-31 11:05:53'),(215,'','Open','Pending Approval','Submit For Approval',8,'11',1,'2019-01-31 11:23:53'),(216,'','Pending Approval','Approved','Approve',8,'11',1,'2019-01-31 11:24:00'),(217,'','Open','Pending Approval','Submit For Approval',8,'16',1,'2019-01-31 12:09:09'),(218,'','New','Open','Administration - Record Created',7,'18',1,'2019-01-31 12:11:50'),(219,'','New','Open','Administration - Record Created',7,'19',1,'2019-01-31 12:12:41'),(220,'','New','Open','Administration - Record Created',7,'20',1,'2019-01-31 12:13:48'),(221,'','Pending Approval','Approved','Approve',8,'16',1,'2019-01-31 17:16:15'),(222,'','New','Open','Administration - Record Created',7,'21',1,'2019-01-31 17:36:26'),(223,'','New','Open','Administration - Record Created',7,'22',1,'2019-02-01 05:54:54'),(225,'','New','Open','Administration - Record Created',7,'24',1,'2019-02-01 06:05:16'),(226,'','New','Open','Administration - Record Created',7,'25',1,'2019-02-01 06:06:31'),(227,'','New','Open','Administration - Record Created',7,'26',1,'2019-02-02 10:35:57'),(228,'','New','Open','Administration - Record Created',7,'27',38,'2019-02-02 10:38:33'),(229,'','New','Open','Administration - Record Created',7,'28',38,'2019-02-02 10:40:10'),(230,'','New','Open','Administration - Record Created',7,'29',38,'2019-02-02 10:46:43'),(231,'','New','Open','Administration - Record Created',7,'30',38,'2019-02-02 11:12:27'),(232,'','New','Open','Administration - Record Created',7,'31',38,'2019-02-02 11:15:39'),(233,'','Open','Active','Submit For Approval',7,'31',1,'2019-02-02 11:21:23'),(234,'','Open','Active','Submit For Approval',7,'26',1,'2019-02-02 11:23:36'),(235,'','Open','Active','Submit For Approval',7,'30',1,'2019-02-02 11:24:01'),(236,'','Open','Active','Submit For Approval',7,'29',1,'2019-02-02 11:24:15'),(237,'','Open','Active','Submit For Approval',7,'28',1,'2019-02-02 11:24:29'),(238,'','New','Open','Administration - Record Created',7,'32',35,'2019-02-02 11:32:04'),(239,'','Open','Active','Submit For Approval',7,'32',35,'2019-02-02 11:32:50'),(240,'','New','Open','Administration - Record Created',7,'33',35,'2019-02-02 11:36:43'),(241,'','Open','Pending For Approval','Submit For Approval',7,'33',35,'2019-02-02 11:36:56'),(242,'','Pending For Approval','Active','Approve',7,'33',1,'2019-02-02 11:37:31'),(243,'','New','Open','Administration - Record Created',7,'34',77,'2019-02-02 14:03:21'),(244,'','Open','Pending For Approval','Submit For Approval',7,'34',77,'2019-02-02 14:05:50'),(245,'','Pending For Approval','Active','Approve',7,'34',77,'2019-02-02 14:08:24'),(246,'','New','Open','Administration - Record Created',7,'35',78,'2019-02-02 14:09:53'),(247,'','Open','Pending For Approval','Submit For Approval',7,'35',78,'2019-02-02 14:10:06'),(248,'','New','Open','Administration - Record Created',7,'36',77,'2019-02-02 14:12:15'),(249,'','Open','Pending For Approval','Submit For Approval',7,'36',77,'2019-02-02 14:12:22'),(250,'','Pending For Approval','Active','Approve',7,'36',77,'2019-02-02 14:12:26'),(251,'','New','Open','Administration - Record Created',7,'37',78,'2019-02-02 14:13:13'),(252,'','Open','Pending For Approval','Submit For Approval',7,'37',78,'2019-02-02 14:13:22'),(253,'','Pending For Approval','Active','Approve',7,'37',77,'2019-02-02 14:13:46'),(254,'','Pending For Approval','Active','Approve',7,'35',77,'2019-02-02 14:13:54'),(255,'','New','Open','Administration - Record Created',16,'101',77,'2019-02-02 14:18:37'),(256,'On Auto Approve Student Admission','Open','Approved','Administration - Approve Record',16,'101',1,'2019-02-02 14:18:38'),(257,'','Open','Pending For Approval','Submit For Approval',7,'25',1,'2019-02-02 14:22:33');
/*!40000 ALTER TABLE `workflow_transitions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-05 10:02:39
