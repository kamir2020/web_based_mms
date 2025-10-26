-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: db_mms
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `tbl_air_collection`
--

DROP TABLE IF EXISTS `tbl_air_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_air_collection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refID` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `clientID` varchar(50) NOT NULL,
  `stationID` varchar(20) NOT NULL,
  `weather` varchar(40) NOT NULL,
  `temp` varchar(20) NOT NULL,
  `actual1` varchar(20) NOT NULL,
  `actualResult1` varchar(20) NOT NULL,
  `time1` varchar(20) NOT NULL,
  `timeResult1` varchar(20) NOT NULL,
  `pressure1` varchar(20) NOT NULL,
  `pressureResult1` varchar(20) NOT NULL,
  `vstd1` varchar(20) NOT NULL,
  `actual2` varchar(20) NOT NULL,
  `actualResult2` varchar(20) NOT NULL,
  `time2` varchar(20) NOT NULL,
  `timeResult2` varchar(20) NOT NULL,
  `pressure2` varchar(20) NOT NULL,
  `pressureResult2` varchar(20) NOT NULL,
  `vstd2` varchar(20) NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timestamp` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_air_collection`
--

LOCK TABLES `tbl_air_collection` WRITE;
/*!40000 ALTER TABLE `tbl_air_collection` DISABLE KEYS */;
INSERT INTO `tbl_air_collection` VALUES (31,'67DR6QHN5K','MOHD KAMIR YUSOF','MMTC010','Rainer','20','10','0.2830','20','1200.00','10','0.29','4.657','10','0.2830','20','1200.00','30','0.89','14.292','NA','2025-08-09 08:19:14'),(32,'WT0A8XYD86','MOHD KAMIR YUSOF','MMTE006','Rainer','20','10','0.2830','20','1200.00','30','0.89','14.541','20','0.5660','30','1800.00','40','1.18','57.836','Na','2025-08-15 14:07:43'),(33,'JENH9OG1J6','ALIM AIDRUS','MMCC010','Clear','33','42','1.1886','24','1440.00','1000','29.50','2308.840','44','1.2452','24','1440.00','1000','29.50','2418.785','test','2025-08-18 00:46:21');
/*!40000 ALTER TABLE `tbl_air_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_air_install`
--

DROP TABLE IF EXISTS `tbl_air_install`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_air_install` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refID` text NOT NULL,
  `clientID` varchar(20) NOT NULL,
  `stationID` varchar(20) NOT NULL,
  `region` varchar(20) NOT NULL,
  `sampleDate` date NOT NULL,
  `weather` varchar(20) NOT NULL,
  `temp` varchar(10) NOT NULL,
  `pm10` varchar(10) NOT NULL,
  `pm2` varchar(10) NOT NULL,
  `remark` text,
  `statusID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timestamp` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_air_install`
--

LOCK TABLES `tbl_air_install` WRITE;
/*!40000 ALTER TABLE `tbl_air_install` DISABLE KEYS */;
INSERT INTO `tbl_air_install` VALUES (44,'67DR6QHN5K','MOHD KAMIR YUSOF','MMTC010','NA','2025-08-09','Clear','20','10','10','NA','L2','2025-08-09 00:09:47'),(45,'8FH7WGCD1N','MOHD KAMIR YUSOF','MMJC028','NA','2025-08-09','Rainer','20','10','10','NA','L1','2025-08-09 08:56:09'),(46,'WT0A8XYD86','MOHD KAMIR YUSOF','MMTE006','NA','2025-08-15','Rainer','10','20','30','Na','L2','2025-08-15 14:04:05'),(47,'JENH9OG1J6','ALIM AIDRUS','MMCC010','selangor','2025-08-18','Rainer','27','nsn244','nzjs233','rest','L2','2025-08-18 00:42:29');
/*!40000 ALTER TABLE `tbl_air_install` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_air_station`
--

DROP TABLE IF EXISTS `tbl_air_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_air_station` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stationID` varchar(20) NOT NULL,
  `stateID` varchar(10) NOT NULL,
  `categoryID` varchar(10) NOT NULL,
  `locationName` varchar(50) NOT NULL,
  `longitude` decimal(10,5) NOT NULL,
  `latitude` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_air_station`
--

LOCK TABLES `tbl_air_station` WRITE;
/*!40000 ALTER TABLE `tbl_air_station` DISABLE KEYS */;
INSERT INTO `tbl_air_station` VALUES (24,'MMJC012','JHR','CT','TANJUNG MERAK',104.11000,1.36275),(25,'MMJC020','JHR','CT','PANTAI DESARU',104.26100,1.54667),(26,'MMJC028','JHR','CT','BATU LAYAR',104.29600,1.44611),(27,'MMJM004','JHR','ISP','PEMANGGIL',104.32600,2.56908),(28,'MMCC010','PHG','CT','PANTAI BERSERAH B',103.36900,3.87600),(29,'MMCC012','PHG','CT','PANTAI TELUK CEMPEDAK B',103.37400,3.81019),(30,'MMCC013','PHG','CT','PANTAI TELUK GELORA A',103.36400,3.80303),(31,'MMCC014','PHG','CT','PANTAI TELUK GELORA B',103.35100,3.80278),(32,'MMCC015','PHG','CT','PANTAI SEPAT A',103.33900,3.70150),(33,'MMCC016','PHG','CT','PANTAI SEPAT B',103.34000,3.69886),(34,'MMCC022','PHG','CT','PANTAI LANJUT',103.47200,2.84378),(35,'MMCE002','PHG','ES','KUALA ROMPIN KECIL',103.48500,2.82218),(36,'MMCM001','PHG','ISP','PULAU TIOMAN (KG. GENTING)',104.11700,2.77500),(37,'MMTC003','TGG','CT','PANTAI CHENDERING',103.18900,5.27104),(38,'MMTC010','TGG','CT','KELULUT',103.22600,5.19043),(39,'MMTC016','TGG','CT','PANTAI KEMASIK',103.44900,4.45595),(40,'MMTE006','TGG','ES','KUALA SUNGAI PAKA',103.44400,4.65500),(41,'MMTM004','TGG','ISP','REDANG (NORTH)',103.03700,5.77561),(42,'MMTC005','TGG','CT','KIPC UTARA',103.45200,4.61285),(43,'MMTM006','TGG','ISP','LANG TENGAH',102.89000,5.79247),(44,'MMSM001','SBH','ISP','SAPI',116.01000,6.00727),(45,'MMSR001','SBH','ISR','GAYA',116.05100,6.01346);
/*!40000 ALTER TABLE `tbl_air_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryID` varchar(10) NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (1,'CT','COASTAL'),(2,'ES','ESTUARY'),(3,'ISD','ISLAND DEVELOPMENT'),(8,'ISP','ISLAND MARINE PARK'),(9,'ISD','ISLAND PROTECTED'),(10,'ISR','ISLAND RESORT');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_classify`
--

DROP TABLE IF EXISTS `tbl_classify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_classify` (
  `id` int NOT NULL AUTO_INCREMENT,
  `classifyID` varchar(10) NOT NULL,
  `classifyName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_classify`
--

LOCK TABLES `tbl_classify` WRITE;
/*!40000 ALTER TABLE `tbl_classify` DISABLE KEYS */;
INSERT INTO `tbl_classify` VALUES (1,'NO','None'),(2,'SD','Sandy'),(3,'NS','Non-Sandy'),(4,'CQ','Coquina');
/*!40000 ALTER TABLE `tbl_classify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_condition`
--

DROP TABLE IF EXISTS `tbl_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_condition` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conditionID` varchar(10) NOT NULL,
  `conditionName` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_condition`
--

LOCK TABLES `tbl_condition` WRITE;
/*!40000 ALTER TABLE `tbl_condition` DISABLE KEYS */;
INSERT INTO `tbl_condition` VALUES (1,'CM1','Calm'),(2,'CM2','Mid-Wave'),(3,'CM3','High-Wave');
/*!40000 ALTER TABLE `tbl_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_department`
--

DROP TABLE IF EXISTS `tbl_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `departID` varchar(10) NOT NULL,
  `departmentName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_department`
--

LOCK TABLES `tbl_department` WRITE;
/*!40000 ALTER TABLE `tbl_department` DISABLE KEYS */;
INSERT INTO `tbl_department` VALUES (1,'D1','Air'),(2,'D2','River'),(3,'D3','Marine'),(4,'D4','IT'),(5,'D5','Management');
/*!40000 ALTER TABLE `tbl_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_email_list`
--

DROP TABLE IF EXISTS `tbl_email_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_email_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `typeID` varchar(10) NOT NULL,
  `emailAddress` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_email_list`
--

LOCK TABLES `tbl_email_list` WRITE;
/*!40000 ALTER TABLE `tbl_email_list` DISABLE KEYS */;
INSERT INTO `tbl_email_list` VALUES (1,'T1','kamir2020@gmail.com'),(2,'T1','mohdkamir@unisza.edu.my'),(3,'T2','kamir2020@gmail.com'),(4,'T2','mohdkamir@unisza.edu.my'),(5,'T1','groupit.transwater@gmail.com'),(6,'T2','pstwitdept@gmail.com');
/*!40000 ALTER TABLE `tbl_email_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_level`
--

DROP TABLE IF EXISTS `tbl_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `levelID` varchar(10) NOT NULL,
  `levelName` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_level`
--

LOCK TABLES `tbl_level` WRITE;
/*!40000 ALTER TABLE `tbl_level` DISABLE KEYS */;
INSERT INTO `tbl_level` VALUES (1,'L1','Management'),(2,'L2','Manager'),(3,'L3','Executive'),(4,'L4','Engineer'),(5,'L5','Technician'),(6,'L6','QAQC'),(7,'L7','Inventory Master'),(8,'L8','IT');
/*!40000 ALTER TABLE `tbl_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marine_insitu_sampling`
--

DROP TABLE IF EXISTS `tbl_marine_insitu_sampling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_marine_insitu_sampling` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reportID` varchar(20) NOT NULL,
  `firstSampler` varchar(50) NOT NULL,
  `secondSampler` varchar(50) NOT NULL,
  `dateController` date DEFAULT NULL,
  `timeController` time DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `stationName` varchar(20) NOT NULL,
  `sampleCode` varchar(20) NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `distance` text NOT NULL,
  `remarks` text NOT NULL,
  `weather` varchar(20) NOT NULL,
  `tide` varchar(20) NOT NULL,
  `sea` varchar(20) NOT NULL,
  `eventRemarks` text,
  `labRemarks` text,
  `sondeID` varchar(20) NOT NULL,
  `dateCapture` date DEFAULT NULL,
  `timeCapture` time DEFAULT NULL,
  `oxygen1` varchar(20) DEFAULT NULL,
  `oxygen2` varchar(20) DEFAULT NULL,
  `pH` varchar(20) DEFAULT NULL,
  `salinity` varchar(20) DEFAULT NULL,
  `ec` varchar(20) DEFAULT NULL,
  `temperature` varchar(20) DEFAULT NULL,
  `tds` varchar(20) DEFAULT NULL,
  `turbidity` varchar(20) DEFAULT NULL,
  `tss` varchar(20) DEFAULT NULL,
  `battery` varchar(20) DEFAULT NULL,
  `stationID` varchar(20) DEFAULT NULL,
  `timestamp` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marine_insitu_sampling`
--

LOCK TABLES `tbl_marine_insitu_sampling` WRITE;
/*!40000 ALTER TABLE `tbl_marine_insitu_sampling` DISABLE KEYS */;
INSERT INTO `tbl_marine_insitu_sampling` VALUES (32,'jtxjr2XC80','MOHD KAMIR YUSOF','RIFAIE AZHARI','2025-08-18','10:02:38','Schedule','KUALA SUNGAI DUNGUN','-1','3.1325408','101.6882257','266.16896749318266','','Rainer','Low','Moderate Wave','','','A123','2025-08-18','10:02:38','10','15','15','15','15','15','15','15','10','20','MMTE002','2025-08-18 02:02:38'),(33,'1WZvJMRWBy','MOHD KAMIR YUSOF','ALIM AIDRUS','2025-08-19','14:42:00','Schedule','KUALA SUNGAI DUNGUN','-1','2.7520256','101.7043665','295.7626088759958','','Rainer','Low','High Wave','','','A123','2025-08-19','14:42:00','10','15','15','15','15','15','15','15','10','20','MMTE002','2025-08-19 06:42:00'),(34,'z4Pgx2fPz8','MOHD KAMIR YUSOF','RIFAIE AZHARI','2025-08-19','14:45:46','Schedule','KUALA PAHANG','-1','2.7519395','101.7042467','214.51061838183358','','Rainer','Low','High Wave','','','A123','2025-08-19','14:45:46','10','15','15','15','15','15','15','15','10','20','MMCE003','2025-08-19 06:45:46'),(35,'yGHMT2Myx9','MOHD KAMIR YUSOF','ZHAFIRUDDIN','2025-08-19','14:48:41','Schedule','KUALA ROMPIN KECIL','-1','2.7519612','101.7043033','197.92426474001613','','Rainer','High','Moderate Wave','','','A123','2025-08-19','14:48:41','10','15','15','15','15','15','15','15','10','20','MMCE002','2025-08-19 06:48:41'),(36,'lGZ2sN8sNd','MOHD KAMIR YUSOF','ALIM AIDRUS','2025-08-19','14:52:48','Schedule','KUALA SUNGAI IBAI','-1','2.7520609','101.7044487','325.9067970511383','','Rainer','Low','Moderate Wave','','','A123','2025-08-19','14:52:48','10','15','15','15','15','15','15','15','10','20','MMTE003','2025-08-19 06:52:48'),(37,'SLk5SASKqd','ALIM AIDRUS','ZHAFIRUDDIN','2025-08-28','15:35:18','Schedule','PANTAI BATU BURUK','17383295','3.0857587','101.5764214','304.5690708425785','','Clear','High','Calm','n/a','n/a','16K102593','2025-08-28','15:35:18','7.63','92.87','4.27','-0.00','0.01','25.33','0.01','12.82','6.41','5.70','MMTC001','2025-08-28 07:35:18'),(38,'VFZa4oDN1N','ALIM AIDRUS','ZHAFIRUDDIN','2025-09-23','15:13:13','Schedule','PANTAI SABAK','5064373003230','3.085807','101.5764083','353.7995158386282','','Rainy','High','Moderate Wave','event','lab','22C103391','2025-09-23','15:13:13','7.73','91.32','4.33','-0.00','0.15','23.69','0.10','6.40','3.20','5.77','MMDC003','2025-09-23 07:13:13'),(39,'gXuu8DhtkX','RIFAIE AZHARI','MOHD KAMIR YUSOF','2025-10-01','11:13:39','Schedule','PANTAI BATU BURUK','9556089013383','3.0857551','101.5763949','304.57108848640064','','Clear','High','Calm','','','22C103391','2025-10-01','11:13:39','7.78','91.78','4.37','-0.00','0.17','23.64','0.11','7.84','3.92','4.38','MMTC001','2025-10-01 03:13:39');
/*!40000 ALTER TABLE `tbl_marine_insitu_sampling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marine_sampling_mm1`
--

DROP TABLE IF EXISTS `tbl_marine_sampling_mm1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_marine_sampling_mm1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(10) NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `ans1` int DEFAULT NULL,
  `ans2` int DEFAULT NULL,
  `ans3` int DEFAULT NULL,
  `ans4` int DEFAULT NULL,
  `observation1` text,
  `ans5` int DEFAULT NULL,
  `ans6` int DEFAULT NULL,
  `ans7` int DEFAULT NULL,
  `ans8` int DEFAULT NULL,
  `ans9` int DEFAULT NULL,
  `ans10` int DEFAULT NULL,
  `ans11` int DEFAULT NULL,
  `ans12` int DEFAULT NULL,
  `observation2` text,
  `serial1` varchar(30) DEFAULT NULL,
  `serial2` varchar(30) DEFAULT NULL,
  `serial3` varchar(30) DEFAULT NULL,
  `serial4` varchar(30) DEFAULT NULL,
  `serial5` varchar(30) DEFAULT NULL,
  `serial6` varchar(30) DEFAULT NULL,
  `serial7` varchar(30) DEFAULT NULL,
  `serial8` varchar(30) DEFAULT NULL,
  `serial9` varchar(30) DEFAULT NULL,
  `serial10` varchar(30) DEFAULT NULL,
  `ans13` int DEFAULT NULL,
  `ans14` int DEFAULT NULL,
  `ans15` int DEFAULT NULL,
  `ans16` int DEFAULT NULL,
  `observation3` text,
  `serial11` varchar(30) DEFAULT NULL,
  `serial12` varchar(30) DEFAULT NULL,
  `lastDate1` date DEFAULT NULL,
  `newDate1` date DEFAULT NULL,
  `lastDate2` date DEFAULT NULL,
  `newDate2` date DEFAULT NULL,
  `lastDate3` date DEFAULT NULL,
  `newDate3` date DEFAULT NULL,
  `lastDate4` date DEFAULT NULL,
  `newDate4` date DEFAULT NULL,
  `conductedDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marine_sampling_mm1`
--

LOCK TABLES `tbl_marine_sampling_mm1` WRITE;
/*!40000 ALTER TABLE `tbl_marine_sampling_mm1` DISABLE KEYS */;
INSERT INTO `tbl_marine_sampling_mm1` VALUES (8,'4A7KR1','2025-01-20','2025-01-20','22:07:00','22:07:00','Jamaica',0,0,0,0,'Ok',0,0,1,0,1,1,1,0,'Ok','3','4','4','4','2','4','4','5','4','10',0,1,0,1,'Ok','3','4','2025-01-20','2025-01-20','2025-01-20','2025-01-20','2025-01-20','2025-01-20','2025-01-20','2025-01-20','2025-01-20'),(9,'4A7KR1','2025-01-20','2025-01-20','22:10:00','22:10:00','Jamaica',0,0,0,0,'Ok',1,0,0,0,1,1,0,0,'Ok','11','22','22','33','2','2','4','4','4','4',0,1,0,1,'Ok','1','2','2025-01-20','2025-01-20','2025-01-20','2025-01-20','2025-01-20','2025-01-20','2025-01-20','2025-01-20','2025-01-20'),(10,'4A7KR1','2025-01-20','2025-01-20','22:35:00','22:35:00','Location',0,0,0,0,'ok',0,0,0,1,0,0,0,1,'ok','12','12','12','23','34','34','2','2','2','2',0,1,0,1,'ok','2','1','2025-01-20','2025-01-20','2025-01-20','2025-01-20','2025-01-23','2025-01-08','2025-01-20','2025-01-18','2025-01-20'),(11,'CP83Y21','2025-02-02','2025-01-08','16:35:05','16:59:08','HQ',0,0,0,0,'ok',0,0,0,0,0,0,0,0,'ok','1','-','2','-','3','-','4','-','5','-',0,0,0,0,'ok','6','-','2017-01-01','2025-02-02','2025-02-02','2025-02-02','2025-02-02','2025-02-02','2025-02-02','2025-02-02','2025-02-02'),(12,'4A7KR1','2025-08-14','2025-08-21','04:04:08','17:04:08','Na',0,0,0,0,'Na',0,1,0,1,1,1,0,1,'Na','20','21','22','24','25','40','30','40','20','30',0,0,0,0,'Na','34','45','2025-08-13','2025-08-19','2025-08-14','2025-08-15','2025-08-19','2025-08-22','2025-08-20','2025-08-06','2025-08-30'),(13,'7R8PX15','2025-09-23','2025-09-03','11:35:06','18:30:09','hq',0,1,1,1,'jii',1,1,1,1,1,1,1,1,'ok','jhui','u578','7ijh','hgu','uhh','hoij','jgh','j6ij','hdhj','nvi',1,1,1,1,'nok','joji','jyjkj','2025-09-10','2025-09-23','2025-09-03','2025-09-23','2025-09-02','2025-09-23','2025-09-23','2025-09-03','2025-09-23'),(14,'FG9JI16','2025-10-01','2025-09-30','09:30:08','21:29:08','gfd',0,1,0,0,'ggsd',0,0,0,0,0,0,0,0,'Test ok','355','445','111','vvbxx','222','vbxc','333','vvxc','555','bht4',0,0,0,0,'ok clean','3652gbccg','6erbb','2025-10-22','2025-10-24','2025-10-21','2025-10-21','2025-10-04','2025-10-02','2025-10-16','2025-10-25','2025-10-07'),(15,'4A7KR1','2025-10-16','2025-10-03','14:39:08','18:39:08','Headquarters',0,0,0,0,'Na',0,0,0,0,0,0,0,0,'Na','ddj','jj','20','30','20','20','20','40','40','22',0,1,0,1,'na','dd','jjj','2025-10-16','2025-10-22','2025-10-16','2025-10-30','2025-10-16','2025-10-03','2025-10-14','2025-10-30','2025-10-16');
/*!40000 ALTER TABLE `tbl_marine_sampling_mm1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marine_sampling_mm1_backup`
--

DROP TABLE IF EXISTS `tbl_marine_sampling_mm1_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_marine_sampling_mm1_backup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(10) NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `ans1` int DEFAULT NULL,
  `ans2` int DEFAULT NULL,
  `ans3` int DEFAULT NULL,
  `ans4` int DEFAULT NULL,
  `observation1` text,
  `ans5` int DEFAULT NULL,
  `ans6` int DEFAULT NULL,
  `ans7` int DEFAULT NULL,
  `ans8` int DEFAULT NULL,
  `ans9` int DEFAULT NULL,
  `ans10` int DEFAULT NULL,
  `ans11` int DEFAULT NULL,
  `ans12` int DEFAULT NULL,
  `observation2` text,
  `serial1` varchar(30) DEFAULT NULL,
  `serial2` varchar(30) DEFAULT NULL,
  `serial3` varchar(30) DEFAULT NULL,
  `serial4` varchar(30) DEFAULT NULL,
  `serial5` varchar(30) DEFAULT NULL,
  `serial6` varchar(30) DEFAULT NULL,
  `serial7` varchar(30) DEFAULT NULL,
  `serial8` varchar(30) DEFAULT NULL,
  `serial9` varchar(30) DEFAULT NULL,
  `serial10` varchar(30) DEFAULT NULL,
  `ans13` int DEFAULT NULL,
  `ans14` int DEFAULT NULL,
  `ans15` int DEFAULT NULL,
  `ans16` int DEFAULT NULL,
  `observation3` text,
  `serial11` varchar(30) DEFAULT NULL,
  `serial12` varchar(30) DEFAULT NULL,
  `lastDate1` date DEFAULT NULL,
  `newDate1` date DEFAULT NULL,
  `lastDate2` date DEFAULT NULL,
  `newDate2` date DEFAULT NULL,
  `lastDate3` date DEFAULT NULL,
  `newDate3` date DEFAULT NULL,
  `lastDate4` date DEFAULT NULL,
  `newDate4` date DEFAULT NULL,
  `conductedDate` date DEFAULT NULL,
  `verifiedName` varchar(30) DEFAULT NULL,
  `verifiedDesignation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `verifiedDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marine_sampling_mm1_backup`
--

LOCK TABLES `tbl_marine_sampling_mm1_backup` WRITE;
/*!40000 ALTER TABLE `tbl_marine_sampling_mm1_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_marine_sampling_mm1_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marine_sampling_mm2`
--

DROP TABLE IF EXISTS `tbl_marine_sampling_mm2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_marine_sampling_mm2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(20) NOT NULL,
  `serialNumber` varchar(20) NOT NULL,
  `version` varchar(10) NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `location` varchar(50) NOT NULL,
  `ph7_reading` varchar(10) NOT NULL,
  `ph7_before` varchar(10) NOT NULL,
  `ph7_after` varchar(10) NOT NULL,
  `ph10_reading` varchar(10) NOT NULL,
  `ph10_before` varchar(10) NOT NULL,
  `ph10_after` varchar(10) NOT NULL,
  `sp_before` varchar(10) NOT NULL,
  `sp_after` varchar(10) NOT NULL,
  `ntu_before` varchar(10) NOT NULL,
  `ntu_after` varchar(10) NOT NULL,
  `dis_before` varchar(10) NOT NULL,
  `dis_after` varchar(10) NOT NULL,
  `conductedDate` date DEFAULT NULL,
  `observation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marine_sampling_mm2`
--

LOCK TABLES `tbl_marine_sampling_mm2` WRITE;
/*!40000 ALTER TABLE `tbl_marine_sampling_mm2` DISABLE KEYS */;
INSERT INTO `tbl_marine_sampling_mm2` VALUES (3,'4A7KR1','df','rt','2025-01-20','2025-01-20','00:00:00','00:00:00','rr','5','5','6','8','6','5','8','9','5','9','5','8','2025-01-20','dd'),(4,'4A7KR1','2234','2.3','2025-01-20','2025-01-30','00:00:00','01:00:00','Taiping','5.2','3.2','2.2','5.2','5.2','5.2','4.5','5.2','5.2','4.5','3.5','2.5','2025-01-20','Ok'),(5,'4A7KR1','123','025','2025-08-13','2025-08-30','17:20:17','17:20:25','Na','2','2','3','4','2','4','5','2','5','3','2','4','2025-08-30','Na'),(6,'7R8PX15','7886uu','uu7','2025-09-23','2025-09-23','11:39:20','16:39:25','hq','7','5','9','5','6','6','6','65','55','65','55','985','2025-09-23','kjij'),(7,'FG9JI16','vddvb','2gg3','2025-10-02','2025-10-02','21:56:12','22:56:22','bdxbb','848','8555','85898','59.9','8549','8925','5895','54904','8846.5','89.','845.8','8511.0','2025-10-02','hzx'),(8,'4A7KR1','12345','123','2025-10-16','2025-10-16','18:33:16','18:33:27','Headquarters','7.55','4.55','3.55','4.555','4.55','5.55','2.58','5.44','4.22','2.55','5.55','3.555','2025-10-16','OK'),(9,'4A7KR1','aa','bb','2025-10-22','2025-10-28','18:07:07','21:25:14','Headquarters','2','2','2','5','5','5','6','6','3','3','2','1','2025-10-16','NS'),(10,'4A7KR1','aa','hh','2025-10-15','2025-10-22','17:08:29','20:25:35','Headquarters','5','3','3','2','2','2','2','2','3','3','2','1','2025-10-16','N/A'),(11,'4A7KR1','ss','hh','2025-10-16','2025-10-17','18:15:52','18:15:58','Regional','5','6','6','6','6','6','6','6','9','6','9','9','2025-10-16','na'),(12,'4A7KR1','sddh','hhh','2025-10-16','2025-10-22','10:20:30','17:20:37','Headquarters','2','2','2','3','3','3','4','4','5','5','6','7','2025-10-16','Na'),(13,'4A7KR1','ss','bb','2025-10-16','2025-10-17','07:30:53','09:30:00','Regional','2','3','3','3','3','3','2','2','2','2','2','3','2025-10-16','Na'),(14,'4A7KR1','aaa','ddd','2025-10-16','2025-10-17','14:09:51','18:09:59','Headquarters','2','2','2','3','3','3','4','4','5','5','6','6','2025-10-16','NA'),(15,'4A7KR1','ddd','sdd','2025-10-16','2025-10-29','17:23:14','18:23:20','Regional','5','3','3','3','3','3','2','2','2','2','2','2','2025-10-16','na');
/*!40000 ALTER TABLE `tbl_marine_sampling_mm2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marine_sampling_mm2_backup`
--

DROP TABLE IF EXISTS `tbl_marine_sampling_mm2_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_marine_sampling_mm2_backup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(20) NOT NULL,
  `serialNumber` varchar(20) NOT NULL,
  `version` varchar(10) NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `location` varchar(50) NOT NULL,
  `ph7_reading` varchar(10) NOT NULL,
  `ph7_before` varchar(10) NOT NULL,
  `ph7_after` varchar(10) NOT NULL,
  `ph10_reading` varchar(10) NOT NULL,
  `ph10_before` varchar(10) NOT NULL,
  `ph10_after` varchar(10) NOT NULL,
  `sp_before` varchar(10) NOT NULL,
  `sp_after` varchar(10) NOT NULL,
  `ntu_before` varchar(10) NOT NULL,
  `ntu_after` varchar(10) NOT NULL,
  `dis_before` varchar(10) NOT NULL,
  `dis_after` varchar(10) NOT NULL,
  `conductedDate` date DEFAULT NULL,
  `observation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `verifiedName` varchar(40) NOT NULL,
  `verifiedDesignation` varchar(40) NOT NULL,
  `verifiedDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marine_sampling_mm2_backup`
--

LOCK TABLES `tbl_marine_sampling_mm2_backup` WRITE;
/*!40000 ALTER TABLE `tbl_marine_sampling_mm2_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_marine_sampling_mm2_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marine_sampling_mm3`
--

DROP TABLE IF EXISTS `tbl_marine_sampling_mm3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_marine_sampling_mm3` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(10) NOT NULL,
  `ans17` int NOT NULL,
  `remarks17` text,
  `ans18` int NOT NULL,
  `remarks18` text,
  `ans19` int NOT NULL,
  `remarks19` text,
  `ans20` int NOT NULL,
  `remarks20` text,
  `ans21` int NOT NULL,
  `remarks21` text,
  `ans22` int NOT NULL,
  `remarks22` text,
  `ans23` int NOT NULL,
  `remarks23` text,
  `ans24` int NOT NULL,
  `remarks24` text,
  `ans25` int NOT NULL,
  `remarks25` text,
  `ans26` int NOT NULL,
  `remarks26` text,
  `ans27` int NOT NULL,
  `remarks27` text,
  `ans28` int NOT NULL,
  `remarks28` text,
  `ans29` int NOT NULL,
  `remarks29` text,
  `ans30` int NOT NULL,
  `remarks30` text,
  `ans31` int NOT NULL,
  `remarks31` text,
  `ans32` int NOT NULL,
  `remarks32` text,
  `ans33` int NOT NULL,
  `remarks33` text,
  `ans34` int NOT NULL,
  `remarks34` text,
  `ans35` int NOT NULL,
  `remarks35` text,
  `ans36` int NOT NULL,
  `remarks36` text,
  `ans37` int NOT NULL,
  `remarks37` text,
  `ans38` int NOT NULL,
  `remarks38` text,
  `ans39` int NOT NULL,
  `remarks39` text,
  `ans40` int NOT NULL,
  `remarks40` text,
  `ans41` int NOT NULL,
  `remarks41` text,
  `ans42` int NOT NULL,
  `remarks42` text,
  `ans43` int NOT NULL,
  `remarks43` text,
  `ans44` int NOT NULL,
  `remarks44` text,
  `ans45` int NOT NULL,
  `remarks45` text,
  `ans46` int NOT NULL,
  `remarks46` text,
  `ans47` int NOT NULL,
  `remarks47` text,
  `ans48` int NOT NULL,
  `remarks48` text,
  `ans49` int NOT NULL,
  `remarks49` text,
  `inspectedDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marine_sampling_mm3`
--

LOCK TABLES `tbl_marine_sampling_mm3` WRITE;
/*!40000 ALTER TABLE `tbl_marine_sampling_mm3` DISABLE KEYS */;
INSERT INTO `tbl_marine_sampling_mm3` VALUES (4,'4A7KR1',0,'ok',0,'ok',0,'ok',0,'ok',0,'ok',0,'om',0,'om',1,'ok',1,'ok',1,'ok',1,'okok',1,'ok',1,'ok',1,'ok',1,'k',1,'m',1,'om',1,'ok',1,'k',1,'ok',1,'ok',1,'ok',1,'ok',1,'ok',1,'m',0,'ok',1,'ok',1,'om',1,'ok',1,'ok',1,'ok',1,'ok',1,'om','2025-01-20'),(5,'4A7KR1',1,'ok',1,'ok',1,'ok',1,'ok',1,'ok',1,'k',1,'m',1,'d',1,'n',1,'n',1,'n',1,'n',1,'n',1,'n',1,'n',1,'n',1,'n',1,'m',1,'m',1,'m',1,'f',1,'n',1,'n',1,'n',1,'n',1,'n',1,'n',1,'n',1,'n',1,'m',1,'m',1,'m',1,'m','2025-01-20'),(6,'7R8PX15',0,'na',0,'na',0,'na',1,'na',1,'na',1,'na',0,'na',0,'na',1,'na',0,'na',0,'n',1,'n',1,'n',1,'n',1,'j',0,'n',0,'n',1,'n',1,'j',1,'n',1,'n',0,'n',1,'n',0,'n',1,'n',1,'h',1,'g',1,'f',0,'a',1,'a',1,'a',1,'a',0,'a','2025-04-07'),(7,'4A7KR1',0,'Na',0,'Na',0,'na',0,'Na',0,'Na',0,'n',1,'n',0,'n',0,'nA',0,'na',0,'na',0,'na',1,'na',1,'na',0,'na',0,'na',1,'na',0,'na',0,'na',1,'na',0,'na',0,'na',1,'na',1,'na',1,'na',0,'na',0,'na',1,'Na',1,'Na',1,'Na',1,'Na',1,'Na',1,'Na','2025-08-21'),(8,'4A7KR1',0,'n',1,'nana',1,'na',1,'na',1,'na',1,'na',1,'na',1,'na',1,'na',1,'na',1,'nan',1,'nana',1,'na',1,'na',1,'na',1,'na',1,'na',1,'na',1,'na',1,'na',1,'na',1,'na',1,'na',1,'na',1,'na',1,'na',1,'na',1,'na',1,'nana',1,'na',1,'na',1,'na',1,'na','2025-08-27'),(9,'7R8PX15',1,'uuoo',1,'huu',1,'uu',1,'fx',1,'gg',1,'hb',1,'hh',1,'gb',1,'bh',1,'bb',1,'bkv',1,'cgjh',1,'hgj',1,'vbj',1,'hbb',1,'hvxg',1,'bnkh',1,'ncbnb',1,'bnc',1,'bvgh',1,'vbj',1,'bxbn',1,'bvxc',1,'bfx',1,'hh ',1,'bxv ',1,'hcj',1,'bfhj',1,'jcvj',1,'bcv',1,'hcbn',1,'bncg',1,'jncv','2025-09-23'),(10,'FG9JI16',0,'bc',0,'v',0,'vvx',0,'cv',0,'vvc',1,'bcc',0,'bxc',0,'bx',0,'bc',0,'bcc',0,'bb',0,'bc',0,'bc',0,'vc',0,'vc',0,'hc',0,'hc',0,'bcc',0,'bcc',0,'hcc',0,'hcc',0,'hcc',0,'hcc',0,'cxb',0,'hvc',0,'hc',0,'gc',0,'hcc',0,'gc',0,'cxvv',0,'gcc',0,'hc',0,'ok','2025-10-02'),(11,'4A7KR1',0,'',0,'',0,'',0,'',1,'',0,'',1,'',1,'',1,'',1,'',1,'',1,'',1,'',0,'',0,'',1,'',1,'',1,'',1,'',1,'',1,'',0,'',1,'',1,'',1,'',1,'',1,'',1,'',1,'',1,'',1,'',0,'',0,'','2025-10-16');
/*!40000 ALTER TABLE `tbl_marine_sampling_mm3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marine_sampling_mm3_backup`
--

DROP TABLE IF EXISTS `tbl_marine_sampling_mm3_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_marine_sampling_mm3_backup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(10) NOT NULL,
  `ans17` int NOT NULL,
  `remarks17` text,
  `ans18` int NOT NULL,
  `remarks18` text,
  `ans19` int NOT NULL,
  `remarks19` text,
  `ans20` int NOT NULL,
  `remarks20` text,
  `ans21` int NOT NULL,
  `remarks21` text,
  `ans22` int NOT NULL,
  `remarks22` text,
  `ans23` int NOT NULL,
  `remarks23` text,
  `ans24` int NOT NULL,
  `remarks24` text,
  `ans25` int NOT NULL,
  `remarks25` text,
  `ans26` int NOT NULL,
  `remarks26` text,
  `ans27` int NOT NULL,
  `remarks27` text,
  `ans28` int NOT NULL,
  `remarks28` text,
  `ans29` int NOT NULL,
  `remarks29` text,
  `ans30` int NOT NULL,
  `remarks30` text,
  `ans31` int NOT NULL,
  `remarks31` text,
  `ans32` int NOT NULL,
  `remarks32` text,
  `ans33` int NOT NULL,
  `remarks33` text,
  `ans34` int NOT NULL,
  `remarks34` text,
  `ans35` int NOT NULL,
  `remarks35` text,
  `ans36` int NOT NULL,
  `remarks36` text,
  `ans37` int NOT NULL,
  `remarks37` text,
  `ans38` int NOT NULL,
  `remarks38` text,
  `ans39` int NOT NULL,
  `remarks39` text,
  `ans40` int NOT NULL,
  `remarks40` text,
  `ans41` int NOT NULL,
  `remarks41` text,
  `ans42` int NOT NULL,
  `remarks42` text,
  `ans43` int NOT NULL,
  `remarks43` text,
  `ans44` int NOT NULL,
  `remarks44` text,
  `ans45` int NOT NULL,
  `remarks45` text,
  `ans46` int NOT NULL,
  `remarks46` text,
  `ans47` int NOT NULL,
  `remarks47` text,
  `ans48` int NOT NULL,
  `remarks48` text,
  `ans49` int NOT NULL,
  `remarks49` text,
  `inspectedDate` date DEFAULT NULL,
  `verifiedName1` varchar(40) NOT NULL,
  `designationName1` varchar(50) NOT NULL,
  `verifiedDate1` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marine_sampling_mm3_backup`
--

LOCK TABLES `tbl_marine_sampling_mm3_backup` WRITE;
/*!40000 ALTER TABLE `tbl_marine_sampling_mm3_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_marine_sampling_mm3_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marine_station`
--

DROP TABLE IF EXISTS `tbl_marine_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_marine_station` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stationID` varchar(20) NOT NULL,
  `stateID` varchar(10) NOT NULL,
  `categoryID` varchar(10) NOT NULL,
  `locationName` varchar(50) NOT NULL,
  `longitude` decimal(10,5) NOT NULL,
  `latitude` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marine_station`
--

LOCK TABLES `tbl_marine_station` WRITE;
/*!40000 ALTER TABLE `tbl_marine_station` DISABLE KEYS */;
INSERT INTO `tbl_marine_station` VALUES (1,'MMRE001','PER','ES','KUALA SUNGAI PERLIS',100.11900,6.40007),(2,'MMRE002','PER','ES','KUALA SUNGAI BARU',100.15000,6.33242),(3,'MMKC001','KDH','CT','PANTAI MERDEKA',100.36900,5.66976),(4,'MMKC002','KDH','CT','LANGKAWI  ISLAND  RESORT',99.86100,6.29669),(5,'MMKC003','KDH','CT','PANTAI KOK',99.67910,6.36607),(6,'MMKC004','KDH','CT','PANTAI KUAH',99.85142,6.31355),(7,'MMKC005','KDH','CT','PANTAI PASIR TENGKORAK',99.72610,6.43123),(8,'MMKC006','KDH','CT','PANTAI TELUK BURAU',99.66850,6.36391),(9,'MMKC007','KDH','CT','PANTAI TELUK NIBONG',99.70220,6.36022),(10,'MMKC008','KDH','CT','PANTAI TENGAH',99.72750,6.27975),(11,'MMKC009','KDH','CT','PANTAI BERAS BASAH',99.71800,6.23086),(12,'MMKD001','KDH','ISD','PANTAI KUAH',99.85110,6.30881),(13,'MMKD002','KDH','ISD','PANTAI CHENANG',99.71660,6.30267),(14,'MMKD003','KDH','ISD','TANJUNG RHU',99.82180,6.45681),(15,'MMKD004','KDH','ISD','TELUK EWA',99.75500,6.43425),(16,'MMKE001','KDH','ES','KUALA KEDAH',100.28200,6.10482),(17,'MMKE002','KDH','ES','KUALA JERLUN',100.23800,6.21050),(18,'MMKE003','KDH','ES','KUALA SEGANTANG GARAM',100.37300,5.67869),(19,'MMKE004','KDH','ES','KUALA SG MUDA',100.34100,5.57735),(20,'MMKM001','KDH','ISP','PAYAR',100.04200,6.06353),(21,'MMKM002','KDH','ISP','KACA',100.05200,6.07172),(22,'MMKM003','KDH','ISP','SEGANTANG (SIGANTANG)',99.92610,6.04353),(23,'MMKP001','KDH','ISD','PASIR',99.79490,6.45350),(24,'MMKP002','KDH','ISD','GASING',99.79020,6.45413),(25,'MMKP003','KDH','ISD','DANGLI',99.77760,6.44737),(26,'MMKP004','KDH','ISD','PERAK',98.93600,5.68145),(27,'MMKR001','KDH','ISR','SINGA BESAR',99.73540,6.22604),(28,'MMKR002','KDH','ISR','DAYANG BUNTING',99.78030,6.20725),(29,'MMKR003','KDH','ISR','DAYANG BUNTING 2',99.78149,6.20311),(30,'MMPC001','PEN','CT','GERTAK SANGGOL',100.19400,5.27732),(31,'MMPC002','PEN','CT','KAWASAN PERINDUSTRIAN  BAYAN LEPAS I',100.30100,5.30951),(32,'MMPC003','PEN','CT','PANTAI BERSIH',100.37800,5.44167),(33,'MMPC004','PEN','CT','PANTAI MIAMI',100.26800,5.47923),(34,'MMPC005','PEN','CT','PANTAI PASIR PANJANG',100.18300,5.29722),(35,'MMPC006','PEN','CT','BATU FERINGGI (CASUARINA)',100.24200,5.46944),(36,'MMPC007','PEN','CT','LUAR PANTAI TELUK BAHANG',100.21300,5.46200),(37,'MMPC008','PEN','CT','PERSIARAN GURNEY',100.31300,5.43730),(38,'MMPC009','PEN','CT','RUMAH PAM BARU PERAI',100.38700,5.35417),(39,'MMPC010','PEN','CT','RUMAH PAM LAMA PERAI',100.31000,5.33445),(40,'MMPC011','PEN','CT','SELAT  PP SELATAN (JELUTONG)',100.32900,5.39108),(41,'MMPC012','PEN','CT','TANJUNG BUNGAH',100.28100,5.46742),(42,'MMPC013','PEN','CT','TANJUNG BUNGAH 2',100.29400,5.46856),(43,'MMPC014','PEN','CT','BATU MAUNG 2',100.29231,5.28783),(44,'MMPC015','PEN','CT','PANTAI SUNGAI BATU FERRINGHI 3',100.25339,5.48074),(45,'MMPC016','PEN','CT','PANTAI SUNGAI BATU FERRINGHI 2',100.24900,5.47719),(46,'MMPC017','PEN','CT','PANTAI SUNGAI BATU FERRINGHI 1',100.24400,5.47280),(47,'MMPD001','PEN','ISD','BATU MAUNG',100.29200,5.28524),(48,'MMPD002','PEN','ISD','PADANG KOTA',100.34600,5.41921),(49,'MMPD003','PEN','ISD','TELUK BAHANG',100.21400,5.46083),(50,'MMPE001','PEN','ES','KUALA SUNGAI JAWI',100.41700,5.28056),(51,'MMPE002','PEN','ES','KUALA SUNGAI JURU',100.40600,5.33889),(52,'MMPE003','PEN','ES','KUALA SUNGAI KERIAN',100.42400,5.17034),(53,'MMPE004','PEN','ES','KUALA SUNGAI PINANG',100.33500,5.40000),(54,'MMPE005','PEN','ES','KUALA SUNGAI PERAI',100.36700,5.38333),(55,'MMPE006','PEN','ES','KUALA SUNGAI TENGAH',100.42500,5.21139),(56,'MMPE007','PEN','ES','KUALA SUNGAI PINANG (BALIK PULAU)',100.18600,5.39155),(57,'MMPP001','PEN','ISD','TANJUNG TOKONG',100.31500,5.45629),(58,'MMPR001','PEN','ISR','AMAN',100.39400,5.26743),(59,'MMPR002','PEN','ISR','JEREJAK',100.31700,5.33333),(60,'MMPR003','PEN','ISR','KENDI',100.18200,5.23038),(61,'MMPR004','PEN','ISR','RIMAU',100.27300,5.24415),(62,'MMPR005','PEN','ISR','GEDONG',100.39000,5.27346),(63,'MMAC001','PRK','CT','PANTAI PASIR BOGAK',100.55100,4.21176),(64,'MMAC002','PRK','CT','PANTAI TELUK DALAM',100.55600,4.25000),(65,'MMAC003','PRK','CT','PANTAI TELUK BATIK',100.60600,4.18732),(66,'MMAC004','PRK','CT','PANTAI TANJUNG BATU',100.59500,4.42659),(67,'MMAC005','PRK','CT','TELUK RUBIAH',100.62200,4.16016),(68,'MMAC006','PRK','CT','PANTAI DAMAI LAUT',100.58900,4.26412),(69,'MMAC007','PRK','CT','TELUK SENANGIN',100.58200,4.29387),(70,'MMAC008','PRK','CT','PANTAI PASIR PANJANG',100.56800,4.34797),(71,'MMAE001','PRK','ES','KUALA SUNGAI MANJUNG',100.59400,4.24841),(72,'MMAE002','PRK','ES','KUALA SUNGAI GULA',100.46700,4.92269),(73,'MMAE003','PRK','ES','KUALA SUNGAI KURAU',100.41500,4.99481),(74,'MMAE004','PRK','ES','KUALA SUNGAI TANJUNG PIANDANG',100.37400,5.07661),(75,'MMAE005','PRK','ES','KUALA SUNGAI SEPETANG',100.58800,4.77560),(76,'MMAE006','PRK','ES','KUALA SUNGAI PERAK',100.75600,4.00002),(77,'MMAP001','PRK','ISD','TUKUN PERAK',100.56100,4.11689),(78,'MMAR001','PRK','ISR','PANTAI TELUK GEDONG',100.58100,4.19421),(79,'MMAR002','PRK','ISR','PANTAI PUTERI DEWI',100.54400,4.25314),(80,'MMAR003','PRK','ISR','PANGKOR LAUT',100.54700,4.20159),(81,'MMAR004','PRK','ISR','SEMBILAN',100.54400,4.00853),(82,'MMBC001','SEL','CT','PANTAI BAGAN LALANG',101.68700,2.60540),(83,'MMBC002','SEL','CT','PANTAI MORIB',101.43900,2.75000),(84,'MMBC003','SEL','CT','SELAT PULAU BABI',101.27300,3.00766),(85,'MMBC004','SEL','CT','SELAT KLANG UTARA',101.35100,3.02818),(86,'MMBC005','SEL','CT','PANTAI REMIS',101.30200,3.20073),(87,'MMBC006','SEL','CT','PANTAI KLANANG',101.40900,2.78927),(88,'MMBE001','SEL','ES','KUALA SUNGAI SEPANG',101.71300,2.59575),(89,'MMBE002','SEL','ES','KUALA SUNGAI SEPANG (KECIL)',101.68500,2.60987),(90,'MMBE003','SEL','ES','KUALA SUNGAI SEPANG (KAWALAN)',101.69000,2.59749),(91,'MMBE004','SEL','ES','KUALA SUNGAI LANGAT (JUGRA)',101.40700,2.80240),(92,'MMBE005','SEL','ES','KUALA SUNGAI KLANG',101.38900,3.00191),(93,'MMBE006','SEL','ES','KUALA SUNGAI LANGAT (LUMUT)',101.30900,2.96680),(94,'MMBE007','SEL','ES','KUALA SUNGAI BULOH',101.30000,3.25504),(95,'MMBE008','SEL','ES','KUALA SUNGAI SELANGOR',101.22500,3.33333),(96,'MMBE009','SEL','ES','KUALA SUNGAI TENGI',101.16700,3.39618),(97,'MMBE010','SEL','ES','KUALA SUNGAI BERNAM',100.81700,3.85000),(98,'MMBR001','SEL','ISR','PULAU KETAM',101.25800,3.01800),(99,'MMBR002','SEL','ISR','ANGSA',101.21900,3.18556),(100,'MMBR003','SEL','ISR','LUMUT',101.36200,2.99850),(101,'MMNC001','NS','CT','BAGAN PINANG',101.82800,2.50823),(102,'MMNC002','NS','CT','TELOK SINTING',101.94100,2.41522),(103,'MMNC003','NS','CT','PORT DICKSON  BANDAR',101.79800,2.52001),(104,'MMNC004','NS','CT','PORT DICKSON  BATU 4',101.83700,2.49971),(105,'MMNC005','NS','CT','PORT DICKSON  BATU 5',101.83800,2.49585),(106,'MMNC006','NS','CT','PORT DICKSON  BATU 6',101.84700,2.48079),(107,'MMNC007','NS','CT','PORT  DICKSON  BATU 7',101.85100,2.46123),(108,'MMNC008','NS','CT','PORT  DICKSON  BATU 8',101.85400,2.45415),(109,'MMNC009','NS','CT','PORT DICKSON  BATU 10',101.85600,2.41706),(110,'MMNC010','NS','CT','PORT DICKSON  JANAKUASA TNB',101.79800,2.54237),(111,'MMNC011','NS','CT','TELOK PELANDUK',101.89200,2.41663),(112,'MMNC012','NS','CT','PANTAI CERMIN',101.86100,2.41499),(113,'MMNC013','NS','CT','PANTAI TELUK KEMANG',101.85400,2.44777),(114,'MMNC014','NS','CT','PANTAI SERI PURNAMA',101.85500,2.44313),(115,'MMNE001','NS','ES','KUALA SUNGAI LINGGI',101.97300,2.39101),(116,'MMNE002','NS','ES','KUALA SUNGAI LUKUT',101.78800,2.57802),(117,'MMNP001','NS','ISD','ARANG',101.79500,2.51647),(118,'MMMC001','MEL','CT','PANTAI ROMBANG',102.14800,2.22728),(119,'MMMC002','MEL','CT','PANTAI KUNDUR',102.14000,2.24319),(120,'MMMC003','MEL','CT','PANTAI TANJUNG BIDARA',102.08800,2.29075),(121,'MMMC004','MEL','CT','TELUK GONG',102.05600,2.33983),(122,'MMMC005','MEL','CT','PULAU MELAKA POINT A(I)',102.24300,2.17992),(123,'MMMC006','MEL','CT','PULAU MELAKA POINT A(II)',102.25200,2.17644),(124,'MMMC007','MEL','CT','PULAU MELAKA POINT B(I)',102.24800,2.18332),(125,'MMMC008','MEL','CT','PULAU MELAKA POINT B(II)',102.25500,2.18130),(126,'MMMC009','MEL','CT','PANTAI KLEBANG',102.19100,2.21607),(127,'MMME001','MEL','ES','KUALA SUNGAI MELAKA',102.24200,2.18572),(128,'MMME002','MEL','ES','KUALA SUNGAI SRI MELAKA',102.19800,2.20647),(129,'MMME003','MEL','ES','KUALA SUNGAI MERLIMAU',102.41400,2.12689),(130,'MMME004','MEL','ES','KUALA SUNGAI KESANG',102.48900,2.09814),(131,'MMME005','MEL','ES','KUALA SUNGAI SEBATU',102.46200,2.10753),(132,'MMME006','MEL','ES','KUALA SUNGAI MELAKA 2',102.24323,2.18687),(133,'MMME007','MEL','ES','KUALA SUNGAI BARU',102.03300,2.35244),(134,'MMME008','MEL','ES','KUALA SUNGAI LEREH',102.17600,2.22003),(135,'MMMR001','MEL','ISR','UPEH (POINT A)',102.20500,2.19489),(136,'MMMR002','MEL','ISR','UPEH (POINT B)',102.20300,2.18975),(137,'MMMR003','MEL','ISR','BESAR (POINT A)',102.33200,2.11669),(138,'MMMR004','MEL','ISR','BESAR (POINT B)',102.32200,2.10672),(139,'MMMR005','MEL','ISR','UNDAN (POINT A)',102.33200,2.04894),(140,'MMMR006','MEL','ISR','UNDAN (POINT B)',102.33500,2.04728),(141,'MMJC001','JHR','CT','TANJUNG BIN',103.55700,1.32456),(142,'MMJC002','JHR','CT','PELABUHAN TANJUNG PELEPAS',103.54300,1.35361),(143,'MMJC003','JHR','CT','HADAPAN JABATAN LAUT',103.53500,1.38275),(144,'MMJC004','JHR','CT','PANTAI STULANG LAUT',103.77900,1.46722),(145,'MMJC005','JHR','CT','JETI TELUK JAWA',103.84800,1.47354),(146,'MMJC006','JHR','CT','PELABUHAN PASIR  GUDANG',103.89900,1.43255),(147,'MMJC007','JHR','CT','HADAPAN HSAJB',103.74600,1.45644),(148,'MMJC008','JHR','CT','PANTAI LIDO',103.72500,1.46556),(149,'MMJC009','JHR','CT','PANTAI TELUK  MAHKOTA',104.10500,1.89781),(150,'MMJC010','JHR','CT','PANTAI TANJUNG LEMAN',104.00700,2.14528),(151,'MMJC011','JHR','CT','PANTAI SRI PANTAI',103.88900,2.37917),(152,'MMJC012','JHR','CT','TANJUNG MERAK',104.11000,1.36275),(153,'MMJC013','JHR','CT','TANJUNG PENGELIH',104.08900,1.37075),(154,'MMJC014','JHR','CT','PANTAI TANJONG  STAPA',104.13600,1.34250),(155,'MMJC015','JHR','CT','PANTAI TELUK GOREK',103.80500,2.58250),(156,'MMJC016','JHR','CT','PANTAI AIR PAPAN',103.83300,2.51806),(157,'MMJC017','JHR','CT','JETI KUKUP',103.44100,1.32500),(158,'MMJC018','JHR','CT','PASIR GOGOK',104.10000,1.41744),(159,'MMJC019','JHR','CT','TANJUNG BUAI',104.04500,1.49669),(160,'MMJC020','JHR','CT','PANTAI DESARU',104.26100,1.54667),(161,'MMJC021','JHR','CT','TANJUNG SEPANG',104.10800,1.39192),(162,'MMJC022','JHR','CT','TANJUNG PENYUSUP',104.28000,1.37025),(163,'MMJC023','JHR','CT','PANTAI SUNGAI LURUS',103.02900,1.72833),(164,'MMJC024','JHR','CT','PUNGGUR',103.09800,1.68472),(165,'MMJC025','JHR','CT','PANTAI PENYABUNG',103.75000,2.64874),(166,'MMJC026','JHR','CT','TANJUNG RESANG',103.81700,2.57397),(167,'MMJC027','JHR','CT','TANJUNG BALAU',104.26100,1.61269),(168,'MMJC028','JHR','CT','BATU LAYAR',104.29600,1.44611),(169,'MMJC029','JHR','CT','TANJUNG SENGAT',104.03000,1.56073),(170,'MMJE001','JHR','ES','KUALA SUNGAI SEGGET',103.76600,1.45583),(171,'MMJE002','JHR','ES','KUALA SUNGAI LALOH',103.92400,1.43514),(172,'MMJE003','JHR','ES','KUALA SUNGAI JOHOR',104.02300,1.48444),(173,'MMJE004','JHR','ES','KUALA SUNGAI BATU PAHAT',102.89000,1.81451),(174,'MMJE005','JHR','ES','KUALA SUNGAI MUAR',102.55200,2.05212),(175,'MMJE006','JHR','ES','KUALA SUNGAI MERSING',103.84200,2.43681),(176,'MMJM001','JHR','ISP','DAYANG',104.50400,2.47022),(177,'MMJM002','JHR','ISP','NANGA BESAR',104.12900,2.27064),(178,'MMJM003','JHR','ISP','SIBU TENGAH',104.09600,2.18192),(179,'MMJM004','JHR','ISP','PEMANGGIL',104.32600,2.56908),(180,'MMJP001','JHR','ISD','KUKUP',103.43700,1.32831),(181,'MMJP002','JHR','ISD','PISANG',103.26300,1.46828),(182,'MMJR001','JHR','ISR','SETINDAN',103.85800,2.47664),(183,'MMJR002','JHR','ISR','BABI TENGAH',103.95500,2.47549),(184,'MMCC001','PHG','CT','PANTAI CHERATING (CLUB MED) A',103.40900,4.14197),(185,'MMCC002','PHG','CT','PANTAI CHERATING (CLUB MED) B',103.40600,4.12786),(186,'MMCC003','PHG','CT','PANTAI CHERATING (LEGEND) A',103.38600,4.11167),(187,'MMCC004','PHG','CT','PANTAI CHERATING (LEGEND) B',103.38600,4.10461),(188,'MMCC005','PHG','CT','PANTAI MUHIBBAH BALOK A',103.38500,3.94163),(189,'MMCC006','PHG','CT','PANTAI MUHIBBAH BALOK B',103.37500,3.92353),(190,'MMCC007','PHG','CT','PANTAI BATU HITAM A',103.36800,3.88600),(191,'MMCC008','PHG','CT','PANTAI BATU HITAM B',103.36900,3.89031),(192,'MMCC009','PHG','CT','PANTAI BERSERAH A',103.36800,3.88228),(193,'MMCC010','PHG','CT','PANTAI BERSERAH B',103.36900,3.87600),(194,'MMCC011','PHG','CT','PANTAI TELUK CEMPEDAK A',103.37400,3.81667),(195,'MMCC012','PHG','CT','PANTAI TELUK CEMPEDAK B',103.37400,3.81019),(196,'MMCC013','PHG','CT','PANTAI TELUK GELORA A',103.36400,3.80303),(197,'MMCC014','PHG','CT','PANTAI TELUK GELORA B',103.35100,3.80278),(198,'MMCC015','PHG','CT','PANTAI SEPAT A',103.33900,3.70150),(199,'MMCC016','PHG','CT','PANTAI SEPAT B',103.34000,3.69886),(200,'MMCC017','PHG','CT','PANTAI LEGENDA (A)',103.41300,3.61798),(201,'MMCC018','PHG','CT','PANTAI LEGENDA (B)',103.46700,3.55029),(202,'MMCC019','PHG','CT','PANTAI KUALA API API',103.43300,3.28119),(203,'MMCC020','PHG','CT','PANTAI TANJUNG  BATU',103.44700,3.20503),(204,'MMCC021','PHG','CT','PANTAI CHENDUR',103.41400,4.16419),(205,'MMCC022','PHG','CT','PANTAI LANJUT',103.47200,2.84378),(206,'MMCE001','PHG','ES','KUALA KUANTAN',103.34300,3.80482),(207,'MMCE002','PHG','ES','KUALA ROMPIN KECIL',103.48500,2.82218),(208,'MMCE003','PHG','ES','KUALA PAHANG',103.47200,3.53044),(209,'MMCE004','PHG','ES','KUALA NENASI',103.44100,3.08099),(210,'MMCE005','PHG','ES','KUALA SUNGAI BALOK',103.37700,3.93492),(211,'MMCM001','PHG','ISP','PULAU TIOMAN (KG. GENTING)',104.11700,2.77500),(212,'MMCM002','PHG','ISP','PULAU TIOMAN (TELUK SALANG)',104.15200,2.87637),(213,'MMCM003','PHG','ISP','TULAI',104.10700,2.90532),(214,'MMCM004','PHG','ISP','LABAS',104.04700,2.89506),(215,'MMCM005','PHG','ISP','CEBEH',104.09900,2.93018),(216,'MMCM006','PHG','ISP','SEPUI',104.06700,2.88598),(217,'MMCM007','PHG','ISP','SEMBILANG',103.91000,2.67006),(218,'MMCM008','PHG','ISP','SERI BUAT',103.89800,2.70019),(219,'MMCM009','PHG','ISP','TOKONG  BAHARA',104.06500,2.66424),(220,'MMTC001','TGG','CT','PANTAI BATU BURUK',103.15600,5.32654),(221,'MMTC002','TGG','CT','PANTAI BUKIT KELUANG',102.61000,5.80676),(222,'MMTC003','TGG','CT','PANTAI CHENDERING',103.18900,5.27104),(223,'MMTC004','TGG','CT','PANTAI RANTAU ABANG',103.39300,4.87237),(224,'MMTC005','TGG','CT','KIPC UTARA',103.45200,4.61285),(225,'MMTC006','TGG','CT','KIPC TENGAH',103.46600,4.58227),(226,'MMTC007','TGG','CT','KIPC SELATAN',103.47700,4.55360),(227,'MMTC008','TGG','CT','RHU 10',102.77400,5.65011),(228,'MMTC009','TGG','CT','TOK JEMBAL',103.10700,5.40042),(229,'MMTC010','TGG','CT','KELULUT',103.22600,5.19043),(230,'MMTC011','TGG','CT','TELUK KETAPANG',103.11800,5.38492),(231,'MMTC012','TGG','CT','KUALA ABANG',103.42000,4.82743),(232,'MMTC013','TGG','CT','PANTAI TELUK KALONG',103.47800,4.28333),(233,'MMTC014','TGG','CT','PANTAI SURA',103.42400,4.77019),(234,'MMTC015','TGG','CT','TANJUNG BIDARA',103.43800,4.78506),(235,'MMTC016','TGG','CT','PANTAI KEMASIK',103.44900,4.45595),(236,'MMTE001','TGG','ES','KUALA SUNGAI BESUT',102.55800,5.83411),(237,'MMTE002','TGG','ES','KUALA SUNGAI DUNGUN',103.42800,4.78108),(238,'MMTE003','TGG','ES','KUALA SUNGAI IBAI',103.17600,5.28899),(239,'MMTE004','TGG','ES','KUALA SUNGAI KERTEH',103.45600,4.51441),(240,'MMTE005','TGG','ES','KUALA SUNGAI MARANG',103.21400,5.20944),(241,'MMTE006','TGG','ES','KUALA SUNGAI PAKA',103.44400,4.65500),(242,'MMTE007','TGG','ES','KUALA SUNGAI SETIU',102.76400,5.65189),(243,'MMTE008','TGG','ES','KUALA SUNGAI TERENGGANU',103.15200,5.33979),(244,'MMTE009','TGG','ES','KUALA SUNGAI KEMAMAN/CHUKAI',103.44700,4.22637),(245,'MMTE010','TGG','ES','TIOXIDE UTARA (KG. BUKIT KUANG, KIJAL)',103.47900,4.27831),(246,'MMTE011','TGG','ES','TIOXIDE TENGAH (PUPUK SEMANGAT, KIJAL)',103.47800,4.27050),(247,'MMTE012','TGG','ES','TIOXIDE SELATAN (KSB, T. KALONG)',103.46600,4.25114),(248,'MMTE013','TGG','ES','PULAU DUYUNG',103.12900,5.33489),(249,'MMTM001','TGG','ISP','PERHENTIAN  BESAR (SOUTH)',102.73600,5.89448),(250,'MMTM002','TGG','ISP','PERHENTIAN  BESAR (WEST)',102.75100,5.88931),(251,'MMTM003','TGG','ISP','PERHENTIAN KECIL',102.72500,5.91792),(252,'MMTM004','TGG','ISP','REDANG (NORTH)',103.03700,5.77561),(253,'MMTM005','TGG','ISP','REDANG (SOUTH)',103.00300,5.75253),(254,'MMTM006','TGG','ISP','LANG TENGAH',102.89000,5.79247),(255,'MMTM007','TGG','ISP','PINANG',103.00300,5.74797),(256,'MMTM008','TGG','ISP','EKOR TEBU',103.02900,5.74044),(257,'MMTM009','TGG','ISP','LIMA',103.05900,5.76986),(258,'MMTM010','TGG','ISP','KAPAS',103.26000,5.21697),(259,'MMTR001','TGG','ISR','GEMIA',103.26100,5.23106),(260,'MMDC001','KEL','CT','PANTAI SERI TUJUH',102.11700,6.22804),(261,'MMDC002','KEL','CT','PANTAI CAHAYA BULAN',102.27700,6.19646),(262,'MMDC003','KEL','CT','PANTAI SABAK',102.32200,6.17962),(263,'MMDC004','KEL','CT','PANTAI IRAMA BACHOK',102.40000,6.06686),(264,'MMDC005','KEL','CT','PANTAI BISIKAN  BAYU',102.51800,5.86259),(265,'MMDC006','KEL','CT','PANTAI MELAWI',102.44100,5.99465),(266,'MMDE001','KEL','ES','KUALA SUNGAI GOLOK',102.09000,6.23286),(267,'MMDE002','KEL','ES','KUALA SUNGAI KELANTAN',102.23700,6.21685),(268,'MMDE003','KEL','ES','KUALA SUNGAI PENGKALAN CHEPA',102.30300,6.18574),(269,'MMDE004','KEL','ES','KUALA SUNGAI PENGKALAN DATU',102.34400,6.16928),(270,'MMDE005','KEL','ES','KUALA SUNGAI KEMASIN',102.37100,6.13006),(271,'MMDE006','KEL','ES','KUALA SUNGAI SEMERAK',102.48600,5.89734),(272,'MMDP001','KEL','ISD','PANJANG',102.25800,6.20700),(273,'MMDP002','KEL','ISD','KUNDUR',102.29200,6.18946),(274,'MMSC001','SBH','CT','PANTAI TELUK BRUNEI 1',115.52000,5.14579),(275,'MMSC002','SBH','CT','PANTAI TELUK BRUNEI 2',115.52800,5.11798),(276,'MMSC003','SBH','CT','PANTAI TELUK BRUNEI 3',115.49600,5.16107),(277,'MMSC004','SBH','CT','PANTAI TELUK BRUNEI 4',115.47200,5.17585),(278,'MMSC005','SBH','CT','PANTAI TELUK BRUNEI 5',115.43500,5.20352),(279,'MMSC006','SBH','CT','PANTAI TELUK BRUNEI 6',115.52700,5.09419),(280,'MMSC007','SBH','CT','BORNEO GOLF  SEAWATER',115.78400,5.55000),(281,'MMSC008','SBH','CT','PANTAI MANIS PAPAR',115.89300,5.74425),(282,'MMSC009','SBH','CT','PANTAI MELINSUNG',115.97500,5.80474),(283,'MMSC010','SBH','CT','PANTAI TANJUNG ARU (ROLL SKATING)',116.01700,5.93302),(284,'MMSC011','SBH','CT','PANTAI TANJUNG ARU (NO. 3)',116.01500,5.88876),(285,'MMSC012','SBH','CT','PANTAI LOK KAWI',116.02700,5.86013),(286,'MMSC013','SBH','CT','PANTAI DALIT TUARAN',116.16600,6.18875),(287,'MMSC014','SBH','CT','MANGROVE  PARADISE',116.22100,6.25857),(288,'MMSC015','SBH','CT','PANTAI SABANDAR',116.17500,6.20353),(289,'MMSC016','SBH','CT','PANTAI BAKBAK KUDAT',116.84200,6.94565),(290,'MMSC017','SBH','CT','PASIR PUTIH SANDAKAN',118.08600,5.82423),(291,'MMSC018','SBH','CT','PANTAI TLDM',118.12700,5.83896),(292,'MMSC019','SBH','CT','PANTAI BATU SAPI',118.04000,5.79512),(293,'MMSC020','SBH','CT','PANTAI ULU TUNGKU',118.89000,5.01293),(294,'MMSC021','SBH','CT','PANTAI SARINA KUNAK',118.28400,4.66139),(295,'MMSC022','SBH','CT','PANTAI KG. LAMAK',118.23673,4.96997),(296,'MMSC023','SBH','CT','PANTAI TINAGAT',117.98400,4.22278),(297,'MMSC024','SBH','CT','PANTAI TANJUNG ARU (REST LIDO)',116.00800,5.91084),(298,'MMSE001','SBH','ES','KUALA PENYU',115.60500,5.57273),(299,'MMSE002','SBH','ES','MUARA SUNGAI INANAM',116.11000,6.01272),(300,'MMSM001','SBH','ISP','SAPI',116.01000,6.00727),(301,'MMSM002','SBH','ISP','KALAMPUNIAN  BESAR',115.67600,5.74821),(302,'MMSP001','SBH','ISD','SELINGAN',118.05900,6.17535),(303,'MMSP002','SBH','ISD','GULISAN',118.05600,6.14957),(304,'MMSP003','SBH','ISD','BAKUNGAN  KECIL',118.10900,6.16391),(305,'MMSR001','SBH','ISR','GAYA',116.05100,6.01346),(306,'MMSR002','SBH','ISR','MABUL',118.63300,4.24877),(307,'MMSR003','SBH','ISR','SIPADAN (N)',118.62800,4.11766),(308,'MMSR004','SBH','ISR','SIPADAN (W)',118.62600,4.11417),(309,'MMSR005','SBH','ISR','MANUKAN',116.00500,5.97335),(310,'MMSR006','SBH','ISR','TIGA',115.65100,5.71661),(311,'MMSR007','SBH','ISR','KAPALAI',118.68400,4.22746),(312,'MMSR008','SBH','ISR','MOLLEANGAN BESAR',117.04400,7.08223),(313,'MMSR009','SBH','ISR','BANGGI (SOUTH)',117.08800,7.11169),(314,'MMSR010','SBH','ISR','BANGGI (EAST)',117.10700,7.13697),(315,'MMSR011','SBH','ISR','BALAMBANGAN',116.91300,7.23201),(316,'MMSR012','SBH','ISR','MANTANANI BESAR',116.35800,6.70493),(317,'MMLC001','WL','CT','PULAU PAPAN',115.26800,5.25490),(318,'MMLC002','WL','CT','KIAMSAM',115.17500,5.25526),(319,'MMLC003','WL','CT','SUNGAI PAGAR',115.16700,5.27341),(320,'MMLC004','WL','CT','LAYANG-LAYANGAN',115.19300,5.33422),(321,'MMLC005','WL','CT','TANJUNG ARU',115.24400,5.35060),(322,'MMLD001','WL','ISD','POHON BATU',115.22900,5.38053),(323,'MMLD002','WL','ISD','WATER FRONT',115.24900,5.27275),(324,'MMLD003','WL','ISD','LUBUKTEMIANG',115.24800,5.37187),(325,'MMLD004','WL','ISD','RANCA-RANCA',115.24000,5.24192),(326,'MMLM001','WL','ISP','KURAMAN',115.14000,5.21875),(327,'MMLM002','WL','ISP','RUSUKAN BESAR',115.14200,5.19000),(328,'MMLM003','WL','ISP','RUSUKAN KECIL',115.14800,5.20178),(329,'MMQC001','SWK','CT','PANTAI SEMATAN',109.77500,1.82722),(330,'MMQC002','SWK','CT','PANTAI PANDAN',109.86500,1.76553),(331,'MMQC003','SWK','CT','PANTAI PASIR PUTIH',110.48700,1.66153),(332,'MMQC004','SWK','CT','PANTAI BAKO',110.44200,1.71806),(333,'MMQC005','SWK','CT','PANTAI DAMAI',110.30800,1.75026),(334,'MMQC006','SWK','CT','PANTAI TANJUNG KEMBANG',111.09600,1.82444),(335,'MMQC007','SWK','CT','PANTAI HARMONI MUKAH',112.05600,2.90972),(336,'MMQC008','SWK','CT','PANTAI TANJUNG  BATU',113.04300,3.21064),(337,'MMQC009','SWK','CT','PANTAI LIKAU',113.14800,3.34426),(338,'MMQC010','SWK','CT','PANTAI EMAS',113.22400,3.44106),(339,'MMQC011','SWK','CT','PANTAI PIASAU',113.99400,4.43787),(340,'MMQC012','SWK','CT','PANTAI BRIGHTON',113.97000,4.37878),(341,'MMQC013','SWK','CT','PANTAI ESPLANED',113.96100,4.32458),(342,'MMQC014','SWK','CT','PANTAI BERAYA',113.87700,4.19248),(343,'MMQC015','SWK','CT','PANTAI BUNGAI',113.78200,4.06457),(344,'MMQC016','SWK','CT','PANTAI BELAWAI',111.20800,2.22094),(345,'MMQC017','SWK','CT','PANTAI MUKAH',112.16700,2.93974),(346,'MMQC018','SWK','CT','TANJUNG KIDURONG',113.04900,3.25601),(347,'MMQC019','SWK','CT','PASIR PANDAK',110.30100,1.69883),(348,'MMQC020','SWK','CT','RAMBUNGAN',110.10800,1.70326),(349,'MMQC021','SWK','CT','SRI TANJUNG LAWAS',115.24200,4.97162),(350,'MMQC022','SWK','CT','LUAK',113.93800,4.28427),(351,'MMQC023','SWK','CT','PASIR PANJANG',112.83600,3.09593),(352,'MMQE001','SWK','ES','KUALA SUNGAI SEMANTAN',109.78100,1.81153),(353,'MMQE002','SWK','ES','KUALA SUNGAI SARAWAK',110.49000,1.64103),(354,'MMQE003','SWK','ES','KUALA SUNGAI BAKO',110.42300,1.68306),(355,'MMQE004','SWK','ES','KUALA SUNGAI SANTUBONG',110.29700,1.70127),(356,'MMQE005','SWK','ES','KUALA BATANG KRIAN (KABONG)',111.09900,1.78889),(357,'MMQE006','SWK','ES','KUALA BATANG REJANG',111.18900,2.12278),(358,'MMQE007','SWK','ES','KUALA MUKAH',112.09500,2.91466),(359,'MMQE008','SWK','ES','KUALA BATANG KEMENA',113.02900,3.18150),(360,'MMQE009','SWK','ES','KUALA TANJUNG SIMILAJAU',113.30100,3.51792),(361,'MMQE010','SWK','ES','KUALA SUNGAI PANIPAH',113.26100,3.46967),(362,'MMQE011','SWK','ES','KUALA PANTAI NYALAU',113.38300,3.64283),(363,'MMQE012','SWK','ES','KUALA SUNGAI BARAM',113.96900,4.59700),(364,'MMQE013','SWK','ES','KUALA SUNGAI MIRI',113.97800,4.39932),(365,'MMQE014','SWK','ES','KUALA SUNGAI TRUSAN',111.87800,2.87553),(366,'MMQP001','SWK','ISD','SATANG',110.16500,1.77766),(367,'MMQP002','SWK','ISD','TALANGTALANG  KECIL',109.76700,1.89347),(368,'MMQP003','SWK','ISD','TALANGTALANG  BESAR',109.77700,1.91103);
/*!40000 ALTER TABLE `tbl_marine_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marine_study_sampling`
--

DROP TABLE IF EXISTS `tbl_marine_study_sampling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_marine_study_sampling` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reportID` varchar(20) NOT NULL,
  `firstSampler` varchar(50) NOT NULL,
  `secondSampler` varchar(50) NOT NULL,
  `dateController` date DEFAULT NULL,
  `timeController` time DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `stationName` varchar(20) NOT NULL,
  `sampleCode` varchar(20) NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `distance` text NOT NULL,
  `remarks` text NOT NULL,
  `weather` varchar(20) NOT NULL,
  `tide` varchar(20) NOT NULL,
  `sea` varchar(20) NOT NULL,
  `eventRemarks` text,
  `labRemarks` text,
  `sondeID` varchar(20) NOT NULL,
  `dateCapture` date DEFAULT NULL,
  `timeCapture` time DEFAULT NULL,
  `oxygen1` varchar(20) DEFAULT NULL,
  `oxygen2` varchar(20) DEFAULT NULL,
  `pH` varchar(20) DEFAULT NULL,
  `salinity` varchar(20) DEFAULT NULL,
  `ec` varchar(20) DEFAULT NULL,
  `temperature` varchar(20) DEFAULT NULL,
  `tds` varchar(20) DEFAULT NULL,
  `turbidity` varchar(20) DEFAULT NULL,
  `tss` varchar(20) DEFAULT NULL,
  `battery` varchar(20) DEFAULT NULL,
  `stationID` varchar(20) DEFAULT NULL,
  `timestamp` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marine_study_sampling`
--

LOCK TABLES `tbl_marine_study_sampling` WRITE;
/*!40000 ALTER TABLE `tbl_marine_study_sampling` DISABLE KEYS */;
INSERT INTO `tbl_marine_study_sampling` VALUES (1,'7b3Iv06s7n','MOHD KAMIR YUSOF','RIFAIE AZHARI','2025-08-14','20:59:31','Schedule','KUALA SUNGAI DUNGUN','-1','5.3547657','103.0903389','73.94584937476967','','Rainer','Low','Moderate Wave','','','A123','2025-08-14','20:59:31','10','15','15','15','15','15','15','15','10','20','MMTE002','2025-08-14 12:59:31'),(2,'EKKCQuMo6a','MOHD KAMIR YUSOF','ALIM AIDRUS','2025-08-14','21:09:15','Schedule','KUALA SUNGAI IBAI','-1','5.3547589','103.0903397','11.97611713842141','','Clear','High','Calm','','','A123','2025-08-14','21:09:15','10','15','15','15','15','15','15','15','10','20','MMTE003','2025-08-14 13:09:15'),(3,'e3TA9AN8qc','MOHD KAMIR YUSOF','ALIM AIDRUS','2025-08-14','21:30:34','Schedule','KUALA SUNGAI DUNGUN','-1','5.3547514','5.3547514','73.9453461873344','','5.3547514','103.0903234','Rainer','','','A123','2025-08-14','21:30:34','10','15','15','15','15','15','15','15','10','','MMTE002','2025-08-14 13:30:34'),(4,'rr9BoOXV86','RIFAIE AZHARI','SYAMIL AZIM','2025-10-08','15:35:23','Schedule','PANTAI BATU BURUK','9556089013383','3.2348004','101.6396287','286.99680996438','','Clear','High','Calm','ojojono','fyz5omni','24L002704','2025-10-08','15:35:23','5.63','73.56','5.71','-0.00','0.28','29.25','0.17','11.49','5.75','5.86','MMTC001','2025-10-08 07:35:23');
/*!40000 ALTER TABLE `tbl_marine_study_sampling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marine_tarball`
--

DROP TABLE IF EXISTS `tbl_marine_tarball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_marine_tarball` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reportID` varchar(50) NOT NULL,
  `firstSampler` varchar(50) NOT NULL,
  `secondSampler` varchar(50) NOT NULL,
  `dateSample` date DEFAULT NULL,
  `timeSample` time DEFAULT NULL,
  `stationID` varchar(20) NOT NULL,
  `classifyID` varchar(10) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `getLatitude` varchar(20) NOT NULL,
  `getLongitude` varchar(20) NOT NULL,
  `distance` varchar(20) NOT NULL,
  `optionalName1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `optionalName2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `optionalName3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `optionalName4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marine_tarball`
--

LOCK TABLES `tbl_marine_tarball` WRITE;
/*!40000 ALTER TABLE `tbl_marine_tarball` DISABLE KEYS */;
INSERT INTO `tbl_marine_tarball` VALUES (203,'FN2HQP3BB9','MOHD KAMIR YUSOF','ZHAFIRUDDIN','2025-08-14','11:43:50','MMTE006','NS','4.65500','103.44400','5.354763','103.0903281','87.11599040487225','','','','','2025-08-14 03:43:50'),(204,'J39P1K6GWD','ALIM AIDRUS','RIFAIE AZHARI','2025-08-18','08:39:47','MMTE006','SD','4.65500','103.44400','3.0858888','101.5764482','270.8628746562213','op1','op2','op3','op3','2025-08-18 00:39:47'),(205,'3RLDN56W6V','ALIM AIDRUS','RIFAIE AZHARI','2025-08-25','10:49:47','MMCE002','NS','2.82218','103.48500','3.085769','101.5764162','213.95966835567836','op1','','','','2025-08-25 02:49:47'),(206,'HJ4T0RPIO8','RIFAIE AZHARI','ZHAFIRUDDIN','2025-09-11','15:46:48','MMTC003','SD','5.27104','103.18900','3.0856385','101.5762957','301.71895019085514','test','test','test','test','2025-09-11 07:46:48'),(207,'ALW3S1SS1L','RIFAIE AZHARI','ZHAFIRUDDIN','2025-09-11','21:31:52','MMCC010','NO','3.87600','103.36900','3.234807','101.6396238','204.74173902931932','test','test','test','test','2025-09-11 13:31:52'),(208,'QFK8MN4MQ3','RIFAIE AZHARI','ZHAFIRUDDIN','2025-09-11','21:45:34','MMTC003','SD','5.27104','103.18900','3.2348183','101.6396412','284.2167847198388','Test','Test','Test','Test','2025-09-11 13:45:34'),(209,'94OL5FOCOS','RIFAIE AZHARI','ZHAFIRUDDIN','2025-09-12','14:12:50','MMTC003','SD','5.27104','103.18900','3.0857741','101.5763788','301.7013358603007','','','','','2025-09-12 06:12:50'),(210,'U2QVW9R74H','ALIM AIDRUS','SYAMIL AZIM','2025-09-23','11:20:19','MMJM004','SD','2.56908','104.32600','3.085635','101.5763082','310.7332769965309','','','','','2025-09-23 03:20:19'),(211,'N0BE8Q8A9A','ALIM AIDRUS','SYAMIL AZIM','2025-09-23','11:02:39','MMTE006','SD','4.65500','103.44400','3.0856475','101.5763056','270.8922798332736','op1','','','','2025-09-23 03:02:39'),(212,'0B125FB4NR','ALIM AIDRUS','ZHAFIRUDDIN','2025-09-23','11:05:59','MMTC010','NS','5.19043','103.22600','3.0856305','101.5762944','297.0638237367646','','','','','2025-09-23 03:05:59'),(213,'LB3G4LTTG5','ALIM AIDRUS','RIFAIE AZHARI','2025-09-24','14:57:35','MMTC010','NS','5.19043','103.22600','3.0858232','101.5764089','297.0391095105462','ooio','','','','2025-09-24 06:57:35'),(214,'N3IBWO0PPT','RIFAIE AZHARI','SYAMIL AZIM','2025-09-24','14:44:24','MMTC003','NO','5.27104','103.18900','3.0857329','101.5764142','301.70270136359375','','','','','2025-09-24 06:44:24'),(215,'QNT9RFTLWM','RIFAIE AZHARI','ZHAFIRUDDIN','2025-10-14','15:55:03','MMTC003','NO','5.27104','103.18900','3.0858326','101.5764084','301.69414761395706','','','','','2025-10-14 07:55:03');
/*!40000 ALTER TABLE `tbl_marine_tarball` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_river_is_sampling`
--

DROP TABLE IF EXISTS `tbl_river_is_sampling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_river_is_sampling` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reportID` varchar(20) NOT NULL,
  `firstSampler` varchar(50) NOT NULL,
  `secondSampler` varchar(50) NOT NULL,
  `dateController` date DEFAULT NULL,
  `timeController` time DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `stationName` varchar(50) NOT NULL,
  `sampleCode` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `distance` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remarks` text NOT NULL,
  `weather` varchar(50) NOT NULL,
  `eventRemark` varchar(50) NOT NULL,
  `labRemark` varchar(50) NOT NULL,
  `sondeID` varchar(50) NOT NULL,
  `dateCapture` date DEFAULT NULL,
  `timeCapture` time DEFAULT NULL,
  `oxygen1` varchar(50) NOT NULL,
  `oxygen2` varchar(50) NOT NULL,
  `pH` varchar(50) NOT NULL,
  `ec` text NOT NULL,
  `salinity` varchar(50) NOT NULL,
  `temp` varchar(50) NOT NULL,
  `turbidity` varchar(50) NOT NULL,
  `flowrate` varchar(50) NOT NULL,
  `totalDissolve` varchar(50) NOT NULL,
  `totalSuspended` varchar(50) NOT NULL,
  `battery` varchar(50) NOT NULL,
  `stationID` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_river_is_sampling`
--

LOCK TABLES `tbl_river_is_sampling` WRITE;
/*!40000 ALTER TABLE `tbl_river_is_sampling` DISABLE KEYS */;
INSERT INTO `tbl_river_is_sampling` VALUES (1,'OTke8sUOox','MOHD KAMIR YUSOF','ALIM AIDRUS','2025-08-17','17:08:22','Triennial','KEMAMAN','-1','5.3547358','103.090318','129.00476119449155','','Rainer','','','A123','2025-08-17','17:08:22','10','15','15','15','15','15','15','10','20','10','20','4TKMM008','2025-08-17 09:08:22');
/*!40000 ALTER TABLE `tbl_river_is_sampling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_river_manual_sampling`
--

DROP TABLE IF EXISTS `tbl_river_manual_sampling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_river_manual_sampling` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reportID` varchar(20) NOT NULL,
  `firstSampler` varchar(50) NOT NULL,
  `secondSampler` varchar(50) NOT NULL,
  `dateController` date DEFAULT NULL,
  `timeController` time DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `stationName` varchar(50) NOT NULL,
  `sampleCode` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `distance` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `remarks` text NOT NULL,
  `weather` varchar(50) NOT NULL,
  `eventRemark` varchar(50) NOT NULL,
  `labRemark` varchar(50) NOT NULL,
  `sondeID` varchar(50) NOT NULL,
  `dateCapture` date DEFAULT NULL,
  `timeCapture` time DEFAULT NULL,
  `oxygen1` varchar(50) NOT NULL,
  `oxygen2` varchar(50) NOT NULL,
  `pH` varchar(50) NOT NULL,
  `ec` text NOT NULL,
  `salinity` varchar(50) NOT NULL,
  `temp` varchar(50) NOT NULL,
  `turbidity` varchar(50) NOT NULL,
  `flowrate` varchar(50) NOT NULL,
  `totalDissolve` varchar(50) NOT NULL,
  `totalSuspended` varchar(50) NOT NULL,
  `battery` varchar(50) NOT NULL,
  `stationID` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_river_manual_sampling`
--

LOCK TABLES `tbl_river_manual_sampling` WRITE;
/*!40000 ALTER TABLE `tbl_river_manual_sampling` DISABLE KEYS */;
INSERT INTO `tbl_river_manual_sampling` VALUES (20,'dbQX0aHPYV','MOHD KAMIR YUSOF','SYAMIL AZIM','2025-08-15','20:12:08','Triennial','BESUT','-1','5.3547687','103.0903414','78.80976318263397','','Clear','','','A123','2025-08-15','20:12:08','10','15','15','15','15','15','15','10','20','10','20','4TBST002','2025-08-15 12:12:08'),(21,'t4W7D2LdCn','MOHD KAMIR YUSOF','ALIM AIDRUS','2025-08-15','20:16:41','Triennial','GOLOK','-1','5.3547624','103.0903465','144.09249825717438','','Rainer','','','A123','2025-08-15','20:16:41','10','15','15','15','15','15','15','10','20','10','20','4DGLK002','2025-08-15 12:16:41'),(22,'gURMsVt8Re','MOHD KAMIR YUSOF','RIFAIE AZHARI','2025-08-15','20:25:13','Triennial','GOLOK','-1','5.3547652','103.0903399','144.31063168478758','','Rainer','','','A123','2025-08-15','20:25:13','10','15','15','15','15','15','15','10','20','10','20','4DGLK003','2025-08-15 12:25:13');
/*!40000 ALTER TABLE `tbl_river_manual_sampling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_river_station`
--

DROP TABLE IF EXISTS `tbl_river_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_river_station` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stationID` varchar(20) NOT NULL,
  `stateID` varchar(10) NOT NULL,
  `basinName` varchar(40) NOT NULL,
  `riverName` varchar(40) NOT NULL,
  `latitude` decimal(10,5) NOT NULL,
  `longitude` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1354 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_river_station`
--

LOCK TABLES `tbl_river_station` WRITE;
/*!40000 ALTER TABLE `tbl_river_station` DISABLE KEYS */;
INSERT INTO `tbl_river_station` VALUES (1,'1ABNM001','PRK','BERNAM','BERNAM',3.87208,100.93196),(2,'1ABNM002','PRK','BERNAM','BERNAM',3.76937,100.98190),(3,'1ABNM003','PRK','BERNAM','BERNAM',3.74443,101.14251),(4,'1ABNM004','PRK','BERNAM','BERNAM',3.80430,101.36160),(5,'1ABNM005','PRK','BERNAM','BERNAM',3.73852,101.44580),(6,'1ABNM006','PRK','BERNAM','BERNAM',3.67787,101.52089),(7,'1ABNM007','PRK','BERNAM','SLIM',3.81069,101.37203),(8,'1ABNM008','PRK','BERNAM','SLIM',3.82617,101.40824),(9,'1ABNM009','PRK','BERNAM','TROLAK',3.88000,101.38451),(10,'1ABNM010','PRK','BERNAM','TROLAK',3.89069,101.37752),(11,'1ABNM011','PRK','BERNAM','SLIM',3.74823,101.49761),(12,'1ABNM012','PRK','BERNAM','INKI',3.68145,101.53026),(13,'1ABNM014','PRK','BERNAM','TROLAK',3.94535,101.41906),(14,'1ABNM015','PRK','BERNAM','GELINTING',3.90391,101.50343),(15,'1ABRU001','PRK','BRUAS','BRUAS',4.48030,100.63633),(16,'1ABRU002','PRK','BRUAS','ROTAN',4.55795,100.73460),(17,'1ABRU003','PRK','BRUAS','ROTAN',4.53818,100.71908),(18,'1ABRU004','PRK','BRUAS','BRUAS',4.50131,100.77949),(19,'1ABRU005','PRK','BRUAS','BRUAS',4.53688,100.77766),(20,'1ABRU006','PRK','BRUAS','DANDANG',4.48611,100.78350),(21,'1ABRU007','PRK','BRUAS','LICIN',4.54714,100.78373),(22,'1AKER011','PRK','KERIAN','SELAMA',5.22019,100.69146),(23,'1AKER012','PRK','KERIAN','SELAMA',5.21928,100.69507),(24,'1AKER013','PRK','KERIAN','SEMANG',5.08634,100.53056),(25,'1AKER015','PRK','KERIAN','TERUSAN BAGAN SERAI',5.01286,100.54345),(26,'1AKER016','PRK','KERIAN','SELAMA',5.26123,100.85450),(27,'1AKRU001','PRK','KURAU','ARA',5.03298,100.78862),(28,'1AKRU002','PRK','KURAU','KURAU',5.00734,100.53276),(29,'1AKRU003','PRK','KURAU','KURAU',4.97647,100.60239),(30,'1AKRU004','PRK','KURAU','KURAU',4.96057,100.65066),(31,'1AKRU005','PRK','KURAU','KURAU',5.01268,100.73032),(32,'1AKRU006','PRK','KURAU','ARA',5.09142,100.85226),(33,'1AKRU007','PRK','KURAU','AIR HITAM',5.01563,100.84207),(34,'1APRK001','PRK','PERAK','PERAK',4.02346,100.86864),(35,'1APRK002','PRK','PERAK','BIDOR',4.01259,101.04321),(36,'1APRK003','PRK','PERAK','BATANG PADANG',4.01795,101.08726),(37,'1APRK004','PRK','PERAK','BIDOR',3.99974,101.13104),(38,'1APRK005','PRK','PERAK','BIDOR',4.11032,101.28744),(39,'1APRK006','PRK','PERAK','BATANG PADANG',4.19900,101.26313),(40,'1APRK007','PRK','PERAK','SUNGKAI',3.99062,101.31333),(41,'1APRK008','PRK','PERAK','SUNGKAI',3.98723,101.12425),(42,'1APRK009','PRK','PERAK','BATANG PADANG',4.13489,101.14539),(43,'1APRK010','PRK','PERAK','SUNGKAI MATI',3.97479,101.09731),(44,'1APRK011','PRK','PERAK','SUNGKAI MATI',3.93489,101.14092),(45,'1APRK012','PRK','PERAK','CHENDERIANG',4.26266,101.23695),(46,'1APRK013','PRK','PERAK','CHENDERIANG',4.23141,101.21837),(47,'1APRK014','PRK','PERAK','KLAH',3.95176,101.33198),(48,'1APRK015','PRK','PERAK','KLAH',3.95166,101.33548),(49,'1APRK016','PRK','PERAK','KLIAN BARU',4.16070,101.27507),(50,'1APRK017','PRK','PERAK','KLIAN BARU',4.15597,101.27317),(51,'1APRK018','PRK','PERAK','PERAK',3.96629,100.97510),(52,'1APRK019','PRK','PERAK','KINTA',4.11826,101.02185),(53,'1APRK020','PRK','PERAK','PERAK',4.17987,100.92980),(54,'1APRK021','PRK','PERAK','PINJI',4.60727,101.13941),(55,'1APRK022','PRK','PERAK','KINTA',4.66867,101.15631),(56,'1APRK023','PRK','PERAK','PARI',4.70723,101.09385),(57,'1APRK024','PRK','PERAK','KINTA',4.62109,101.10476),(58,'1APRK025','PRK','PERAK','KINTA',4.53992,101.05978),(59,'1APRK026','PRK','PERAK','SEROKAI',4.53960,101.05725),(60,'1APRK027','PRK','PERAK','SEROKAI',4.55247,101.04453),(61,'1APRK028','PRK','KERIAN','SELAMA',4.58278,101.07022),(62,'1APRK029','PRK','PERAK','TUMBOH',4.23075,101.00143),(63,'1APRK030','PRK','PERAK','RAIA',4.53359,101.13688),(64,'1APRK031','PRK','PERAK','KAMPAR',4.37466,101.16424),(65,'1APRK032','PRK','PERAK','KAMPAR',4.33590,101.09930),(66,'1APRK033','PRK','PERAK','KINTA',4.32297,101.07094),(67,'1APRK034','PRK','PERAK','KINTA',4.46386,101.04491),(68,'1APRK035','PRK','PERAK','RAIA',4.47295,101.05578),(69,'1APRK036','PRK','PERAK','PINJI',4.53096,101.07172),(70,'1APRK037','PRK','PERAK','KEPAYANG',4.83971,101.01295),(71,'1APRK038','PRK','PERAK','KEPAYANG',4.84499,100.99384),(72,'1APRK039','PRK','PERAK','PELUS',4.88385,101.00466),(73,'1APRK040','PRK','PERAK','PELUS',4.93827,101.10162),(74,'1APRK041','PRK','PERAK','KERDAH',4.90955,101.09511),(75,'1APRK042','PRK','PERAK','KUANG',4.73091,101.12109),(76,'1APRK043','PRK','PERAK','KANGSAR',4.77016,100.94215),(77,'1APRK044','PRK','PERAK','KANGSAR',4.76976,100.91589),(78,'1APRK045','PRK','PERAK','PERAK',4.76469,100.95689),(79,'1APRK046','PRK','PERAK','CUAR',4.87507,100.90730),(80,'1APRK047','PRK','PERAK','PERAK',5.44757,101.17408),(81,'1APRK048','PRK','PERAK','PERAK',5.09548,100.99490),(82,'1APRK049','PRK','PERAK','PERAK',4.35537,100.87617),(83,'1APRK050','PRK','PERAK','SELUANG',4.30474,100.95954),(84,'1APRK051','PRK','PERAK','PERAK',4.50620,100.92467),(85,'1APRK052','PRK','PERAK','NYAMOK',4.86720,101.09423),(86,'1APRK053','PRK','PERAK','KERDAH',4.87046,101.09938),(87,'1APRK054','PRK','PERAK','SINTANG',4.82684,101.10120),(88,'1APRK055','PRK','PERAK','KINJANG',4.29944,101.25355),(89,'1APRK056','PRK','PERAK','CHEPOR',4.70408,101.07542),(90,'1APRK057','PRK','PERAK','KINTA',4.50850,101.05597),(91,'1APRK058','PRK','PERAK','KINTA',4.27793,101.08252),(92,'1APRK059','PRK','PERAK','PERAK',4.93712,100.90944),(93,'1APRK060','PRK','PERAK','MANONG',4.60526,100.85792),(94,'1APRK061','PRK','PERAK','WOH',4.21731,101.36136),(95,'1APRK062','PRK','PERAK','TESONG',4.01483,101.40987),(96,'1APRK063','PRK','PERAK','KINTA',4.64493,101.24363),(97,'1APRK064','PRK','PERAK','KERBAU',4.82878,101.20137),(98,'1APRK065','PRK','PERAK','PERAK',4.81894,100.96271),(99,'1APRK066','PRK','PERAK','IBOL',5.19603,101.00924),(100,'1APRK067','PRK','PERAK','PULAU',5.33792,101.03312),(101,'1APRK068','PRK','PERAK','BEROK',5.52985,101.13178),(102,'1APRK069','PRK','PERAK','KAMPAR',5.35879,101.16279),(103,'1APRK070','PRK','PERAK','PERAK',4.18029,108.93565),(104,'1APRK071','PRK','PERAK','PERAK',4.31342,100.88664),(105,'1APRK072','PRK','PERAK','PERAK',4.40667,100.88397),(106,'1APRK073','PRK','PERAK','SUNGKAI',3.94956,101.18573),(107,'1APRK074','PRK','PERAK','PERAK',4.38269,100.90172),(108,'1APRK075','PRK','PERAK','SUNGKAI',3.94438,101.27075),(109,'1APRK076','PRK','PERAK','TAPAH',4.63095,101.03971),(110,'1APRK077','PRK','PERAK','BEHRANG',3.79665,101.52744),(111,'1APRK078','PRK','PERAK','KERBAU',4.90668,101.17450),(112,'1APRK079','PRK','PERAK','KANGSAR',4.75049,100.82380),(113,'1APRK080','PRK','PERAK','KAMPAR',4.45523,101.21346),(114,'1APRK081','PRK','PERAK','KLIAN GUNONG',5.15520,100.88463),(115,'1APRK082','PRK','PERAK','PERAK',5.42546,101.21312),(116,'1APRK083','PRK','PERAK','TEJA',4.37928,101.07827),(117,'1APRK084','PRK','PERAK','RUI',5.50536,100.95202),(118,'1APRK085','PRK','PERAK','RUI',5.45940,101.17563),(119,'1APRK086','PRK','PERAK','PERAK',5.55396,101.34599),(120,'1ARHT001','PRK','RAJA HITAM','MANJONG',4.24661,100.65414),(121,'1ARHT002','PRK','RAJA HITAM','MANJONG',4.29423,100.66860),(122,'1ARHT003','PRK','RAJA HITAM','RAJA HITAM',4.37588,100.68937),(123,'1ARHT004','PRK','RAJA HITAM','DERHAKA',4.36406,100.69679),(124,'1ARHT005','PRK','RAJA HITAM','RAJA HITAM',4.38179,100.70550),(125,'1ARHT006','PRK','RAJA HITAM','DERHAKA',4.36591,100.69499),(126,'1ARHT007','PRK','RAJA HITAM','NYIOR',4.61407,100.75973),(127,'1ARHT008','PRK','RAJA HITAM','RAJA HITAM',4.36701,100.79695),(128,'1ASPT001','PRK','SEPETANG','SEPETANG',4.90938,100.66513),(129,'1ASPT002','PRK','SEPETANG','MALAI',4.90030,100.68251),(130,'1ASPT003','PRK','SEPETANG','SEPETANG',4.93574,100.71297),(131,'1ASPT004','PRK','SEPETANG','JANA',4.83218,100.66354),(132,'1ASPT006','PRK','SEPETANG','BATU TEGOH',4.83283,100.73780),(133,'1ASPT007','PRK','SEPETANG','BATU TEGOH',4.84197,100.73198),(134,'1ASPT008','PRK','SEPETANG','LIDIN',4.81974,100.73985),(135,'1ASPT009','PRK','SEPETANG','BATU TEGOH',4.83133,100.70130),(136,'1ASPT010','PRK','SEPETANG','TEMERLOH',4.64062,100.71318),(137,'1ASPT011','PRK','SEPETANG','TEMERLOH',4.64134,100.69093),(138,'1ASPT012','PRK','SEPETANG','BATU TEGOH',4.85380,100.76105),(139,'1ASPT013','PRK','SEPETANG','JANA',4.89715,100.75107),(140,'1ASPT014','PRK','SEPETANG','LIMAU',4.74351,100.70500),(141,'1ASPT015','PRK','SEPETANG','TRONG',4.71365,100.69517),(142,'1ASPT016','PRK','SEPETANG','BATU TEGOH',4.86613,100.76259),(143,'1ASPT017','PRK','SEPETANG','TRONG',4.69369,100.74996),(144,'1ASPT018','PRK','SEPETANG','NYIOR',4.63548,100.76527),(145,'1ASPT019','PRK','SEPETANG','MALAI',4.90807,100.66921),(146,'1ASPT020','PRK','SEPETANG','NYIOR',4.61778,100.71410),(147,'1AWGI001','PRK','WANGI','DERALIK',4.24283,100.69795),(148,'1AWGI002','PRK','WANGI','DERALIK',4.23383,100.71142),(149,'1AWGI003','PRK','WANGI','WANGI',4.25776,100.72783),(150,'1AWGI004','PRK','WANGI','WANGI',4.27295,100.78500),(151,'1KKDH001','KED','KEDAH','KEDAH',6.11839,100.34937),(152,'1KKDH002','KED','KEDAH','PADANG TERAP',6.22191,100.46737),(153,'1KKDH003','KED','KEDAH','PADANG TERAP',6.29031,100.65590),(154,'1KKDH004','KED','KEDAH','PADANG TERAP',6.31319,100.67547),(155,'1KKDH005','KED','KEDAH','PEDU',6.25576,100.61745),(156,'1KKDH006','KED','KEDAH','TEKAI',6.14184,100.67101),(157,'1KKDH007','KED','KEDAH','JANING',6.37285,100.55857),(158,'1KKDH008','KED','KEDAH','PENDANG',5.99381,100.47881),(159,'1KKDH009','KED','KEDAH','PADANG TERAP',6.20270,100.41244),(160,'1KKDH010','KED','KEDAH','TEMIN',6.40432,100.44194),(161,'1KKDH011','KED','KEDAH','AHNING',6.36230,100.69336),(162,'1KKDH012','KED','KEDAH','PADANG TERAP',6.36031,100.71575),(163,'1KKDH013','KED','KEDAH','TERUSAN MADA SELATAN',5.91862,100.47969),(164,'1KKDH014','KED','KEDAH','TERUSAN LENGKUAS',6.20739,100.45109),(165,'1KKDH015','KED','KEDAH','TERUSAN TENGAH',6.15306,100.46574),(166,'1KKDH016','KED','KEDAH','CHANGLUN',6.47632,100.42497),(167,'1KKDH017','KED','KEDAH','NAPOH',6.30596,100.43801),(168,'1KKDH018','KED','KEDAH','SINTOK',6.44519,100.52107),(169,'1KKER001','KED','KERIAN','KERIAN',5.31666,100.77581),(170,'1KKSP001','KED','KISAP','KISAP',6.37235,99.86520),(171,'1KKUA001','KED','KUAH','KUAH',6.32007,99.85091),(172,'1KMBK001','KED','MERBOK','MERBOK',5.68500,100.45741),(173,'1KMBK002','KED','MERBOK','BATU',5.70064,100.45660),(174,'1KMBK003','KED','MERBOK','BONGKOK',5.72388,100.51508),(175,'1KMBK004','KED','MERBOK','TOK PAWANG',5.75635,100.50216),(176,'1KMBK005','KED','MERBOK','TOK PAWANG',5.75910,100.49661),(177,'1KMBK006','KED','MERBOK','BUKIT MERAH',5.77525,100.49610),(178,'1KMBK007','KED','MERBOK','PETANI',5.63879,100.48166),(179,'1KMBK008','KED','MERBOK','BAKAR ARANG',5.62400,100.48881),(180,'1KMBK009','KED','MERBOK','KOROK',5.56988,100.43110),(181,'1KMBK010','KED','MERBOK','TUPAH',5.73426,100.44230),(182,'1KMBK011','KED','MERBOK','BUKIT NANAS',5.71856,100.41416),(183,'1KMLK001','KED','ULU MELAKA','PETANG',6.37598,99.77749),(184,'1KMLK002','KED','ULU MELAKA','MELAKA',6.35556,99.73175),(185,'1KMLK003','KED','ULU MELAKA','MELAKA',6.37248,99.76989),(186,'1KMLK004','KED','ULU MELAKA','SAGA',6.35430,99.75544),(187,'1KMLK005','KED','ULU MELAKA','TUBA',6.24517,99.84830),(188,'1KMLK006','KED','ULU MELAKA','CHENANG',6.30739,99.72575),(189,'1KMLK007','KED','ULU MELAKA','MELAKA',6.37708,99.77994),(190,'1KMUD001','KED','MUDA','MUDA',5.54831,100.48058),(191,'1KMUD002','KED','MUDA','JERONG',5.63677,100.58567),(192,'1KMUD003','KED','MUDA','JERONG',5.56549,100.53922),(193,'1KMUD004','KED','MUDA','MUDA',5.60951,100.62461),(194,'1KMUD005','KED','MUDA','MUDA',5.81379,100.63236),(195,'1KMUD006','KED','MUDA','TAWAR',5.67639,100.91420),(196,'1KMUD007','KED','MUDA','KETIL',5.57732,100.78355),(197,'1KMUD008','KED','MUDA','SEDIM',5.56596,100.63633),(198,'1KMUD009','KED','MUDA','KARANGAN',5.50358,100.61801),(199,'1KMUD010','KED','MUDA','TAWAR',5.63819,100.81068),(200,'1KMUD011','KED','MUDA','PEGANG',5.71778,100.81399),(201,'1KMUD012','KED','MUDA','CHEPIR',5.78939,100.68724),(202,'1KMUD013','KED','MUDA','MUDA',5.56273,100.42821),(203,'1KMUD014','KED','MUDA','MUDA',5.83051,100.61752),(204,'1KMUD015','KED','MUDA','MUDA',5.90380,100.65098),(205,'1KMUD016','KED','MUDA','MUDA',5.68827,100.65966),(206,'1KMUD017','KED','MUDA','SEDIM',5.47495,100.69993),(207,'1KMUD018','KED','MUDA','MUDA',5.56674,100.50394),(208,'1KMUD019','KED','MUDA','MUDA',6.05114,100.75685),(209,'1KMUD020','KED','MUDA','TAWAR',5.66560,100.86847),(210,'1KMUD021','KED','MUDA','GUNUNG INAS',5.65838,100.95036),(211,'1KMUD023','KED','MUDA','MUDA',5.55815,100.53171),(212,'1KMUD024','KED','MUDA','MUDA',5.61307,100.63922),(213,'1KMUD025','KED','MUDA','MUDA',6.00221,100.72917),(214,'1KPRI014','KED','PERAI','KULIM',5.43600,100.51147),(215,'1KPRI015','KED','PERAI','KELADI',5.39120,100.54625),(216,'1KPRI016','KED','PERAI','KULIM',5.37183,100.57744),(217,'1KPRI017','KED','PERAI','KULIM',5.34722,100.58610),(218,'1KPRI018','KED','PERAI','JARAK',5.47611,100.53718),(219,'1KPRI019','KED','PERAI','JARAK',5.47653,100.54257),(220,'1KPRI020','KED','PERAI','SELUANG BAWAH',5.46242,100.54638),(221,'1KPRI021','KED','PERAI','SELUANG',5.43128,100.54378),(222,'1KPRI023','KED','PERAI','KULIM',5.32406,100.59303),(223,'1KPRI024','KED','PERAI','JARAK',5.46219,100.56412),(224,'1KPRI025','KED','PERAI','KULIM',5.34430,100.58845),(225,'1PBLS001','PEN','BAYAN LEPAS','TIRAM',5.30771,100.26703),(226,'1PBLS002','PEN','BAYAN LEPAS','TIRAM',5.29029,100.26128),(227,'1PBLS003','PEN','BAYAN LEPAS','BAYAN LEPAS',5.28311,100.25868),(228,'1PJRU001','PEN','JURU','JURU',5.33194,100.44551),(229,'1PJRU002','PEN','JURU','KILANG UBI',5.33090,100.47536),(230,'1PJRU003','PEN','JURU','KILANG UBI',5.33593,100.47969),(231,'1PJRU004','PEN','JURU','PASIR',5.35146,100.46311),(232,'1PJRU005','PEN','JURU','RAMBAI',5.36470,100.45020),(233,'1PJRU006','PEN','JURU','ARA',5.37753,100.46485),(234,'1PJRU007','PEN','JURU','RAMBAI',5.38301,100.46322),(235,'1PJRU008','PEN','JURU','PERMATANG RAWA',5.38354,100.47847),(236,'1PJRU009','PEN','JURU','KILANG UBI',5.35913,100.49330),(237,'1PJRU010','PEN','JURU','KILANG UBI',5.32990,100.48115),(238,'1PJRU011','PEN','JURU','KILANG UBI',5.33676,100.45908),(239,'1PJRU012','PEN','JURU','JURU',5.34757,100.41682),(240,'1PJRU013','PEN','JURU','PERMATANG RAWA',5.38321,100.48210),(241,'1PJWI001','PEN','JAWI','JAWI',5.26418,100.43926),(242,'1PJWI002','PEN','JAWI','JUNJONG',5.29345,100.47935),(243,'1PJWI003','PEN','JAWI','CHEMPEDAK',5.29035,100.50585),(244,'1PJWI004','PEN','JAWI','JUNJONG',5.27670,100.43597),(245,'1PJWI005','PEN','JAWI','TENGAH',5.23324,100.46467),(246,'1PJWI006','PEN','JAWI','JUNJONG',5.27559,100.56711),(247,'1PJWI007','PEN','JAWI','MACHANG BUBOK',5.33214,100.51396),(248,'1PKER002','PEN','KERIAN','KECHIL',5.17397,100.54400),(249,'1PKER003','PEN','KERIAN','KERIAN',5.13095,100.49312),(250,'1PKER004','PEN','KERIAN','KERIAN',5.22894,100.68681),(251,'1PKER005','PEN','KERIAN','KECHIL',5.15584,100.50902),(252,'1PKER006','PEN','KERIAN','KERIAN',5.12743,100.59540),(253,'1PKER007','PEN','KERIAN','SERDANG',5.20541,100.61132),(254,'1PKER009','PEN','KERIAN','KERIAN',5.15096,100.46281),(255,'1PKER014','PEN','KERIAN','KERIAN',5.15711,100.49548),(256,'1PKLU001','PEN','KLUANG','KLUANG',5.30496,100.29712),(257,'1PKLU002','PEN','KLUANG','ARA',5.32294,100.25413),(258,'1PKLU003','PEN','KLUANG','ARA',5.31756,100.28598),(259,'1PKLU004','PEN','KLUANG','RELAU',5.33075,100.27525),(260,'1PKLU005','PEN','KLUANG','DUA BESAR',5.35131,100.30051),(261,'1PPNG001','PEN','PINANG','BATU FERINGGHI',5.47529,100.25070),(262,'1PPNG002','PEN','PINANG','BATU FERINGGHI',5.46788,100.24903),(263,'1PPNG003','PEN','PINANG','PINANG',5.39285,100.29885),(264,'1PPNG004','PEN','PINANG','TITI KERAWANG',5.40823,100.32286),(265,'1PPNG006','PEN','PINANG','AIR ITAM',5.40704,100.30040),(266,'1PPNG008','PEN','PINANG','PINANG',5.40442,100.32610),(267,'1PPNG010','PEN','PINANG','JELUTONG',5.40203,100.29101),(268,'1PPNG011','PEN','PINANG','AIR ITAM',5.39674,100.28895),(269,'1PPNG012','PEN','PINANG','DONDANG',5.37698,100.27523),(270,'1PPNG013','PEN','PINANG','DONDANG',5.37815,100.27715),(271,'1PPNG014','PEN','PINANG','DONDANG',5.41122,100.30973),(272,'1PPNG015','PEN','PINANG','DONDANG',5.41040,100.30211),(273,'1PPNG016','PEN','PINANG','DONDANG',5.40192,100.29703),(274,'1PPNG017','PEN','PINANG','DONDANG',5.40254,100.28833),(275,'1PPNG018','PEN','PINANG','AIR ITAM',5.43828,100.29100),(276,'1PPNG019','PEN','PINANG','AIR TERJUN',5.46441,100.25568),(277,'1PPNG020','PEN','PINANG','SATU',5.44008,100.28461),(278,'1PPNG021','PEN','PINANG','PINANG',5.38806,100.30914),(279,'1PPRI003','PEN','PERAI','PERAI',5.39550,100.38770),(280,'1PPRI004','PEN','PERAI','PERAI',5.43117,100.43127),(281,'1PPRI005','PEN','PERAI','KUBANG SEMANG',5.40135,100.46368),(282,'1PPRI006','PEN','PERAI','KEREH',5.48393,100.47263),(283,'1PPRI007','PEN','PERAI','AIR MELINTAS',5.49863,100.48944),(284,'1PPRI008','PEN','PERAI','KEREH',5.51725,100.49798),(285,'1PPRI009','PEN','PERAI','JARAK',5.46854,100.49399),(286,'1PPRI010','PEN','PERAI','SELUANG BAWAH',5.41696,100.54997),(287,'1PPRI011','PEN','PERAI','JARAK',5.42449,100.61688),(288,'1PPRI012','PEN','PERAI','JARAK',5.41925,100.61878),(289,'1PPRI022','PEN','PERAI','PERTAMA',5.38745,100.40301),(290,'1PPRI024','PEN','PERAI','KEREH',5.53166,100.51874),(291,'1RPLS001','PER','PERLIS','PERLIS',6.43360,100.15714),(292,'1RPLS002','PER','PERLIS','NGULANG',6.48179,100.24911),(293,'1RPLS003','PER','PERLIS','SERAI',6.54321,100.29156),(294,'1RPLS004','PER','PERLIS','JERNIH',6.51526,100.26623),(295,'1RPLS005','PER','PERLIS','JERNIH',6.51689,100.26609),(296,'1RPLS006','PER','PERLIS','JARUM',6.62611,100.25993),(297,'1RPLS007','PER','PERLIS','KOK MAK',6.65532,100.30584),(298,'1RPLS008','PER','PERLIS','PELARIT',6.62875,100.20350),(299,'1RPLS009','PER','PERLIS','WANG KELIAN',6.70128,100.19862),(300,'1RPLS010','PER','PERLIS','TERUSAN MADA',6.40490,100.30053),(301,'1RPLS011','PER','PERLIS','TERUSAN MADA',6.34121,100.18805),(302,'1RPLS012','PER','PERLIS','ARAU',6.41788,100.27120),(303,'1RPLS013','PER','PERLIS','KOROK',6.45420,100.20362),(304,'1RPLS014','PER','PERLIS','ARAU',6.45030,100.29608),(305,'1RPLS015','PER','PERLIS','EMPANGAN TIMAH TASOH',6.56234,100.22529),(306,'2BBLH001','SEL','BULOH','BULOH',3.25932,101.30564),(307,'2BBLH002','SEL','BULOH','BULOH',3.29705,101.37865),(308,'2BBLH003','SEL','BULOH','BULOH',3.24596,101.46972),(309,'2BBLH004','SEL','BULOH','BULOH',3.21047,101.51501),(310,'2BBLH005','SEL','BULOH','BULOH',3.20837,101.56876),(311,'2BBLH006','SEL','BULOH','BULOH',3.28672,101.43181),(312,'2BBNM013','SEL','BERNAM','BERNAM',3.68137,101.34848),(313,'2BBNM016','SEL','BERNAM','BERNAM',3.69702,101.34205),(314,'2BBNM017','SEL','BERNAM','DUSUN',3.67369,101.39599),(315,'2BCHU001','SEL','LANGAT','CHUAU',2.89496,101.68432),(316,'2BCHU002','SEL','LANGAT','CHUAU',2.97076,101.69336),(317,'2BCHU003','SEL','LANGAT','LIMAU MANIS',2.89404,101.69747),(318,'2BCHU004','SEL','LANGAT','ANAK CHUAU',2.97614,101.70175),(319,'2BKLG003','SEL','KLANG','RASAU',3.04231,101.64928),(320,'2BKLG005','SEL','KLANG','KLANG',3.23207,101.75013),(321,'2BKLG006','SEL','KLANG','KLANG',3.20703,101.75615),(322,'2BKLG007','SEL','KLANG','BATU',3.33139,101.70222),(323,'2BKLG008','SEL','KLANG','DAMANSARA',3.08061,101.55249),(324,'2BKLG009','SEL','KLANG','DAMANSARA',3.09970,101.55495),(325,'2BKLG011','SEL','KLANG','KUYOH',3.02561,101.70836),(326,'2BKLG013','SEL','KLANG','KERAYONG',3.10733,101.74385),(327,'2BKLG016','SEL','KLANG','KLANG',3.01853,101.37455),(328,'2BKLG017','SEL','KLANG','DAMANSARA',3.14647,101.54345),(329,'2BKLG019','SEL','KLANG','PENCHALA',3.07585,101.62194),(330,'2BKLG020','SEL','KLANG','GOMBAK',3.30695,101.73431),(331,'2BKLG021','SEL','KLANG','PUSU',3.24640,101.72244),(332,'2BKLG022','SEL','KLANG','KLANG',3.04631,101.44673),(333,'2BKLG023','SEL','KLANG','KLANG',3.04252,101.47284),(334,'2BKLG024','SEL','KLANG','KLANG',3.02935,101.55076),(335,'2BKLG025','SEL','KLANG','SEMELAH',3.20751,101.75638),(336,'2BKLG027','SEL','KLANG','GOMBAK',3.28387,101.72998),(337,'2BKLG030','SEL','KLANG','KEROH',3.23732,101.62651),(338,'2BKLG032','SEL','KLANG','AMPANG',3.16107,101.75272),(339,'2BKLG033','SEL','KLANG','RUMPUT',3.29914,101.73487),(340,'2BKLG034','SEL','KLANG','KLANG',3.02029,101.59658),(341,'2BKLG036','SEL','KLANG','BATU',3.29868,101.69512),(342,'2BKLG042','SEL','KLANG','AMPANG',3.14331,101.78183),(343,'2BKLG044','SEL','KLANG','JINJANG',3.24758,101.64803),(344,'2BKLG047','SEL','KLANG','ANAK AIR BATU',3.11843,101.66308),(345,'2BKLG050','SEL','KLANG','KLANG',3.03935,101.53404),(346,'2BKLG051','SEL','KLANG','KERAYONG',3.09535,101.68742),(347,'2BKLG054','SEL','KLANG','PENCHALA',3.09010,101.62944),(348,'2BKLG055','SEL','KLANG','DAMANSARA',3.11495,101.56643),(349,'2BKLG067','SEL','KLANG','DAMANSARA',3.16090,101.56532),(350,'2BLGT002','SEL','LANGAT','LANGAT',3.04441,101.77616),(351,'2BLGT003','SEL','LANGAT','LANGAT',2.85433,101.68113),(352,'2BLGT004','SEL','LANGAT','LANGAT',2.96398,101.78390),(353,'2BLGT005','SEL','LANGAT','LANGAT',2.99344,101.78481),(354,'2BLGT006','SEL','LANGAT','LANGAT',3.16741,101.85053),(355,'2BLGT007','SEL','LANGAT','LANGAT',3.04012,101.77377),(356,'2BLGT008','SEL','LANGAT','LANGAT',3.11125,101.81662),(357,'2BLGT010','SEL','LANGAT','SEMENYIH',2.89242,101.75104),(358,'2BLGT011','SEL','LANGAT','SEMENYIH',2.94650,101.84786),(359,'2BLGT012','SEL','LANGAT','SEMENYIH',3.00872,101.86882),(360,'2BLGT014','SEL','LANGAT','RINCHING',2.91847,101.86260),(361,'2BLGT015','SEL','LANGAT','RINCHING',3.17369,101.86950),(362,'2BLGT025','SEL','LANGAT','BALAK',3.01509,101.76767),(363,'2BLGT026','SEL','LANGAT','LANGAT',2.87594,101.45188),(364,'2BLGT027','SEL','LANGAT','LANGAT',2.81533,101.51289),(365,'2BLGT028','SEL','LANGAT','LANGAT',2.78759,101.70148),(366,'2BLGT030','SEL','LANGAT','LANGAT',2.81347,101.64180),(367,'2BLGT031','SEL','LANGAT','LANGAT',2.99436,101.78362),(368,'2BLGT032','SEL','LANGAT','LANGAT',3.06747,101.77556),(369,'2BLGT033','SEL','LANGAT','LANGAT',3.06719,101.78564),(370,'2BLGT034','SEL','LANGAT','SERING',3.06796,101.77204),(371,'2BLGT035','SEL','LANGAT','LANGAT',3.09797,101.80747),(372,'2BSEL001','SEL','SELANGOR','SELANGOR',3.36274,101.30146),(373,'2BSEL002','SEL','SELANGOR','AIR HITAM',3.40822,101.43182),(374,'2BSEL003','SEL','SELANGOR','BATANG KALI',3.46942,101.63927),(375,'2BSEL004','SEL','SELANGOR','SELANGOR',3.50693,101.63370),(376,'2BSEL005','SEL','SELANGOR','SELANGOR',3.57244,101.69570),(377,'2BSEL006','SEL','SELANGOR','KERLING',3.58845,101.60655),(378,'2BSEL007','SEL','SELANGOR','KANCHING',3.29580,101.61290),(379,'2BSEL008','SEL','SELANGOR','SERENDAH',3.36837,101.60664),(380,'2BSEL009','SEL','SELANGOR','SEMBAH',3.37841,101.47868),(381,'2BSEL010','SEL','SELANGOR','SELANGOR',3.40190,101.44182),(382,'2BSEL011','SEL','SELANGOR','SELANGOR',3.40981,101.47775),(383,'2BSEL012','SEL','SELANGOR','KUNDANG',3.31934,101.51500),(384,'2BSEL013','SEL','SELANGOR','RAWANG',3.31659,101.57130),(385,'2BSEL014','SEL','SELANGOR','SELANGOR',3.40249,101.44863),(386,'2BSEL015','SEL','SELANGOR','SELANGOR',3.52576,101.64675),(387,'2BSEL016','SEL','SELANGOR','RANGKAP',3.28644,101.64405),(388,'2BSEL017','SEL','SELANGOR','SELANGOR',3.46615,101.67463),(389,'2BSEL018','SEL','SELANGOR','SELANGOR',3.48449,101.53482),(390,'2BSEL019','SEL','SELANGOR','SEMBAH',3.39032,101.42343),(391,'2BSEL021','SEL','SELANGOR','GUNTONG',3.39289,101.53375),(392,'2BSEL023','SEL','SELANGOR','SELANGOR',3.38480,101.41478),(393,'2BSEL024','SEL','SELANGOR','AIR HITAM',3.42581,101.44917),(394,'2BSPG001','SEL','SEPANG','SEPANG',2.60812,101.70268),(395,'2BSPG002','SEL','SEPANG','SEPANG',2.64647,101.73117),(396,'2BSPG003','SEL','SEPANG','SEPANG',2.69061,101.75261),(397,'2BSPG004','SEL','SEPANG','RAMBAI',2.67723,101.75817),(398,'2BTGI001','SEL','TENGI','TENGI',3.42518,101.17441),(399,'2BTGI002','SEL','TENGI','TENGI',3.61471,101.42464),(400,'2BTGI003','SEL','TENGI','TENGI',3.49747,101.19999),(401,'2BTGI004','SEL','TENGI','TENGI',3.62600,101.42429),(402,'2WKLG001','KUL','KLANG','KLANG',3.08237,101.66425),(403,'2WKLG002','KUL','KLANG','KLANG',3.13794,101.69479),(404,'2WKLG003','KUL','KLANG','KLANG',3.15570,101.70092),(405,'2WKLG004','KUL','KLANG','KLANG',3.12087,101.67648),(406,'2WKLG006','KUL','KLANG','BUNOS',3.16802,101.70548),(407,'2WKLG010','KUL','KLANG','PENCHALA',3.14556,101.63245),(408,'2WKLG014','KUL','KLANG','JINJANG',3.20142,101.67435),(409,'2WKLG015','KUL','KLANG','KEROH',3.18004,101.67834),(410,'2WKLG018','KUL','KLANG','GOMBAK',3.17274,101.69518),(411,'2WKLG026','KUL','KLANG','GOMBAK',3.20575,101.69999),(412,'2WKLG028','KUL','KLANG','BATU',3.23579,101.67980),(413,'2WKLG031','KUL','KLANG','JINJANG',3.20425,101.66965),(414,'2WKLG037','KUL','KLANG','TOBA',3.18763,101.65893),(415,'2WKLG038','KUL','KLANG','UNTUT',3.17365,101.69403),(416,'2WKLG039','KUL','KLANG','BUNOS',3.18421,101.71917),(417,'2WKLG040','KUL','KLANG','BELONGKONG',3.21073,101.70360),(418,'2WKLG041','KUL','KLANG','AIR BUSUK',3.19199,101.70184),(419,'2WKLG043','KUL','KLANG','BUNOS',3.20749,101.72865),(420,'2WKLG045','KUL','KLANG','JINJANG',3.22098,101.66762),(421,'2WKLG046','KUL','KLANG','KERAYONG',3.09722,101.67489),(422,'2WKLG048','KUL','KLANG','KEROH',3.21318,101.63366),(423,'2WKLG049','KUL','KLANG','KLANG',3.16444,101.73485),(424,'2WKLG052','KUL','KLANG','KUYOH',3.06656,101.65130),(425,'2WKLG056','KUL','KLANG','BATU',3.17821,101.68282),(426,'2WKLG058','KUL','KLANG','KERAYONG',3.12983,101.74284),(427,'2WKLG060','KUL','KLANG','GOMBAK',3.16711,101.69332),(428,'2WKLG061','KUL','KLANG','BATU',3.20224,101.67563),(429,'3JABL001','JHR','AIR BALOI','AIR BALOI',1.58538,103.34200),(430,'3JABL002','JHR','AIR BALOI','AIR BALOI',1.62632,103.39889),(431,'3JABL003','JHR','AIR BALOI','AIR BALOI',1.60002,103.36481),(432,'3JBNT001','JHR','BENUT','BENUT',1.86948,103.37463),(433,'3JBNT002','JHR','BENUT','BENUT',1.82784,103.29771),(434,'3JBNT003','JHR','BENUT','ULU BENUT',1.85963,103.29744),(435,'3JBNT004','JHR','BENUT','PARIT HJ.YASSIN',1.81572,103.31654),(436,'3JBNT005','JHR','BENUT','BENUT',1.75702,103.25414),(437,'3JBNT006','JHR','BENUT','BENUT',1.64970,103.25225),(438,'3JBNT007','JHR','BENUT','PINGGAN',1.64870,103.26466),(439,'3JBNT008','JHR','BENUT','MACHAP DAM',1.88414,103.27331),(440,'3JBPT001','JHR','BATU PAHAT','BATU PAHAT',1.85888,102.92479),(441,'3JBPT002','JHR','BATU PAHAT','SIMPANG KANAN',1.88049,103.01450),(442,'3JBPT003','JHR','BATU PAHAT','SEMBERONG',1.87119,103.10757),(443,'3JBPT004','JHR','BATU PAHAT','SEMBERONG',1.93876,103.16178),(444,'3JBPT005','JHR','BATU PAHAT','BEKOK',2.12390,103.05707),(445,'3JBPT006','JHR','BATU PAHAT','MERPO',2.04194,103.13887),(446,'3JBPT007','JHR','BATU PAHAT','BERLIAN',2.17306,103.12828),(447,'3JBPT008','JHR','BATU PAHAT','BEKOK',2.00978,103.05767),(448,'3JBPT009','JHR','BATU PAHAT','MEREK',2.23907,103.04028),(449,'3JBPT010','JHR','BATU PAHAT','CHAAH',2.24996,103.03919),(450,'3JBPT011','JHR','BATU PAHAT','LENIK',2.22561,103.02604),(451,'3JBPT012','JHR','BATU PAHAT','SIMPANG KIRI',2.13178,102.98830),(452,'3JBPT013','JHR','BATU PAHAT','SIMPANG KANAN',1.90072,102.94882),(453,'3JBPT014','JHR','BATU PAHAT','SIMPANG KIRI',1.97219,102.88445),(454,'3JBPT015','JHR','BATU PAHAT','SIMPANG KIRI',1.88573,102.90964),(455,'3JBPT016','JHR','BATU PAHAT','BEKOK',2.11962,103.04071),(456,'3JBPT017','JHR','BATU PAHAT','BEKOK',2.23962,103.14272),(457,'3JBPT018','JHR','BATU PAHAT','AMRAN',2.02857,103.23521),(458,'3JBPT019','JHR','BATU PAHAT','BEKOK',2.30161,103.13816),(459,'3JBPT020','JHR','BATU PAHAT','BANTANG',2.34611,103.15752),(460,'3JBPT021','JHR','BATU PAHAT','SEMBERONG DAM',1.97637,103.18328),(461,'3JBPT022','JHR','BATU PAHAT','KAHANG',2.15161,103.08883),(462,'3JBPT023','JHR','BATU PAHAT','BEKOK',1.90009,103.07707),(463,'3JBPT024','JHR','BATU PAHAT','TEMEHEL',2.02756,103.05558),(464,'3JBPT025','JHR','BATU PAHAT','PANCHOR',1.88188,102.98802),(465,'3JDGA001','JHR','DANGA','DANGA',1.48950,103.66241),(466,'3JDGA002','JHR','DANGA','DANGA',1.47781,103.68153),(467,'3JEND001','JHR','ENDAU','MENGKIBOL',1.95177,103.33961),(468,'3JEND002','JHR','ENDAU','MENGKIBOL',2.01847,103.32169),(469,'3JEND003','JHR','ENDAU','MENGKIBOL',2.06641,103.31094),(470,'3JEND004','JHR','ENDAU','SEMBERONG',2.06446,103.36336),(471,'3JEND005','JHR','ENDAU','JEBONG',2.26467,103.55270),(472,'3JEND006','JHR','ENDAU','SEMBERONG',2.27737,103.53498),(473,'3JEND007','JHR','ENDAU','ANAK SG. SEMBERONG',2.29549,103.53079),(474,'3JEND008','JHR','ENDAU','LENGA',2.34284,103.44595),(475,'3JEND009','JHR','ENDAU','LENGGOR',2.38735,103.65596),(476,'3JEND010','JHR','ENDAU','DENGAR',2.08701,103.49921),(477,'3JEND011','JHR','ENDAU','PAMOL',2.11307,103.37570),(478,'3JEND012','JHR','ENDAU','SEMBERONG',2.11163,103.31024),(479,'3JEND013','JHR','ENDAU','SINGOL',2.21226,103.35477),(480,'3JEND014','JHR','ENDAU','TAMOK',2.26377,103.35187),(481,'3JEND015','JHR','ENDAU','MAMAI',2.31212,103.36065),(482,'3JEND016','JHR','ENDAU','PALOH',2.16224,103.26409),(483,'3JEND017','JHR','ENDAU','MELATAI',2.06545,103.30232),(484,'3JEND018','JHR','ENDAU','SEMBERONG',1.99736,103.39113),(485,'3JEND019','JHR','ENDAU','ENDAU',2.65470,103.62194),(486,'3JEND020','JHR','ENDAU','KAHANG',2.25048,103.58484),(487,'3JEND021','JHR','ENDAU','SEMBERONG',2.38000,103.63488),(488,'3JEND022','JHR','ENDAU','ENDAU',2.46963,103.63030),(489,'3JEND023','JHR','ENDAU','ENDAU',2.53657,103.41216),(490,'3JEND024','JHR','ENDAU','JASIN',2.52995,103.36700),(491,'3JEND025','JHR','ENDAU','SELAI',2.26003,103.44215),(492,'3JEND026','JHR','ENDAU','KAHANG',2.09157,103.44883),(493,'3JEND027','JHR','ENDAU','EMPANGAN LABONG',2.58490,103.66877),(494,'3JEND028','JHR','ENDAU','KAHANG',2.20144,103.54006),(495,'3JEND029','JHR','ENDAU','LENGGOR',2.36850,103.65644),(496,'3JJHR001','JHR','JOHOR','LAYANG',1.55614,103.91004),(497,'3JJHR002','JHR','JOHOR','SERAI',1.53787,103.96879),(498,'3JJHR003','JHR','JOHOR','TIRAM',1.58409,103.87821),(499,'3JJHR004','JHR','JOHOR','TIRAM',1.62211,103.78768),(500,'3JJHR005','JHR','JOHOR','TIRAM',1.59736,103.82045),(501,'3JJHR006','JHR','JOHOR','TIRAM',1.63672,103.77458),(502,'3JJHR007','JHR','JOHOR','BUKIT BESAR',1.74591,103.64997),(503,'3JJHR008','JHR','JOHOR','SEMANGAR',1.73788,103.71281),(504,'3JJHR009','JHR','JOHOR','BUKIT BESAR',1.74356,103.71028),(505,'3JJHR011','JHR','JOHOR','JOHOR',1.78262,103.73989),(506,'3JJHR012','JHR','JOHOR','TELOR',1.72686,103.80509),(507,'3JJHR013','JHR','JOHOR','BERANGAN',1.68582,103.87542),(508,'3JJHR014','JHR','JOHOR','JOHOR',1.74943,103.77932),(509,'3JJHR015','JHR','JOHOR','JOHOR',1.74173,103.83049),(510,'3JJHR016','JHR','JOHOR','TEMOH',1.66904,104.02139),(511,'3JJHR017','JHR','JOHOR','LAYAU KIRI',1.56143,104.05038),(512,'3JJHR018','JHR','JOHOR','SEMENCHU',1.57672,104.11685),(513,'3JJHR019','JHR','JOHOR','CHEMANGAR',1.56536,104.20696),(514,'3JJHR020','JHR','JOHOR','LEBAM',1.54798,104.19910),(515,'3JJHR021','JHR','JOHOR','SENING',1.45444,104.19668),(516,'3JJHR022','JHR','JOHOR','SANTI',1.40879,104.12356),(517,'3JJHR023','JHR','JOHOR','ANAK SG. SAYONG',1.76601,103.54643),(518,'3JJHR024','JHR','JOHOR','SAYONG',1.80318,103.51869),(519,'3JJHR025','JHR','JOHOR','SAYONG',1.82007,103.46767),(520,'3JJHR026','JHR','JOHOR','REMIS',1.83283,103.47659),(521,'3JJHR027','JHR','JOHOR','SAYONG',1.88689,103.40293),(522,'3JJHR028','JHR','JOHOR','PENGGELI',1.86204,103.59603),(523,'3JJHR029','JHR','JOHOR','SEBOL',1.83905,103.66729),(524,'3JJHR030','JHR','JOHOR','LINGGIU',1.84701,103.71042),(525,'3JJHR031','JHR','JOHOR','PENGGELI',1.82050,103.62701),(526,'3JJHR032','JHR','JOHOR','ANAK SG. SAYONG',1.81044,103.66962),(527,'3JJHR033','JHR','JOHOR','SAYONG',1.80326,103.66826),(528,'3JJHR034','JHR','JOHOR','PAPAN',1.60229,104.14118),(529,'3JJHR035','JHR','JOHOR','SELUYUT',1.69422,103.95735),(530,'3JJHR037','JHR','JOHOR','PANTI',1.74697,103.87348),(531,'3JJHR038','JHR','JOHOR','BELITONG',1.82577,103.54215),(532,'3JJHR039','JHR','JOHOR','PELEPAH',1.82884,103.83474),(533,'3JJHR040','JHR','JOHOR','JOHOR',1.72664,103.89767),(534,'3JJHR041','JHR','JOHOR','JOHOR',1.79999,103.72179),(535,'3JJHR042','JHR','JOHOR','JOHOR',1.74704,103.78389),(536,'3JJHR043','JHR','JOHOR','PELEPAH',1.74721,103.87238),(537,'3JJHR044','JHR','JOHOR','PELEPAH',1.45649,104.06608),(538,'3JJHR045','JHR','JOHOR','PELEPAH',1.77623,103.86458),(539,'3JJML001','JHR','JEMALUANG','JEMALUANG',2.31510,103.85254),(540,'3JJML002','JHR','JEMALUANG','JEMALUANG',2.37587,103.88342),(541,'3JKIM001','JHR','KIM-KIM','KIM-KIM',1.45919,103.95532),(542,'3JKIM002','JHR','KIM-KIM','KIM-KIM',1.49047,103.95448),(543,'3JKPS001','JHR','KEMPAS','KEMPAS',1.50096,103.71030),(544,'3JKPS002','JHR','KEMPAS','KEMPAS',1.50789,103.71456),(545,'3JMSG001','JHR','MERSING','MERSING',2.25777,103.81554),(546,'3JMSG002','JHR','MERSING','MERSING',2.43124,103.83357),(547,'3JMSG003','JHR','MERSING','MERSING',2.34038,103.81634),(548,'3JMSG004','JHR','MERSING','EMPANGAN CONGOK',2.50626,103.79214),(549,'3JMUA011','JHR','MUAR','LABIS',2.37970,103.02277),(550,'3JMUA012','JHR','MUAR','LABIS',2.37447,103.02320),(551,'3JMUA013','JHR','MUAR','TENANG',2.46375,102.96118),(552,'3JMUA014','JHR','MUAR','JUASSEH',2.50214,102.94349),(553,'3JMUA015','JHR','MUAR','LABIS',2.38345,102.83737),(554,'3JMUA016','JHR','MUAR','SEGAMAT',2.50898,102.81851),(555,'3JMUA017','JHR','MUAR','MUAR',2.49469,102.75184),(556,'3JMUA018','JHR','MUAR','P.MENGKUANG',2.45718,102.73390),(557,'3JMUA019','JHR','MUAR','MUAR',2.55856,102.75701),(558,'3JMUA020','JHR','MUAR','MERLIMAU',2.55901,102.74068),(559,'3JMUA021','JHR','MUAR','SENARUT',2.57992,102.70662),(560,'3JMUA022','JHR','MUAR','MUAR',2.65195,102.75628),(561,'3JMUA023','JHR','MUAR','SIMPANG LOI',2.65580,102.76981),(562,'3JMUA024','JHR','MUAR','PALONG',2.75968,102.72617),(563,'3JMUA025','JHR','MUAR','PALONG',2.69305,102.73911),(564,'3JMUA026','JHR','MUAR','MUAR',2.67126,102.73471),(565,'3JMUA027','JHR','MUAR','MUAR',2.34685,102.82950),(566,'3JMUA028','JHR','MUAR','MUAR',2.27677,102.81196),(567,'3JMUA029','JHR','MUAR','MUAR',2.17314,102.71272),(568,'3JMUA030','JHR','MUAR','MERBUDU',2.12067,102.63899),(569,'3JMUA031','JHR','MUAR','MUAR',2.12962,102.64566),(570,'3JMUA032','JHR','MUAR','SEROM',2.15640,102.57394),(571,'3JMUA033','JHR','MUAR','MUAR',2.14983,102.59961),(572,'3JMUA034','JHR','MUAR','MEDA',2.32789,102.81606),(573,'3JMUA035','JHR','MUAR','AIR PANAS',2.34858,102.63559),(574,'3JMUA036','JHR','MUAR','GEMAS',2.58170,102.61760),(575,'3JMUA037','JHR','MUAR','JUASSEH',2.46769,103.05253),(576,'3JMUA038','JHR','MUAR','SARANG BUAYA',1.88981,102.77040),(577,'3JMUA039','JHR','MUAR','MUAR',2.24599,102.80931),(578,'3JMUA040','JHR','MUAR','JEMENTAH',2.42318,102.66442),(579,'3JMUA041','JHR','MUAR','MUAR',2.20158,102.74943),(580,'3JMUA042','JHR','MUAR','MUAR',2.18403,102.74646),(581,'3JMUA043','JHR','MUAR','MUAR',2.17998,102.73503),(582,'3JMUA044','JHR','MUAR','SEGAMAT',2.51720,102.83395),(583,'3JMUA045','JHR','MUAR','JUASSEH',2.46874,103.04037),(584,'3JMUA046','JHR','MUAR','MUAR',2.64810,102.65311),(585,'3JMUA047','JHR','MUAR','MUAR',2.30394,102.78652),(586,'3JMUA048','JHR','MUAR','SEGAMAT',2.54531,102.93038),(587,'3JMUA049','JHR','MUAR','PAGOH',2.15117,102.75854),(588,'3JMUA050','JHR','MUAR','PENDOL',2.29856,102.59600),(589,'3JMUA051','JHR','MUAR','BELEMANG',2.31397,102.57793),(590,'3JPAL001','JHR','PALOI','PALOI',2.08003,104.00540),(591,'3JPBS001','JHR','PONTIAN BESAR','AIR HITAM',1.57816,103.43439),(592,'3JPBS002','JHR','PONTIAN BESAR','PONTIAN BESAR',1.56530,103.41462),(593,'3JPBS003','JHR','PONTIAN BESAR','PONTIAN BESAR',1.50847,103.37997),(594,'3JPBS004','JHR','PONTIAN BESAR','PONTIAN BESAR',1.71999,103.45311),(595,'3JPBS005','JHR','PONTIAN BESAR','AYER MERAH',1.58386,103.45817),(596,'3JPBS006','JHR','PONTIAN BESAR','PONTIAN BESAR',1.58922,103.41851),(597,'3JPBS007','JHR','PONTIAN BESAR','PONTIAN BESAR',1.67371,103.50403),(598,'3JPGD001','JHR','KAW. PASIR GUDANG','PEREMBI',1.44825,103.88749),(599,'3JPGD002','JHR','KAW. PASIR GUDANG','BULUH',1.44402,103.90094),(600,'3JPGD003','JHR','KAW. PASIR GUDANG','TUKANG BATU',1.44003,103.91848),(601,'3JPGD004','JHR','KAW. PASIR GUDANG','LATOH',1.43802,103.92556),(602,'3JPGD005','JHR','KAW. PASIR GUDANG','MASAI',1.47473,103.87918),(603,'3JPKC001','JHR','PONTIAN KECIL','PONTIAN KECIL',1.54101,103.49460),(604,'3JPKC002','JHR','PONTIAN KECIL','PONTIAN KECIL',1.48250,103.39075),(605,'3JPLI001','JHR','PULAI','PULAI',1.55342,103.59423),(606,'3JPLI002','JHR','PULAI','PULAI',1.49357,103.58356),(607,'3JPLI003','JHR','PULAI','ULU CHOH',1.49889,103.54849),(608,'3JPLI004','JHR','PULAI','PULAI DAM',1.54090,103.53059),(609,'3JRBH001','JHR','RAMBAH','RAMBAH',1.42967,103.41750),(610,'3JRBH002','JHR','RAMBAH','RAMBAH',1.44503,103.45876),(611,'3JSBE001','JHR','SEDILI BESAR','DOHOL',1.88984,103.91151),(612,'3JSBE002','JHR','SEDILI BESAR','SEDILI BESAR',1.94328,103.90427),(613,'3JSBE003','JHR','SEDILI BESAR','TEMUBOR KANAN',1.97471,103.99125),(614,'3JSBE004','JHR','SEDILI BESAR','SEDILI BESAR',2.04564,103.86796),(615,'3JSBE005','JHR','SEDILI BESAR','AMBAT',2.08650,103.90112),(616,'3JSBE006','JHR','SEDILI BESAR','SEDILI BESAR',1.86904,103.95537),(617,'3JSBE007','JHR','SEDILI BESAR','SEDILI BESAR',1.89465,104.04896),(618,'3JSBE008','JHR','SEDILI BESAR','SEDILI BESAR',1.93003,104.11017),(619,'3JSBE009','JHR','SEDILI BESAR','MUPUR',1.81459,103.95746),(620,'3JSBE010','JHR','SEDILI BESAR','PASIR PANJANG',2.01302,103.92069),(621,'3JSBE011','JHR','SEDILI BESAR','SEDILI BESAR',2.03643,103.90260),(622,'3JSGT001','JHR','SEGGET','SEGGET',1.45740,103.76565),(623,'3JSGT002','JHR','SEGGET','SEGGET',1.45964,103.76498),(624,'3JSGT003','JHR','SEGGET','SEGGET',1.47002,103.75937),(625,'3JSGT004','JHR','SEGGET','SEGGET',1.46850,103.75896),(626,'3JSGT005','JHR','SEGGET','SEGGET',1.47518,103.76141),(627,'3JSKE001','JHR','SEDILI KECIL','SEDILI KECIL',1.84007,104.14837),(628,'3JSKE002','JHR','SEDILI KECIL','BAHAN',1.82204,104.13849),(629,'3JSKE003','JHR','SEDILI KECIL','SEDILI KECIL',1.81416,104.14008),(630,'3JSKE004','JHR','SEDILI KECIL','BAHAN',1.80057,104.11612),(631,'3JSKE005','JHR','SEDILI KECIL','ANAK SEDILI KECIL',1.72295,104.12577),(632,'3JSKE006','JHR','SEDILI KECIL','SEDILI KECIL',1.74446,104.13561),(633,'3JSKU001','JHR','SKUDAI','SKUDAI',1.50025,103.68376),(634,'3JSKU002','JHR','SKUDAI','SKUDAI',1.51941,103.67718),(635,'3JSKU003','JHR','SKUDAI','SKUDAI',1.55503,103.66088),(636,'3JSKU004','JHR','SKUDAI','SKUDAI',1.68489,103.57275),(637,'3JSKU005','JHR','SKUDAI','SKUDAI',1.66336,103.60523),(638,'3JSKU006','JHR','SKUDAI','SKUDAI',1.63227,103.63676),(639,'3JSKU007','JHR','SKUDAI','SKUDAI',1.62175,103.65437),(640,'3JSKU008','JHR','SKUDAI','MELANA',1.57578,103.61553),(641,'3JSKU009','JHR','SKUDAI','MELANA',1.50276,103.65590),(642,'3JSKU010','JHR','SKUDAI','SKUDAI',1.66916,103.58930),(643,'3JSKU011','JHR','SKUDAI','SKUDAI',1.69374,103.51509),(644,'3JSLG001','JHR','SANGLANG','SANGLANG',1.62190,103.30869),(645,'3JTRU001','JHR','TEBRAU','TEBRAU',1.61897,103.68525),(646,'3JTRU002','JHR','TEBRAU','TEBRAU',1.58362,103.71831),(647,'3JTRU003','JHR','TEBRAU','TEBRAU',1.54498,103.74077),(648,'3JTRU004','JHR','TEBRAU','PLENTONG',1.52360,103.82029),(649,'3JTRU005','JHR','TEBRAU','TEBRAU',1.52394,103.76798),(650,'3JTRU006','JHR','TEBRAU','TEBRAU',1.53696,103.74768),(651,'3JTRU007','JHR','TEBRAU','PANDAN',1.52389,103.77197),(652,'3JTRU008','JHR','TEBRAU','BALA',1.52317,103.76641),(653,'3JTRU009','JHR','TEBRAU','SEBULUNG',1.51211,103.76455),(654,'3JTRU010','JHR','TEBRAU','TAMPOI',1.50502,103.77225),(655,'3JTRU011','JHR','TEBRAU','SENGKUANG',1.49636,103.78194),(656,'3MBAR001','MEL','BARU','BARU',2.35920,102.03883),(657,'3MDYG001','MEL','DUYONG','DUYONG',2.18353,102.29023),(658,'3MDYG002','MEL','DUYONG','DUYONG',2.20344,102.31458),(659,'3MDYG003','MEL','DUYONG','DUYONG',2.27373,102.36543),(660,'3MDYG004','MEL','DUYONG','GAPAM',2.27261,102.32957),(661,'3MKSG001','MEL','KESANG','KESANG',2.12484,102.50126),(662,'3MKSG002','MEL','KESANG','KESANG',2.28956,102.49073),(663,'3MKSG003','MEL','KESANG','KESANG',2.31176,102.43113),(664,'3MKSG004','MEL','KESANG','CHOHONG',2.29368,102.50363),(665,'3MKSG005','MEL','KESANG','CHOHONG',2.35552,102.51459),(666,'3MKSG006','MEL','KESANG','CHIN-CHIN',2.28999,102.42090),(667,'3MKSG007','MEL','KESANG','TANGKAK',2.25688,102.52880),(668,'3MKSG008','MEL','KESANG','CHIN-CHIN',2.27255,102.49664),(669,'3MKSG009','MEL','KESANG','CHIN-CHIN',2.25118,102.49353),(670,'3MLGI029','MEL','LINGGI','SIMPANG AMPAT',2.43639,102.18342),(671,'3MLGI030','MEL','LINGGI','SIPUT',2.43253,102.13672),(672,'3MLGI031','MEL','LINGGI','SIPUT',2.44301,102.11463),(673,'3MMLK007','MEL','MELAKA','MELAKA',2.20101,102.24894),(674,'3MMLK008','MEL','MELAKA','BATANG MELAKA',2.40771,102.25748),(675,'3MMLK009','MEL','MELAKA','MELAKA',2.44695,102.37620),(676,'3MMLK010','MEL','MELAKA','MELAKA',2.40976,102.59475),(677,'3MMLK011','MEL','MELAKA','DURIAN TUNGGAL',2.31378,102.28248),(678,'3MMLK012','MEL','MELAKA','MELAKA',2.22656,102.26118),(679,'3MMLK013','MEL','MELAKA','MELAKA',2.25619,102.23635),(680,'3MMLK014','MEL','MELAKA','MALIM',2.24650,102.23070),(681,'3MMLK015','MEL','MELAKA','MELAKA',2.29605,102.26073),(682,'3MMLK021','MEL','MELAKA','MELAKA',2.33628,102.25668),(683,'3MMLK022','MEL','MELAKA','MELAKA',2.37350,102.22125),(684,'3MMLK023','MEL','MELAKA','MELAKA',2.19431,102.24774),(685,'3MMLK024','MEL','MELAKA','MELAKA',2.24388,102.24904),(686,'3MMLK025','MEL','MELAKA','MELAKA',2.36081,102.22221),(687,'3MMLK026','MEL','MELAKA','MELAKA',2.30334,102.26281),(688,'3MMLK027','MEL','MELAKA','BATANG MELAKA',2.46246,102.38365),(689,'3MMLK028','MEL','MELAKA','BATANG MELAKA',2.41886,102.30278),(690,'3MMLK029','MEL','MELAKA','PUTAT',2.25562,102.27035),(691,'3MMLK030','MEL','MELAKA','MELAKA',2.30912,102.27143),(692,'3MMLK031','MEL','MELAKA','TAMPIN',2.50649,102.26788),(693,'3MMLK032','MEL','MELAKA','MELAKA',2.20799,102.24802),(694,'3MMLK033','MEL','MELAKA','PUTAT',2.23599,102.26111),(695,'3MMLK034','MEL','MELAKA','MALIM',2.26183,102.23619),(696,'3MMLK035','MEL','MELAKA','REMBIA',2.32459,102.21233),(697,'3MMLK036','MEL','MELAKA','REMBIA',2.32734,102.20867),(698,'3MMLU001','MEL','MERLIMAU','Merlimau',2.13402,102.42070),(699,'3MMLU002','MEL','MERLIMAU','Merlimau',2.15190,102.42718),(700,'3MMLU003','MEL','MERLIMAU','Merlimau',2.15759,102.42190),(701,'3MMLU004','MEL','MERLIMAU','Merlimau',2.14560,102.42630),(702,'3MMLU005','MEL','MERLIMAU','Merlimau',2.15588,102.42448),(703,'3MPGR001','MEL','DUYONG','PUNGGUR',2.19054,102.35771),(704,'3MPGR002','MEL','DUYONG','PUNGGUR',2.18961,102.33381),(705,'3MSMK001','MEL','SERI MELAKA','AIR SALAK',2.26259,102.18181),(706,'3MSMK002','MEL','SERI MELAKA','SERI MELAKA',2.23197,102.20591),(707,'3MSUD001','MEL','SERI MELAKA','SG.UDANG',2.29027,102.13095),(708,'3MTUG001','MEL','TUANG','TUANG',2.33787,102.06043),(709,'3MTUG002','MEL','LINGGI','TUANG',2.34297,102.06034),(710,'3NLGI001','NS','LINGGI','LINGGI',2.39739,101.98242),(711,'3NLGI002','NS','LINGGI','LINGGI',2.48181,102.01274),(712,'3NLGI003','NS','LINGGI','LINGGI',2.50855,101.96441),(713,'3NLGI004','NS','LINGGI','LINGGI',2.58107,101.95746),(714,'3NLGI005','NS','LINGGI','LINGGI',2.65164,101.92499),(715,'3NLGI006','NS','LINGGI','LINGGI',2.70989,101.95310),(716,'3NLGI007','NS','LINGGI','LINGGI',2.69369,101.93383),(717,'3NLGI009','NS','LINGGI','BATANG PENAR',2.74567,101.99182),(718,'3NLGI010','NS','LINGGI','BATANG PENAR',2.46309,102.05548),(719,'3NLGI011','NS','LINGGI','REMBAU',2.45657,102.07131),(720,'3NLGI012','NS','LINGGI','REMBAU',2.59224,102.08540),(721,'3NLGI013','NS','LINGGI','KUNDUR BESAR',2.53850,102.03612),(722,'3NLGI014','NS','LINGGI','PEDAS',2.59221,102.05338),(723,'3NLGI015','NS','LINGGI','SIMIN',2.59067,101.96563),(724,'3NLGI016','NS','LINGGI','KAYU ARA',2.66209,101.91514),(725,'3NLGI017','NS','LINGGI','SENAWANG',2.70148,101.95303),(726,'3NLGI018','NS','LINGGI','PAROI',2.72388,101.98094),(727,'3NLGI019','NS','LINGGI','TEMIANG',2.72076,101.95513),(728,'3NLGI020','NS','LINGGI','BATANG PENAR',2.75701,101.99515),(729,'3NLGI021','NS','LINGGI','BATANG PENAR',2.79101,102.00628),(730,'3NLGI022','NS','LINGGI','EMPANGAN TERIP',2.61908,101.94500),(731,'3NLGI023','NS','LINGGI','LINGGI',2.65988,102.09341),(732,'3NLGI024','NS','LINGGI','BATU HAMPAR',2.71821,102.37263),(733,'3NLGI025','NS','LINGGI','JELAI',2.79960,102.37317),(734,'3NLGI026','NS','LINGGI','MUAR',3.06708,102.11037),(735,'3NLGI027','NS','LINGGI','BATANG PENAR',2.75695,102.00507),(736,'3NLGI032','NS','LINGGI','KENABOI',2.79725,101.99240),(737,'3NLGI033','NS','LINGGI','TEMIANG',2.72699,101.93602),(738,'3NLGI034','NS','LINGGI','BATANG PENAR',2.65182,101.84807),(739,'3NLGI040','NS','LINGGI','NGOI NGOI',2.73325,101.96471),(740,'3NLGT009','NS','LANGAT','BATANG LABU',2.78725,101.75150),(741,'3NLGT013','NS','LANGAT','BATANG BENAR',2.84802,101.82455),(742,'3NLGT019','NS','LANGAT','BATANG BENAR',2.88826,101.82896),(743,'3NLGT020','NS','LANGAT','BATANG BENAR',2.87711,101.83978),(744,'3NLGT021','NS','LANGAT','BATANG BENAR',2.86182,101.81649),(745,'3NLGT022','NS','LANGAT','BUAN',2.89210,101.76442),(746,'3NLGT023','NS','LANGAT','BATANG NILAI',2.81442,101.81137),(747,'3NLGT024','NS','LANGAT','BATANG NILAI',2.80186,101.79170),(748,'3NLGT025','NS','LANGAT','BATANG LABU',2.78166,101.79855),(749,'3NLGT026','NS','LANGAT','JIJAN',2.77773,101.75152),(750,'3NLKT001','NS','LUKUT','LUKUT',2.58621,101.82723),(751,'3NMLK017','NS','MELAKA','DUSUN',2.49489,102.29070),(752,'3NMLK038','NS','MELAKA','TAMPIN',2.49042,102.21906),(753,'3NMLK039','NS','MELAKA','KEMUNTING',2.44893,102.27044),(754,'3NMLK041','NS','MELAKA','TAMPIN',2.46959,102.23453),(755,'3NMUA041','NS','MUAR','GEMAS',2.62716,102.62636),(756,'3NMUA042','NS','MUAR','MUAR',2.73019,102.07406),(757,'3NMUA043','NS','MUAR','GEMENCHEH',2.57983,102.48341),(758,'3NMUA044','NS','MUAR','KELAMAH',2.52349,102.49210),(759,'3NMUA045','NS','MUAR','GEMENCHEH',2.60277,102.59362),(760,'3NMUA046','NS','MUAR','MUAR',2.64532,102.59149),(761,'3NMUA047','NS','MUAR','MUAR',2.63878,102.53989),(762,'3NMUA048','NS','MUAR','MUAR',2.70541,102.50227),(763,'3NMUA049','NS','MUAR','MUAR',2.76511,102.26602),(764,'3NMUA050','NS','MUAR','MUAR',2.88655,102.66610),(765,'3NMUA051','NS','MUAR','MUAR',2.82586,102.69841),(766,'3NMUA052','NS','MUAR','MUAR',2.77406,102.39006),(767,'3NMUA053','NS','MUAR','MUAR',2.75636,102.40243),(768,'3NMUA054','NS','MUAR','JELAI',2.67013,102.35280),(769,'3NMUA055','NS','MUAR','MUAR',2.75301,102.25060),(770,'3NPHG002','NS','PAHANG','PERTANG',3.05301,102.25853),(771,'3NPHG003','NS','PAHANG','SERTING',2.88939,102.45738),(772,'3NPHG004','NS','PAHANG','SERTING',2.98994,102.47507),(773,'3NPHG005','NS','PAHANG','SERTING',2.82589,102.40935),(774,'3NPHG006','NS','PAHANG','TRIANG',3.11792,102.26142),(775,'4CAED001','PHG','ANAK ENDAU','ANAK ENDAU',2.62686,103.43381),(776,'4CAED002','PHG','ANAK ENDAU','ANAK ENDAU',2.64939,103.53726),(777,'4CBBR001','PHG','BEBAR','BEBAR',3.14531,103.42478),(778,'4CBBR002','PHG','BEBAR','BEBAR',3.33242,103.10189),(779,'4CBBR003','PHG','BEBAR','SERAI',3.03916,103.41035),(780,'4CBBR004','PHG','BEBAR','SERAI',3.28337,103.18108),(781,'4CBBR005','PHG','BEBAR','MERBA',3.07745,103.16593),(782,'4CBLK001','PHG','BALOK','BALOK',3.94213,103.37198),(783,'4CBLK002','PHG','BALOK','BALOK',3.95913,103.36350),(784,'4CBLK003','PHG','BALOK','YIOR',3.94101,103.36518),(785,'4CBLK004','PHG','BALOK','PANJANG',4.00400,103.35026),(786,'4CBTM001','PHG','PAHANG','RINGLET',4.41361,101.38093),(787,'4CBTM002','PHG','PAHANG','BERTAM',4.43348,101.38845),(788,'4CBTM003','PHG','PAHANG','LENGGOK',4.45114,101.39118),(789,'4CBTM004','PHG','PAHANG','HABU',4.44247,101.38715),(790,'4CBTM005','PHG','PAHANG','BURUNG',4.49817,101.39551),(791,'4CBTM006','PHG','PAHANG','TRINGKAP',4.51830,101.42798),(792,'4CBTM007','PHG','PAHANG','TERLA',4.55155,101.40995),(793,'4CBTM008','PHG','PAHANG','TELOM',4.52504,101.48832),(794,'4CBTM009','PHG','PAHANG','TELOM',4.56555,101.41079),(795,'4CBTM010','PHG','PAHANG','BERTAM',4.47384,101.37319),(796,'4CBTM011','PHG','PAHANG','BERTAM',4.55802,101.39801),(797,'4CBTM012','PHG','PAHANG','TERLA',4.55826,101.39803),(798,'4CBTM013','PHG','PAHANG','BERTAM',4.50535,101.38786),(799,'4CBTM014','PHG','PAHANG','ULONG',4.45443,101.40555),(800,'4CCHE001','PHG','CHERATING','CHERATING',4.13038,103.39384),(801,'4CKTN001','PHG','KUANTAN','BELAT',3.76628,103.26065),(802,'4CKTN002','PHG','KUANTAN','KUANTAN',4.08342,102.27652),(803,'4CKTN003','PHG','KUANTAN','GALING BESAR',3.81451,103.34429),(804,'4CKTN004','PHG','KUANTAN','GALING BESAR',3.81595,103.33694),(805,'4CKTN005','PHG','KUANTAN','PINANG',3.84432,103.26362),(806,'4CKTN006','PHG','KUANTAN','CHARU',3.90296,103.12848),(807,'4CKTN007','PHG','KUANTAN','RIAU',3.86438,103.22566),(808,'4CKTN010','PHG','KUANTAN','KENAU',3.91925,103.03497),(809,'4CKTN012','PHG','KUANTAN','PANDAN',3.79822,103.21138),(810,'4CKTN013','PHG','KUANTAN','TALAM',3.81478,103.29085),(811,'4CKTN014','PHG','KUANTAN','REMAN',3.91150,103.16657),(812,'4CKTN015','PHG','KUANTAN','KUANTAN',3.87194,103.19116),(813,'4CKTN016','PHG','KUANTAN','KUANTAN',3.91514,103.13672),(814,'4CKTN017','PHG','KUANTAN','KUANTAN',3.94060,103.04980),(815,'4CKTN018','PHG','KUANTAN','KUANTAN',3.95486,102.99274),(816,'4CKTN019','PHG','KUANTAN','KUANTAN',3.79168,103.30603),(817,'4CKTN020','PHG','KUANTAN','KUANTAN',3.84941,103.25037),(818,'4CKTN021','PHG','KUANTAN','KUANTAN',3.92354,103.23044),(819,'4CMCO002','PHG','MERCHONG','MERCHONG',3.04717,103.21223),(820,'4CMCO003','PHG','MERCHONG','MERCHONG',3.00217,103.15735),(821,'4CPHG002','PHG','PAHANG','T. PAYA BUNGOR',3.70140,102.93418),(822,'4CPHG003','PHG','PAHANG','KRAU',3.71483,102.36126),(823,'4CPHG004','PHG','PAHANG','CHINI',3.45089,102.89193),(824,'4CPHG005','PHG','PAHANG','MENTIGA',3.44924,103.05164),(825,'4CPHG006','PHG','PAHANG','LEPAR',4.38823,102.40927),(826,'4CPHG007','PHG','PAHANG','PAHANG',3.50447,103.38897),(827,'4CPHG008','PHG','PAHANG','PAHANG',3.72052,102.91156),(828,'4CPHG010','PHG','PAHANG','PAHANG',3.50115,102.77699),(829,'4CPHG011','PHG','PAHANG','PAHANG',3.44312,102.42807),(830,'4CPHG012','PHG','PAHANG','LEPAR',3.48682,103.10489),(831,'4CPHG013','PHG','PAHANG','PAHANG',3.71156,102.36925),(832,'4CPHG0130','PHG','PAHANG','JELAI',4.29324,101.80897),(833,'4CPHG014','PHG','PAHANG','KERTAM',3.64260,102.86035),(834,'4CPHG015','PHG','PAHANG','LUIT',3.62955,102.82264),(835,'4CPHG016','PHG','PAHANG','MARAN',3.58077,102.77036),(836,'4CPHG018','PHG','PAHANG','KUNDANG',3.55673,102.66893),(837,'4CPHG019','PHG','PAHANG','BERA',3.27479,102.54646),(838,'4CPHG020','PHG','PAHANG','BERA',3.15029,102.61609),(839,'4CPHG021','PHG','PAHANG','PAHANG',3.96080,102.42644),(840,'4CPHG022','PHG','PAHANG','PAHANG',4.06133,102.32751),(841,'4CPHG023','PHG','PAHANG','LEPAR',3.82913,102.79646),(842,'4CPHG024','PHG','PAHANG','TRIANG',3.24252,102.41157),(843,'4CPHG025','PHG','PAHANG','SEMANTAN',3.47678,102.09258),(844,'4CPHG027','PHG','PAHANG','PAHANG',3.76011,101.84944),(845,'4CPHG029','PHG','PAHANG','LIPIS',4.01639,101.97448),(846,'4CPHG030','PHG','PAHANG','LIPIS',4.15414,102.03075),(847,'4CPHG032','PHG','PAHANG','TELANG',4.19840,101.92928),(848,'4CPHG033','PHG','PAHANG','KOYAN',4.25364,101.84016),(849,'4CPHG035','PHG','PAHANG','LIPIS',3.97876,101.78408),(850,'4CPHG036','PHG','PAHANG','SEMANTAN',3.87502,101.82540),(851,'4CPHG037','PHG','PAHANG','TERAS',3.74676,101.81733),(852,'4CPHG038','PHG','PAHANG','TERANUM',3.71279,101.77187),(853,'4CPHG040','PHG','PAHANG','BENTONG',3.51269,101.91423),(854,'4CPHG041','PHG','PAHANG','JENGKA',3.78139,102.64121),(855,'4CPHG042','PHG','PAHANG','MENTIGA',3.33978,102.92315),(856,'4CPHG043','PHG','PAHANG','TASIK CHINI',3.43278,102.92375),(857,'4CPHG044','PHG','PAHANG','PENJURING',3.61229,101.86913),(858,'4CPHG045','PHG','PAHANG','BENTONG',3.49076,101.94668),(859,'4CPHG046','PHG','PAHANG','TELEMONG',3.30414,102.07740),(860,'4CPHG047','PHG','PAHANG','BENUS',3.47597,101.90843),(861,'4CPHG048','PHG','PAHANG','TANGLIR',3.35284,101.82470),(862,'4CPHG049','PHG','PAHANG','JEMPOL',3.55472,102.68432),(863,'4CPHG050','PHG','PAHANG','JEMPOL',3.72739,102.64324),(864,'4CPHG051','PHG','PAHANG','JENGKA',3.52453,102.59173),(865,'4CPHG053','PHG','PAHANG','TANGLIR',3.90117,102.56146),(866,'4CPHG054','PHG','PAHANG','PAHANG',3.45614,102.61619),(867,'4CPHG055','PHG','PAHANG','PAHANG',3.52144,102.51224),(868,'4CPHG056','PHG','PAHANG','BATU',3.88692,102.47042),(869,'4CPHG057','PHG','PAHANG','TANGLIR',3.86404,102.49394),(870,'4CPHG058','PHG','PAHANG','BERA',3.27763,102.54631),(871,'4CPHG059','PHG','PAHANG','BERA',3.24132,102.40083),(872,'4CPHG060','PHG','PAHANG','TASIK CHINI',3.42564,102.91892),(873,'4CPHG061','PHG','PAHANG','SEMANTAN',3.47945,102.39471),(874,'4CPHG062','PHG','PAHANG','TEKAL',3.62839,102.37849),(875,'4CPHG063','PHG','PAHANG','BERA',3.38821,102.53031),(876,'4CPHG071','PHG','PAHANG','TASIK CHINI',3.43393,102.92716),(877,'4CPHG074','PHG','PAHANG','TRIANG',3.23780,102.42155),(878,'4CPHG081','PHG','PAHANG','TERIS',3.59248,102.14053),(879,'4CPHG082','PHG','PAHANG','TERIS',3.59234,102.14365),(880,'4CPHG083','PHG','PAHANG','TERIS',3.59202,102.14459),(881,'4CPHG084','PHG','PAHANG','SEMANTAN',3.51568,102.17220),(882,'4CPHG086','PHG','PAHANG','GAPOI',3.25560,102.10505),(883,'4CPHG087','PHG','PAHANG','JENGKA',3.74679,102.64113),(884,'4CPHG088','PHG','PAHANG','JEMPOL',3.64442,102.67261),(885,'4CPHG089','PHG','PAHANG','MENTIGA',3.36679,102.96361),(886,'4CPHG090','PHG','PAHANG','TEH',3.94040,102.31385),(887,'4CPHG091','PHG','PAHANG','KECAU',3.81626,101.85274),(888,'4CPHG092','PHG','PAHANG','BENTONG',3.49449,101.93014),(889,'4CPHG093','PHG','PAHANG','TELEMONG',3.02240,102.24214),(890,'4CPHG094','PHG','PAHANG','TELEMONG',3.29557,102.08631),(891,'4CPHG096','PHG','PAHANG','JELAI',4.19170,102.05091),(892,'4CPHG097','PHG','PAHANG','PAHANG',3.63657,102.41137),(893,'4CPHG098','PHG','PAHANG','BERKELAH',3.70364,102.98125),(894,'4CPHG100','PHG','PAHANG','PAHANG',3.48756,103.10117),(895,'4CPHG101','PHG','PAHANG','SERTING',3.09929,102.47358),(896,'4CPHG102','PHG','PAHANG','SERTING',3.12842,102.49371),(897,'4CPHG104','PHG','PAHANG','LEPAR',3.69946,102.97028),(898,'4CPHG105','PHG','PAHANG','RETANG',4.08351,102.36791),(899,'4CPHG106','PHG','PAHANG','TANGLIR',3.87415,102.45066),(900,'4CPHG107','PHG','PAHANG','TANGLIR',3.86777,102.52352),(901,'4CPHG108','PHG','PAHANG','TASIK CHINI',3.42852,102.90802),(902,'4CPHG109','PHG','PAHANG','TAHAN',4.44298,102.38511),(903,'4CPHG110','PHG','PAHANG','TASIK CHINI',3.43724,102.91532),(904,'4CPHG111','PHG','PAHANG','PAHANG',3.76442,102.40271),(905,'4CPHG112','PHG','PAHANG','TASIK CHINI',3.43538,102.92907),(906,'4CPHG113','PHG','PAHANG','PAHANG',3.49045,102.42608),(907,'4CPHG114','PHG','PAHANG','TASIK CHINI',3.41772,102.91106),(908,'4CPHG115','PHG','PAHANG','TASIK CHINI',3.42160,102.92803),(909,'4CPHG116','PHG','PAHANG','KECAU',3.49302,102.03426),(910,'4CPHG117','PHG','PAHANG','KECAU',3.74543,101.98124),(911,'4CPHG118','PHG','PAHANG','BENUS',3.38585,101.88576),(912,'4CPHG119','PHG','PAHANG','BILUT',3.59456,101.95514),(913,'4CPHG120','PHG','PAHANG','PERTING',3.51205,101.90497),(914,'4CPHG121','PHG','PAHANG','JENGKA',3.74306,102.54772),(915,'4CPHG122','PHG','PAHANG','SALAK',3.84636,103.19954),(916,'4CPHG123','PHG','PAHANG','RAUB',3.90117,101.99015),(917,'4CPHG124','PHG','PAHANG','LEPAR',3.65119,103.04610),(918,'4CPHG125','PHG','PAHANG','JELAI',4.26453,101.83961),(919,'4CPHG126','PHG','PAHANG','LEPAR',3.49883,103.08673),(920,'4CPHG127','PHG','PAHANG','PAHANG',4.30128,102.05163),(921,'4CPHG129','PHG','PAHANG','BILUT',3.66324,101.89601),(922,'4CPHG130','PHG','PAHANG','TASIK CHINI',3.42324,102.92410),(923,'4CPHG131','PHG','PAHANG','PAHANG',3.96344,102.35954),(924,'4CPHG132','PHG','PAHANG','PERTANG',3.44682,102.07673),(925,'4CPHG133','PHG','PAHANG','BENTONG',3.55427,101.89452),(926,'4CPHG134','PHG','PAHANG','BENTONG',3.58566,101.88887),(927,'4CPHG135','PHG','PAHANG','BELAYAR',3.81673,102.81671),(928,'4CPHG136','PHG','PAHANG','ANAK SG. LEPAR',3.87144,102.81831),(929,'4CPHG137','PHG','PAHANG','PAHANG',3.68613,102.38235),(930,'4CPHG138','PHG','PAHANG','PAHANG',3.52749,103.31542),(931,'4CPHG139','PHG','PAHANG','PAHANG',3.50641,103.37915),(932,'4CPHG140','PHG','PAHANG','TASIK BERA',3.13255,102.60724),(933,'4CPHG141','PHG','PAHANG','PAHANG',3.65783,102.43576),(934,'4CPHG142','PHG','PAHANG','TEMBELING',4.28353,102.40189),(935,'4CPHG143','PHG','PAHANG','TASIK CHINI',3.44359,102.91430),(936,'4CPHG144','PHG','PAHANG','BENTONG',3.44186,102.00864),(937,'4CPHG145','PHG','PAHANG','KECAU',3.55206,101.98232),(938,'4CPHG146','PHG','PAHANG','KECAU',3.74637,101.98119),(939,'4CPHG147','PHG','PAHANG','TERAS',3.73163,101.81105),(940,'4CPHG148','PHG','PAHANG','PAHANG',4.01719,101.96007),(941,'4CPHG150','PHG','PAHANG','PAHANG',4.19080,102.13134),(942,'4CPHG151','PHG','PAHANG','KECAU',4.27626,102.06938),(943,'4CPHG152','PHG','PAHANG','BENUS',3.32173,101.86779),(944,'4CPHG153','PHG','PAHANG','KECAU',3.46788,102.06692),(945,'4CRPN002','PHG','ROMPIN','SEPAYANG',2.71820,103.45932),(946,'4CRPN003','PHG','ROMPIN','PONTIAN',2.74498,103.44783),(947,'4CRPN004','PHG','ROMPIN','ROMPIN',2.86828,103.41823),(948,'4CRPN005','PHG','ROMPIN','AUR',3.11735,103.02991),(949,'4CRPN006','PHG','ROMPIN','JERAM',3.09642,102.93467),(950,'4CRPN007','PHG','ROMPIN','ROMPIN',2.86761,103.22023),(951,'4CRPN008','PHG','ROMPIN','ROMPIN',3.06441,103.01296),(952,'4CRPN010','PHG','ROMPIN','KEPASING',2.99013,102.84523),(953,'4CRPN011','PHG','ROMPIN','KERATONG',2.99086,102.94891),(954,'4CRPN012','PHG','ROMPIN','JEKATIH',2.77662,102.95832),(955,'4CRPN013','PHG','ROMPIN','JEKATIH',2.75773,102.99169),(956,'4CRPN014','PHG','ROMPIN','PUKIN',2.73278,102.91637),(957,'4CRPN015','PHG','ROMPIN','PUKIN',2.69875,102.93714),(958,'4CRPN016','PHG','ROMPIN','BAKAR',2.64652,102.98884),(959,'4CRPN017','PHG','ROMPIN','PUKIN',2.62409,103.00715),(960,'4CRPN018','PHG','ROMPIN','KERATONG',2.80555,102.92944),(961,'4CRPN020','PHG','ROMPIN','ROMPIN',3.02311,103.03760),(962,'4CRPN021','PHG','ROMPIN','KERATONG',2.85025,102.85436),(963,'4CRPN022','PHG','ROMPIN','KERATONG',2.85053,102.85288),(964,'4CRPN030','PHG','ROMPIN','ROMPIN',3.02701,103.03526),(965,'4CTGK001','PHG','TONGGOK','TONGGOK',3.97513,103.38789),(966,'4CTGK002','PHG','TONGGOK','TONGGOK',3.94299,103.37542),(967,'4DGLK001','KEL','GOLOK','TASIK GARU',5.89090,102.01654),(968,'4DGLK002','KEL','GOLOK','GOLOK',6.01758,101.97132),(969,'4DGLK003','KEL','GOLOK','GOLOK',5.79109,101.86226),(970,'4DGLK004','KEL','GOLOK','GOLOK',5.83742,101.88925),(971,'4DGLK005','KEL','GOLOK','GOLOK',5.94947,101.93895),(972,'4DGLK006','KEL','GOLOK','GOLOK',6.07837,102.05208),(973,'4DGLK007','KEL','GOLOK','LANAS',5.78490,101.88943),(974,'4DGLK008','KEL','GOLOK','JEDOK',5.81946,101.97356),(975,'4DKLT001','KEL','KELANTAN','KELANTAN',5.77738,102.15049),(976,'4DKLT002','KEL','KELANTAN','KERILLA',5.68427,102.09719),(977,'4DKLT003','KEL','KELANTAN','KERILLA',5.69058,102.10108),(978,'4DKLT004','KEL','KELANTAN','PERGAU',5.71355,101.74669),(979,'4DKLT005','KEL','KELANTAN','PERGAU',5.61393,101.88136),(980,'4DKLT006','KEL','KELANTAN','KELANTAN',6.11600,102.23001),(981,'4DKLT007','KEL','KELANTAN','NAL',5.62235,102.24763),(982,'4DKLT008','KEL','KELANTAN','NAL',5.61512,102.21667),(983,'4DKLT009','KEL','KELANTAN','NAL',5.60261,102.19154),(984,'4DKLT010','KEL','KELANTAN','KELANTAN',5.53109,102.19645),(985,'4DKLT011','KEL','KELANTAN','PEHI',5.48147,102.23984),(986,'4DKLT012','KEL','KELANTAN','RELAI',4.99070,102.28333),(987,'4DKLT013','KEL','KELANTAN','ARING',4.94343,102.36067),(988,'4DKLT014','KEL','KELANTAN','GALAS',4.88847,101.97130),(989,'4DKLT015','KEL','KELANTAN','KELESA',4.97045,101.96204),(990,'4DKLT016','KEL','KELANTAN','BEROK',4.90171,101.79221),(991,'4DKLT017','KEL','KELANTAN','BETIS',4.89086,101.76887),(992,'4DKLT018','KEL','KELANTAN','BER',4.61821,101.44499),(993,'4DKLT019','KEL','KELANTAN','BEROK',4.62257,101.45597),(994,'4DKLT020','KEL','KELANTAN','BELATOP',4.68036,101.54794),(995,'4DKLT021','KEL','KELANTAN','BELATOP',4.71859,101.55652),(996,'4DKLT022','KEL','KELANTAN','BEROK',4.74924,101.75492),(997,'4DKLT023','KEL','KELANTAN','NENGGIRI',4.90625,101.78966),(998,'4DKLT024','KEL','KELANTAN','NENGGIRI',5.09682,101.97689),(999,'4DKLT025','KEL','KELANTAN','NENGGIRI',5.14822,102.04391),(1000,'4DKLT026','KEL','KELANTAN','LEBIR',4.86974,102.43982),(1001,'4DKLT027','KEL','KELANTAN','LEBIR',5.27509,102.26555),(1002,'4DKLT028','KEL','KELANTAN','LEBIR',4.94263,102.41532),(1003,'4DKLT029','KEL','KELANTAN','LEBIR',5.47095,102.21083),(1004,'4DKLT030','KEL','KELANTAN','RELAI',4.94358,102.30450),(1005,'4DKLT031','KEL','KELANTAN','GALAS',4.70181,101.89885),(1006,'4DKLT032','KEL','KELANTAN','GALAS',4.78892,101.94043),(1007,'4DKLT033','KEL','KELANTAN','GALAS',4.95522,102.00798),(1008,'4DKLT034','KEL','KELANTAN','GALAS',5.08078,102.07073),(1009,'4DKLT035','KEL','KELANTAN','TUANG',4.76120,101.92133),(1010,'4DKLT036','KEL','KELANTAN','KETIL',4.84334,101.98552),(1011,'4DKLT037','KEL','KELANTAN','CHIKU',4.94746,102.20916),(1012,'4DKLT038','KEL','KELANTAN','PERGAU',5.63643,101.71109),(1013,'4DKLT039','KEL','KELANTAN','PERGAU',5.48691,101.90008),(1014,'4DKLT040','KEL','KELANTAN','PERGAU',5.42460,101.91475),(1015,'4DKLT041','KEL','KELANTAN','NENGGIRI',5.40749,101.97675),(1016,'4DKLT042','KEL','KELANTAN','SOKOR',5.63603,102.09763),(1017,'4DKLT043','KEL','KELANTAN','CHIKU',4.89900,102.17745),(1018,'4DKLT044','KEL','KELANTAN','PEHI',5.47620,102.22033),(1019,'4DKLT045','KEL','KELANTAN','KELANTAN',6.02317,102.15354),(1020,'4DKLT046','KEL','KELANTAN','BELATOP',6.16390,102.19906),(1021,'4DKLT047','KEL','KELANTAN','KENKREN',4.87085,101.96060),(1022,'4DKLT048','KEL','KELANTAN','PELAUR',4.62897,101.46787),(1023,'4DKLT049','KEL','KELANTAN','ISOS',6.02158,102.39667),(1024,'4DKLT050','KEL','KELANTAN','PENANGAU',6.15960,102.23310),(1025,'4DKLT051','KEL','KELANTAN','PERGAU',5.69852,101.83260),(1026,'4DKLT052','KEL','KELANTAN','PERGAU',5.48845,101.89896),(1027,'4DKLT053','KEL','KELANTAN','KETIL',4.85067,101.97519),(1028,'4DKLT054','KEL','KELANTAN','KELANTAN',4.95192,102.30920),(1029,'4DKLT055','KEL','KELANTAN','KELANTAN',5.77808,101.89085),(1030,'4DKLT056','KEL','KELANTAN','KELANTAN',5.90749,102.19581),(1031,'4DKLT058','KEL','KELANTAN','LEBIR',5.81521,102.40895),(1032,'4DKLT059','KEL','KELANTAN','MURING',5.56254,102.19633),(1033,'4DKLT061','KEL','KELANTAN','RASAU',5.76679,102.15129),(1034,'4DKMS001','KEL','KEMASIN','KEMASIN',6.02919,102.28497),(1035,'4DKMS002','KEL','KEMASIN','SEMERAK',5.85364,102.39926),(1036,'4DKMS003','KEL','KEMASIN','KEMASIN',6.07811,102.37678),(1037,'4DKMS004','KEL','KEMASIN','SEMERAK',5.90901,102.37529),(1038,'4DKMS005','KEL','KEMASIN','SEMERAK',5.83501,102.41599),(1039,'4DKMS006','KEL','KEMASIN','GALI',6.11024,102.36602),(1040,'4DPCH001','KEL','PENGKALAN CHEPA','RAJA GALI',6.17744,102.28808),(1041,'4DPCH002','KEL','PENGKALAN CHEPA','KELADI',6.14107,102.23720),(1042,'4DPCH003','KEL','PENGKALAN CHEPA','ALOR B',6.14053,102.25083),(1043,'4DPCH004','KEL','PENGKALAN CHEPA','ALOR LINTAH',6.15510,102.28896),(1044,'4DPCH005','KEL','PENGKALAN CHEPA','PENGKALAN CHEPA',6.14593,102.25279),(1045,'4DPCH006','KEL','PENGKALAN CHEPA','PENGKALAN CHEPA',6.16967,102.27143),(1046,'4DPDT001','KEL','PENGKALAN DATU','PENGKALAN DATU',6.11711,102.29627),(1047,'4DPDT002','KEL','PENGKALAN DATU','PENGKALAN DATU',6.09636,102.29134),(1048,'4DPDT003','KEL','PENGKALAN DATU','PENGKALAN DATU',6.07625,102.29456),(1049,'4DPDT004','KEL','PENGKALAN DATU','PASIR HOR',6.09229,102.25332),(1050,'4TBST001','TGG','BESUT','JERTIH',5.73836,102.49706),(1051,'4TBST002','TGG','BESUT','BESUT',5.73771,102.49114),(1052,'4TBST003','TGG','BESUT','BESUT',5.67780,102.49588),(1053,'4TBST004','TGG','BESUT','BESUT',5.45595,102.48913),(1054,'4TBST005','TGG','BESUT','BESUT',5.63009,102.49720),(1055,'4TBST006','TGG','BESUT','BESUT',5.61368,102.48527),(1056,'4TCKI001','TGG','CHUKAI','IBOK',4.32695,103.36803),(1057,'4TCKI002','TGG','CHUKAI','IBOK',4.37646,103.33586),(1058,'4TCKI003','TGG','CHUKAI','CHUKAI',4.25662,103.43341),(1059,'4TCKI004','TGG','CHUKAI','RUANG',4.27876,103.43561),(1060,'4TCKI005','TGG','CHUKAI','RUANG',4.28390,103.46626),(1061,'4TCKI006','TGG','CHUKAI','BUNGKUS',4.30650,103.37393),(1062,'4TDGN001','TGG','DUNGUN','TELEMBOH',4.89861,103.17996),(1063,'4TDGN002','TGG','DUNGUN','DUNGUN',4.60590,103.00232),(1064,'4TDGN003','TGG','DUNGUN','DUNGUN',4.80368,103.14708),(1065,'4TDGN004','TGG','DUNGUN','DUNGUN',4.79563,103.33463),(1066,'4TDGN005','TGG','DUNGUN','DUNGUN',4.84702,103.20004),(1067,'4TDGN006','TGG','DUNGUN','DUNGUN',4.80999,103.31079),(1068,'4TIBI001','TGG','IBAI','IBAI',5.28097,103.14151),(1069,'4TIBI002','TGG','IBAI','IBAI',5.24900,103.12064),(1070,'4TIBI003','TGG','IBAI','IBAI',5.27956,103.16867),(1071,'4TKLU005','TGG','KLUANG','KLUANG',5.74282,102.62821),(1072,'4TKMM001','TGG','KEMAMAN','RANSAN',4.40329,103.25333),(1073,'4TKMM002','TGG','KEMAMAN','RANSAN',4.40461,103.25623),(1074,'4TKMM003','TGG','KEMAMAN','CHERUL',4.12651,103.18375),(1075,'4TKMM004','TGG','KEMAMAN','CHERUL',4.13849,103.17078),(1076,'4TKMM005','TGG','KEMAMAN','NERAM',4.01259,103.29738),(1077,'4TKMM006','TGG','KEMAMAN','PERASING',3.97950,103.31047),(1078,'4TKMM007','TGG','KEMAMAN','KEMAMAN',4.26828,103.20799),(1079,'4TKMM008','TGG','KEMAMAN','KEMAMAN',4.21688,103.31755),(1080,'4TKMM009','TGG','KEMAMAN','KEMAMAN',4.21751,103.31623),(1081,'4TKMM010','TGG','KEMAMAN','CHERUL',4.12894,103.21747),(1082,'4TKTH001','TGG','KERTIH','KERTIH',4.56706,103.39852),(1083,'4TKTH002','TGG','KERTIH','KERTIH',4.52496,103.44810),(1084,'4TMCA001','TGG','MERCHANG','LANDAS',4.94958,103.18477),(1085,'4TMCA002','TGG','MERCHANG','MERCHANG',4.96787,103.33166),(1086,'4TMER001','TGG','MERANG','MERANG',5.50044,102.89686),(1087,'4TMRG001','TGG','MARANG','KERAK',5.21752,103.18086),(1088,'4TMRG002','TGG','MARANG','MARANG',5.19912,103.19847),(1089,'4TMRG003','TGG','MARANG','TEMALA',5.11806,103.09713),(1090,'4TPKA001','TGG','PAKA','BESUL',4.72571,103.20442),(1091,'4TPKA002','TGG','PAKA','RENGAT',4.58858,103.21323),(1092,'4TPKA003','TGG','PAKA','RASAU',4.63528,103.32037),(1093,'4TPKA004','TGG','PAKA','RASAU',4.64954,103.30973),(1094,'4TPKA005','TGG','PAKA','PAKA',4.65225,103.40850),(1095,'4TPKA006','TGG','PAKA','PAKA',4.68668,103.35016),(1096,'4TPKA007','TGG','PAKA','PAKA',4.67738,103.36054),(1097,'4TSTU001','TGG','SETIU','CHALOK',5.47668,102.84688),(1098,'4TSTU002','TGG','SETIU','BARI',5.39087,102.86340),(1099,'4TSTU003','TGG','SETIU','TAROM',5.44657,102.78749),(1100,'4TSTU004','TGG','SETIU','SETIU',5.52217,102.74444),(1101,'4TSTU005','TGG','SETIU','CHALOK',5.42010,102.82406),(1102,'4TSTU006','TGG','SETIU','CHALOK',5.60421,102.81545),(1103,'4TSTU007','TGG','SETIU','SETIU',5.48408,102.70842),(1104,'4TTGG001','TGG','TERENGGANU','TERENGGANU',5.29372,103.09304),(1105,'4TTGG002','TGG','TERENGGANU','BERANG',5.06864,103.00894),(1106,'4TTGG003','TGG','TERENGGANU','TERENGGANU',5.06342,102.93663),(1107,'4TTGG004','TGG','TERENGGANU','NERUS',5.25461,102.93522),(1108,'4TTGG005','TGG','TERENGGANU','NERUS',5.36777,102.82240),(1109,'4TTGG006','TGG','TERENGGANU','NERUS',5.40884,102.80099),(1110,'4TTGG007','TGG','TERENGGANU','PUEH',5.10538,102.90459),(1111,'4TTGG008','TGG','TERENGGANU','PUEH',5.08998,102.92526),(1112,'4TTGG009','TGG','TERENGGANU','TERENGGANU',5.07236,103.00701),(1113,'4TTGG010','TGG','TERENGGANU','NERUS',5.38692,103.06676),(1114,'4TTGG011','TGG','TERENGGANU','BERANG',4.89076,102.99188),(1115,'4TTGG012','TGG','TERENGGANU','TELEMONG',5.21921,103.02540),(1116,'4TTGG013','TGG','TERENGGANU','TERENGGANU',5.26521,103.06102),(1117,'4TTGG014','TGG','TERENGGANU','NERUS',5.34344,102.87321),(1118,'4TTGG015','TGG','TERENGGANU','NERUS',5.33611,102.85908),(1119,'5SAPS001','SBH','APAS','APAS',4.28005,118.05874),(1120,'5SBGW001','SBH','BONGAWAN','BONGAWAN',5.54131,115.85394),(1121,'5SBKG001','SBH','BINGKONGAN','BANDAU',6.46564,116.75319),(1122,'5SBKG002','SBH','BINGKONGAN','MENGGARIS',6.50742,116.71247),(1123,'5SBKG003','SBH','BINGKONGAN','MENGGARIS',6.53044,116.68778),(1124,'5SBKG004','SBH','BINGKONGAN','TANDEK',6.53040,116.84719),(1125,'5SBKG005','SBH','BINGKONGAN','BINGKONGAN',6.56542,116.70857),(1126,'5SBKG006','SBH','BINGKONGAN','BINGKONGAN',6.55545,116.70027),(1127,'5SBKK001','SBH','BENGKOKA','BENGKOKA',6.72349,117.06526),(1128,'5SBKK002','SBH','BENGKOKA','BENGKOKA',6.70061,117.08122),(1129,'5SBLU001','SBH','BALUNG','BALUNG',4.37318,118.11092),(1130,'5SBTN001','SBH','BRANTIAN','BRANTIAN',4.52189,117.57078),(1131,'5SKBK001','SBH','KALABAKAN','KALABAKAN',4.36819,117.51576),(1132,'5SKBK002','SBH','KALABAKAN','KALABAKAN',4.39792,117.49321),(1133,'5SKBK003','SBH','KALABAKAN','KALABAKAN',4.41522,117.47661),(1134,'5SKBT001','SBH','KINABATANGAN','KINABATANGAN',5.40710,117.95102),(1135,'5SKBT002','SBH','KINABATANGAN','KINABATANGAN',5.48725,117.83449),(1136,'5SKBT003','SBH','KINABATANGAN','KOYAH',5.27113,118.03604),(1137,'5SKBT004','SBH','KINABATANGAN','KINABATANGAN',5.49653,118.20751),(1138,'5SKBT005','SBH','KINABATANGAN','KINABATANGAN',5.50852,118.28567),(1139,'5SKBT006','SBH','KINABATANGAN','KARAMUAK',5.52631,117.04324),(1140,'5SKBT007','SBH','KINABATANGAN','TAKALA',5.33335,117.98374),(1141,'5SKBT008','SBH','KINABATANGAN','MENANGGUL',5.52225,118.20657),(1142,'5SKBT009','SBH','KINABATANGAN','LEEPANG',5.54749,118.35586),(1143,'5SKBT010','SBH','KINABATANGAN','PIN',5.39928,117.88786),(1144,'5SKDI001','SBH','KEDAMAIAN','TEMPASUK',6.35713,116.43791),(1145,'5SKDI002','SBH','KEDAMAIAN','TEMPASUK',6.32269,116.43373),(1146,'5SKDI003','SBH','KEDAMAIAN','WARIU',6.33424,116.48007),(1147,'5SKDI004','SBH','KEDAMAIAN','KEDAMAIAN',6.22780,116.45115),(1148,'5SKLP001','SBH','KALUMPANG','KALUMPANG',4.44448,118.20843),(1149,'5SKLP002','SBH','KALUMPANG','KALUMPANG',4.58508,118.18786),(1150,'5SKLP003','SBH','KALUMPANG','KALUMPANG',4.41321,118.26760),(1151,'5SKLP004','SBH','KALUMPANG','PANG BURONG 1',4.45062,118.24560),(1152,'5SKLP005','SBH','KALUMPANG','PANG BURONG 2',4.44942,118.22086),(1153,'5SKMA001','SBH','KIMANIS','KIMANIS',5.62253,115.89940),(1154,'5SLBK001','SBH','LABOK','KINIPIR',5.99680,116.57848),(1155,'5SLBK002','SBH','LABOK','KINIPIR',5.90645,116.63976),(1156,'5SLBK003','SBH','LABOK','LIWAGU',5.71792,116.86388),(1157,'5SLBK004','SBH','LABOK','LIWAGU',5.95678,116.67037),(1158,'5SLBK005','SBH','LABOK','MALIAU',5.62313,117.13602),(1159,'5SLBK006','SBH','LABOK','LABOK',5.94765,117.32802),(1160,'5SLBK007','SBH','LABOK','TUNGUD',6.03808,117.35712),(1161,'5SLKG001','SBH','LINGKUNGAN','Lingkungan',5.19865,115.62667),(1162,'5SLKG002','SBH','LINGKUNGAN','Bukau',5.17689,115.64635),(1163,'5SLKS001','SBH','LIKAS','INANAM',6.01937,116.11818),(1164,'5SLKS002','SBH','LIKAS','INANAM',5.99565,116.13889),(1165,'5SLKS003','SBH','LIKAS','INANAM',5.97584,116.19679),(1166,'5SLKS004','SBH','LIKAS','LIKAS',5.98407,116.11888),(1167,'5SLKS005','SBH','LIKAS','LIKAS',5.99347,116.11913),(1168,'5SLKS006','SBH','LIKAS','MENGGATAL',6.02644,116.15637),(1169,'5SLKS007','SBH','LIKAS','MENGGATAL',6.02588,116.17201),(1170,'5SLKS008','SBH','LIKAS','DARAU',6.01993,116.14122),(1171,'5SLKT001','SBH','LAKUTAN','LAKUTAN',5.10761,115.58047),(1172,'5SMBT001','SBH','MEMBAKUT','MEMBAKUT',5.47151,115.80307),(1173,'5SMGL001','SBH','MENGGALONG','MENGGALONG',4.99613,115.54901),(1174,'5SMGL002','SBH','MENGGALONG','MENGGALONG',4.98526,115.62621),(1175,'5SMND001','SBH','MOUNAD','MOUNAD',5.69247,117.54186),(1176,'5SMND002','SBH','MOUNAD','MOUNAD',5.83536,117.55085),(1177,'5SMRT001','SBH','MEROTAI','MEROTAI',4.42131,117.76352),(1178,'5SMRT002','SBH','MEROTAI','MEROTAI',4.42543,117.77510),(1179,'5SMRT003','SBH','MEROTAI','MEROTAI',4.44213,117.77430),(1180,'5SMYG001','SBH','MOYOG','MOYOG',5.90043,116.08076),(1181,'5SMYG002','SBH','MOYOG','MOYOG',5.91258,116.11537),(1182,'5SMYG003','SBH','MOYOG','MOYOG',5.90229,116.18413),(1183,'5SMYG004','SBH','MOYOG','MOYOG',5.92123,116.15899),(1184,'5SPDS001','SBH','PADAS','BUNSIT',5.43741,116.16967),(1185,'5SPDS002','SBH','PADAS','LIAWAN',5.37214,116.15232),(1186,'5SPDS003','SBH','PADAS','PADAS',5.34670,115.74239),(1187,'5SPDS004','SBH','PADAS','PADAS',5.34248,115.77245),(1188,'5SPDS005','SBH','PADAS','PADAS',5.11533,115.93718),(1189,'5SPDS006','SBH','PADAS','PANGATAN',5.11291,115.94804),(1190,'5SPDS007','SBH','PADAS','TANDULU',5.70374,116.32741),(1191,'5SPDS008','SBH','PADAS','PEGALAN',5.66511,116.36853),(1192,'5SPDS009','SBH','PADAS','PEGALAN',5.31443,116.15056),(1193,'5SPDS010','SBH','PADAS','PEGALAN',5.27314,116.12532),(1194,'5SPDS011','SBH','PADAS','PADAS',5.37156,115.69608),(1195,'5SPPR001','SBH','PAPAR','PAPAR',5.71208,115.95122),(1196,'5SPPR002','SBH','PAPAR','PAPAR',5.69394,115.98792),(1197,'5SPPR003','SBH','PAPAR','PAPAR',5.73542,115.93519),(1198,'5SPPR004','SBH','PAPAR','PAPAR',5.72509,116.07118),(1199,'5SPPR005','SBH','PAPAR','PAPAR',5.70764,116.03949),(1200,'5SPTN001','SBH','PAITAN','PAITAN',6.39243,117.38201),(1201,'5SSAP001','SBH','SAPI','SUALONG',5.83024,117.33583),(1202,'5SSAP002','SBH','SAPI','SAPI',5.74354,117.38263),(1203,'5SSAP003','SBH','SAPI','SAPI',5.72817,117.37629),(1204,'5SSAP004','SBH','SAPI','SAPI',5.82724,117.43582),(1205,'5SSBK001','SBH','SILABUKAN','SILABUKAN',5.00363,118.54487),(1206,'5SSBK002','SBH','SILABUKAN','SILABUKAN',5.00748,118.56359),(1207,'5SSBL001','SBH','SEMBULAN','SEMBULAN',5.97044,116.07220),(1208,'5SSBL002','SBH','SEMBULAN','SEMBULAN',5.95851,116.07187),(1209,'5SSGM001','SBH','SEGAMA','SEGAMA',5.10523,118.22479),(1210,'5SSGM002','SBH','SEGAMA','SEGAMA',4.96691,117.80376),(1211,'5SSGM003','SBH','SEGAMA','SEGAMA',5.43182,118.66117),(1212,'5SSLD001','SBH','SEGALIUD','SEGALIUD',5.72485,117.80983),(1213,'5SSLD002','SBH','SEGALIUD','SEGALIUD',5.73159,117.81793),(1214,'5SSUG001','SBH','SUGUT','BONGKUD',6.01918,116.75888),(1215,'5SSUG002','SBH','SUGUT','LOHAN',6.00267,116.74391),(1216,'5SSUG003','SBH','SUGUT','MERALI',6.05292,116.79717),(1217,'5SSUG004','SBH','SUGUT','SUGUT',6.13124,116.87632),(1218,'5SSUG005','SBH','SUGUT','SUGUT',6.00623,116.79205),(1219,'5SSUG006','SBH','SUGUT','SUGUT',6.17450,117.23009),(1220,'5STHL001','SBH','TENGHILAN','TENGHILAN',6.25647,116.33589),(1221,'5STKU001','SBH','TUNGKU','TUNGKU',5.01863,118.85785),(1222,'5STKU002','SBH','TUNGKU','TUNGKU',5.09466,118.83408),(1223,'5STKY001','SBH','TINGKAYU','TINGKAYU',4.74892,118.12002),(1224,'5STKY002','SBH','TINGKAYU','TINGKAYU',4.72536,118.07517),(1225,'5STLP001','SBH','TELIPOK','TELIPOK',6.09007,116.19554),(1226,'5STLP002','SBH','TELIPOK','TELIPOK',6.08153,116.21114),(1227,'5STUA001','SBH','TUARAN','DAMIT',6.18660,116.23374),(1228,'5STUA002','SBH','TUARAN','DAMIT',6.17565,116.24929),(1229,'5STUA003','SBH','TUARAN','SONG SAI',6.14833,116.24193),(1230,'5STUA004','SBH','TUARAN','TUARAN',6.13393,116.26669),(1231,'5STUA005','SBH','TUARAN','TUARAN',6.06071,116.28143),(1232,'5STWU001','SBH','TAWAU','TAWAU',4.25578,117.89561),(1233,'5STWU002','SBH','TAWAU','TAWAU',4.27900,117.88412),(1234,'5STWU003','SBH','TAWAU','TAWAU',4.30512,117.88484),(1235,'5STWU004','SBH','TAWAU','TAWAU',4.39844,117.88839),(1236,'5SUSM001','SBH','UMAS-UMAS','UMAS UMAS',4.51930,117.70155),(1237,'6QBLG001','SWK','BALINGIAN','BALINGIAN',2.93599,112.54755),(1238,'6QBLG002','SWK','BALINGIAN','BALINGIAN',2.57752,112.54877),(1239,'6QBRM001','SWK','BARAM','BARAM',4.58017,113.98290),(1240,'6QBRM002','SWK','BARAM','BARAM',4.57392,114.00174),(1241,'6QBRM003','SWK','BARAM','BARAM',4.17699,114.32158),(1242,'6QBRM004','SWK','BARAM','BARAM',4.02069,114.39834),(1243,'6QBRM005','SWK','BARAM','TUTUH',4.01609,114.41058),(1244,'6QKMN001','SWK','KEMENA','KEMENA',3.16773,113.04438),(1245,'6QKMN002','SWK','KEMENA','KEMENA',3.11162,113.26778),(1246,'6QKMN003','SWK','KEMENA','KEMENA',3.15179,113.08873),(1247,'6QKMN004','SWK','KEMENA','KEMENA',3.23668,113.61703),(1248,'6QKMN005','SWK','KEMENA','SIBIU',3.16777,113.05191),(1249,'6QKRN014','SWK','KERIAN','KERIAN',1.73755,111.33798),(1250,'6QKRN015','SWK','KERIAN','KERIAN',1.72157,111.42850),(1251,'6QKRN016','SWK','KERIAN','SEBLAK',1.88498,111.30167),(1252,'6QKRN017','SWK','KERIAN','SELALANG',2.00130,111.36609),(1253,'6QKYN001','SWK','KAYAN','KAYAN',1.64976,109.86278),(1254,'6QKYN002','SWK','KAYAN','KAYAN',1.54582,109.85047),(1255,'6QKYN003','SWK','KAYAN','KAYAN',1.50295,109.92412),(1256,'6QLBG001','SWK','LIMBANG','LIMBANG',4.75772,115.00613),(1257,'6QLBG002','SWK','LIMBANG','LIMBANG',4.74839,115.00610),(1258,'6QLBG003','SWK','LIMBANG','LIMBANG',4.64561,114.82418),(1259,'6QLBG004','SWK','LIMBANG','LIMBANG',4.54930,114.85923),(1260,'6QLBG005','SWK','LIMBANG','LIMBANG',4.48249,114.91599),(1261,'6QLPR001','SWK','LUPAR','AI',1.04362,111.83157),(1262,'6QLPR002','SWK','LUPAR','AI',1.15106,111.86103),(1263,'6QLPR003','SWK','LUPAR','LUPAR',1.33078,111.30417),(1264,'6QLPR004','SWK','LUPAR','LUPAR',1.23913,111.46293),(1265,'6QLPR005','SWK','LUPAR','LUPAR',1.13835,111.66833),(1266,'6QLPR006','SWK','LUPAR','SEKERANG',1.29497,111.62258),(1267,'6QLPR007','SWK','LUPAR','SETERAP',1.14943,111.11801),(1268,'6QLPR008','SWK','LUPAR','UNDUP',1.11957,111.54094),(1269,'6QLWS001','SWK','LAWAS','LAWAS',4.86150,115.41130),(1270,'6QLWS002','SWK','LAWAS','LAWAS',4.85699,115.40775),(1271,'6QLWS003','SWK','LAWAS','LAWAS',4.82663,115.44967),(1272,'6QMKH001','SWK','MUKAH','MUKAH',2.89757,112.09564),(1273,'6QMKH002','SWK','MUKAH','MUKAH',2.88035,112.14996),(1274,'6QMKH003','SWK','MUKAH','MUKAH',2.83393,112.18442),(1275,'6QMKH004','SWK','MUKAH','MUKAH',2.52247,112.32413),(1276,'6QMKH005','SWK','MUKAH','MUKAH',2.76813,112.19274),(1277,'6QMRI001','SWK','MIRI','ADONG',4.44882,114.04409),(1278,'6QMRI002','SWK','MIRI','DALAM',4.33792,114.01156),(1279,'6QMRI003','SWK','MIRI','LUTONG',4.46793,113.99967),(1280,'6QMRI004','SWK','MIRI','LUTONG',4.48744,114.00008),(1281,'6QMRI005','SWK','MIRI','MIRI',4.41318,114.06233),(1282,'6QMRI006','SWK','MIRI','MIRI',4.41112,114.02012),(1283,'6QMRI007','SWK','MIRI','PADANG LIKU',4.23816,114.06226),(1284,'6QNIA001','SWK','NIAH','NIAH',3.80292,113.75734),(1285,'6QNIA002','SWK','NIAH','NIAH',3.73618,113.78305),(1286,'6QNIA003','SWK','NIAH','SEKALOH',3.75530,113.84764),(1287,'6QNIA004','SWK','NIAH','SEKALOH',3.77677,113.82870),(1288,'6QOYA001','SWK','OYA','OYA',2.85576,111.87482),(1289,'6QOYA002','SWK','OYA','OYA',2.74256,111.93782),(1290,'6QOYA003','SWK','OYA','OYA',2.39966,112.13881),(1291,'6QRJG001','SWK','RAJANG','SARIKEI',2.12940,111.51425),(1292,'6QRJG002','SWK','RAJANG','SARIKEI',1.99333,111.51297),(1293,'6QRJG003','SWK','RAJANG','MERADONG',2.15758,111.64204),(1294,'6QRJG004','SWK','RAJANG','BINATANG',2.06091,111.68845),(1295,'6QRJG005','SWK','RAJANG','JULAU',2.02415,111.91785),(1296,'6QRJG006','SWK','RAJANG','KANOWIT',2.01642,112.02081),(1297,'6QRJG007','SWK','RAJANG','SALIM',2.23752,111.88569),(1298,'6QRJG008','SWK','RAJANG','RAJANG',2.13260,111.51817),(1299,'6QRJG009','SWK','RAJANG','RAJANG',2.13272,111.52525),(1300,'6QRJG010','SWK','RAJANG','RAJANG',2.16617,111.62959),(1301,'6QRJG011','SWK','RAJANG','RAJANG',2.17182,111.63672),(1302,'6QRJG012','SWK','RAJANG','RAJANG',2.32512,111.83861),(1303,'6QRJG013','SWK','RAJANG','RAJANG',2.28645,111.82810),(1304,'6QRJG014','SWK','RAJANG','RAJANG',2.23746,111.84808),(1305,'6QRJG015','SWK','RAJANG','RAJANG',2.15409,112.01456),(1306,'6QRJG016','SWK','RAJANG','RAJANG',2.09935,112.15815),(1307,'6QRJG017','SWK','RAJANG','RAJANG',2.01108,112.55062),(1308,'6QRJG018','SWK','RAJANG','RAJANG',2.01767,112.93729),(1309,'6QRJG019','SWK','RAJANG','BALOI',2.77838,114.00919),(1310,'6QRJG020','SWK','RAJANG','PAKAN',1.89160,111.68090),(1311,'6QRJG021','SWK','RAJANG','DARO',2.58732,111.46814),(1312,'6QRJG022','SWK','RAJANG','JEMORENG',2.67077,111.54679),(1313,'6QRJG023','SWK','RAJANG','PILA PARIT',2.81595,111.71907),(1314,'6QSBT001','SWK','SIBUTI','KABULOH',4.12178,113.98423),(1315,'6QSBT002','SWK','SIBUTI','KABULOH',4.12855,113.98954),(1316,'6QSBT003','SWK','SIBUTI','KEJAPIL',4.09965,113.92948),(1317,'6QSBT004','SWK','SIBUTI','SATAP',4.08310,113.95852),(1318,'6QSBT005','SWK','SIBUTI','SIBUTI',4.05722,113.84715),(1319,'6QSBT006','SWK','SIBUTI','SIBUTI',3.98152,113.93835),(1320,'6QSDG001','SWK','SADONG','KARANGAN',1.22615,110.69559),(1321,'6QSDG002','SWK','SADONG','KARANGAN',1.04934,110.75715),(1322,'6QSDG003','SWK','SADONG','SADONG',1.51365,110.74377),(1323,'6QSDG004','SWK','SADONG','SADONG',1.24784,110.68790),(1324,'6QSDG005','SWK','SADONG','SADONG',1.16073,110.57021),(1325,'6QSDG006','SWK','SADONG','SADONG',1.10344,110.51122),(1326,'6QSDG007','SWK','SADONG','TARAT',1.20737,110.53236),(1327,'6QSML001','SWK','SIMILAJAU','SIMILAJAU',3.34502,113.39851),(1328,'6QSML002','SWK','SIMILAJAU','SIMILAJAU',3.30243,113.17952),(1329,'6QSMS001','SWK','SEMUNSAM','SEMUNSAM',1.79851,109.78444),(1330,'6QSRB001','SWK','SARIBAS','SARIBAS',1.61603,111.28221),(1331,'6QSRB002','SWK','SARIBAS','LAYAR',1.42226,111.54369),(1332,'6QSRB003','SWK','SARIBAS','LAYAR',1.45853,111.56754),(1333,'6QSUA001','SWK','SUAI','SUAI',3.56194,113.63886),(1334,'6QSWK001','SWK','SARAWAK','SARAWAK',1.55616,110.39694),(1335,'6QSWK002','SWK','SARAWAK','SARAWAK KANAN',1.57537,110.40937),(1336,'6QSWK003','SWK','SARAWAK','SARAWAK',1.55576,110.32505),(1337,'6QSWK004','SWK','SARAWAK','SARAWAK',1.50900,110.27072),(1338,'6QSWK005','SWK','SARAWAK','SARAWAK KIRI',1.45215,110.28155),(1339,'6QSWK006','SWK','SARAWAK','SARAWAK',1.44695,110.21960),(1340,'6QSWK007','SWK','SARAWAK','SARAWAK',1.45552,110.16288),(1341,'6QSWK008','SWK','SARAWAK','SARAWAK',1.41486,110.13474),(1342,'6QSWK009','SWK','SARAWAK','KUAP',1.51270,110.40896),(1343,'6QSWK010','SWK','SARAWAK','KUAP',1.43794,110.36421),(1344,'6QSWK011','SWK','SARAWAK','MAONG KIRI',1.53331,110.31898),(1345,'6QSWK012','SWK','SARAWAK','SEMENGGOH',1.45039,110.32959),(1346,'6QSWK013','SWK','SARAWAK','SAMARAHAN',1.45976,110.50161),(1347,'6QSWK014','SWK','SARAWAK','SAMARAHAN',1.26490,110.46587),(1348,'6QSWK015','SWK','SARAWAK','TABUAN',1.54196,110.38321),(1349,'6QSWK016','SWK','SARAWAK','SEMADANG',1.15683,110.26485),(1350,'6QSWK017','SWK','SARAWAK','KELANTAN',1.53394,110.40389),(1351,'6QSWK018','SWK','SARAWAK','TAPAH',1.29068,110.40764),(1352,'6QTSN001','SWK','TRUSAN','TRUSAN',4.78074,115.27216),(1353,'6QTTU001','SWK','TATAU','TATAU',2.87851,112.85911);
/*!40000 ALTER TABLE `tbl_river_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sample`
--

DROP TABLE IF EXISTS `tbl_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sample` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sampleID` varchar(50) NOT NULL,
  `typeID` varchar(10) NOT NULL,
  `name1` varchar(30) NOT NULL,
  `name2` varchar(30) NOT NULL,
  `transDate` date NOT NULL,
  `transTime` time NOT NULL,
  `stateID` varchar(10) NOT NULL,
  `categoryID` varchar(10) NOT NULL,
  `stationID` varchar(10) NOT NULL,
  `latitude1` varchar(50) NOT NULL,
  `longitude1` varchar(50) NOT NULL,
  `latitude2` varchar(50) NOT NULL,
  `longitude2` varchar(50) NOT NULL,
  `weatherID` varchar(10) NOT NULL,
  `tideID` varchar(10) NOT NULL,
  `conditionID` varchar(10) NOT NULL,
  `tarball` varchar(10) NOT NULL,
  `eventName` varchar(50) NOT NULL,
  `labName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sample`
--

LOCK TABLES `tbl_sample` WRITE;
/*!40000 ALTER TABLE `tbl_sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sample_data`
--

DROP TABLE IF EXISTS `tbl_sample_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sample_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sampleID` varchar(20) NOT NULL,
  `data1` decimal(10,2) NOT NULL,
  `data2` decimal(10,2) NOT NULL,
  `data3` decimal(10,2) NOT NULL,
  `data4` decimal(10,2) NOT NULL,
  `data5` decimal(10,2) NOT NULL,
  `data6` decimal(10,2) NOT NULL,
  `data7` decimal(10,2) NOT NULL,
  `data8` decimal(10,2) NOT NULL,
  `data9` decimal(10,2) NOT NULL,
  `data10` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sample_data`
--

LOCK TABLES `tbl_sample_data` WRITE;
/*!40000 ALTER TABLE `tbl_sample_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sample_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_state`
--

DROP TABLE IF EXISTS `tbl_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_state` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stateID` varchar(20) NOT NULL,
  `stateName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_state`
--

LOCK TABLES `tbl_state` WRITE;
/*!40000 ALTER TABLE `tbl_state` DISABLE KEYS */;
INSERT INTO `tbl_state` VALUES (1,'TGG','TERENGGANU'),(2,'KEL','KELANTAN'),(3,'PHG','PAHANG'),(4,'KUL','KUALA LUMPUR'),(5,'SEL','SELANGOR'),(6,'PRK','PERAK'),(7,'PER','PERLIS'),(8,'PEN','PULAU PINANG'),(9,'KED','KEDAH'),(10,'NS','NEGERI SEMBILAN'),(11,'MEL','MELAKA'),(12,'JHR',' JOHOR'),(13,'SBH','SABAH'),(14,'WL','WP LABUAN'),(16,'SWK','SARAWAK');
/*!40000 ALTER TABLE `tbl_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tarball_station`
--

DROP TABLE IF EXISTS `tbl_tarball_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tarball_station` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stationID` varchar(20) NOT NULL,
  `stateID` varchar(10) NOT NULL,
  `categoryID` varchar(10) NOT NULL,
  `locationName` varchar(50) NOT NULL,
  `longitude` decimal(10,5) NOT NULL,
  `latitude` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tarball_station`
--

LOCK TABLES `tbl_tarball_station` WRITE;
/*!40000 ALTER TABLE `tbl_tarball_station` DISABLE KEYS */;
INSERT INTO `tbl_tarball_station` VALUES (24,'MMJC012','JHR','CT','TANJUNG MERAK',104.11000,1.36275),(25,'MMJC020','JHR','CT','PANTAI DESARU',104.26100,1.54667),(26,'MMJC028','JHR','CT','BATU LAYAR',104.29600,1.44611),(27,'MMJM004','JHR','ISP','PEMANGGIL',104.32600,2.56908),(28,'MMCC010','PHG','CT','PANTAI BERSERAH B',103.36900,3.87600),(29,'MMCC012','PHG','CT','PANTAI TELUK CEMPEDAK B',103.37400,3.81019),(30,'MMCC013','PHG','CT','PANTAI TELUK GELORA A',103.36400,3.80303),(31,'MMCC014','PHG','CT','PANTAI TELUK GELORA B',103.35100,3.80278),(32,'MMCC015','PHG','CT','PANTAI SEPAT A',103.33900,3.70150),(33,'MMCC016','PHG','CT','PANTAI SEPAT B',103.34000,3.69886),(34,'MMCC022','PHG','CT','PANTAI LANJUT',103.47200,2.84378),(35,'MMCE002','PHG','ES','KUALA ROMPIN KECIL',103.48500,2.82218),(36,'MMCM001','PHG','ISP','PULAU TIOMAN (KG. GENTING)',104.11700,2.77500),(37,'MMTC003','TGG','CT','PANTAI CHENDERING',103.18900,5.27104),(38,'MMTC010','TGG','CT','KELULUT',103.22600,5.19043),(39,'MMTC016','TGG','CT','PANTAI KEMASIK',103.44900,4.45595),(40,'MMTE006','TGG','ES','KUALA SUNGAI PAKA',103.44400,4.65500),(41,'MMTM004','TGG','ISP','REDANG (NORTH)',103.03700,5.77561),(42,'MMTC005','TGG','CT','KIPC UTARA',103.45200,4.61285),(43,'MMTM006','TGG','ISP','LANG TENGAH',102.89000,5.79247),(44,'MMSM001','SBH','ISP','SAPI',116.01000,6.00727),(45,'MMSR001','SBH','ISR','GAYA',116.05100,6.01346),(46,'AACA999','SBH','ISR','TEST LOCATION',111.23100,2.48500);
/*!40000 ALTER TABLE `tbl_tarball_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_test`
--

DROP TABLE IF EXISTS `tbl_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_test` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(40) NOT NULL,
  `secondName` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_test`
--

LOCK TABLES `tbl_test` WRITE;
/*!40000 ALTER TABLE `tbl_test` DISABLE KEYS */;
INSERT INTO `tbl_test` VALUES (2,'1','2'),(3,'MOHD KAMIR YUSOF','YAHYA'),(4,'MOHD KAMIR YUSOF','SS');
/*!40000 ALTER TABLE `tbl_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tide`
--

DROP TABLE IF EXISTS `tbl_tide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tide` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tideID` varchar(20) NOT NULL,
  `tideName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tide`
--

LOCK TABLES `tbl_tide` WRITE;
/*!40000 ALTER TABLE `tbl_tide` DISABLE KEYS */;
INSERT INTO `tbl_tide` VALUES (1,'T1','High'),(2,'T2','Low');
/*!40000 ALTER TABLE `tbl_tide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_type`
--

DROP TABLE IF EXISTS `tbl_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `typeID` varchar(20) NOT NULL,
  `typeName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_type`
--

LOCK TABLES `tbl_type` WRITE;
/*!40000 ALTER TABLE `tbl_type` DISABLE KEYS */;
INSERT INTO `tbl_type` VALUES (1,'T1','Marine'),(2,'T2','River'),(3,'T3','Air');
/*!40000 ALTER TABLE `tbl_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(20) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `username` varchar(40) NOT NULL,
  `pwd` text NOT NULL,
  `levelID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `departID` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (9,'4A7KR1','MOHD KAMIR YUSOF','kamir2020@gmail.com','UUFtWW8rdlYrV3V0cjdqWWlibmZ6QT09OjpCsq4uGx1pLbXXoG0PcdzS','L5','D3'),(14,'ZPCMI10','SYAMIL AZIM','syamil.saharuddin@pstw.com.y','VFdxbkRRdjhMb3QvSzJWaVV1M0VJdz09Ojpo7fu3uhfEafMvOSyj3vEM','L5','D3'),(15,'7R8PX15','ALIM AIDRUS','alim.aidrus@pstw.com.my','WjJOWUlVOUV2ZnFMQlcwL2NETjlhUT09Ojoyh0tPNPiWfPVORuJTgTAx','L5','D3'),(16,'FG9JI16','RIFAIE AZHARI','rifaie.azhari@pstw.com.my','ckQxaEFDVjQ3Q1dVN2cycGJBZ0ZQUT09OjqLgoTfOI3kVgboA+EPAcuu','L3','D3'),(20,'IYC3V17','ZHAFIRUDDIN','zhafiruddin.zamry@pstw.com.my','ZnhWNmVDUEQwK2QrUXRHMmptTzV0UT09OjoItUFgaY6aJUPMxOwa68dO','L3','D3'),(21,'CP83Y21','ZULFADHLI','zulfadhli.rashid@pstw.com.my','TEZVV3NVRWh3YTJHNWtJT0Y0aTRXQT09Ojonv4wsdZRlBIoIunGdEqWk','L5','D3'),(22,'2DXPH22','MIRZA ARKANUDDIN BIN ROSLI','mirza.rosli@pstw.com.my','SVRVUU1QSCtTbmdDZ1I1c2tPNWF4QT09OjqeJbLNwgurkmUXHJ1bV/3X','L5','D3'),(28,'6F4KK23','AL ALIM','groupit.transwater@gmail.com','NVRkL0E3QVROUi9PMUE4WFBVaGRiQT09Ojr0/Evo4eSlqXYcAfUfEy2u','L5','D2'),(29,'2DD0B29','IT SUPPORT','itsupport@pstw.com.my','OVJ0SzFySDJVYnVDM2dxcWMrZTAwUT09OjphyP7zAkX/uFSafXYzCxbB','L3','D4'),(30,'9JAOE30','JAMAL KASIM','jamal@pstw.com','S2QrZ0R6YVRIU3phVzBvbTk5M054UT09OjpXj+wO8A2T/Zn+7MH95hlf','L2','D3'),(31,'CGHRX31','JAMAL','jamal123@pstw.com','RVlLM0dyRWZ6YjZ3UmlTY2hzeVphZz09Ojpylhz1RCP+Q+ff1/Ie4Egn','L5','D3'),(32,'V195632','KAMIR YUSOF','kamir2021@pstw.com','VFFnZ3hHbmY3eVFMd25lYjFCdXNFUT09Ojrtp5ESxke/HCqF7/lEJSLM','SA','D2'),(34,'CMJK933','MOHD KAMIR YUSOF','kamir2022@pstw.com','dnRLdEVEWFFUd1g3RU5MSlVydjkyUT09OjoQp9RUsmdLoOvHB1u54iKH','L4','D3'),(35,'J88IS35','MOHD KAMIR YUSOF','kamir2025@pstw.com','dUZrdE1BMDdYa3piWEhMQS9UZXUxdz09Ojp+FyJ0gNg/RRM2uaf6+fiP','L3','D3');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_weather`
--

DROP TABLE IF EXISTS `tbl_weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_weather` (
  `id` int NOT NULL AUTO_INCREMENT,
  `waetherID` varchar(10) NOT NULL,
  `weatherName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_weather`
--

LOCK TABLES `tbl_weather` WRITE;
/*!40000 ALTER TABLE `tbl_weather` DISABLE KEYS */;
INSERT INTO `tbl_weather` VALUES (1,'W1','Clear'),(2,'W2','Rainy'),(3,'W3','Cloudy'),(4,'W4','Windy'),(5,'W5','Sunny'),(6,'W6','Drizzle');
/*!40000 ALTER TABLE `tbl_weather` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-26 12:44:33
