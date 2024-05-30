-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: online_banking_system
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `admin_signup`
--

DROP TABLE IF EXISTS `admin_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_signup` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phno` bigint(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `adminname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `repassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_signup`
--

LOCK TABLES `admin_signup` WRITE;
/*!40000 ALTER TABLE `admin_signup` DISABLE KEYS */;
INSERT INTO `admin_signup` VALUES (1,'yashvanti',9876543210,'codeexpert@gmail.com','yashvanti','12','12');
/*!40000 ALTER TABLE `admin_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance_form`
--

DROP TABLE IF EXISTS `balance_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balance_form` (
  `user_id` int(11) NOT NULL,
  `accountno` bigint(10) DEFAULT NULL,
  `usernm` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `balance` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance_form`
--

LOCK TABLES `balance_form` WRITE;
/*!40000 ALTER TABLE `balance_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `balance_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheque_form`
--

DROP TABLE IF EXISTS `cheque_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheque_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `accountno` bigint(10) DEFAULT NULL,
  `accounttype` varchar(45) DEFAULT NULL,
  `signature` varchar(200) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheque_form`
--

LOCK TABLES `cheque_form` WRITE;
/*!40000 ALTER TABLE `cheque_form` DISABLE KEYS */;
INSERT INTO `cheque_form` VALUES (1,3,1197202878,'joint','accounting-chart-coffee-cup-contemporary.jpg','approved'),(2,4,1197283257,'current','Computer.webp','approved'),(3,1,1197920053,'saving','de3.jpg','approved'),(4,6,1197967604,'saving','mobile-banking-smartphone.webp','approved'),(5,6,1197401771,'joint','Computer.webp','approved');
/*!40000 ALTER TABLE `cheque_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposite`
--

DROP TABLE IF EXISTS `deposite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposite` (
  `Account_no` bigint(50) DEFAULT NULL,
  `User_Name` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Amount` bigint(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposite`
--

LOCK TABLES `deposite` WRITE;
/*!40000 ALTER TABLE `deposite` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forgot_pass02`
--

DROP TABLE IF EXISTS `forgot_pass02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forgot_pass02` (
  `OTP` bigint(6) DEFAULT NULL,
  `npass` varchar(45) DEFAULT NULL,
  `cpass` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forgot_pass02`
--

LOCK TABLES `forgot_pass02` WRITE;
/*!40000 ALTER TABLE `forgot_pass02` DISABLE KEYS */;
/*!40000 ALTER TABLE `forgot_pass02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `branchcode` bigint(10) DEFAULT NULL,
  `phno` bigint(10) DEFAULT NULL,
  `adharcard` bigint(10) DEFAULT NULL,
  `loanamount` bigint(10) DEFAULT NULL,
  `timeperiod` time DEFAULT NULL,
  `loantype` varchar(45) DEFAULT NULL,
  `fromdate` date DEFAULT NULL,
  `todate` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (1,'Yashvanti','Gujar','yashvanti1102@gmail.com','Islampur',6564646,9322428919,87674668,50000,'14:04:00','Education Loan','2023-05-02','2023-06-08','15:04:00',3,'approved'),(2,'Anjum','Jamadar','anju@gmail.com','Islampur',6564646,7028628450,8776532,200000,'14:18:00','Home Loan','2023-05-01','2023-06-01','14:18:00',6,'approved'),(3,'Prathmesh','Patil','prathmesh@gmail.com','Kapuskhed',6564646,9876543210,8776532,50000,'13:19:00','Gold Loan','2023-05-01','2023-06-06','15:19:00',4,'approved'),(4,'prachi','patil','prachi@gmail.com','Navekhed',6564646,7028628450,8776532,100000,'14:20:00','Vehicle Loan','2023-05-01','2023-06-02','16:21:00',5,'approved'),(5,'CodeExpert','CodeExpert','codeexpert@gmail.com','Islampur',6564646,9876543210,8776543,200000,'12:22:00','Home Loan','2023-05-02','2023-05-16','15:22:00',1,'approved'),(6,'Yashvanti','Gujar','yashvanti1102@gmail.com','Islampur',6564646,9322428919,8776543,100000,'01:06:00','Home Loan','2023-05-01','2023-06-06','05:06:00',5,'approved');
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_acc`
--

DROP TABLE IF EXISTS `new_acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_acc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `phno` varchar(50) DEFAULT NULL,
  `adharcard` bigint(20) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `signature` varchar(200) DEFAULT NULL,
  `accounttype` varchar(45) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `account_number` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_acc`
--

LOCK TABLES `new_acc` WRITE;
/*!40000 ALTER TABLE `new_acc` DISABLE KEYS */;
INSERT INTO `new_acc` VALUES (1,3,'CodeExpert','CodeExpert','islampur','islampur','2023-05-04','9876543210',8776543,'Female','codeexpert@gmail.com','Computer.webp','de4.jpg','Joint acc',2000,1197202878),(2,3,'CodeExpert','CodeExpert','islampur','islampur','2023-05-04','9876543210',8776543,'Female','codeexpert@gmail.com','Computer.webp','de4.jpg','Joint acc',2000,1197628344),(3,1,'Yashvanti','Gujar','Islampur','Islampur','2002-01-11','9322428919',87674668,'Female','yashvanti1102@gmail.com','bank.png','Computer.webp','Saving acc',4000,1197920053),(4,3,'CodeExpert','CodeExpert','islampur','islampur','2023-05-10','7028628450',8776543,'Female','yashvanti1102@gmail.com','Computer.webp','de4.jpg','Saving acc',3000,1197967604),(5,4,'Prathmesh','Patil','Kapuskhed','Islampur','2001-05-01','9876543210',8776543,'Male','prathmesh@gmail.com','balence_form.jpg','de4.jpg','Current acc',4000,1197283257);
/*!40000 ALTER TABLE `new_acc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_statement`
--

DROP TABLE IF EXISTS `online_statement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `online_statement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `TransactionType` varchar(45) DEFAULT NULL,
  `DebitAmount` varchar(45) DEFAULT NULL,
  `CreditAmount` varchar(45) DEFAULT NULL,
  `Balance` varchar(45) DEFAULT NULL,
  `Accountno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_statement`
--

LOCK TABLES `online_statement` WRITE;
/*!40000 ALTER TABLE `online_statement` DISABLE KEYS */;
INSERT INTO `online_statement` VALUES (1,1,'2023-04-20','Deposite','0','12','1266','1197523814'),(2,NULL,'2023-04-20','Transfer','1200','0','66','1197523814'),(3,NULL,'2023-04-20','Transfer','66','0','0','1197523814'),(4,NULL,'2023-04-20','Withdraw','1000','0','-1000','1197523814'),(5,NULL,'2023-04-20','Transfer','1230','0','-1098','1197978522'),(6,4,'2023-04-22','Deposite','0','2000','4000','1197866213'),(7,NULL,'2023-04-22','Withdraw','1000','0','3000','1197866213'),(8,NULL,'2023-04-22','Transfer','800','0','2200','1197866213'),(9,6,'2023-04-26','Deposite','0','10000','13000','1197570866'),(10,NULL,'2023-04-26','Withdraw','5000','0','8000','1197570866'),(11,NULL,'2023-04-26','Transfer','1200','0','6800','1197570866'),(12,NULL,'2023-04-27','Transfer','100','0','1130','1197401771');
/*!40000 ALTER TABLE `online_statement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_atm`
--

DROP TABLE IF EXISTS `request_atm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_atm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `pincode` bigint(10) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `mono` bigint(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `accounttype` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `accountno` bigint(10) DEFAULT NULL,
  `place` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `signature` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_atm`
--

LOCK TABLES `request_atm` WRITE;
/*!40000 ALTER TABLE `request_atm` DISABLE KEYS */;
INSERT INTO `request_atm` VALUES (1,'yashvanti','islampur',415409,'islampur','Maharashtra',9322428919,'yashvanti1102@gmail.com','Current','Female','2002-01-11',1197401771,'Islampur','2023-04-13','de3.jpg',3,'approved'),(2,'yashvanti','islampur',415409,'islampur','Maharashtra',9322428919,'yashvanti1102@gmail.com','Current','Female','2002-01-11',1197401771,'Islampur','2023-04-13','de3.jpg',3,'approved'),(3,'yashvanti','islampur',415409,'islampur','Maharashtra',9322428919,'yashvanti1102@gmail.com','Current','Female','2002-01-11',1197401771,'Islampur','2023-04-13','de3.jpg',3,'approved'),(4,'yashvanti','islampur',415409,'islampur','Maharashtra',9322428919,'yashvanti1102@gmail.com','Current','Female','2002-01-11',1197401771,'Islampur','2023-04-18','bank.png',3,'approved'),(5,'Anjum Jamadar','Islampur',415409,'Islampur','Maharashtra',7028628450,'anju@gmail.com','Current','Female','2003-02-09',1197570866,'Islampur','2023-04-26','accounting-chart-coffee-cup-contemporary.jpg',6,'approved');
/*!40000 ALTER TABLE `request_atm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_money`
--

DROP TABLE IF EXISTS `transfer_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_money` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `accountno` bigint(10) DEFAULT NULL,
  `usernm` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `toaccount` bigint(10) DEFAULT NULL,
  `amount` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_money`
--

LOCK TABLES `transfer_money` WRITE;
/*!40000 ALTER TABLE `transfer_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_signup`
--

DROP TABLE IF EXISTS `user_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_signup` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(45) DEFAULT NULL,
  `phno` bigint(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `repassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_signup`
--

LOCK TABLES `user_signup` WRITE;
/*!40000 ALTER TABLE `user_signup` DISABLE KEYS */;
INSERT INTO `user_signup` VALUES (1,'CodeExpert',9876543210,'codeexpert@gmail.com','CodeExpert','CodeExpert','CodeExpert'),(2,'CodeExpert',9876543210,'codeexpert@gmail.com','CodeExpert','CodeExpert','CodeExpert'),(3,'Yashvanti Vinayak Gujar',9322428919,'yashvanti1102@gmail.com','Yuga','1011','1011'),(4,'Prathmesh Pandurang Patil',9876543210,'prathmesh@gmail.com','Prathmesh','12','12'),(5,'prachi patil',9876543210,'prachi@gmail.com','prachi','12','12'),(6,'Anjuman Salauddin Jamadar',7028628450,'anju@gmail.com','Anju','12','12');
/*!40000 ALTER TABLE `user_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_form`
--

DROP TABLE IF EXISTS `withdraw_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraw_form` (
  `accno` bigint(20) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `amt` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_form`
--

LOCK TABLES `withdraw_form` WRITE;
/*!40000 ALTER TABLE `withdraw_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw_form` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-10 10:28:36
