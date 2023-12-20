CREATE DATABASE  IF NOT EXISTS `mvc_mod5` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mvc_mod5`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mvc_mod5
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `agencia`
--

DROP TABLE IF EXISTS `agencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agencia` (
  `id_agencia` bigint NOT NULL AUTO_INCREMENT,
  `Nome_agencia` varchar(40) DEFAULT NULL,
  `Cep` varchar(10) DEFAULT NULL,
  `Rua` varchar(40) DEFAULT NULL,
  `Bairro` varchar(20) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_agencia`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agencia`
--

LOCK TABLES `agencia` WRITE;
/*!40000 ALTER TABLE `agencia` DISABLE KEYS */;
INSERT INTO `agencia` VALUES (2,'Buscadores','42589','luz','centro','123654'),(4,'Aventureiros','489','flores','centro','458796'),(5,'Buscadores de aventuras4','4896','vida','genaro','(71) 3625-5627');
/*!40000 ALTER TABLE `agencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `Nome` varchar(40) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Senha` varchar(20) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Cpf` varchar(20) DEFAULT NULL,
  `Rua` varchar(80) DEFAULT NULL,
  `Cep` varchar(10) DEFAULT NULL,
  `numero` bigint NOT NULL,
  `Bairro` varchar(20) DEFAULT NULL,
  `Cidade` varchar(40) DEFAULT NULL,
  `Estado` varchar(40) DEFAULT NULL,
  `id_cliente` bigint NOT NULL AUTO_INCREMENT,
  `fk_Agencia_Id_agencia` int DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('ana','a@gmail.com','1234','364592','963852','flores','4152',10,'centro','camaçari','Ba',1,1),('paulo','paulo@email.com','3216','362549','123654','santos','2013',20,'genaro','salvador','ba',2,NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contato` (
  `id_contato` bigint NOT NULL AUTO_INCREMENT,
  `Nome` varchar(40) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Mensagen` varchar(255) DEFAULT NULL,
  `fk_Agencia_Id_agencia` int DEFAULT NULL,
  PRIMARY KEY (`id_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES (1,'paula','p@email.com','12456','oi',1),(2,'','','','',NULL),(3,'','','','',NULL),(4,'','','','',NULL),(5,'','','','',NULL),(6,'Gabriela ','gabilorpi@email.com','7136255627','oi',NULL),(7,'','','','',NULL),(8,'Gabriela ','g@email.com','123654','teste',NULL),(12,'','','','',NULL),(13,'','','','',NULL),(18,'paula','gabil@gmail.com','(71) 3625-5627','agora foi',NULL),(19,'paulo','gabil@gmail.com','(71) 3625-5627','agora foi',NULL),(20,'','','','',NULL),(21,'','','','',NULL),(22,'','','','',NULL),(23,'teste1','teste@email.com','364896','foi',NULL);
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoteis`
--

DROP TABLE IF EXISTS `hoteis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoteis` (
  `Id_hotel` int NOT NULL AUTO_INCREMENT,
  `Nomes_Hoteis` varchar(40) DEFAULT NULL,
  `Categorias` varchar(20) DEFAULT NULL,
  `Preco_noite` decimal(10,0) DEFAULT NULL,
  `Cep` varchar(10) DEFAULT NULL,
  `Rua` varchar(40) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Bairro` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id_hotel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoteis`
--

LOCK TABLES `hoteis` WRITE;
/*!40000 ALTER TABLE `hoteis` DISABLE KEYS */;
/*!40000 ALTER TABLE `hoteis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `id_hotel` bigint NOT NULL AUTO_INCREMENT,
  `bairro` varchar(255) DEFAULT NULL,
  `categorias` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `nome_hotel` varchar(255) DEFAULT NULL,
  `preco_por_noite` double NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'centro',NULL,'4896','lima',250,'santos','7136255627'),(2,'genaro',NULL,'489','Palmeiras',150,'flores','centro'),(4,'genaro',NULL,'12345-000','5 ESTRELAS',120,'simples','7136255627'),(5,'',NULL,'','Beira mar',0,'','');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passagens`
--

DROP TABLE IF EXISTS `passagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passagens` (
  `id_passagem` bigint NOT NULL AUTO_INCREMENT,
  `id_voo` bigint NOT NULL,
  `fk_cliente_id_cliente` bigint NOT NULL,
  `fk_voo_id_voo` bigint NOT NULL,
  `cliente_id` bigint DEFAULT NULL,
  `voo_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id_passagem`,`id_voo`),
  KEY `FK_Passagens_2` (`fk_cliente_id_cliente`),
  KEY `FK_Passagens_3` (`fk_voo_id_voo`),
  KEY `FKpemt642oqoedw2h0s055aafvi` (`cliente_id`),
  KEY `FKaapwdv3t88mjn0hcef0slyryp` (`voo_id`),
  CONSTRAINT `FK_Passagens_2` FOREIGN KEY (`fk_cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE,
  CONSTRAINT `FK_Passagens_3` FOREIGN KEY (`fk_voo_id_voo`) REFERENCES `voo` (`id_voo`) ON DELETE CASCADE,
  CONSTRAINT `FKaapwdv3t88mjn0hcef0slyryp` FOREIGN KEY (`voo_id`) REFERENCES `voo` (`id_voo`),
  CONSTRAINT `FKpemt642oqoedw2h0s055aafvi` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passagens`
--

LOCK TABLES `passagens` WRITE;
/*!40000 ALTER TABLE `passagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `passagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva_quarto`
--

DROP TABLE IF EXISTS `reserva_quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva_quarto` (
  `id_reserva` bigint NOT NULL AUTO_INCREMENT,
  `quarto` bigint NOT NULL,
  `data_check_out` varchar(255) DEFAULT NULL,
  `data_check_in` varchar(255) DEFAULT NULL,
  `fk_Hoteis_Id_hotel` int DEFAULT NULL,
  `fk_Cliente_Id_cliente` int DEFAULT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `FK_Reserva_quarto_2` (`fk_Hoteis_Id_hotel`),
  CONSTRAINT `FK_Reserva_quarto_2` FOREIGN KEY (`fk_Hoteis_Id_hotel`) REFERENCES `hoteis` (`Id_hotel`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva_quarto`
--

LOCK TABLES `reserva_quarto` WRITE;
/*!40000 ALTER TABLE `reserva_quarto` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserva_quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voo`
--

DROP TABLE IF EXISTS `voo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voo` (
  `Origem` varchar(80) DEFAULT NULL,
  `Destino` varchar(80) DEFAULT NULL,
  `data_decolagem` varchar(255) DEFAULT NULL,
  `hora_decolagem` varchar(255) DEFAULT NULL,
  `data_aterrissagem` varchar(255) DEFAULT NULL,
  `hora_aterrissagem` varchar(255) DEFAULT NULL,
  `preco` double NOT NULL,
  `id_voo` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_voo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voo`
--

LOCK TABLES `voo` WRITE;
/*!40000 ALTER TABLE `voo` DISABLE KEYS */;
INSERT INTO `voo` VALUES ('salvador','rio de janeiro','2023-12-14','15:43','2023-12-15','15:43',200,2),('Portugal','rio de janeiro','2023-12-16','16:47','2023-12-18','16:47',5000,3);
/*!40000 ALTER TABLE `voo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-20  7:26:47
