-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: buildprotect
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `oldbuilding`
--

DROP TABLE IF EXISTS `oldbuilding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oldbuilding` (
  `BuildId` int(11) NOT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `ProtectLevel` varchar(32) DEFAULT NULL,
  `ContactName` varchar(32) DEFAULT NULL,
  `ContactNum` varchar(32) DEFAULT NULL,
  `BuildDesc` longblob,
  `Longitude` decimal(10,6) DEFAULT NULL,
  `Latitude` decimal(10,6) DEFAULT NULL,
  `District` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`BuildId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oldbuilding`
--

LOCK TABLES `oldbuilding` WRITE;
/*!40000 ALTER TABLE `oldbuilding` DISABLE KEYS */;
INSERT INTO `oldbuilding` VALUES (5,'龙井村','高','陈春辉','13627110845',NULL,25.710594,110.924717,'南宁市'),(6,'栈底村','高','陈春辉','13627110845',NULL,25.879244,111.179282,'南宁市'),(7,'良田村','高','陈春辉','13627110845',NULL,26.191225,111.054022,'南宁市'),(8,'雷公岩村','高','陈春辉','13627110845',NULL,25.750165,111.249208,'南宁市'),(9,'坪香村','高','陈春辉','13627110845',NULL,25.802369,111.234136,'南宁市'),(10,'老口村那告坡','高','陈春辉','13627110845',NULL,22.825301,108.193681,'南宁市'),(11,'那良村那蒙坡','高','陈春辉','13627110845',NULL,22.612585,108.639530,'南宁市'),(12,'镇龙社区那佃坡','高','陈春辉','13627110845',NULL,22.549255,108.698317,'南宁市'),(13,'中和社区孙头坡','高','陈春辉','13627110845',NULL,22.683897,108.758995,'南宁市'),(14,'名山村委六洋村','高','陈春辉','13627110845',NULL,23.040809,108.802451,'南宁市'),(15,'古辣社区蔡村','高','陈春辉','13627110845',NULL,23.113719,108.988246,'南宁市'),(16,'古辣社区李寨村','高','陈春辉','13627110845',NULL,23.110742,108.988126,'南宁市'),(17,'古辣社区虞村','高','陈春辉','13627110845',NULL,23.112632,108.989770,'南宁市'),(18,'平龙村委大塘村','高','陈春辉','13627110845',NULL,23.076581,108.994744,'南宁市'),(19,'新圩村委新梁村','高','陈春辉','13627110845',NULL,23.204033,109.230400,'南宁市'),(20,'武陵村委高荣村','高','陈春辉','13627110845',NULL,23.142429,108.907091,'南宁市'),(21,'上施村委下施村','高','陈春辉','13627110845',NULL,23.142429,108.907091,'南宁市'),(22,'镇龙昌村委加铁村','高','陈春辉','13627110845',NULL,23.837554,108.155406,'南宁市');
/*!40000 ALTER TABLE `oldbuilding` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-08 20:03:54
