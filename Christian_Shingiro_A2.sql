-- Christian Shingiro
-- Student No.: 7537202
-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Shingiro_A2
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
-- Table structure for table `MATCH HISTORY`
--

DROP TABLE IF EXISTS `MATCH HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MATCH HISTORY` (
  `MatchID` int NOT NULL,
  `TutorID` int DEFAULT NULL,
  `StudentID` int DEFAULT NULL,
  `StartDate` varchar(45) DEFAULT NULL,
  `EndDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MatchID`),
  KEY `TutorID_idx` (`TutorID`),
  KEY `StudentID_idx` (`StudentID`),
  CONSTRAINT `StudentID` FOREIGN KEY (`StudentID`) REFERENCES `STUDENT` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TutorID` FOREIGN KEY (`TutorID`) REFERENCES `TUTOR` (`TutorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MATCH HISTORY`
--

LOCK TABLES `MATCH HISTORY` WRITE;
/*!40000 ALTER TABLE `MATCH HISTORY` DISABLE KEYS */;
INSERT INTO `MATCH HISTORY` VALUES (1,100,30002,'1/10/2018',NULL),(2,101,30012,'1/15/2018','5/15/2018'),(3,102,30022,'2/10/2018','3/01/2018'),(4,106,30032,'5/28/2018',NULL),(5,103,30042,'6/01/2018','6/15/2018'),(6,104,30052,'6/01/2018','6/28/2018'),(7,104,30062,'6/01/2018',NULL);
/*!40000 ALTER TABLE `MATCH HISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STUDENT`
--

DROP TABLE IF EXISTS `STUDENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STUDENT` (
  `StudentID` int NOT NULL,
  `GroupNumber` int DEFAULT NULL,
  `ReadScore` int DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENT`
--

LOCK TABLES `STUDENT` WRITE;
/*!40000 ALTER TABLE `STUDENT` DISABLE KEYS */;
INSERT INTO `STUDENT` VALUES (30002,3,2),(30012,2,6),(30022,3,1),(30032,1,3),(30042,2,3),(30052,4,5),(30062,3,8),(30072,4,2);
/*!40000 ALTER TABLE `STUDENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TUTOR`
--

DROP TABLE IF EXISTS `TUTOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TUTOR` (
  `TutorID` int NOT NULL,
  `CertDate` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TutorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TUTOR`
--

LOCK TABLES `TUTOR` WRITE;
/*!40000 ALTER TABLE `TUTOR` DISABLE KEYS */;
INSERT INTO `TUTOR` VALUES (100,'1/05/2018','Active'),(101,'1/05/2018','Temp Stop'),(102,'1/05/2018','Dropped'),(103,'5/22/2018','Active'),(104,'5/22/2018','Active'),(105,'5/22/2018','Temp Stop'),(106,'5/22/2018','Active');
/*!40000 ALTER TABLE `TUTOR` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-15 22:48:43

-- Part 2

-- A.
SELECT TutorID FROM `MATCH HISTORY` WHERE StudentID=(SELECT StudentID FROM `STUDENT` WHERE TutorID = '');
-- B.
SELECT StudentID FROM `MATCH HISTORY` WHERE StartDate LIKE '1%','2%','3%','4%','5%';
-- C.
SELECT MAX(ReadScore) FROM `STUDENT`;
-- D.
SELECT AVG(ReadScore) FROM `STUDENT` WHERE GroupNumber=4;
SELECT AVG(ReadScore) FROM `STUDENT` WHERE GroupNumber=3;
SELECT AVG(ReadScore) FROM `STUDENT` WHERE GroupNumber=2;
SELECT AVG(ReadScore) FROM `STUDENT` WHERE GroupNumber=1;
SELECT MAX(ReadScore) FROM `STUDENT` WHERE GroupNumber=4;
SELECT MAX(ReadScore) FROM `STUDENT` WHERE GroupNumber=3;
SELECT MAX(ReadScore) FROM `STUDENT` WHERE GroupNumber=2;
SELECT MAX(ReadScore) FROM `STUDENT` WHERE GroupNumber=1;
SELECT MIN(ReadScore) FROM `STUDENT` WHERE GroupNumber=4;
SELECT MIN(ReadScore) FROM `STUDENT` WHERE GroupNumber=3;
SELECT MIN(ReadScore) FROM `STUDENT` WHERE GroupNumber=2;
SELECT MIN(ReadScore) FROM `STUDENT` WHERE GroupNumber=1;
-- E.
SELECT DATEDIFF(day, STR_TO_DATE(StartDate), STR_TO_DATE(EndDate)) FROM `MATCH HISTORY`;
-- F.
SELECT TutorID FROM `TUTOR` WHERE STR_TO_DATE(CertDate) > STR_TO_DATE('4/01/2018') AND Status = 'Dropped';
