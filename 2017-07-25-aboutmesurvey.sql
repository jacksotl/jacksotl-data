-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: aboutmesurvey
-- ------------------------------------------------------
-- Server version	5.5.55-0ubuntu0.14.04.1

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
-- Table structure for table `tblSurveyQuestions`
--

DROP TABLE IF EXISTS `tblSurveyQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblSurveyQuestions` (
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `AGE` int(11) DEFAULT NULL,
  `FAVORITECOLOR` varchar(255) DEFAULT NULL,
  `FAVORITEMOVIE` varchar(255) DEFAULT NULL,
  `HOMETOWN` varchar(255) DEFAULT NULL,
  `FRANKLINSTREET` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblSurveyQuestions`
--

LOCK TABLES `tblSurveyQuestions` WRITE;
/*!40000 ALTER TABLE `tblSurveyQuestions` DISABLE KEYS */;
INSERT INTO `tblSurveyQuestions` VALUES ('2017-07-24 16:44:46',21,' yellow',' house of the flying daggers',' colorado springs',' suttons'),('2017-07-24 16:46:09',21,' yellow',' house of the flying daggers',' colorado springs',' sutton\'s'),('2017-07-24 16:53:06',21,' yellow',' house of the flying daggers',' colorado springs',' suttons'),('2017-07-24 16:54:18',36,' Blue',' Rear Window',' Flint',' MI'),('2017-07-24 16:55:52',23,' red',' chocolat',' Boone',' NC'),('2017-07-25 16:18:21',24,' blue',' wild card',' brooklyn',' buns'),('2017-07-25 16:20:42',24,' purple',' Ted',' brooklyn',' buns'),('2017-07-25 16:23:02',24,' blue',' the incredibles',' yancyville',' sutton\'s');
/*!40000 ALTER TABLE `tblSurveyQuestions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-25 13:01:42
