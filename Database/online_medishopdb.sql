CREATE DATABASE  IF NOT EXISTS `online_medishopdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `online_medishopdb`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: online_medishopdb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product` (
  `pid` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `mft_date` varchar(255) DEFAULT NULL,
  `exp_date` varchar(255) DEFAULT NULL,
  `power` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `shope_owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES ('55','ab','patanjali','2020-04-07','2024-05-09','100','200','200','440014','poojasao99@gmail.com'),('66','ab','patanjali','2020-04-10','2024-05-09','40000000','5','200','440014','sagarbangade21@gmail.com'),('501','vita90','patanjali','2020-04-07','2024-05-09','500','200','1','440014','s@gmail.com'),('101','dsds','patanjali','2020-04-10','2024-05-06','40000000','20','200','440014','s@gmail.com'),('6014','Combiflame Tablet','Sanofia India Ltd','2022-05-16','2023-09-16','05','20','115','440022','sahil@gmail.com'),('6091',' Betnesol Tablet','Glaxo SmithKline Ltd','2022-03-14','2023-05-15','05','20','14','440022','sahil@gmail.com'),('5686','Combiflame Tablet','Sanofia India Ltd','2022-03-15','2023-06-15','400','20','41','440022','sahil@gmail.com'),('8686','Azithral 500 Tablet','Alembic Pharmaceutical ','2022-05-16','2023-05-14','500','23','119','440002','prathmesh@gmail.com'),('8554','Azithral 500 Tablet1','Alembic ','2022-03-14','2023-09-16','50','20','14','440002','prathmesh@gmail.com'),('9021',' Betnesol X','India Ltd','2021-05-12','2023-05-22','50','50','50','440002','prathmesh@gmail.com'),('7387','ATablet00','Pharmaceutical Ltd','2021-05-12','2023-05-23','500','45','50','440002','prathmesh@gmail.com'),('8557','CombiflameBYP0','AlembicLTD','2022-04-16','2023-06-3','05','20','70','440002','prathmesh@gmail.com'),('6014','Combiflame Tablet','Sanofia India Ltd','2022-05-16','2023-09-16','05','20','115','440012','sagarb@gmail.com'),('6014','Combiflame Tablet','Sanofia India Ltd','2022-05-16','2023-09-16','05','20','115','440012','sagarb@gmail.com'),('6014','Combiflame Tablet','Sanofia India Ltd','2022-05-16','2023-09-16','05','20','115','208017','maithili@gmail.com'),('6091','Combiflame Tablet','Geno Pharmaceutical Ltd','2022-04-16','2023-05-14','05','23','50','208017','maithili@gmail.com'),('5686',' Betnesol Tablet','Alembic ','2022-04-16','2023-06-11','50','12','114','208017','maithili@gmail.com'),('6014','Combiflame Tablet','Sanofia India Ltd','2022-05-16','2023-09-16','05','20','115','444109','prajakta@gmail.com'),('5686','Cypon Syrup','Geno Pharmaceutical Ltd','2022-04-16','2023-05-14','400','15','14','444109','prajakta@gmail.com'),('12345','ravi','mankapur','2022-05-30','3033-06-31','9999','1','9999999','440012','sagarb@gmail.com');
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr_reg`
--

DROP TABLE IF EXISTS `usr_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usr_reg` (
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reEnterPass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_reg`
--

LOCK TABLES `usr_reg` WRITE;
/*!40000 ALTER TABLE `usr_reg` DISABLE KEYS */;
INSERT INTO `usr_reg` VALUES ('Sagar','Bangade','sagar.bangade.ai@ghrietn.raisoni.net','7620755212','abc123','abc123'),('pooja','sao','poojasao99@gmail.com','8839928295','abc','abc'),('sagar','bangade','s@gmail.com','7620755212','abc','abc'),('sahil','lande','sahil@gmail.com','1234567890','abc@123','abc@123'),('prathmesh','deshkar','prathmesh@gmail.com','1234567890','abc@123','abc@123'),('Maithili ','belsare','maithili@gmail.com','1234567890','abc@123','abc@@123'),('prajakta','lad','prajakta@gmail.com','1234567890','abc@123','abc@123'),('sagar','bangade','sagarb@gmail.com','7620755212','abc@123','abc@123');
/*!40000 ALTER TABLE `usr_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vender_reg`
--

DROP TABLE IF EXISTS `vender_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vender_reg` (
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `venderName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `glink` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vender_reg`
--

LOCK TABLES `vender_reg` WRITE;
/*!40000 ALTER TABLE `vender_reg` DISABLE KEYS */;
INSERT INTO `vender_reg` VALUES ('Sagar','Bangade','sagar.bangade.ai@ghrietn.raisoni.net','7620755212','himalya Jadibuti','Nara Basti, Devi nagar, jaripatka','440014','abc123','sagar.com'),('Pooja','sao','poojasao99@gmail.com','7620755212','abc','Nara Basti, Devi nagar, jaripatka','440014','abc','jllkjoi'),('Sagar','Bangade','sagarbangade21@gmail.com','7620755212','Davai','Nara Basti, Devi nagar, jaripatka','440014','abc','https://www.google.com/maps/dir//Shree+Tech,+Shambhu+Nagar,+Nagpur,+Maharashtra+440026/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bd4c1ca5cb31aff:0x98af1dd6da02efcd?sa=X&ved=2ahUKEwjYyJmm6-P3AhVC82EKHfzXBLcQ48ADegQIAhAT'),('sammy','bammy','s@gmail.com','7620755212','sai medical shop','Nara Basti, Devi nagar, jaripatka','440014','abc','https://www.google.com/maps/dir//Shree+Tech,+Shambhu+Nagar,+Nagpur,+Maharashtra+440026/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bd4c1ca5cb31aff:0x98af1dd6da02efcd?sa=X&ved=2ahUKEwjYyJmm6-P3AhVC82EKHfzXBLcQ48ADegQIAhAT'),('sahil','lande','sahil@gmail.com','1234567890','sahil medical ','hingna Rd, midc, nagpur, mh - 440022','440022','abc@123','https://maps.app.goo.gl/mPXkrQzDFMqqSLXJ8'),('prathmesh','deshkar','prathmesh@gmail.com','1234567890','Prathmesh Medical  ','pachpaoli','440002','abc@123','https://maps.app.goo.gl/S8qHCUTCcaQEZ5sX9'),('Sagar ','Bangade','sagarb@gmail.com','1234567890','sagar medical','lokmat square , bardi, nagpur ','440012','abc@123','https://goo.gl/maps/eMRFinNFayLYDKU28'),('maithili','belsare','maithili@gmail.com','1234567890','maithili medical ','uttar pradesh ','208017','abc@123','https://goo.gl/maps/AytEtMUJpnrDmXL48'),('prajakta','lad','prajakta@gmail.com','1234567890','PRAJAKTA MEDICAL STORES','Plotno 4, Besides Sugat Nagar police chowki, Sugat Nagar, road, Nagpur','444109','abc@123','https://goo.gl/maps/4iQNxMPRhDGcuM4WA');
/*!40000 ALTER TABLE `vender_reg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-06  8:48:53
