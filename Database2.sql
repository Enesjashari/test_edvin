-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb_django
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app1_address`
--

DROP TABLE IF EXISTS `app1_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Street Number` varchar(255) DEFAULT NULL,
  `Route` varchar(255) DEFAULT NULL,
  `Locality` varchar(255) DEFAULT NULL,
  `Administrative Area L1` varchar(255) DEFAULT NULL,
  `Postal Code` varchar(20) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app1_address_user_id_a5f4529a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `app1_address_user_id_a5f4529a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_address`
--

LOCK TABLES `app1_address` WRITE;
/*!40000 ALTER TABLE `app1_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_boardcertifications`
--

DROP TABLE IF EXISTS `app1_boardcertifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_boardcertifications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `degree` varchar(20) DEFAULT NULL,
  `boardtype` varchar(20) DEFAULT NULL,
  `ofspeciality` varchar(20) DEFAULT NULL,
  `withcertification` varchar(20) DEFAULT NULL,
  `certified` varchar(20) DEFAULT NULL,
  `cdate` date NOT NULL,
  `recertified` varchar(20) DEFAULT NULL,
  `rcdate` date NOT NULL,
  `expdate` date NOT NULL,
  `lftmcert` varchar(20) NOT NULL,
  `ifnotcert` varchar(20) DEFAULT NULL,
  `datesch` date NOT NULL,
  `ifnot` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app1_boardcertifications_user_id_d9806a5b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `app1_boardcertifications_user_id_d9806a5b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_boardcertifications`
--

