-- Christian Shingiro Student No.: 7537202 --

-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Shingiro_A1
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `COURSE`
--

-- Part 1 of Assignment 1 --

DROP TABLE IF EXISTS `COURSE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COURSE` (
  `CourseID` varchar(45) NOT NULL,
  `CourseName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COURSE`
--

LOCK TABLES `COURSE` WRITE;
/*!40000 ALTER TABLE `COURSE` DISABLE KEYS */;
INSERT INTO `COURSE` VALUES ('ISM 3112','Syst Designc'),('ISM 3113','Syst Analysisc'),('ISM 4212','Databasec'),('ISM 4555','Network'),('ISM 4930','Networkingc');
/*!40000 ALTER TABLE `COURSE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FACULTY`
--

DROP TABLE IF EXISTS `FACULTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FACULTY` (
  `FacultyID` int NOT NULL,
  `FacultyName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`FacultyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FACULTY`
--

LOCK TABLES `FACULTY` WRITE;
/*!40000 ALTER TABLE `FACULTY` DISABLE KEYS */;
INSERT INTO `FACULTY` VALUES (2143,'Birkinc'),(3467,'Berndtc'),(4756,'Collinsc');
/*!40000 ALTER TABLE `FACULTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUALIFIED`
--

DROP TABLE IF EXISTS `QUALIFIED`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QUALIFIED` (
  `FacultyID` int NOT NULL,
  `CourseID` varchar(45) DEFAULT NULL,
  `DateQualified` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`FacultyID`),
  KEY `CourseID_idx` (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUALIFIED`
--

LOCK TABLES `QUALIFIED` WRITE;
/*!40000 ALTER TABLE `QUALIFIED` DISABLE KEYS */;
INSERT INTO `QUALIFIED` VALUES (2143,'ISM 3112, ISM 3113','9/2008'),(3467,'ISM 4212, ISM 4930','9/2015, 9/2016'),(4756,'ISM 3113, ISM 3112','9/2011');
/*!40000 ALTER TABLE `QUALIFIED` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REGISTRATION`
--

DROP TABLE IF EXISTS `REGISTRATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `REGISTRATION` (
  `StudentID` int NOT NULL,
  `StudentNo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  KEY `StudentNo_idx` (`StudentNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REGISTRATION`
--

LOCK TABLES `REGISTRATION` WRITE;
/*!40000 ALTER TABLE `REGISTRATION` DISABLE KEYS */;
INSERT INTO `REGISTRATION` VALUES (66324,'2713'),(38214,'2714'),(54907,'2714, 2715');
/*!40000 ALTER TABLE `REGISTRATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SECTION`
--

DROP TABLE IF EXISTS `SECTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SECTION` (
  `SectionNo` int NOT NULL,
  `Semester` varchar(45) DEFAULT NULL,
  `CourseID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SectionNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SECTION`
--

LOCK TABLES `SECTION` WRITE;
/*!40000 ALTER TABLE `SECTION` DISABLE KEYS */;
INSERT INTO `SECTION` VALUES (2712,'I-2018','ISM 3113'),(2713,'I-2018','ISM 3113'),(2714,'II-2018','ISM 4212'),(2715,'II-2018','ISM 4930');
/*!40000 ALTER TABLE `SECTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STUDENT`
--

DROP TABLE IF EXISTS `STUDENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STUDENT` (
  `StudentID` int NOT NULL,
  `StudentName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENT`
--

LOCK TABLES `STUDENT` WRITE;
/*!40000 ALTER TABLE `STUDENT` DISABLE KEYS */;
INSERT INTO `STUDENT` VALUES (38214,'Leterskyc'),(54907,'Altvaterc'),(65798,'Lopez'),(66324,'Aikenc');
/*!40000 ALTER TABLE `STUDENT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-22 23:16:21

-- Part 2 of Assignment1 ---

-- Answer to Question 1a ---

INSERT INTO `Shingiro_A1`.`STUDENT` (`StudentID`, `StudentName`) 
VALUES ('65798', 'Lopez');

INSERT INTO `Shingiro_A1`.`STUDENT`
VALUES ('65798', 'Lopez');

-- Answer to Question 1b --

DELETE FROM `Shingiro_A1`.`STUDENT` WHERE (`StudentID` = '70542');

-- Answer to Question 1c --

DELETE FROM `Shingiro_A1`.`STUDENT` WHERE (`StudentName` = 'Lopez');

-- Answer to Question 1d --

UPDATE `Shingiro_A1`.`COURSE` SET `CourseName` = 'Introduction to Relational Databases' WHERE (`CourseID` = 'ISM 4212');

-- Answer to Question 2a --

SELECT StudentID from STUDENT
where StudentID<=50000; 

-- Answer to Question 2b --

SELECT FacultyID from FACULTY
where FacultyID=4756;


