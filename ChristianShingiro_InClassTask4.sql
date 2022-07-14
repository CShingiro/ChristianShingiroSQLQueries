-- Christian Shingiro 
-- Student ID: 7537202
-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: RQC_Database
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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `CustomerID` int NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `Zip` varchar(45) DEFAULT NULL,
  `CustomerType` varchar(45) DEFAULT NULL,
  `Contact/CustomerTitle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GameConsole_Inventory`
--

DROP TABLE IF EXISTS `GameConsole_Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GameConsole_Inventory` (
  `ItemID` int NOT NULL,
  `Manufacturer` varchar(45) DEFAULT NULL,
  `BrandName` varchar(45) DEFAULT NULL,
  `SerialNumber` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `PurchaseDate` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `DailyRentalCost` varchar(45) DEFAULT NULL,
  `WeeklyRentalCost` varchar(45) DEFAULT NULL,
  `MonthlyRentalCost` varchar(45) DEFAULT NULL,
  `RAM` varchar(45) DEFAULT NULL,
  `Processor` varchar(45) DEFAULT NULL,
  `HardDrive/SSDSpace` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GameConsole_Inventory`
--

LOCK TABLES `GameConsole_Inventory` WRITE;
/*!40000 ALTER TABLE `GameConsole_Inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `GameConsole_Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Game_Inventory`
--

DROP TABLE IF EXISTS `Game_Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Game_Inventory` (
  `ItemID` int NOT NULL,
  `Manufacturer` varchar(45) DEFAULT NULL,
  `BrandName` varchar(45) DEFAULT NULL,
  `SerialNumber` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `PurchaseDate` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `DailyRentalCost` varchar(45) DEFAULT NULL,
  `WeeklyRentalCost` varchar(45) DEFAULT NULL,
  `MonthlyRentalCost` varchar(45) DEFAULT NULL,
  `Medium` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Game_Inventory`
--

LOCK TABLES `Game_Inventory` WRITE;
/*!40000 ALTER TABLE `Game_Inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `Game_Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Laptop_Inventory`
--

DROP TABLE IF EXISTS `Laptop_Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Laptop_Inventory` (
  `ItemID` int NOT NULL,
  `Manufacturer` varchar(45) DEFAULT NULL,
  `BrandName` varchar(45) DEFAULT NULL,
  `SerialNumber` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `PurchaseDate` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `DailyRentalCost` varchar(45) DEFAULT NULL,
  `WeeklyRentalCost` varchar(45) DEFAULT NULL,
  `MonthlyRentalCost` varchar(45) DEFAULT NULL,
  `RAM` varchar(45) DEFAULT NULL,
  `ProcessorType` varchar(45) DEFAULT NULL,
  `HardDrive/SSDSpace` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Laptop_Inventory`
--

LOCK TABLES `Laptop_Inventory` WRITE;
/*!40000 ALTER TABLE `Laptop_Inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `Laptop_Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Printer_Inventory`
--

DROP TABLE IF EXISTS `Printer_Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Printer_Inventory` (
  `ItemID` int NOT NULL,
  `Manufacturer` varchar(45) DEFAULT NULL,
  `BrandName` varchar(45) DEFAULT NULL,
  `SerialNumber` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `PurchaseDate` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `DailyRentalCost` varchar(45) DEFAULT NULL,
  `WeeklyRentalCost` varchar(45) DEFAULT NULL,
  `MonthlyRentalCost` varchar(45) DEFAULT NULL,
  `PrintCopyAmount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Printer_Inventory`
--

LOCK TABLES `Printer_Inventory` WRITE;
/*!40000 ALTER TABLE `Printer_Inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `Printer_Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RentLog`
--

DROP TABLE IF EXISTS `RentLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RentLog` (
  `RentID` int NOT NULL,
  `DueDate` varchar(45) DEFAULT NULL,
  `LateFee` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RentID`),
  CONSTRAINT `CustomerID` FOREIGN KEY (`RentID`) REFERENCES `Customer` (`CustomerID`),
  CONSTRAINT `ItemIDConsole` FOREIGN KEY (`RentID`) REFERENCES `GameConsole_Inventory` (`ItemID`),
  CONSTRAINT `ItemIDGame` FOREIGN KEY (`RentID`) REFERENCES `Game_Inventory` (`ItemID`),
  CONSTRAINT `ItemIDLaptop` FOREIGN KEY (`RentID`) REFERENCES `Laptop_Inventory` (`ItemID`),
  CONSTRAINT `ItemIDPrinter` FOREIGN KEY (`RentID`) REFERENCES `Printer_Inventory` (`ItemID`),
  CONSTRAINT `ItemIDRouter` FOREIGN KEY (`RentID`) REFERENCES `Router_Inventory` (`ItemID`),
  CONSTRAINT `ItemIDScanner` FOREIGN KEY (`RentID`) REFERENCES `Scanner_Inventory` (`ItemID`),
  CONSTRAINT `ItemIDSwitch` FOREIGN KEY (`RentID`) REFERENCES `Switch_Inventory` (`ItemID`),
  CONSTRAINT `ItemIDTablet` FOREIGN KEY (`RentID`) REFERENCES `Tablet_Inventory` (`ItemID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RentLog`
--

LOCK TABLES `RentLog` WRITE;
/*!40000 ALTER TABLE `RentLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `RentLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Router_Inventory`
--

DROP TABLE IF EXISTS `Router_Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Router_Inventory` (
  `ItemID` int NOT NULL,
  `Manufacturer` varchar(45) DEFAULT NULL,
  `BrandName` varchar(45) DEFAULT NULL,
  `SerialNumber` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `PurchaseDate` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `DailyRentalCost` varchar(45) DEFAULT NULL,
  `WeeklyRentalCost` varchar(45) DEFAULT NULL,
  `MonthlyRentalCost` varchar(45) DEFAULT NULL,
  `PortAmount` varchar(45) DEFAULT NULL,
  `PortType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Router_Inventory`
--

LOCK TABLES `Router_Inventory` WRITE;
/*!40000 ALTER TABLE `Router_Inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `Router_Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Scanner_Inventory`
--

DROP TABLE IF EXISTS `Scanner_Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Scanner_Inventory` (
  `ItemID` int NOT NULL,
  `Manufacturer` varchar(45) DEFAULT NULL,
  `BrandName` varchar(45) DEFAULT NULL,
  `SerialNumber` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `PurchaseDate` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `DailyRentalCost` varchar(45) DEFAULT NULL,
  `WeeklyRentalCost` varchar(45) DEFAULT NULL,
  `MonthlyRentalCost` varchar(45) DEFAULT NULL,
  `Connectivity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Scanner_Inventory`
--

LOCK TABLES `Scanner_Inventory` WRITE;
/*!40000 ALTER TABLE `Scanner_Inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `Scanner_Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Switch_Inventory`
--

DROP TABLE IF EXISTS `Switch_Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Switch_Inventory` (
  `ItemID` int NOT NULL,
  `Manufacturer` varchar(45) DEFAULT NULL,
  `BrandName` varchar(45) DEFAULT NULL,
  `SerialNumber` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `PurchaseDate` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `DailyRentalCost` varchar(45) DEFAULT NULL,
  `WeeklyRentalCost` varchar(45) DEFAULT NULL,
  `MonthlyRentalCost` varchar(45) DEFAULT NULL,
  `PortType` varchar(45) DEFAULT NULL,
  `PortAmount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Switch_Inventory`
--

LOCK TABLES `Switch_Inventory` WRITE;
/*!40000 ALTER TABLE `Switch_Inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `Switch_Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tablet_Inventory`
--

DROP TABLE IF EXISTS `Tablet_Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tablet_Inventory` (
  `ItemID` int NOT NULL,
  `Manufacturer` varchar(45) DEFAULT NULL,
  `BrandName` varchar(45) DEFAULT NULL,
  `SerialNumber` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `PurchaseDate` varchar(45) DEFAULT NULL,
  `DailyRentalCost` varchar(45) DEFAULT NULL,
  `WeeklyRentalCost` varchar(45) DEFAULT NULL,
  `MonthlyRentalCost` varchar(45) DEFAULT NULL,
  `RAM` varchar(45) DEFAULT NULL,
  `ProcessorType` varchar(45) DEFAULT NULL,
  `HardDrive/SSDSpace` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tablet_Inventory`
--

LOCK TABLES `Tablet_Inventory` WRITE;
/*!40000 ALTER TABLE `Tablet_Inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tablet_Inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-14 23:06:20
