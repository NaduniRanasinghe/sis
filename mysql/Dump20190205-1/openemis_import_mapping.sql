-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
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
-- Table structure for table `import_mapping`
--

DROP TABLE IF EXISTS `import_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(50) NOT NULL,
  `column_name` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `is_optional` int(1) NOT NULL DEFAULT '0',
  `foreign_key` int(11) DEFAULT '0' COMMENT '0: not foreign key, 1: field options, 2: direct table, 3: non-table list, 4: custom',
  `lookup_plugin` varchar(50) DEFAULT NULL,
  `lookup_model` varchar(50) DEFAULT NULL,
  `lookup_column` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_mapping`
--

LOCK TABLES `import_mapping` WRITE;
/*!40000 ALTER TABLE `import_mapping` DISABLE KEYS */;
INSERT INTO `import_mapping` VALUES (1,'Institution.Institutions','name',NULL,1,0,0,NULL,NULL,NULL),(2,'Institution.Institutions','alternative_name',NULL,2,0,0,NULL,NULL,NULL),(3,'Institution.Institutions','code',NULL,3,0,0,NULL,NULL,NULL),(4,'Institution.Institutions','address',NULL,4,0,0,NULL,NULL,NULL),(5,'Institution.Institutions','postal_code',NULL,5,0,0,NULL,NULL,NULL),(6,'Institution.Institutions','contact_person',NULL,6,0,0,NULL,NULL,NULL),(7,'Institution.Institutions','telephone',NULL,7,0,0,NULL,NULL,NULL),(8,'Institution.Institutions','fax',NULL,8,0,0,NULL,NULL,NULL),(9,'Institution.Institutions','email',NULL,9,0,0,NULL,NULL,NULL),(10,'Institution.Institutions','date_opened','( DD/MM/YYYY )',11,0,0,NULL,NULL,NULL),(11,'Institution.Institutions','date_closed','( DD/MM/YYYY )',12,0,0,NULL,NULL,NULL),(12,'Institution.Institutions','longitude',NULL,13,0,0,NULL,NULL,NULL),(13,'Institution.Institutions','website',NULL,10,0,0,NULL,NULL,NULL),(14,'Institution.Institutions','latitude',NULL,14,0,0,NULL,NULL,NULL),(15,'Institution.Institutions','area_id','Education Code',15,0,2,'Area','Areas','code'),(16,'Institution.Institutions','area_administrative_id','Code',16,0,2,'Area','AreaAdministratives','code'),(17,'Institution.Institutions','institution_locality_id','Code',17,0,1,'Institution','Localities','national_code'),(18,'Institution.Institutions','institution_type_id','Code',18,0,1,'Institution','Types','national_code'),(19,'Institution.Institutions','institution_ownership_id','Code',19,0,1,'Institution','Ownerships','national_code'),(20,'Institution.Institutions','institution_sector_id','Code',20,0,1,'Institution','Sectors','national_code'),(21,'Institution.Institutions','institution_provider_id','Code',21,0,1,'Institution','Providers','national_code'),(22,'Institution.Institutions','institution_gender_id','Code',22,0,1,'Institution','Genders','national_code'),(25,'Student.Students','openemis_no','(Leave as blank for new entries)',1,0,0,NULL,NULL,NULL),(26,'Student.Students','first_name',NULL,2,0,0,NULL,NULL,NULL),(27,'Student.Students','middle_name',NULL,3,0,0,NULL,NULL,NULL),(28,'Student.Students','third_name',NULL,4,0,0,NULL,NULL,NULL),(29,'Student.Students','last_name',NULL,5,0,0,NULL,NULL,NULL),(30,'Student.Students','preferred_name',NULL,6,0,0,NULL,NULL,NULL),(31,'Student.Students','gender_id','Code (M/F)',7,0,2,'User','Genders','code'),(32,'Student.Students','date_of_birth','( DD/MM/YYYY )',8,0,0,NULL,NULL,NULL),(33,'Student.Students','address',NULL,9,0,0,NULL,NULL,NULL),(34,'Student.Students','postal_code',NULL,10,0,0,NULL,NULL,NULL),(35,'Student.Students','address_area_id','Code',11,0,2,'Area','AreaAdministratives','code'),(36,'Student.Students','birthplace_area_id','Code',12,0,2,'Area','AreaAdministratives','code'),(37,'Student.Students','is_student','(Leave this blank)',13,0,0,NULL,NULL,NULL),(38,'Staff.Staff','openemis_no','(Leave as blank for new entries)',1,0,0,NULL,NULL,NULL),(39,'Staff.Staff','first_name',NULL,2,0,0,NULL,NULL,NULL),(40,'Staff.Staff','middle_name',NULL,3,0,0,NULL,NULL,NULL),(41,'Staff.Staff','third_name',NULL,4,0,0,NULL,NULL,NULL),(42,'Staff.Staff','last_name',NULL,5,0,0,NULL,NULL,NULL),(43,'Staff.Staff','preferred_name',NULL,6,0,0,NULL,NULL,NULL),(44,'Staff.Staff','gender_id','Code (M/F)',7,0,2,'User','Genders','code'),(45,'Staff.Staff','date_of_birth','( DD/MM/YYYY )',8,0,0,NULL,NULL,NULL),(46,'Staff.Staff','address',NULL,9,0,0,NULL,NULL,NULL),(47,'Staff.Staff','postal_code',NULL,10,0,0,NULL,NULL,NULL),(48,'Staff.Staff','address_area_id','Code',11,0,2,'Area','AreaAdministratives','code'),(49,'Staff.Staff','birthplace_area_id','Code',12,0,2,'Area','AreaAdministratives','code'),(50,'Staff.Staff','is_staff','(Leave this blank)',13,0,0,NULL,NULL,NULL),(51,'Institution.StaffAbsences','start_date','( DD/MM/YYYY )',1,0,0,NULL,NULL,NULL),(52,'Institution.StaffAbsences','end_date','( DD/MM/YYYY )',2,0,0,NULL,NULL,NULL),(53,'Institution.StaffAbsences','comment','',3,0,0,NULL,NULL,NULL),(54,'Institution.StaffAbsences','staff_id','ID',4,0,2,'Security','Users','openemis_no'),(55,'Institution.StaffAbsences','staff_absence_reason_id','Code',6,0,1,'Institution','StaffAbsenceReasons','national_code'),(56,'Institution.InstitutionStudentAbsences','start_date','( DD/MM/YYYY )',1,0,0,NULL,NULL,NULL),(57,'Institution.InstitutionStudentAbsences','end_date','( DD/MM/YYYY )',2,0,0,NULL,NULL,NULL),(58,'Institution.InstitutionStudentAbsences','comment','',3,0,0,NULL,NULL,NULL),(59,'Institution.InstitutionStudentAbsences','student_id','ID',4,0,2,'Security','Users','openemis_no'),(60,'Institution.InstitutionStudentAbsences','student_absence_reason_id','Code',6,0,1,'Institution','StudentAbsenceReasons','national_code'),(61,'Institution.InstitutionSurveys','survey_form_id','',1,0,2,'Survey','SurveyForms','id'),(62,'Institution.Students','academic_period_id','Code',1,0,2,'AcademicPeriod','AcademicPeriods','code'),(63,'Institution.Students','education_grade_id','Code',2,0,2,'Education','EducationGrades','code'),(64,'Institution.Students','start_date','( DD/MM/YYYY )',3,0,0,NULL,NULL,NULL),(65,'Institution.Students','student_id','ID',4,0,2,'Institution','StudentUser','openemis_no'),(66,'Institution.Students','class','Code (Optional)',5,1,2,'Institution','InstitutionClasses','id'),(67,'User.Users','openemis_no','(Leave as blank for new entries)',1,0,0,NULL,NULL,NULL),(68,'User.Users','first_name',NULL,2,0,0,NULL,NULL,NULL),(69,'User.Users','middle_name',NULL,3,0,0,NULL,NULL,NULL),(70,'User.Users','third_name',NULL,4,0,0,NULL,NULL,NULL),(71,'User.Users','last_name',NULL,5,0,0,NULL,NULL,NULL),(72,'User.Users','preferred_name',NULL,6,0,0,NULL,NULL,NULL),(73,'User.Users','gender_id','Code (M/F)',7,0,2,'User','Genders','code'),(74,'User.Users','date_of_birth','( DD/MM/YYYY )',8,0,0,NULL,NULL,NULL),(75,'User.Users','address',NULL,9,0,0,NULL,NULL,NULL),(76,'User.Users','postal_code',NULL,10,0,0,NULL,NULL,NULL),(77,'User.Users','address_area_id','Code',11,0,2,'Area','AreaAdministratives','code'),(78,'User.Users','birthplace_area_id','Code',12,0,2,'Area','AreaAdministratives','code'),(79,'User.Users','account_type','Code',13,0,3,NULL,'AccountTypes','code'),(81,'Institution.Staff','institution_position_id','Code',5,0,2,'Institution','InstitutionPositions','position_no'),(82,'Institution.Staff','start_date','( DD/MM/YYYY )',1,0,0,NULL,NULL,NULL),(83,'Institution.Staff','position_type','Code',3,0,3,NULL,'PositionTypes','id'),(84,'Institution.Staff','FTE','(Not Required if Position Type is Full Time)',4,0,3,NULL,'FTE','value'),(85,'Institution.Staff','staff_type_id','Code',6,0,1,'Staff','StaffTypes','code'),(86,'Institution.Staff','staff_id','ID',7,0,2,'Staff','Staff','openemis_no'),(87,'Institution.StaffAbsences','absence_type_id','Code',5,0,2,'Institution','AbsenceTypes','code'),(88,'Institution.InstitutionStudentAbsences','absence_type_id','Code',5,0,2,'Institution','AbsenceTypes','code'),(89,'Institution.Staff','end_date','( DD/MM/YYYY )',2,0,0,NULL,NULL,NULL),(91,'Examination.ExaminationItemResults','examination_id','Id',1,0,2,'Examination','Examinations','id'),(93,'Examination.ExaminationItemResults','examination_item_id','Id',2,0,2,'Examination','ExaminationItems','id'),(94,'Examination.ExaminationItemResults','student_id','ID',3,0,2,'Security','Users','openemis_no'),(96,'Examination.ExaminationItemResults','marks','(Leave as blank for Grades type)',4,0,0,NULL,NULL,NULL),(97,'Examination.ExaminationItemResults','examination_grading_option_id','Id (Leave as blank for Marks type)',5,0,2,'Examination','ExaminationGradingOptions','id'),(98,'Institution.InstitutionTextbooks','textbook_id',NULL,1,0,2,'Textbook','Textbooks','id'),(99,'Institution.InstitutionTextbooks','student_id','ID',2,0,2,'Security','Users','openemis_no'),(100,'Institution.InstitutionTextbooks','code',NULL,3,0,0,NULL,NULL,NULL),(101,'Institution.InstitutionTextbooks','textbook_status_id','Code',4,0,2,'Textbook','TextbookStatuses','code'),(102,'Institution.InstitutionTextbooks','textbook_condition_id','Code',5,0,1,'Textbook','TextbookConditions','national_code'),(103,'Institution.InstitutionTextbooks','comment','(Optional)',6,1,0,NULL,NULL,NULL),(105,'Examination.ExaminationCentreRooms','examination_centre_id','ID',1,0,2,'Examination','ExaminationCentres','id'),(106,'Examination.ExaminationCentreRooms','name','',2,0,0,NULL,NULL,NULL),(107,'Examination.ExaminationCentreRooms','size','(Optional)',3,1,0,NULL,NULL,NULL),(108,'Examination.ExaminationCentreRooms','number_of_seats','(Optional)',4,1,0,NULL,NULL,NULL),(109,'User.Users','nationality_id','Id (Optional)',14,1,2,'FieldOption','Nationalities','id'),(110,'User.Users','identity_type_id','Code (Optional)',15,1,1,'FieldOption','IdentityTypes','national_code'),(111,'User.Users','identity_number','',16,0,0,NULL,NULL,NULL),(112,'Staff.Salaries','salary_date','( DD/MM/YYYY )',1,0,0,NULL,NULL,NULL),(113,'Staff.Salaries','comment','(Optional)',2,1,0,NULL,NULL,NULL),(114,'Staff.Salaries','gross_salary',NULL,3,0,0,NULL,NULL,NULL),(115,'Training.TrainingSessionsTrainees','identity_number','',3,0,0,NULL,NULL,NULL),(116,'Training.TrainingSessionsTrainees','identity_type_id','Code',2,1,1,'FieldOption','IdentityTypes','national_code'),(117,'Training.TrainingSessionsTrainees','openemis_no',NULL,1,1,0,NULL,NULL,NULL),(118,'Textbook.Textbooks','academic_period_id','Code',1,0,2,'AcademicPeriod','AcademicPeriods','code'),(119,'Textbook.Textbooks','education_grade_id','Code',2,0,2,'Education','EducationGrades','code'),(120,'Textbook.Textbooks','education_subject_id','Code',3,0,2,'Education','EducationSubjects','code'),(121,'Textbook.Textbooks','code',NULL,4,0,0,NULL,NULL,NULL),(122,'Textbook.Textbooks','title',NULL,5,0,0,NULL,NULL,NULL),(123,'Textbook.Textbooks','author',NULL,6,1,0,NULL,NULL,NULL),(124,'Textbook.Textbooks','publisher',NULL,7,1,0,NULL,NULL,NULL),(125,'Textbook.Textbooks','year_published','( YYYY )',8,0,0,NULL,NULL,NULL),(126,'Textbook.Textbooks','ISBN',NULL,9,1,0,NULL,NULL,NULL),(127,'Textbook.Textbooks','expiry_date','( DD/MM/YYYY )',10,1,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `import_mapping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-13 18:56:57
