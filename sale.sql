-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sale
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `message` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (3,'test','yon','sfd'),(4,'testmessage','123@123.com','testcontent'),(5,'test','123@123.com','message'),(6,'乔峰','qf@126.com','希望你们的网站越来越好！');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;

--
-- Table structure for table `order1`
--

DROP TABLE IF EXISTS `order1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `proid` int DEFAULT NULL COMMENT '商品id',
  `count` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '数量',
  `singleprice` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '单价',
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '总价',
  `userid` int DEFAULT NULL COMMENT '购买者',
  `sffk` int DEFAULT '0' COMMENT '是否支付',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '送货地址',
  `date` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '下单日期',
  `senddept` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '快递公司',
  `visible` int DEFAULT '1' COMMENT '是否可见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order1`
--

/*!40000 ALTER TABLE `order1` DISABLE KEYS */;
INSERT INTO `order1` VALUES (10,43,'2','450','900',3,1,'13822112857','武汉市江夏区文化大道2号','2018-05-18','中国邮政',1),(11,42,'1','100','100',3,1,'13822112857','武汉市江夏区文化大道2号','2018-05-18','中国邮政',1);
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sfcx` int DEFAULT '0' COMMENT '是否促销',
  `newprice` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '促销价',
  `sfms` int DEFAULT '0' COMMENT '是否秒杀',
  `msprice` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '秒杀价格',
  `msdate` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '秒杀时间',
  `mscount` int DEFAULT NULL COMMENT '秒杀数量',
  `sfjp` int DEFAULT '0' COMMENT '是否竞拍',
  `qpprice` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '起拍价',
  `jpprice` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '竞拍价',
  `jpperson` int DEFAULT NULL COMMENT '竞拍人',
  `jpdate` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '竞拍结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (50,'sala0413','upload\\logo-1626686763426.jpg',NULL,'232423',0,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),(52,'sala0413','upload\\logo-1626688443380.jpg',NULL,'17724251292',0,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

--
-- Table structure for table `sysconfig`
--

DROP TABLE IF EXISTS `sysconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysconfig` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(1000) DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysconfig`
--

/*!40000 ALTER TABLE `sysconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysconfig` ENABLE KEYS */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `sex` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `admin` int DEFAULT '0' COMMENT '是否管理员',
  `openid` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `headimgUrl` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `balance` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'test','111111','11','0',0,NULL,NULL,NULL),(4,'admin','123456','123@123.com','0',1,NULL,NULL,NULL),(22,'720','123456',NULL,NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-20 14:35:18
