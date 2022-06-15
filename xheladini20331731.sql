-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: xheladini20331731
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
-- Table structure for table `candidatedetails`
--

DROP TABLE IF EXISTS `candidatedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatedetails` (
  `candidateIdentifier` int NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `telephoneNumber` int NOT NULL,
  PRIMARY KEY (`candidateIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatedetails`
--

LOCK TABLES `candidatedetails` WRITE;
/*!40000 ALTER TABLE `candidatedetails` DISABLE KEYS */;
INSERT INTO `candidatedetails` VALUES (100,'Lones','Xheladini','44 cherrywood grove',877176917),(101,'Abdel','Ouafi','20 ballyogan vale',871233244),(102,'Gareth','Nomayo','1 drogheda road',851923124),(103,'Alex','Fedky','31 trim road',861224241),(104,'Des','Chen','42 town road',875215245),(105,'Moe','Alsehri','69 saudi avenue',874555533),(106,'Ubay','Elsheikh','40 libya street',893323421),(107,'Aleks','Presbo','12 raheen grove',844244242),(108,'Jordan','Kother','31 plymouth avenue',892558258),(109,'Patryk','Cichosz','1 ballymun place',871435769);
/*!40000 ALTER TABLE `candidatedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidateskills`
--

DROP TABLE IF EXISTS `candidateskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidateskills` (
  `candidateID` int NOT NULL,
  `skillID` int NOT NULL,
  PRIMARY KEY (`candidateID`,`skillID`),
  KEY `can.skills.id_idx` (`skillID`),
  CONSTRAINT `can.can.id` FOREIGN KEY (`candidateID`) REFERENCES `candidatedetails` (`candidateIdentifier`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `can.skills.id` FOREIGN KEY (`skillID`) REFERENCES `skills` (`skillID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidateskills`
--

LOCK TABLES `candidateskills` WRITE;
/*!40000 ALTER TABLE `candidateskills` DISABLE KEYS */;
INSERT INTO `candidateskills` VALUES (100,1),(101,2),(102,3),(103,4),(104,5),(104,6),(105,6),(106,7),(107,8),(108,9),(109,10);
/*!40000 ALTER TABLE `candidateskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitaldetails`
--

DROP TABLE IF EXISTS `hospitaldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitaldetails` (
  `hospitalID` int NOT NULL,
  `hospitalName` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `telephoneNumber` int NOT NULL,
  PRIMARY KEY (`hospitalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitaldetails`
--

LOCK TABLES `hospitaldetails` WRITE;
/*!40000 ALTER TABLE `hospitaldetails` DISABLE KEYS */;
INSERT INTO `hospitaldetails` VALUES (1000,'tallaght hospital','tallaght',873454321),(1001,'crumlin hospital','crumlin',851233241),(1002,'st vincent hospital','ballymount',861233411),(1003,'st james hospital','james st',854444321),(1004,'clondalkin hospital','clondalkin',123323244),(1005,'shkipta hospital','velupta',144333359),(1006,'neilstown hospital','neilstown',132314441),(1007,'finglas hospital','finglas',123212321),(1008,'drogheda hospital','drogheda',121555553),(1009,'liffey valley hospital','liffey valley',149449431);
/*!40000 ALTER TABLE `hospitaldetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviewdetails`
--

DROP TABLE IF EXISTS `interviewdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interviewdetails` (
  `interviewID` int NOT NULL,
  `candidateID` int NOT NULL,
  `positionID` int NOT NULL,
  `interviewDate` date NOT NULL,
  PRIMARY KEY (`interviewID`),
  KEY `candidate id_idx` (`candidateID`) /*!80000 INVISIBLE */,
  KEY `position ID_idx` (`positionID`),
  CONSTRAINT `int.det.can.id` FOREIGN KEY (`candidateID`) REFERENCES `candidatedetails` (`candidateIdentifier`),
  CONSTRAINT `int.det.pos.id` FOREIGN KEY (`positionID`) REFERENCES `positiondetails` (`positionID`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviewdetails`
--

LOCK TABLES `interviewdetails` WRITE;
/*!40000 ALTER TABLE `interviewdetails` DISABLE KEYS */;
INSERT INTO `interviewdetails` VALUES (10000,100,1,'2021-11-01'),(10001,101,2,'2021-11-02'),(10002,102,3,'2021-11-03'),(10003,103,4,'2021-11-04'),(10004,104,5,'2021-11-05'),(10005,105,6,'2021-11-06'),(10006,106,7,'2021-11-07'),(10007,107,8,'2021-11-08'),(10008,108,9,'2021-11-09'),(10009,109,10,'2021-11-10'),(10010,107,9,'2021-11-11');
/*!40000 ALTER TABLE `interviewdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positiondetails`
--

DROP TABLE IF EXISTS `positiondetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positiondetails` (
  `positionID` int NOT NULL,
  `hospitalID` int NOT NULL,
  `positiontype` varchar(45) NOT NULL,
  PRIMARY KEY (`positionID`),
  KEY `hospital id_idx` (`hospitalID`),
  CONSTRAINT `hospital id` FOREIGN KEY (`hospitalID`) REFERENCES `hospitaldetails` (`hospitalID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positiondetails`
--

LOCK TABLES `positiondetails` WRITE;
/*!40000 ALTER TABLE `positiondetails` DISABLE KEYS */;
INSERT INTO `positiondetails` VALUES (1,1000,'IT'),(2,1001,'nurse'),(3,1002,'manager'),(4,1003,'doctor'),(5,1004,'HR'),(6,1005,'researcher'),(7,1006,'security'),(8,1007,'receptionist'),(9,1008,'cleaner'),(10,1009,'care taker');
/*!40000 ALTER TABLE `positiondetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionoffer`
--

DROP TABLE IF EXISTS `positionoffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positionoffer` (
  `candidateID` int NOT NULL,
  `positionID` int NOT NULL,
  `offered` varchar(20) NOT NULL,
  PRIMARY KEY (`positionID`,`candidateID`),
  KEY `position id_idx` (`positionID`),
  KEY `position offer CID_idx` (`candidateID`),
  CONSTRAINT `position id` FOREIGN KEY (`positionID`) REFERENCES `positiondetails` (`positionID`),
  CONSTRAINT `position offer CID` FOREIGN KEY (`candidateID`) REFERENCES `candidatedetails` (`candidateIdentifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionoffer`
--

LOCK TABLES `positionoffer` WRITE;
/*!40000 ALTER TABLE `positionoffer` DISABLE KEYS */;
INSERT INTO `positionoffer` VALUES (100,1,'YES'),(101,2,'NO'),(102,3,'NO'),(103,4,'YES'),(101,5,'NO'),(104,5,'YES'),(105,6,'NO'),(106,7,'NO'),(107,8,'NO'),(108,9,'YES'),(105,10,'YES'),(109,10,'YES');
/*!40000 ALTER TABLE `positionoffer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionskills`
--

DROP TABLE IF EXISTS `positionskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positionskills` (
  `positionID` int NOT NULL,
  `skillID` int NOT NULL,
  PRIMARY KEY (`positionID`,`skillID`),
  KEY `skillID_idx` (`skillID`),
  CONSTRAINT `positionID` FOREIGN KEY (`positionID`) REFERENCES `positiondetails` (`positionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `skillID` FOREIGN KEY (`skillID`) REFERENCES `skills` (`skillID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionskills`
--

LOCK TABLES `positionskills` WRITE;
/*!40000 ALTER TABLE `positionskills` DISABLE KEYS */;
INSERT INTO `positionskills` VALUES (1,1),(2,2),(3,3),(4,4),(6,4),(8,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `positionskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skillID` int NOT NULL,
  `skillName` varchar(45) NOT NULL,
  PRIMARY KEY (`skillID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'IT'),(2,'nurse'),(3,'manager'),(4,'doctor'),(5,'HR'),(6,'researcher'),(7,'security'),(8,'receptionist'),(9,'cleaner'),(10,'care taker');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'xheladini20331731'
--

--
-- Dumping routines for database 'xheladini20331731'
--
/*!50003 DROP PROCEDURE IF EXISTS `InsertCandidateDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCandidateDetails`(IN candidateID int, IN firstname varchar(45),IN surname varchar(45), IN address varchar(45), IN telephone int)
BEGIN
	INSERT INTO candidatedetails
    VALUES (candidateID, firstname, surname, address,telephone);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertCandidateSkills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCandidateSkills`(IN candidateID int, IN skillID int)
BEGIN
	INSERT INTO candidateskills
    VALUES (candidateID, skillID);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertHospitalDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertHospitalDetails`(IN hospitalID int, IN hospitalName varchar(45), IN address varchar(45), IN telephone int)
BEGIN
	INSERT INTO hospitaldetails 
    VALUES (hospitalID, hospitalName, address, telephone);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertPositionDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertPositionDetails`(IN positionID int, IN hospitalID int , IN positionType varchar(45))
BEGIN
	INSERT INTO positiondetails
    VALUES(positionID, hospitalID,positionType);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertPositionOffer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertPositionOffer`(IN candidateID int, IN positionID int, IN offered varchar(20))
BEGIN
	INSERT INTO positionoffer
    VALUES(candidateID,positionID, offered);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertPositionSkills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertPositionSkills`(IN positionID int, IN skillID int)
BEGIN
	INSERT INTO positionskills
    VALUES(positionID, skillID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertSkills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertSkills`(IN skillID int, IN skillName varchar(45))
BEGIN
	INSERT INTO skills
    VALUES(skillID, skillName);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q1`(IN identifier int)
BEGIN
SELECT * from hospitaldetails where hospitalID = identifier;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q10` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q10`(IN inputDate DATE)
BEGIN
	select ID.candidateID from interviewdetails ID where ID.interviewDate = inputDate ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q11` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q11`()
BEGIN

SELECT CD.candidateIdentifier, CD.firstname, CD.surname
FROM candidatedetails CD , interviewdetails ID
where CD.candidateIdentifier = ID.candidateID 
group by ID.candidateID
having (count(ID.candidateID) > 1);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q2`(IN inputName varchar(45))
BEGIN
SELECT * from hospitaldetails where hospitalName = inputName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q3`(IN inputSurname varchar(45))
BEGIN
SELECT * from candidatedetails where surname = inputSurname;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q4`(IN pos int)
BEGIN
select CD.* from candidateDetails CD, positionskills PS, candidateskills CS WHERE PS.positionID = pos and CS.skillID = PS.skillID and CS.candidateID = CD.candidateIdentifier;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q5` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q5`()
BEGIN
SELECT COUNT(*)
FROM positionoffer where offered = 'yes';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q6` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q6`(IN inputSkillName varchar(25))
BEGIN
	SELECT PD.* from positiondetails PD, positionskills PS, skills S where S.skillName = inputSkillName and PS.skillID = S.skillID and PD.positionID = PS.positionID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q7` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q7`()
BEGIN
	SELECT count(PS.positionID) as nursingCount from positiondetails PD, positionskills PS, skills S where S.skillName = 'nurse' and PS.skillID = 2 and PD.positionID = PS.positionID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q8` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q8`()
BEGIN
	SELECT HD.*, PD.positionID FROM hospitaldetails HD, positiondetails PD WHERE HD.hospitalID = PD.hospitalID order by HD.hospitalName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q9` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q9`(IN inputDate DATE)
BEGIN
	
SELECT * from interviewdetails where interviewDate =inputDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-24 12:20:08
