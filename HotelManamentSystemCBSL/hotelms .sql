-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: hotelms
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hotels` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `hname` varchar(45) NOT NULL,
  `haddress` varchar(45) NOT NULL,
  `principal` varchar(45) NOT NULL,
  `hPhoneNumber` varchar(45) NOT NULL,
  `img` varchar(45) NOT NULL DEFAULT 't1.jpg',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'永恒万兴酒店','南宁兴宁区北宁街42-1号','Czhou  ','15677889941','t1.jpg  '),(2,'雅客酒店','南宁兴宁区朝阳路65号','Czhou','15233654896','t2.jpg'),(3,'黄金假日酒店','南宁兴宁区民生路131号','Muson','14563214785','t3.jpg'),(4,'银河大酒店','南宁兴宁区朝阳路84号','Czhou','16358965412','t4.jpg'),(5,'维也纳酒店','南宁兴宁区朝阳路76号','Muson','14563574563','t5.jpg'),(6,'雅斯特酒店','南宁兴宁区杭州路5号','Mliu','18563485614','t6.jpg'),(7,'城市便捷酒店','南宁人民中路14号','Sbiao','18648632145','t7.jpg'),(8,'优程酒店','南宁兴宁区苏州路69号','Sbiao','15965475635','t8.jpg'),(9,'维也纳国际酒店','南宁西乡塘区衡阳东路1号','Mliu','15966445214','t9.jpg'),(10,'8090时尚酒店','南宁兴宁区朝阳路71号','Muson','15789651463','t10.jpg'),(11,'浙商大酒店','南宁青秀区民生路2-3号','Sbiao','15965478566','t11.jpg'),(12,'天湖酒店','南宁兴宁区杭州路3号','Mliu','15478965411','t12.jpg'),(13,'艾玛酒店','南宁兴宁区友爱济南路口','Muson','14865231789','t13.jpg'),(14,'维也纳3好酒店','南宁兴宁区友爱南路10号','Czhou','15678964122','t14.jpg'),(15,'美卡风尚酒店','南宁青秀区新民路3号','Czhou','15678414566','t15.jpg'),(16,'怡程酒店','南宁兴宁区民主路20号','Muson','15874563299','t16.jpg'),(17,'三叶酒店','南宁江南区亭洪路45号','Sbiao','18966547845','t17.jpg'),(18,'明园新都酒店','南宁兴宁区新民路38号','Mliu','18965478523','t18.jpg'),(19,'南宁环球国际大酒店','南宁江南区五一东路7号','Muson','15674156398','t19.jpg'),(20,'时光艺宿酒店','南宁西乡塘区大学东路126号','Czhou','15874633699','t20.jpg'),(21,'曼尔顿国际酒店','南宁青秀区金浦路20号','Muson','17896541145','t21.jpg');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(45) DEFAULT 'None',
  `userName` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `eMail` varchar(45) DEFAULT 'xxxx.@xx.xx',
  `uPhoneNumber` varchar(45) DEFAULT '00000000',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'管理员','admin','admin','2922@qq.com','15277086612  '),(2,'muson','muson','1234','2933@qq.com','15277086612 '),(3,'大洲','czhou','123','2944@qq.com','15277086612'),(4,'世彪','Sbiao','123','2955@qq.com','15277086612'),(5,'莫柳','MLiu','123','2966@qq.com','15277086612'),(6,'木木','ad77','cms123','770908390@qq.com','15277086615');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-05  9:12:15