LOCK TABLES `app1_boardcertifications` WRITE;
/*!40000 ALTER TABLE `app1_boardcertifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_boardcertifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_dearegistration`
--

DROP TABLE IF EXISTS `app1_dearegistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_dearegistration` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `state` varchar(20) DEFAULT NULL,
  `rnumber` varchar(20) DEFAULT NULL,
  `dissued` date NOT NULL,
  `expdate` date NOT NULL,
  `ifu` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app1_dearegistration_user_id_d89ddb41_fk_auth_user_id` (`user_id`),
  CONSTRAINT `app1_dearegistration_user_id_d89ddb41_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_dearegistration`
--

LOCK TABLES `app1_dearegistration` WRITE;
/*!40000 ALTER TABLE `app1_dearegistration` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_dearegistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_education`
--

DROP TABLE IF EXISTS `app1_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_education` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `institution` varchar(20) DEFAULT NULL,
  `degreeaw` varchar(20) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `graduated` varchar(20) DEFAULT NULL,
  `date` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `app1_education_user_id_2755a6d2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_education`
--

LOCK TABLES `app1_education` WRITE;
/*!40000 ALTER TABLE `app1_education` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_fellowship`
--

DROP TABLE IF EXISTS `app1_fellowship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_fellowship` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `institution` varchar(20) DEFAULT NULL,
  `speciality` varchar(20) DEFAULT NULL,
  `gsurgery` varchar(20) DEFAULT NULL,
  `pchair` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `programc` varchar(20) DEFAULT NULL,
  `ifnot` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_fellowship`
--

LOCK TABLES `app1_fellowship` WRITE;
/*!40000 ALTER TABLE `app1_fellowship` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_fellowship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_fifthpathway`
--

DROP TABLE IF EXISTS `app1_fifthpathway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_fifthpathway` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_fifthpathway`
--

LOCK TABLES `app1_fifthpathway` WRITE;
/*!40000 ALTER TABLE `app1_fifthpathway` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_fifthpathway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_gschool`
--

DROP TABLE IF EXISTS `app1_gschool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_gschool` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `institution` varchar(20) DEFAULT NULL,
  `degreeaw` varchar(20) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `graduated` varchar(20) DEFAULT NULL,
  `date` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_gschool`
--

LOCK TABLES `app1_gschool` WRITE;
/*!40000 ALTER TABLE `app1_gschool` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_gschool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_informations`
--

DROP TABLE IF EXISTS `app1_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_informations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `preffix` varchar(20) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `socialsecuritynumber` varchar(10) NOT NULL,
  `preferredphonetype` varchar(20) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `otherphone` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `stateprovince` varchar(15) DEFAULT NULL,
  `zipcode` varchar(5) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `mailaddress` varchar(100) DEFAULT NULL,
  `mailcity` varchar(100) DEFAULT NULL,
  `mailingstateprovince` varchar(100) DEFAULT NULL,
  `mailingzipcode` varchar(5) DEFAULT NULL,
  `mailingcountry` varchar(100) DEFAULT NULL,
  `birthcity` varchar(100) DEFAULT NULL,
  `birthcountry` varchar(100) DEFAULT NULL,
  `birthstateprovince` varchar(100) DEFAULT NULL,
  `npinumber` varchar(100) DEFAULT NULL,
  `languagesspokenotherthanenglish` varchar(100) DEFAULT NULL,
  `emergencycontactname` varchar(100) DEFAULT NULL,
  `relationshiptoapplicant` varchar(100) DEFAULT NULL,
  `emergencycontactnumber` varchar(100) DEFAULT NULL,
  `emergencycontactemail` varchar(100) DEFAULT NULL,
  `primaryspeciality` varchar(100) DEFAULT NULL,
  `generalsurgery` varchar(100) DEFAULT NULL,
  `secondaryspeciality` varchar(100) DEFAULT NULL,
  `abletoworkintheusa` tinyint(1) NOT NULL,
  `workauthorizationa` varchar(100) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_informations`
--

LOCK TABLES `app1_informations` WRITE;
/*!40000 ALTER TABLE `app1_informations` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_licences`
--

DROP TABLE IF EXISTS `app1_licences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_licences` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `state` varchar(20) DEFAULT NULL,
  `lnumber` varchar(20) DEFAULT NULL,
  `dissued` date NOT NULL,
  `expdate` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_licences`
--

LOCK TABLES `app1_licences` WRITE;
/*!40000 ALTER TABLE `app1_licences` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_licences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_licencesnotherexams`
--

DROP TABLE IF EXISTS `app1_licencesnotherexams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_licencesnotherexams` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lexaminations` varchar(100) DEFAULT NULL,
  `ecfmgcnumber` varchar(20) DEFAULT NULL,
  `ecfmgandfmgems` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_licencesnotherexams`
--

LOCK TABLES `app1_licencesnotherexams` WRITE;
/*!40000 ALTER TABLE `app1_licencesnotherexams` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_licencesnotherexams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_lifesupport`
--

DROP TABLE IF EXISTS `app1_lifesupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_lifesupport` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_lifesupport`
--

LOCK TABLES `app1_lifesupport` WRITE;
/*!40000 ALTER TABLE `app1_lifesupport` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_lifesupport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_medicaleducation`
--

DROP TABLE IF EXISTS `app1_medicaleducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_medicaleducation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `institution` varchar(20) DEFAULT NULL,
  `degreeaw` varchar(20) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `graduated` varchar(20) DEFAULT NULL,
  `date` date NOT NULL,
  `explain` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_medicaleducation`
--

LOCK TABLES `app1_medicaleducation` WRITE;
/*!40000 ALTER TABLE `app1_medicaleducation` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_medicaleducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_medicaltraining`
--

DROP TABLE IF EXISTS `app1_medicaltraining`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_medicaltraining` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `institution` varchar(20) DEFAULT NULL,
  `degreeaw` varchar(20) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `rotating` varchar(20) DEFAULT NULL,
  `programc` varchar(20) DEFAULT NULL,
  `ifnot` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_medicaltraining`
--

LOCK TABLES `app1_medicaltraining` WRITE;
/*!40000 ALTER TABLE `app1_medicaltraining` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_medicaltraining` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_preceptorship`
--

DROP TABLE IF EXISTS `app1_preceptorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_preceptorship` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_preceptorship`
--

LOCK TABLES `app1_preceptorship` WRITE;
/*!40000 ALTER TABLE `app1_preceptorship` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_preceptorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_residency`
--

DROP TABLE IF EXISTS `app1_residency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_residency` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `institution` varchar(20) DEFAULT NULL,
  `speciality` varchar(20) DEFAULT NULL,
  `gsurgery` varchar(20) DEFAULT NULL,
  `pchair` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `programc` varchar(20) DEFAULT NULL,
  `ifnot` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_residency`
--

LOCK TABLES `app1_residency` WRITE;
/*!40000 ALTER TABLE `app1_residency` DISABLE KEYS */;
/*!40000 ALTER TABLE `app1_residency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_instructors`
--

DROP TABLE IF EXISTS `app_instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_instructors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_instructors`
--

LOCK TABLES `app_instructors` WRITE;
/*!40000 ALTER TABLE `app_instructors` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_lasthistory`
--

DROP TABLE IF EXISTS `app_lasthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_lasthistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `description` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_lasthistory`
--

LOCK TABLES `app_lasthistory` WRITE;
/*!40000 ALTER TABLE `app_lasthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_lasthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_studentdata`
--

DROP TABLE IF EXISTS `app_studentdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_studentdata` (
  `id` varchar(100) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `authors` varchar(1000) NOT NULL,
  `authors_parsed` varchar(1000) NOT NULL,
  `categories` varchar(1000) NOT NULL,
  `comments` varchar(1000) NOT NULL,
  `doi` varchar(1000) NOT NULL,
  `journal_ref` varchar(1000) NOT NULL,
  `license` varchar(1000) NOT NULL,
  `report_no` varchar(1000) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `update_date` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_studentdata`
--

LOCK TABLES `app_studentdata` WRITE;
/*!40000 ALTER TABLE `app_studentdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_studentdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_students`
--

DROP TABLE IF EXISTS `app_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_students` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `Training_module` varchar(100) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `finish_data` date DEFAULT NULL,
  `attendance` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_students`
--

LOCK TABLES `app_students` WRITE;
/*!40000 ALTER TABLE `app_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_students_instructor`
--

DROP TABLE IF EXISTS `app_students_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_students_instructor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `students_id` bigint NOT NULL,
  `instructors_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_students_Instructor_students_id_instructors_id_dbc42854_uniq` (`students_id`,`instructors_id`),
  KEY `app_students_Instruc_instructors_id_09a12a19_fk_app_instr` (`instructors_id`),
  CONSTRAINT `app_students_Instruc_instructors_id_09a12a19_fk_app_instr` FOREIGN KEY (`instructors_id`) REFERENCES `app_instructors` (`id`),
  CONSTRAINT `app_students_Instructor_students_id_4fa74e5a_fk_app_students_id` FOREIGN KEY (`students_id`) REFERENCES `app_students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_students_instructor`
--

LOCK TABLES `app_students_instructor` WRITE;
/*!40000 ALTER TABLE `app_students_instructor` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_students_instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add test',7,'add_test'),(26,'Can change test',7,'change_test'),(27,'Can delete test',7,'delete_test'),(28,'Can view test',7,'view_test'),(29,'Can add updateinfo',8,'add_updateinfo'),(30,'Can change updateinfo',8,'change_updateinfo'),(31,'Can delete updateinfo',8,'delete_updateinfo'),(32,'Can view updateinfo',8,'view_updateinfo'),(33,'Can add nottest',9,'add_nottest'),(34,'Can change nottest',9,'change_nottest'),(35,'Can delete nottest',9,'delete_nottest'),(36,'Can view nottest',9,'view_nottest'),(37,'Can add account',10,'add_account'),(38,'Can change account',10,'change_account'),(39,'Can delete account',10,'delete_account'),(40,'Can view account',10,'view_account'),(41,'Can add education',11,'add_education'),(42,'Can change education',11,'change_education'),(43,'Can delete education',11,'delete_education'),(44,'Can view education',11,'view_education'),(45,'Can add informations',10,'add_informations'),(46,'Can change informations',10,'change_informations'),(47,'Can delete informations',10,'delete_informations'),(48,'Can view informations',10,'view_informations'),(49,'Can add MedicalEducation',12,'add_medicaleducation'),(50,'Can change MedicalEducation',12,'change_medicaleducation'),(51,'Can delete MedicalEducation',12,'delete_medicaleducation'),(52,'Can view MedicalEducation',12,'view_medicaleducation'),(53,'Can add Other Graduate School',13,'add_gschool'),(54,'Can change Other Graduate School',13,'change_gschool'),(55,'Can delete Other Graduate School',13,'delete_gschool'),(56,'Can view Other Graduate School',13,'view_gschool'),(57,'Can add Medical Training',14,'add_medicaltraining'),(58,'Can change Medical Training',14,'change_medicaltraining'),(59,'Can delete Medical Training',14,'delete_medicaltraining'),(60,'Can view Medical Training',14,'view_medicaltraining'),(61,'Can add Residency',15,'add_residency'),(62,'Can change Residency',15,'change_residency'),(63,'Can delete Residency',15,'delete_residency'),(64,'Can view Residency',15,'view_residency'),(65,'Can add Fellowship',16,'add_fellowship'),(66,'Can change Fellowship',16,'change_fellowship'),(67,'Can delete Fellowship',16,'delete_fellowship'),(68,'Can view Fellowship',16,'view_fellowship'),(69,'Can add preceptorship',17,'add_preceptorship'),(70,'Can change preceptorship',17,'change_preceptorship'),(71,'Can delete preceptorship',17,'delete_preceptorship'),(72,'Can view preceptorship',17,'view_preceptorship'),(73,'Can add fifthpathway',18,'add_fifthpathway'),(74,'Can change fifthpathway',18,'change_fifthpathway'),(75,'Can delete fifthpathway',18,'delete_fifthpathway'),(76,'Can view fifthpathway',18,'view_fifthpathway'),(77,'Can add Board Certifications',19,'add_boardcertifications'),(78,'Can change Board Certifications',19,'change_boardcertifications'),(79,'Can delete Board Certifications',19,'delete_boardcertifications'),(80,'Can view Board Certifications',19,'view_boardcertifications'),(81,'Can add lifesupport',20,'add_lifesupport'),(82,'Can change lifesupport',20,'change_lifesupport'),(83,'Can delete lifesupport',20,'delete_lifesupport'),(84,'Can view lifesupport',20,'view_lifesupport'),(85,'Can add Licences',21,'add_licences'),(86,'Can change Licences',21,'change_licences'),(87,'Can delete Licences',21,'delete_licences'),(88,'Can view Licences',21,'view_licences'),(89,'Can add DEA Registration',22,'add_dearegistration'),(90,'Can change DEA Registration',22,'change_dearegistration'),(91,'Can delete DEA Registration',22,'delete_dearegistration'),(92,'Can view DEA Registration',22,'view_dearegistration'),(93,'Can add License/Other Exams',23,'add_licencesnotherexams'),(94,'Can change License/Other Exams',23,'change_licencesnotherexams'),(95,'Can delete License/Other Exams',23,'delete_licencesnotherexams'),(96,'Can view License/Other Exams',23,'view_licencesnotherexams'),(97,'Can add address',24,'add_address'),(98,'Can change address',24,'change_address'),(99,'Can delete address',24,'delete_address'),(100,'Can view address',24,'view_address');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$MrIJRJPFQYaQ1NeZkosse8$OfXVdm+g7HuPIWvHagoSj827n+O8w6udU+nDcWskW3s=','2024-05-03 21:56:38.181181',1,'django','Super','Admin','test59@gmail.com',1,1,'2024-03-01 17:39:42.000000'),(2,'pbkdf2_sha256$720000$oZWXXwQMolGnVX5Xj4INeD$QU8PnSJTCTapH15Iiaco55VrPbOSl0ltg8TXyFLV7FI=',NULL,0,'john.doe','John','Doe','john@example.com',0,0,'2024-03-03 20:24:03.000000'),(3,'pbkdf2_sha256$720000$EJw72BYWRIpbfUDjAYTXWL$wzMFAKC7eiBZ3MJAGwKUNWBerP5jtbah/NVhKh5iwCY=',NULL,0,'michael.jjj','Michael','Johnson','michael@example.comm',0,1,'2024-03-03 20:29:29.000000'),(4,'pbkdf2_sha256$720000$Wh5T50NDoLFfjFgAWb4bA8$TImWCiLozZI0NPKCGDyla6W1Ndk6urZNZbRqJA38ul4=','2024-03-03 20:40:53.432838',0,'emilyb','Emily','Brown','emily@example.com',0,0,'2024-03-03 20:40:52.626062'),(5,'pbkdf2_sha256$720000$fAiZ9SV0RN9eAUnegEuYI8$HOoaOAwcgmJt/QlWWRvjXrYVSLPFlgFH/L7ALEGMFwc=','2024-03-03 21:44:19.369699',0,'jane_smith','Jane','Smith','jane@example.com',0,1,'2024-03-03 21:44:18.539095'),(6,'pbkdf2_sha256$720000$xFF4wa9k4wsjIO9EGoxspn$aFmowF2N0PPNsFJ0/mGdHZKGxKzW+Su4o/wnzT/LAK0=','2024-03-05 16:33:05.000000',0,'sarahw','Sarah','Wilson','sarah@example.com',0,1,'2024-03-03 22:42:48.000000'),(7,'pbkdf2_sha256$720000$NhqfNkdt7sQwZHYDglKyVK$IGKTETkt/yeD3/LVtIp54AVKFGbxcaKk5dDMWrZP9Os=',NULL,0,'davidd','David','Davis','david@example.com',0,1,'2024-03-04 19:28:29.576127'),(8,'pbkdf2_sha256$720000$TG6k76E9K9A8cqjAZCVh6W$qeA789a2zLSe2SPtwxe8JykmODyvgOdjG8JdGF6/AJc=','2024-03-07 18:52:25.256108',0,'chrisl','Christopher ','Lee','chris@example.com',0,1,'2024-03-04 21:03:40.028470'),(9,'pbkdf2_sha256$720000$K2ELFCmrCEvE0ul3PqTlho$tkai1lW8dcT3gd84AzVaFsPxO9U+enpSUMn0u6HG/CY=','2024-03-15 20:41:43.000000',0,'amanda_t','Amanda','Taylor','amanda@example.com',0,0,'2024-03-06 20:33:29.000000'),(10,'pbkdf2_sha256$720000$Ym1NYMDvMxWy9V4GBTLvjz$VvXxqPkmQEd/vrV1leERPDYY5hmKUYJRYB3rVOsK5po=','2024-03-06 20:34:13.649596',0,'danniel','Daniel','Martinez','daniel@example.com',0,1,'2024-03-06 20:34:11.979546'),(11,'pbkdf2_sha256$720000$kTK7caKaYc00aY9EBlTMR7$GID226Bfom6oAjp1qi2Nqb3kN7XkDKNGHlxjTsf0dRA=','2024-03-06 20:45:36.363289',0,'jessicar','Jessica','Rodriguez','jessica@example.com',0,1,'2024-03-06 20:45:34.078364'),(12,'pbkdf2_sha256$720000$8qZKQ1p9zY7MilwRpO4UBI$ujqu5KFTNQ1oM0JAPPHbpW+RakYb/aPzpy7jWgxpEKA=','2024-03-15 20:36:30.082155',0,'math.thompson','Matthew','Thompson','matthew@example.com',0,1,'2024-03-15 20:36:29.282725'),(13,'pbkdf2_sha256$720000$J9KSpc20GrhqRADgASRzRZ$UstdJRqJ90RMijLSUZ2w6+JvcLLGe7sQApbpXlVfLB8=',NULL,0,'ashleyw','Ashley','White','ashley@example.com',0,1,'2024-03-17 21:35:36.476708'),(14,'pbkdf2_sha256$720000$FXvVPKSHg7smSdoPPOW2V0$wTt+FnNId4qxvvsbt2JseomDaljhrTjdCvS9xhyg3GA=','2024-03-17 21:37:46.355583',0,'chrish','Christopher','Harris','chris@example.com',0,1,'2024-03-17 21:37:13.818981'),(15,'pbkdf2_sha256$720000$BwsOPOkYkRCRxiuV0HqlMR$Q8PbHlkbU2B8K9y/DIhLhBsQmtmirLg3Qx/RtJJp8gg=','2024-03-17 22:04:32.109774',0,'stephaniec','Stephanie','Clark','stephanie@example.com',0,1,'2024-03-17 22:04:07.622468'),(16,'pbkdf2_sha256$720000$RsCikCzZ5ZJmK1z7dxYUxi$mGbNjXDFQmMkZ6AQdrbam17askLIKIOP9xVN83o+YQc=',NULL,0,'jamesl','James','Lewis','james@example.com',0,1,'2024-03-17 22:07:28.111905'),(17,'pbkdf2_sha256$720000$04TCM4MRizs2dJjloJMIR5$ezMGUVTTmmSQKv6v2fEMNJnrWUaTALNmdHhyPga0+90=',NULL,0,'ashleyh','Ashley','Hernandez','ashley@example.com',0,1,'2024-03-17 22:21:39.764628'),(18,'pbkdf2_sha256$720000$Q6x26ACFJpOuJQWPmjUuWQ$Lmnp9NfSq5+h6Q1e5wsZWVdJVNk8UIdttC4if+U/17I=',NULL,0,'andrewk','Andrew','Kingson','andrew@example.com',0,1,'2024-03-17 22:22:41.809116'),(19,'pbkdf2_sha256$720000$z2sxbtHpRMtsYumlNvampy$BIHjpldElJ3i8GbyrBrPpoAZV4BFJaw+fCqQ1ZOW3dE=','2024-03-17 22:33:07.946584',0,'joshuan','Joshua','Nguyen','joshua@example.com',0,1,'2024-03-17 22:27:24.875448'),(20,'pbkdf2_sha256$720000$F3kVshONs3GRvyjRi1Jmhx$f1YSMGtKjEwlW1tLNjqJdsBVn7OVFSYoEBbF7CW6MBo=','2024-03-17 22:38:51.167508',0,'kimberlyc','Kimberly','Carter','kimberly@example.com',0,1,'2024-03-17 22:36:43.008918'),(21,'pbkdf2_sha256$720000$QDAdvvGHn9Ai9kwQX3oDRU$flmV/JSYPGkb3FzpSW36DuPxTBzaO3gZgG18+i9OzEU=','2024-03-18 16:20:26.362621',0,'mark_w','Mark','Wilson','mark@example.com',0,1,'2024-03-18 16:19:26.271815'),(22,'pbkdf2_sha256$720000$zv1NiPgu53DXf0zlh22XY9$lIF8KwMjjiG2fLiaflSnhMmLaHUXbp8Ble1Kwzy+ZyY=','2024-03-18 21:00:17.468030',0,'samanthaj','Samantha','Jones','samantha@example.com',0,1,'2024-03-18 20:59:30.615709'),(23,'pbkdf2_sha256$720000$oaetOxdvfihbt8HelMUmrH$4ntoeNu5a5mtzpL/e8bIZ0jZC4ggJAwG0dY4m4atBg0=',NULL,0,'christopherb','Christopher','Brown','christopher@example.com',0,0,'2024-03-18 21:57:50.282419'),(24,'pbkdf2_sha256$720000$VpSu0q9bEGDRZbsNxBfBuC$uN79kFj85t3ZVA5h6C6vBXfEVv2JHS6a/M1fy2kxzkg=',NULL,0,'taylorm','Taylor','Martinez','taylor@example.com',0,0,'2024-03-18 22:01:43.119030'),(25,'pbkdf2_sha256$720000$viRzDDGttxcpu0bB8U7fYk$j36JRr3RiRpPVO4mPShWI45zM38mZB2GTtPEFiCOOl0=',NULL,0,'laurenj','Lauren','Johnson','lauren@example.com',0,0,'2024-03-18 22:09:43.944935'),(31,'pbkdf2_sha256$720000$JCs4VGvXcVwMSETL6ix2Na$vnM74oEqf25q8Uxw93HGDymXOO88IwRAoEnBsYVWioo=',NULL,0,'benjamins','Benjamin','Smith','benjamin@example.com',0,0,'2024-03-18 22:25:43.841702'),(32,'pbkdf2_sha256$720000$Aazf5F6z2TDkGTth93o5tI$wxzlvqxfoCyPd2vjFSHEgsTh9HwyhVwAoTIQBU+xLWw=',NULL,0,'nicole_d','Nicole','Davis','nicole@example.com',0,0,'2024-03-18 22:29:39.661998'),(33,'pbkdf2_sha256$720000$9zXylt62uS1kRuQmkAEfaM$lvXw91KBTzoQl9Cm21YmiYTdHu0nDztokNoi8yCFzfo=','2024-03-18 22:31:42.000000',0,'william_aa','William','Anderson','william@example.com',0,1,'2024-03-18 22:30:50.000000'),(34,'pbkdf2_sha256$720000$2JWViQxDcL8KVQXENxQYRV$AL6aE7H4dHQGm0NcT0NK3rdKx2Y1uDCFWzpxc6LCwRY=',NULL,0,'victoriag','Victoria','Garcia','victoria@example.com',0,0,'2024-03-18 22:33:09.000000'),(35,'pbkdf2_sha256$720000$5pusl8c5Ei2BRRhCCAHgfb$EB4FtP8ZDpWYoyaaqwSG4Sj23YHoIgkP6reOruKrpks=',NULL,0,'ryanm','Ryan','Miller','ryan@example.com',0,0,'2024-03-18 22:44:06.689194'),(36,'pbkdf2_sha256$720000$eYI3Q24HOJGa3glYoVIHdq$DRBtffClgbHsz/7gt1gzHuZJiO0CszgscUmrVmP3Nb8=',NULL,0,'megant','Megan','Thompson','megan@example.com',0,0,'2024-03-18 22:49:35.244963'),(37,'pbkdf2_sha256$720000$nlHJpnS1HofPi1MOwpzpE3$8zkmN0HMYttIS8Yuy03cDzyqHvBtMDt+Umv/njiPIkY=','2024-03-18 22:53:01.758999',0,'timothy.w','Timothy','Wright','timothy@example.com',0,1,'2024-03-18 22:52:14.066660'),(38,'pbkdf2_sha256$720000$EeLSxsl83B2XGit56LPOwm$FcX2v//e7qSYWMDVbWg9zRwnkiL4u4wfiz5w9u3GRZ8=','2024-03-22 15:33:43.000000',0,'rachele','Rachel','Evans','rachel@example.com',0,1,'2024-03-22 15:30:38.000000'),(39,'pbkdf2_sha256$720000$Ew3Qz5OW7ctnDlYquMLzeH$zQSXboSKKEZ5lJjgOyHqlRypQD5FKzAQBOhy0o2+kfk=','2024-03-22 16:11:41.355224',0,'kevina','Kevin','Adams','kevin@example.com',0,1,'2024-03-22 16:08:16.861206'),(40,'pbkdf2_sha256$720000$Lm5m7OsP4hGQPCZFLChcYJ$PXRymgN3We6BYVL+VFaGoU8rDeO3H64+BLPrJrl0+Us=','2024-03-28 16:14:26.575571',0,'jenniferh','Jennifer','Hernandez','jennifer@example.com',0,1,'2024-03-28 16:13:32.528567'),(41,'pbkdf2_sha256$720000$sTdTByuLWFbTq2H9N5HoKO$+iiushtEopirqHNnpxYgIKTu/SjDK0G08AXKk7rZOMk=','2024-03-29 17:43:59.044726',0,'tylers','Tyler','Scott','tyler@example.com',0,1,'2024-03-29 16:45:00.120418'),(42,'pbkdf2_sha256$720000$lBqiASd2lm21ESZSMClnRE$hJKGghFoKcc1Csi1DrpmstzvG5G3/q68Cav7ihHgpdU=','2024-03-29 21:13:41.528619',0,'nataliep','Natalie','Phillips','natalie@example.com',0,1,'2024-03-29 21:01:53.197797'),(43,'pbkdf2_sha256$720000$yHWxt1BRNn9vF9gGr2ogNy$hsBAYk3Ao+ieMEnS1FpLidhN0NymqoYlvcI5coirY5k=','2024-04-06 15:51:02.787828',0,'ethanf','Ethan','Foster','ethan@example.com',0,1,'2024-04-06 15:02:47.235435'),(44,'pbkdf2_sha256$720000$3n3GNMHubNdiuxUoZuSyfQ$uqps5ZoruBhB+RNC4yPVoOuGLNHjV3jJ1+/LkYzv3Gc=',NULL,0,'elizabethy','Elizabeth','Young','elizabeth@example.com',0,0,'2024-04-13 07:32:28.750395'),(45,'pbkdf2_sha256$720000$Ycit9Hdh8NabbuIZjkWdix$ZC8wncJERhby1DFI16bdc655dptOt6+SetczNhtJ24g=','2024-04-13 07:33:54.909972',0,'oliviat','Olivia','Turner','olivia@example.com',0,1,'2024-04-13 07:33:17.466744'),(46,'pbkdf2_sha256$720000$zzA6EPCGOzFp8B0m7GG2Pn$DPLrSIHpAm1Vf9xvZKVIgS23BltPPh9S0AN8e5ifNZo=',NULL,0,'dylanc','Dylan','Cooper','dylan@example.com',0,0,'2024-04-13 09:13:39.005393'),(47,'pbkdf2_sha256$720000$jghEdTwOfczJYROGbVIeBI$CEK5xkYV7XifnNA8zfdMPd/GEu8EnMSlxweKBQRs1Bs=',NULL,0,'hannah.raimez','Hannah','Ramirez','hannah@example.com',0,0,'2024-04-13 09:14:16.556049'),(48,'',NULL,0,'austinb','Austin','Bennett','austin@example.com',0,1,'2024-05-02 20:45:24.959016'),(49,'',NULL,0,'haleyr','Haley','Reed','haley@example.com',0,1,'2024-05-02 20:45:49.925157'),(50,'',NULL,0,'loganp','Logan','Price','logan@example.com',0,1,'2024-05-02 20:47:51.188109'),(51,'',NULL,0,'marcuss','Marcus','Sanders','marcus@example.com',0,1,'2024-05-02 20:48:28.333137'),(52,'',NULL,0,'sydney_foster','Sydney','Foster','sydney@example.com',0,1,'2024-05-02 20:49:43.296898'),(53,'',NULL,0,'gracem','Grace','Mitchell','grace@example.com',0,1,'2024-05-02 20:50:15.559027');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boardcertifications`
--

DROP TABLE IF EXISTS `boardcertifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boardcertifications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Degree` varchar(20) DEFAULT NULL,
  `Board Type` varchar(20) DEFAULT NULL,
  `Of Speciality` varchar(20) DEFAULT NULL,
  `With Certification` varchar(20) DEFAULT NULL,
  `Certified` varchar(20) DEFAULT NULL,
  `Certified Date` date NOT NULL,
  `Recertified` varchar(20) DEFAULT NULL,
  `Recertified Date` date NOT NULL,
  `Expiration Date` date NOT NULL,
  `Lifetime Cert` varchar(20) NOT NULL,
  `If not cert` varchar(20) DEFAULT NULL,
  `Date Scheduled` date NOT NULL,
  `If not` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BoardCertifications_user_id_9ce11372_fk_auth_user_id` (`user_id`),
  CONSTRAINT `BoardCertifications_user_id_9ce11372_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boardcertifications`
--

LOCK TABLES `boardcertifications` WRITE;
/*!40000 ALTER TABLE `boardcertifications` DISABLE KEYS */;
INSERT INTO `boardcertifications` VALUES (1,'Option 2','Option 1','Option 1','Option 1','Option 1','2024-04-29','Option 2','2024-04-29','2024-04-29','no','Option 1','2024-04-29','',1);
/*!40000 ALTER TABLE `boardcertifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dearegistration`
--

DROP TABLE IF EXISTS `dearegistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dearegistration` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `State` varchar(20) DEFAULT NULL,
  `Reg Number` varchar(20) DEFAULT NULL,
  `Dissued` date NOT NULL,
  `Expdate` date NOT NULL,
  `IFU` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `DEARegistration_user_id_bd705b0d_fk_auth_user_id` (`user_id`),
  CONSTRAINT `DEARegistration_user_id_bd705b0d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dearegistration`
--

LOCK TABLES `dearegistration` WRITE;
/*!40000 ALTER TABLE `dearegistration` DISABLE KEYS */;
INSERT INTO `dearegistration` VALUES (1,'asdasd','asdasd','2024-04-29','2024-04-29','',1);
/*!40000 ALTER TABLE `dearegistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-03-01 17:41:02.441652','1','Test object (1)',1,'[{\"added\": {}}]',7,1),(2,'2024-03-01 17:41:28.485932','2','Test object (2)',1,'[{\"added\": {}}]',7,1),(3,'2024-03-01 17:43:44.194036','3','Test object (3)',1,'[{\"added\": {}}]',7,1),(4,'2024-03-02 09:23:19.603784','4','Test object (4)',1,'[{\"added\": {}}]',7,1),(5,'2024-03-03 20:44:58.577408','2','EdvinSadiku',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',4,1),(6,'2024-03-05 16:33:07.267357','6','Agron',2,'[{\"changed\": {\"fields\": [\"Last login\"]}}]',4,1),(7,'2024-03-07 18:55:53.338427','9','Enes2',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(8,'2024-03-14 15:51:59.581271','1','Updateinfo object (1)',1,'[{\"added\": {}}]',8,1),(9,'2024-03-14 16:00:50.293514','2','Updateinfo object (2)',1,'[{\"added\": {}}]',8,1),(10,'2024-03-14 16:07:39.537370','1','nottest object (1)',1,'[{\"added\": {}}]',9,1),(11,'2024-03-14 16:07:44.818188','2','nottest object (2)',1,'[{\"added\": {}}]',9,1),(12,'2024-03-14 16:14:22.513746','3','vlera 7',1,'[{\"added\": {}}]',8,1),(13,'2024-03-18 22:10:34.322360','9','Enes2',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(14,'2024-03-18 22:15:16.037675','26','Nesi',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(15,'2024-03-18 22:15:58.882468','27','Nesii',3,'',4,1),(16,'2024-03-18 22:18:00.959836','28','Nesiii',3,'',4,1),(17,'2024-03-18 22:20:39.943025','29','Nessi',3,'',4,1),(18,'2024-03-18 22:29:12.958670','26','Nesi',3,'',4,1),(19,'2024-03-18 22:29:12.971249','30','Nnesi',3,'',4,1),(20,'2024-03-22 15:28:27.383082','33','diti',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(21,'2024-03-26 15:37:26.287647','1','Amra',1,'[{\"added\": {}}]',10,1),(22,'2024-03-26 15:49:49.166258','6','Agron',2,'[{\"added\": {\"name\": \"updateinfo\", \"object\": \"Agron 6\"}}]',4,1),(23,'2024-03-26 22:07:52.669966','4','Test object (4)',3,'',7,1),(24,'2024-03-26 22:07:52.678422','3','Test object (3)',3,'',7,1),(25,'2024-03-26 22:07:52.682426','2','Test object (2)',3,'',7,1),(26,'2024-03-26 22:07:52.684425','1','Test object (1)',3,'',7,1),(27,'2024-03-28 16:12:48.936070','38','Amra',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}, {\"changed\": {\"name\": \"informations\", \"object\": \"Amra\", \"fields\": [\"Suffix\", \"Phone\", \"Other Phone\", \"Address\", \"City\", \"State/Province\", \"Zip Code\", \"Country\", \"Mailing Address\", \"Mailing City\", \"Mailing State/Province\", \"Mailing Zip Code\", \"Mailing Country\", \"Birth City\", \"Birth Country\", \"Birth State/Province\", \"NPI NUMBER\", \"Languages  Spoken other than English\", \"Emergency Contact Name\", \"Relationship To Applicant\", \"Emergency Contact Number\", \"Emergency Contact Email\", \"Primary Speciality\", \"General Surgery\", \"Secondary Speciality\", \"Are you able to work legally in the USA\", \"Work Authorization\"]}}, {\"added\": {\"name\": \"education\", \"object\": \"Amra\"}}]',4,1),(28,'2024-03-29 16:28:01.025218','2','django',2,'[]',10,1),(29,'2024-03-29 16:30:06.061681','1','django',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(30,'2024-03-29 16:31:50.707468','1','django',2,'[{\"changed\": {\"name\": \"informations\", \"object\": \"django\", \"fields\": [\"City\"]}}]',4,1),(31,'2024-03-29 21:46:47.310985','6','Agron',2,'[{\"added\": {\"name\": \"informations\", \"object\": \"Agron\"}}]',4,1),(32,'2024-03-31 14:13:48.823880','1','Amra',3,'',11,1),(33,'2024-03-31 14:23:31.884814','2','Altina',1,'[{\"added\": {}}]',11,1),(34,'2024-04-02 09:04:33.648538','9','Agron',3,'',10,1),(35,'2024-04-02 09:04:33.655823','8','Dionis',3,'',10,1),(36,'2024-04-02 09:04:33.660149','7','Altina',3,'',10,1),(37,'2024-04-02 09:04:33.663742','2','django',3,'',10,1),(38,'2024-04-02 09:04:33.665761','1','Amra',3,'',10,1),(39,'2024-04-03 16:44:47.705058','1','Preceptorship uploaded at 2024-04-03 16:44:47.697459+00:00',1,'[{\"added\": {}}]',17,1),(40,'2024-04-03 21:08:35.650597','2','Preceptorship uploaded at 2024-04-03 21:08:35.645598+00:00',1,'[{\"added\": {}}]',17,1),(41,'2024-04-04 21:16:46.454832','10','django',3,'',10,1),(42,'2024-04-06 13:20:38.269137','11','django',2,'[{\"changed\": {\"fields\": [\"State/Province\"]}}]',10,1),(43,'2024-04-06 13:29:09.205767','11','django',2,'[{\"changed\": {\"fields\": [\"State/Province\"]}}]',10,1),(44,'2024-04-06 13:29:57.084218','11','django',2,'[{\"changed\": {\"fields\": [\"State/Province\"]}}]',10,1),(45,'2024-04-06 13:33:37.100326','11','django',2,'[{\"changed\": {\"fields\": [\"State/Province\"]}}]',10,1),(46,'2024-04-06 14:37:00.534593','11','django',2,'[{\"changed\": {\"fields\": [\"State/Province\", \"Country\", \"Mailing Address\", \"Mailing State/Province\", \"Birth State/Province\", \"Are you able to work legally in the USA\"]}}]',10,1),(47,'2024-04-09 09:56:29.567663','12','Taulant',3,'',10,1),(48,'2024-04-09 09:56:29.587732','11','django',3,'',10,1),(49,'2024-04-19 17:34:58.619717','14','Agimvehapi',3,'',10,1),(50,'2024-04-19 17:35:12.562436','13','django',2,'[{\"changed\": {\"fields\": [\"Preferred Phone Type\", \"State/Province\", \"Country\", \"Mailing State/Province\", \"Birth State/Province\"]}}]',10,1),(51,'2024-04-29 08:49:31.462569','1','django',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}, {\"changed\": {\"name\": \"Informations\", \"object\": \"django\", \"fields\": [\"State/Province\", \"Country\", \"Mailing State/Province\", \"Birth State/Province\"]}}, {\"changed\": {\"name\": \"Education\", \"object\": \"django\", \"fields\": [\"State\", \"Country\"]}}, {\"added\": {\"name\": \"Medical Education\", \"object\": \"django\"}}, {\"changed\": {\"name\": \"Medical Education\", \"object\": \"django\", \"fields\": [\"State\", \"Country\"]}}, {\"added\": {\"name\": \"Other Graduate School\", \"object\": \"django\"}}, {\"changed\": {\"name\": \"Other Graduate School\", \"object\": \"django\", \"fields\": [\"State\", \"Country\"]}}, {\"added\": {\"name\": \"Medical Training\", \"object\": \"django\"}}, {\"added\": {\"name\": \"Residency\", \"object\": \"django\"}}, {\"changed\": {\"name\": \"Informations\", \"object\": \"django\", \"fields\": [\"State/Province\", \"Country\", \"Mailing State/Province\", \"Birth State/Province\"]}}, {\"added\": {\"name\": \"Fellowship\", \"object\": \"django\"}}, {\"added\": {\"name\": \"Board Certifications\", \"object\": \"django\"}}, {\"added\": {\"name\": \"Licences\", \"object\": \"django\"}}, {\"added\": {\"name\": \"DEA Registration\", \"object\": \"django\"}}, {\"added\": {\"name\": \"License/Other Exams\", \"object\": \"django\"}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(24,'app1','address'),(19,'app1','boardcertifications'),(22,'app1','dearegistration'),(11,'app1','education'),(16,'app1','fellowship'),(18,'app1','fifthpathway'),(13,'app1','gschool'),(10,'app1','informations'),(21,'app1','licences'),(23,'app1','licencesnotherexams'),(20,'app1','lifesupport'),(12,'app1','medicaleducation'),(14,'app1','medicaltraining'),(9,'app1','nottest'),(17,'app1','preceptorship'),(15,'app1','residency'),(7,'app1','test'),(8,'app1','updateinfo'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-03-01 16:38:51.009219'),(2,'auth','0001_initial','2024-03-01 16:38:51.726054'),(3,'admin','0001_initial','2024-03-01 16:38:51.937384'),(4,'admin','0002_logentry_remove_auto_add','2024-03-01 16:38:51.952056'),(5,'admin','0003_logentry_add_action_flag_choices','2024-03-01 16:38:51.964978'),(6,'contenttypes','0002_remove_content_type_name','2024-03-01 16:38:52.086025'),(7,'auth','0002_alter_permission_name_max_length','2024-03-01 16:38:52.174632'),(8,'auth','0003_alter_user_email_max_length','2024-03-01 16:38:52.233696'),(9,'auth','0004_alter_user_username_opts','2024-03-01 16:38:52.246990'),(10,'auth','0005_alter_user_last_login_null','2024-03-01 16:38:52.330019'),(11,'auth','0006_require_contenttypes_0002','2024-03-01 16:38:52.334024'),(12,'auth','0007_alter_validators_add_error_messages','2024-03-01 16:38:52.346034'),(13,'auth','0008_alter_user_username_max_length','2024-03-01 16:38:52.451917'),(14,'auth','0009_alter_user_last_name_max_length','2024-03-01 16:38:52.555147'),(15,'auth','0010_alter_group_name_max_length','2024-03-01 16:38:52.584566'),(16,'auth','0011_update_proxy_permissions','2024-03-01 16:38:52.598708'),(17,'auth','0012_alter_user_first_name_max_length','2024-03-01 16:38:52.701811'),(18,'sessions','0001_initial','2024-03-01 16:38:52.759095'),(19,'app1','0001_initial','2024-03-01 17:34:48.972252'),(20,'app1','0002_user','2024-03-14 15:31:15.454166'),(21,'app1','0003_customuser','2024-03-14 15:31:16.123075'),(22,'app1','0004_remove_user_groups_remove_user_user_permissions_and_more','2024-03-14 15:31:16.236558'),(23,'app1','0005_updateinfo','2024-03-14 15:50:28.120429'),(24,'app1','0006_nottest','2024-03-14 16:07:06.842431'),(25,'app1','0007_account','2024-03-26 15:35:55.250642'),(26,'app1','0008_alter_updateinfo_numri_bankes','2024-03-26 15:52:36.936593'),(27,'app1','0009_test_country','2024-03-26 22:45:40.509356'),(28,'app1','0010_remove_test_name_remove_test_surname','2024-03-26 22:51:09.812106'),(29,'app1','0011_alter_test_country','2024-03-27 10:12:14.836214'),(30,'app1','0008_account_country','2024-03-27 10:24:55.483525'),(31,'app1','0009_alter_account_country','2024-03-27 10:24:55.505140'),(32,'app1','0010_alter_account_country','2024-03-27 10:24:55.531333'),(33,'app1','0011_rename_country_account_city','2024-03-27 10:24:55.602229'),(34,'app1','0012_remove_account_city_account_phone','2024-03-27 10:24:55.673731'),(35,'app1','0013_account_address_account_city_account_country_and_more','2024-03-27 10:24:56.423231'),(36,'app1','0014_delete_nottest_delete_test_delete_updateinfo','2024-03-27 10:24:56.476559'),(37,'app1','0015_account_abletoworkintheusa_account_birthcity_and_more','2024-03-27 10:24:57.122844'),(38,'app1','0016_education','2024-03-27 10:24:57.312415'),(39,'app1','0017_rename_account_informations','2024-03-27 10:24:57.389685'),(40,'app1','0018_informations_training_module','2024-03-27 11:32:13.271354'),(41,'app1','0019_alter_informations_training_module','2024-03-27 11:32:13.277354'),(42,'app1','0020_alter_informations_training_module','2024-03-27 11:32:13.284937'),(43,'app1','0021_alter_informations_training_module','2024-03-27 11:32:13.291493'),(44,'app1','0022_alter_informations_training_module','2024-03-27 11:32:13.300990'),(45,'app1','0023_alter_informations_training_module','2024-03-27 11:32:13.306994'),(46,'app1','0024_remove_informations_training_module_and_more','2024-03-27 11:32:13.418783'),(47,'app1','0025_alter_informations_country_alter_informations_suffix','2024-03-27 11:32:13.433601'),(48,'app1','0026_alter_informations_country_alter_informations_suffix','2024-03-27 11:32:13.553473'),(49,'app1','0027_remove_informations_abletoworkintheusa_and_more','2024-03-27 11:32:13.590970'),(50,'app1','0028_informations_abletoworkintheusa_and_more','2024-03-27 11:32:13.619839'),(51,'app1','0029_remove_informations_abletoworkintheusa1_and_more','2024-03-27 11:32:13.649457'),(52,'app1','0030_alter_informations_country','2024-03-27 11:32:13.655670'),(53,'app1','0030_alter_informations_address_and_more','2024-03-29 16:07:32.520343'),(54,'app1','0031_alter_informations_country','2024-03-31 14:21:44.847908'),(55,'app1','0032_education_test1_alter_education_institution_and_more','2024-03-31 14:23:12.509460'),(56,'app1','0033_rename_test1_education_test2','2024-03-31 14:25:17.822414'),(57,'app1','0034_rename_workauthorization_informations_workauthorizationa_and_more','2024-03-31 14:26:16.562401'),(58,'app1','0035_remove_education_test2_education_daddress_and_more','2024-03-31 14:32:57.613087'),(59,'app1','0036_alter_informations_country','2024-04-01 21:59:55.441244'),(60,'app1','0037_informations_preffix_alter_informations_country','2024-04-01 21:59:55.473237'),(61,'app1','0038_education_degreeaw_alter_informations_country_and_more','2024-04-01 21:59:55.512048'),(62,'app1','0039_alter_education_degree_alter_informations_country','2024-04-01 21:59:55.528909'),(63,'app1','0040_alter_education_dcountry_alter_informations_country','2024-04-01 21:59:55.605838'),(64,'app1','0041_education_dgraduated_education_gdate_and_more','2024-04-01 21:59:55.662124'),(65,'app1','0042_alter_education_gdate_medicaleducation','2024-04-01 21:59:55.748823'),(66,'app1','0043_alter_medicaleducation_options_and_more','2024-04-01 21:59:55.852202'),(67,'app1','0044_rename_daddress_education_address_and_more','2024-04-01 21:59:56.507673'),(68,'app1','0045_gschool_program_completed_alter_education_country_and_more','2024-04-01 21:59:56.566611'),(69,'app1','0046_remove_gschool_program_completed_and_more','2024-04-01 21:59:56.702041'),(70,'app1','0047_medicaleducation_explain_alter_education_country_and_more','2024-04-01 21:59:56.775358'),(71,'app1','0048_alter_education_country_alter_gschool_country_and_more','2024-04-01 21:59:56.952005'),(72,'app1','0049_alter_education_country_alter_gschool_country_and_more','2024-04-01 21:59:57.165336'),(73,'app1','0050_alter_education_country_alter_gschool_country_and_more','2024-04-01 21:59:57.335351'),(74,'app1','0051_alter_fellowship_options_alter_education_country_and_more','2024-04-01 21:59:57.423774'),(75,'app1','0052_alter_informations_options_alter_education_country_and_more','2024-04-01 21:59:58.025841'),(76,'app1','0053_alter_education_country_alter_fellowship_country_and_more','2024-04-01 21:59:58.210189'),(77,'app1','0054_alter_education_country_alter_fellowship_country_and_more','2024-04-01 21:59:58.294711'),(78,'app1','0055_alter_education_country_alter_fellowship_country_and_more','2024-04-01 22:00:15.280276'),(79,'app1','0056_alter_fifthpathway_file_alter_preceptorship_file','2024-04-02 09:18:47.348707'),(80,'app1','0057_alter_education_country_alter_fellowship_country_and_more','2024-04-02 09:18:47.632907'),(81,'app1','0058_alter_education_country_alter_fellowship_country_and_more','2024-04-02 09:18:48.068937'),(82,'app1','0059_alter_informations_workauthorizationa','2024-04-02 09:23:59.663323'),(83,'app1','0060_alter_education_country_alter_fellowship_country_and_more','2024-04-03 21:09:54.096477'),(84,'app1','0061_alter_informations_preffix','2024-04-03 21:09:54.111478'),(85,'app1','0062_alter_education_country_alter_fellowship_country_and_more','2024-04-03 21:09:54.358526'),(86,'app1','0063_lifesupport','2024-04-03 21:09:54.453331'),(87,'app1','0064_alter_education_country_alter_fellowship_country_and_more','2024-04-03 21:09:54.691560'),(88,'app1','0065_alter_education_country_alter_fellowship_country_and_more','2024-04-03 21:09:55.071275'),(89,'app1','0066_rename_ifnot_dearegistration_ifu_and_more','2024-04-03 21:09:55.327706'),(90,'app1','0067_remove_dearegistration_fifth_pathway_and_more','2024-04-03 21:09:55.675092'),(91,'app1','0068_remove_dearegistration_dea_file_and_more','2024-04-03 21:09:55.943046'),(92,'app1','0069_alter_education_country_alter_fellowship_country_and_more','2024-04-03 21:09:56.117864'),(93,'app1','0070_alter_education_country_alter_fellowship_country_and_more','2024-04-04 21:17:27.393986'),(94,'app1','0071_alter_education_country_alter_education_phone_and_more','2024-04-09 10:38:31.493266'),(95,'app1','0072_alter_education_country_alter_fellowship_country_and_more','2024-04-09 10:40:04.169662'),(96,'app1','0073_alter_education_country_alter_fellowship_country_and_more','2024-04-15 16:46:18.375913'),(97,'app1','0074_alter_education_country_alter_fellowship_country_and_more','2024-04-15 16:48:52.147107'),(98,'app1','0075_alter_education_country_alter_fellowship_country_and_more','2024-04-15 16:51:45.472751'),(99,'app1','0002_alter_education_country_alter_fellowship_country_and_more','2024-04-22 18:34:11.340996'),(100,'app1','0003_alter_education_country_alter_fellowship_country_and_more','2024-04-22 18:34:11.774694'),(101,'app1','0004_alter_education_country_alter_fellowship_country_and_more','2024-04-22 18:34:12.213558'),(102,'app1','0005_alter_education_country_alter_fellowship_country_and_more','2024-04-22 18:34:12.717871'),(103,'app1','0006_alter_education_country_alter_fellowship_country_and_more','2024-04-22 18:34:13.174412'),(104,'app1','0007_alter_education_country_alter_fellowship_country_and_more','2024-04-22 18:34:13.555408'),(105,'app1','0008_alter_education_options_alter_education_country_and_more','2024-04-23 21:13:56.557826'),(106,'app1','0009_alter_education_country_alter_fellowship_country_and_more','2024-04-24 16:01:36.624461'),(107,'app1','0010_alter_education_country_alter_fellowship_country_and_more','2024-04-24 16:01:36.831500'),(108,'app1','0011_alter_address_administrative_area_level_1_and_more','2024-04-24 21:02:44.626830'),(109,'app1','0012_alter_education_country_alter_fellowship_country_and_more','2024-04-24 21:03:58.902152'),(110,'app1','0013_alter_address_user_alter_boardcertifications_user_and_more','2024-04-24 21:05:50.713626'),(111,'app1','0013_alter_education_country_alter_fellowship_country_and_more','2024-04-24 21:07:51.787471'),(112,'app1','0014_alter_education_country_alter_fellowship_country_and_more','2024-04-24 21:07:52.249719'),(113,'app1','0015_alter_education_country_alter_fellowship_country_and_more','2024-04-24 21:07:52.684658'),(114,'app1','0016_alter_education_country_alter_fellowship_country_and_more','2024-04-24 21:07:53.200159'),(115,'app1','0017_alter_education_country_alter_fellowship_country_and_more','2024-04-24 21:10:26.926906'),(116,'app1','0018_alter_education_country_alter_fellowship_country_and_more','2024-04-24 21:15:43.183183'),(117,'app1','0019_alter_education_country_alter_fellowship_country_and_more','2024-05-01 13:14:50.751062'),(118,'app1','0020_alter_education_country_alter_fellowship_country_and_more','2024-05-01 13:14:51.194108'),(119,'app1','0021_alter_education_country_alter_fellowship_country_and_more','2024-05-01 13:14:51.786121'),(120,'app1','0022_alter_education_country_alter_fellowship_country_and_more','2024-05-01 13:14:52.518999'),(121,'app1','0023_alter_education_country_alter_fellowship_country_and_more','2024-05-01 13:14:53.022196'),(122,'app1','0024_alter_education_country_alter_fellowship_country_and_more','2024-05-03 16:26:01.761923'),(123,'app1','0025_informations_streetno_and_more','2024-05-03 16:26:02.290771'),(124,'app1','0026_alter_informations_city','2024-05-03 16:26:02.347879'),(125,'app1','0027_alter_boardcertifications_boardtype_and_more','2024-05-03 16:26:03.011448'),(126,'app1','0028_alter_fellowship_country_alter_gschool_country_and_more','2024-05-03 20:23:00.138787'),(127,'app1','0029_alter_fellowship_country_and_more','2024-05-03 20:24:11.522591'),(128,'app1','0030_alter_fellowship_country_and_more','2024-05-03 20:29:21.760403'),(129,'app1','0031_alter_fellowship_country_and_more','2024-05-03 20:29:21.934228'),(130,'app1','0002_alter_fellowship_country_and_more','2024-05-03 20:37:34.432426');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('08ep6or50gtkajlpsdiyg9t376cn8ff7','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rt6Fg:eV6QB6Aofr9K5dLIhIWunV0Xb-wliUjm0obTF2J2Phg','2024-04-20 13:38:36.893556'),('2oylce1u883a545212150qs5to6n5kr0','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rrPem:gUnM0sB000RPsQ1I1n_gDnn34zlZdRlq3xObl5eJ_Yw','2024-04-15 21:57:32.651804'),('2s77d6rtmly4h8uys2ltxdxyrndqu7j2','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1s30QR:07e_Uya7zXzacIsFPY7DcxYfZTpwBgYZoiHbKPFlOik','2024-05-17 21:26:39.471698'),('3i2dvocz7qmtg1f7ldt7e0p5zizbub4h','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1s1Auz:F7QszpMqME5WleIAOo4q9zHZWimwabXBoi42uqfeRzU','2024-05-12 20:14:37.979613'),('4578bvzgqtnjmk7tlnub9txy0zangb05','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rqJZf:EIPEBl9uYLKcHNBmX71X3uXbh0jfE3Uxuf-_ddfHhl0','2024-04-12 21:15:43.257772'),('4l8itoc1t0j5ec9to42hj6pz0p056utu','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rpQQZ:ot42H3eWRJ7PSFAhyYbqWwCQG3j9BMHHNpslM_f8Ts4','2024-04-10 10:22:39.816530'),('eaawyeyt26fly0zt2bhfo7u3fwaran12','eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJjM2xhZHAtODQ5NGQ2NmQwMzU3MTNhZDM5MTYyZTBjYzA5NzdmYWYifQ:1rigqu:dl6mcxTm8mCpxHALeC2XppP2KnbijvFCwwWnRDkzsDU','2024-03-22 20:30:00.626313'),('eiism7jemgtqlrbz62kfrsqq3gqfdzz6','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rya0y:gvTBgE7ZFx_q-kGNoj4rgPUd2Q_HJpeucA2aaPYUIYk','2024-05-05 16:26:04.847707'),('f6ao5yub28nlhbaekgnwthgb6sw5ntcv','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1s2zRP:04OF4OUuts1nurZlwNAhGDr6Fu1Uzl3vuZ1r9gj0Dno','2024-05-17 20:23:35.728775'),('fz7r5lhy0bjjumafwpu2kxx2h45uccdh','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1s29pS:tdY-FnjDjhcY5Edpxr6LK-Ut9EZ69a8Q0GuVFSlqnqg','2024-05-15 13:16:58.203822'),('h0mx3cnjz3u0vm8p3mab08sx2pta8us3','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rpQEh:zFMEzFSQzt4pkZKzaIJ3-QTqYqXaiLhE9pU1dYyc6Dc','2024-04-10 10:10:23.019481'),('irqh8pmngpcud9vmnrotqps3rb018iyk','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rqGIG:83rMTHBIi-9XqlA2D_ZxDwo-SyLKBrRZ2rxrx8n1TbQ','2024-04-12 17:45:32.029277'),('iyoerdi0hcx7d1ctgx95mk81t4in1l9v','.eJxVjEEOwiAQRe_C2hBSLAMu3XsGMsMMUjWQlHbVeHdt0oVu_3vvbyriupS4dpnjxOqizladfkfC9JS6E35gvTedWl3mifSu6IN2fWssr-vh_h0U7OVbB3YD2uAxITv2SQBTgDEYFgOeYPAG2BmymUSYBWUMWVIgg1mARvX-ADPfOdA:1rt8Jq:EnlIujvaTs6P6j9E9eK0qJlU4vrH9CGwy4zabSmIkoA','2024-04-20 15:51:02.791261'),('jxh4cof52su9y2yzcocliuhxxv03kvjj','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rrZyk:VLHZkJne5DeZRK6q0tDzw4v9qzX4hAI_6nWC0m1sxBs','2024-04-16 08:58:50.613031'),('kttdmwjbkoc1pk8she310g2sekmk62ff','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rwSFk:2y5Mk5_39m7NoH7j_a4pYU9ruAYqVpU56S_r34Qo0XE','2024-04-29 19:44:32.124197'),('kzfbg1gex9nt3g8kf9d9xqei46br7401','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rqEzS:RcDwLrhk2lxJEY3FI4-GXyDqwfai9ju0OkXDC1VPw0M','2024-04-12 16:22:02.222839'),('mduls9n6w44tivd3m712g68nn1bipb6d','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rqvwH:SonIxEsG91dQfmCd9cq7pfEGoYgVD6CPuL8JbyZ4D7Q','2024-04-14 14:13:37.599763'),('mg9x6pqyh90se7adflm033ekd6bspo05','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rl7mu:YK0n77DQm-hXa5sC_bP9owqsqAZXYc9chv8lIsyN4Bc','2024-03-29 13:39:56.308107'),('mx1ldnmihuahbq07sby2b1bdnmz396i0','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rlEsU:6WMxK0zgv2kQPo3xClIGYHexcHNqu-OCVQcb2iCaWgw','2024-03-29 21:14:10.880491'),('nzt6iwqjhg3553coci770knoabcpokpg','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1s2ct0:2W8SG8LgCaBInieisnhm5DUTWRs-4u6-cwBh1r_XLlM','2024-05-16 20:18:34.033333'),('prrrji3ap4gx1r8jgopj2yiwrimd4byr','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1s30tS:31Rllc95PbjRrbZz1U9aM_qx81zoVniKGg5iWFGgh04','2024-05-17 21:56:38.183206'),('toazp03trgfmq9mzypl5aoz74cf127nn','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rwPXm:Gv0bPTay8C_xWU_Q8rFJ1IF8S_XeM-IfaUO_9-TfMlU','2024-04-29 16:50:58.437031'),('uw7u8jna2t8q68hrajzcpnuh3heefak8','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rpFOM:zL7t-XM_Klkq6aJS53WgI1O7P0xZ3sN8sk3dSktU9h4','2024-04-09 22:35:38.040755'),('v6jd91mlgqzud2389tjuoli9ofdqgyl8','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1rpRWA:ukXmRV5Cq4Y4iqWENcCWgiH-VVWK35JSGXVzc0QJNeM','2024-04-10 11:32:30.893908'),('xuss6e9mfkzntob9ubo4usbcb5ma7w1z','.eJxVjEEOwiAQRe_C2hCGqVBcuu8ZCAODVA0kpV0Z765NutDtf-_9l_BhW4vfOi9-TuIi0IrT70ghPrjuJN1DvTUZW12XmeSuyIN2ObXEz-vh_h2U0Mu3jgE0Ijk2nGFAl8DlZDQrNyKAGsgRo844xDMpyGBRRzOSQW21RQbx_gD9ejc9:1rmLqn:zg3ZhWQufdvpib3y6dAecHoO3mu6qs5pAl04WD646Lg','2024-04-01 22:53:01.769221'),('ybmu3994yl8fakc5cysc21mm14tjdo2t','.eJxVjL0OAiEQhN-F2hACJz-W9j4DWXYXOTWQHHeV8d3lkiu0mGa-b-YtImxriVvnJc4kLmLS4vRbJsAn153QA-q9SWx1XeYkd0UetMtbI35dD_fvoEAvYw2ZgvPggs06sGHN7G0y6D1OzjIospbAYJ6QM2VG1CNnr9XgSjvx-QI7oDlx:1rqJXh:39KdHIVIJmRpq8GkFS6ooRkJVaHLdP09RSSa39DDHrw','2024-04-12 21:13:41.534172');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Institution` varchar(20) DEFAULT NULL,
  `user_id` int NOT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `ZCode` varchar(5) DEFAULT NULL,
  `End` date NOT NULL,
  `Start` date NOT NULL,
  `Degree Awarded` varchar(20) DEFAULT NULL,
  `Graduated` varchar(20) DEFAULT NULL,
  `Date of G` date NOT NULL,
  `Country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `Education_user_id_1a2a8bd6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (2,'asdasdasd',41,NULL,NULL,NULL,NULL,NULL,NULL,'2024-03-31','2024-03-31',NULL,NULL,'2024-04-01',NULL),(3,'Enes12',1,'Emshir','Fushe Kosove','','','','12000','2024-05-16','2024-05-09','','','2024-04-25','');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fellowship`
--

DROP TABLE IF EXISTS `fellowship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fellowship` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Institution` varchar(20) DEFAULT NULL,
  `Speciality` varchar(20) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL,
  `Program Chair` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `ZCode` varchar(5) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Start` date NOT NULL,
  `End` date NOT NULL,
  `Pprogram C` varchar(20) DEFAULT NULL,
  `If not` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app1_fellowship_user_id_49efe31a` (`user_id`),
  CONSTRAINT `app1_fellowship_user_id_49efe31a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fellowship`
--

LOCK TABLES `fellowship` WRITE;
/*!40000 ALTER TABLE `fellowship` DISABLE KEYS */;
INSERT INTO `fellowship` VALUES (1,'asd','Option 3','Option 1','asdasd','asdasd','asdasd','asdasd','asdas','US-FL','asdasd','2024-04-29','2024-04-29','Option 3','asd',1);
/*!40000 ALTER TABLE `fellowship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fifthpathway`
--

DROP TABLE IF EXISTS `fifthpathway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fifthpathway` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `File` varchar(100) NOT NULL,
  `Uploaded at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FifthPathway_user_id_ff9810d2_fk_auth_user_id` (`user_id`),
  CONSTRAINT `FifthPathway_user_id_ff9810d2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fifthpathway`
--

LOCK TABLES `fifthpathway` WRITE;
/*!40000 ALTER TABLE `fifthpathway` DISABLE KEYS */;
/*!40000 ALTER TABLE `fifthpathway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informations`
--

DROP TABLE IF EXISTS `informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Sufix` varchar(20) DEFAULT NULL,
  `Social Security Number` varchar(10) NOT NULL,
  `Preferred Phone Type` varchar(20) NOT NULL,
  `User` int NOT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Mailing Address` varchar(100) DEFAULT NULL,
  `Mailing City` varchar(100) DEFAULT NULL,
  `Other Phone` varchar(10) DEFAULT NULL,
  `State/Province` varchar(100) DEFAULT NULL,
  `ZCode` varchar(5) DEFAULT NULL,
  `Birth City` varchar(100) DEFAULT NULL,
  `Birth Country` varchar(100) DEFAULT NULL,
  `Birth State/Province` varchar(100) DEFAULT NULL,
  `Emergency Email` varchar(100) DEFAULT NULL,
  `Emergency Name` varchar(100) DEFAULT NULL,
  `Emergency Number` varchar(100) DEFAULT NULL,
  `General Surgery` varchar(100) DEFAULT NULL,
  `Other Languages` varchar(100) DEFAULT NULL,
  `Mailing Country` varchar(100) DEFAULT NULL,
  `Mailing State/Province` varchar(100) DEFAULT NULL,
  `Mailing Zip Code` varchar(5) DEFAULT NULL,
  `NPI Number` varchar(100) DEFAULT NULL,
  `Primary Speciality` varchar(100) DEFAULT NULL,
  `Relationship To Applicant` varchar(100) DEFAULT NULL,
  `Secondary Speciality` varchar(100) DEFAULT NULL,
  `Work Auth` varchar(100) DEFAULT NULL,
  `Able to work USA` tinyint(1) NOT NULL,
  `Prefix` varchar(20) DEFAULT NULL,
  `Street No` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`User`),
  CONSTRAINT `Informations_User_f20c293d_fk_auth_user_id` FOREIGN KEY (`User`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informations`
--

LOCK TABLES `informations` WRITE;
/*!40000 ALTER TABLE `informations` DISABLE KEYS */;
INSERT INTO `informations` VALUES (13,'Option 1','123456781','Option 2',1,'123456789','Rrustem Statovci','Prishtina','','asd','','None','','','New','asd','jffjjfjy','jhgadjybwd@gmail.com','Agron','5654684684684565','Yepp','Albanian','asd','None','52400','None','Yes','None','Not right know','Option 1',0,'Option 2','10000');
/*!40000 ALTER TABLE `informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licences`
--

DROP TABLE IF EXISTS `licences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licences` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `State` varchar(20) DEFAULT NULL,
  `Licence Number` varchar(20) DEFAULT NULL,
  `Date Issued` date NOT NULL,
  `Expiration Date` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Licences_user_id_9e18afc9_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Licences_user_id_9e18afc9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licences`
--

LOCK TABLES `licences` WRITE;
/*!40000 ALTER TABLE `licences` DISABLE KEYS */;
INSERT INTO `licences` VALUES (1,'asdasd','asdasd','2024-04-29','2024-04-29',1);
/*!40000 ALTER TABLE `licences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licencesotherexams`
--

DROP TABLE IF EXISTS `licencesotherexams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licencesotherexams` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lexaminations` varchar(100) DEFAULT NULL,
  `ecfmgcnumber` varchar(20) DEFAULT NULL,
  `ecfmgandfmgems` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LicencesOtherExams_user_id_dcd7ad3e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `LicencesOtherExams_user_id_dcd7ad3e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licencesotherexams`
--

LOCK TABLES `licencesotherexams` WRITE;
/*!40000 ALTER TABLE `licencesotherexams` DISABLE KEYS */;
INSERT INTO `licencesotherexams` VALUES (1,'','asdasd','2024-04-29',1);
/*!40000 ALTER TABLE `licencesotherexams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lifesupport`
--

DROP TABLE IF EXISTS `lifesupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifesupport` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `File` varchar(100) NOT NULL,
  `Uploaded at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LifeSupport_user_id_a7356384_fk_auth_user_id` (`user_id`),
  CONSTRAINT `LifeSupport_user_id_a7356384_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lifesupport`
--

LOCK TABLES `lifesupport` WRITE;
/*!40000 ALTER TABLE `lifesupport` DISABLE KEYS */;
/*!40000 ALTER TABLE `lifesupport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical education`
--

DROP TABLE IF EXISTS `medicaleducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical education` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Institution` varchar(20) DEFAULT NULL,
  `Degree Awarded` varchar(20) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `ZCode` varchar(5) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Start` date NOT NULL,
  `End` date NOT NULL,
  `Graduated` varchar(20) DEFAULT NULL,
  `Date of G` date NOT NULL,
  `user_id` int NOT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Explain` longtext,
  PRIMARY KEY (`id`),
  KEY `app1_medicaleducation_user_id_4329c38f` (`user_id`),
  CONSTRAINT `Medical Education_user_id_275c9a5b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical education`
--

LOCK TABLES `medical education` WRITE;
/*!40000 ALTER TABLE `medical education` DISABLE KEYS */;
INSERT INTO `medical education` VALUES (1,'Enes11','Option 2','Option 1','Emshir','Fushe Kosove','awd','12000','1234567891','2024-04-04','2024-04-17','Option 1','2024-04-03',1,NULL,''),(2,'awd','Option 1','Option 2','awdwad','asdasd','asdasd','asdas','asdasdasd','2024-04-29','2024-04-29','Option 2','2024-04-29',1,'US-NV','');
/*!40000 ALTER TABLE `medical education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicaltraining`
--

DROP TABLE IF EXISTS `medicaltraining`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicaltraining` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Institution` varchar(20) DEFAULT NULL,
  `Degree Awarded` varchar(20) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `ZCode` varchar(5) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Start` date NOT NULL,
  `End` date NOT NULL,
  `Rotating` varchar(20) DEFAULT NULL,
  `Program C` varchar(20) DEFAULT NULL,
  `If Not` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app1_medicaltraining_user_id_81435bcc` (`user_id`),
  CONSTRAINT `MedicalTraining_user_id_25267d6f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicaltraining`
--

LOCK TABLES `medicaltraining` WRITE;
/*!40000 ALTER TABLE `medicaltraining` DISABLE KEYS */;
INSERT INTO `medicaltraining` VALUES (1,'asdasd','Option 1','Option 1','asd','asd','asd','asd','US-NY','asd','2024-04-29','2024-04-29','Option 2','Option 2','',1);
/*!40000 ALTER TABLE `medicaltraining` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `othergraduateschool`
--

DROP TABLE IF EXISTS `othergraduateschool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `othergraduateschool` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Institution` varchar(20) DEFAULT NULL,
  `Degree Awarded` varchar(20) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `ZCode` varchar(5) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Start` date NOT NULL,
  `End` date NOT NULL,
  `Graduated` varchar(20) DEFAULT NULL,
  `Date of G` date NOT NULL,
  `user_id` int NOT NULL,
  `Country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app1_gschool_user_id_40c8a34a` (`user_id`),
  CONSTRAINT `OtherGraduateSchool_user_id_b9120a0a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `othergraduateschool`
--

LOCK TABLES `othergraduateschool` WRITE;
/*!40000 ALTER TABLE `othergraduateschool` DISABLE KEYS */;
INSERT INTO `othergraduateschool` VALUES (1,'Enes12','Option 2','Option 1','Emshir','Fushe Kosove','asdasd','12000','1234567891','2024-04-01','2024-04-01','Option 1','2024-04-01',1,NULL),(2,'asdasd','Option 1','Option 2','asdasdasd','asdasd','asd','asd','asd','2024-04-29','2024-04-29','Option 1','2024-04-29',1,'US-GU');
/*!40000 ALTER TABLE `othergraduateschool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preceptorship`
--

DROP TABLE IF EXISTS `preceptorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preceptorship` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `File` varchar(100) NOT NULL,
  `Uploaded at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Preceptorship_user_id_5cf80a55_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Preceptorship_user_id_5cf80a55_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preceptorship`
--

LOCK TABLES `preceptorship` WRITE;
/*!40000 ALTER TABLE `preceptorship` DISABLE KEYS */;
INSERT INTO `preceptorship` VALUES (1,'documents/preceptorship/user_6/Screenshot_70.png','2024-04-03 16:44:47.697459',6),(2,'documents/preceptorship/user_3/Screenshot_45.png','2024-04-03 21:08:35.645598',3);
/*!40000 ALTER TABLE `preceptorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residency`
--

DROP TABLE IF EXISTS `residency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residency` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Institution` varchar(20) DEFAULT NULL,
  `Speciality` varchar(20) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL,
  `Program Chair` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `ZCode` varchar(5) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Start` date NOT NULL,
  `End` date NOT NULL,
  `Program C` varchar(20) DEFAULT NULL,
  `If Not` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app1_residency_user_id_bac1e3fa` (`user_id`),
  CONSTRAINT `Residency_user_id_89d27013_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residency`
--

LOCK TABLES `residency` WRITE;
/*!40000 ALTER TABLE `residency` DISABLE KEYS */;
INSERT INTO `residency` VALUES (1,'asd','Option 3','Option 3','asd','asd','asd','asd','asd','US-NV','asdasd','2024-04-29','2024-04-29','Option 2','asd',1);
/*!40000 ALTER TABLE `residency` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04  0:10:30
