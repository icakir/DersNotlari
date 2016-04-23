-- MySQL dump 10.13  Distrib 5.6.27, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: OdevSQL
-- ------------------------------------------------------
-- Server version	5.6.27-0ubuntu1

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
-- Table structure for table `DEPARTMENTS`
--

DROP TABLE IF EXISTS `DEPARTMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEPARTMENTS` (
  `DEPARTMENT_ID` int(4) NOT NULL AUTO_INCREMENT,
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `MANAGER_ID` int(6) DEFAULT NULL,
  `LOCATION_ID` int(4) DEFAULT NULL,
  PRIMARY KEY (`DEPARTMENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPARTMENTS`
--

LOCK TABLES `DEPARTMENTS` WRITE;
/*!40000 ALTER TABLE `DEPARTMENTS` DISABLE KEYS */;
INSERT INTO `DEPARTMENTS` VALUES (1,'Pazarlama',0,0),(2,'Finans',1,0),(3,'Grafik Tasarım',3,0),(4,'İnsan Kaynakları',4,0),(5,'Muhasebe',5,0),(6,'Lojistik',6,0),(7,'Hizmetli',9,0),(8,'Müdüriyet',2,0),(9,'Şöför',7,0);
/*!40000 ALTER TABLE `DEPARTMENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEES`
--

DROP TABLE IF EXISTS `EMPLOYEES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEES` (
  `EMPLOYEE_ID` int(6) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `PHONE_NUMBER` varchar(20) DEFAULT NULL,
  `HIRE_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `SALARY` decimal(8,2) NOT NULL,
  `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
  `MANAGER_ID` int(6) DEFAULT NULL,
  `DEPARTMENT_ID` int(4) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEES`
--

LOCK TABLES `EMPLOYEES` WRITE;
/*!40000 ALTER TABLE `EMPLOYEES` DISABLE KEYS */;
INSERT INTO `EMPLOYEES` VALUES (1,'Ertuncay','Türk','mufide.@arsoysel.com','9081562047','1977-08-11','6',62396.00,0.18,1,1),(2,'Gülbani','Sezgin','sancar.safak@hotmail.com','96036845','1984-06-14','4',37628.30,0.82,0,9),(3,'Hilayda','Yılmaz','cturk@hotmail.com','73727037','1976-11-01','0',37761.80,0.59,6,6),(4,'Enfes','Arslan','ulu.alemdar@yahoo.com','99278287','1990-06-12','7',32957.70,0.80,4,7),(5,'Melaha','Dumanlı','psoylu@seven.com','9072532580','1975-10-02','6',86649.30,0.02,4,8),(6,'Duruk','Yaman','sakdeniz@gmail.com','8403164695','2007-06-13','7',1669.90,0.95,4,5),(7,'Resulcan','Gül','susen.sama@hotmail.com','81918515','2001-06-21','8',70269.60,0.17,5,5),(8,'Merzuk','Tarhan','ozpnar.zorlu@durlir.com','46784648','2006-01-30','2',97242.50,0.30,9,3),(9,'Ilgı','Hançer','koldan45@hotmail.com','9359782123','1977-01-20','9',57601.00,0.00,0,9),(10,'Eral','Arsoy','erdogan.@hotmail.com','9075228847','1974-08-11','9',81579.90,0.65,6,3),(11,'Çağdan','Kısakürek','iarslan@yaman.com','30015396','2014-10-26','2',93235.80,0.56,9,0),(12,'Nilcan','Durdu','salurbayr@hotmail.com','92940796','1993-06-03','4',45285.50,0.38,1,5),(13,'Sücaettin','Sezer','dakcay@gmail.com','9068322040','2013-08-06','9',86832.80,0.75,3,2),(14,'Şazime','Çamurcuoğlu','ozay.ergul@tevetolu.net','9025754426','1994-08-12','8',6399.90,0.24,6,1),(15,'Neşrin','Duran','akar.ummet@gmail.com','9007955294','2001-01-27','2',38934.70,0.11,3,3),(16,'Büget','Durmuş','bilgin.arz@gmail.com','9054340262','2014-06-21','2',59213.60,0.30,3,2),(17,'Merva','Ertaş','aytoz84@gmail.com','9091460561','1970-05-07','7',64051.00,0.30,0,0),(18,'Ballı','Akdeniz','refik93@tevolu.info','9010747041','1992-04-01','8',7042.90,0.57,0,8),(19,'Şirivan','Karadeniz','eyuksel@gmail.com','9086715544','1975-01-01','9',97770.10,0.36,4,6);
/*!40000 ALTER TABLE `EMPLOYEES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'OdevSQL'
--

--
-- Dumping routines for database 'OdevSQL'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-11 14:36:32
