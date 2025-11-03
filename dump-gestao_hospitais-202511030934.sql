-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: gestao_hospitais
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `analises`
--

DROP TABLE IF EXISTS `analises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analises` (
  `idAnalises` int NOT NULL AUTO_INCREMENT,
  `tipo_analise` varchar(25) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `idDoentes` int DEFAULT NULL,
  PRIMARY KEY (`idAnalises`),
  KEY `analises_doentes_FK` (`idDoentes`),
  CONSTRAINT `analises_doentes_FK` FOREIGN KEY (`idDoentes`) REFERENCES `doentes` (`idDoentes`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analises`
--

LOCK TABLES `analises` WRITE;
/*!40000 ALTER TABLE `analises` DISABLE KEYS */;
INSERT INTO `analises` VALUES (1,'Sangue','2025-01-10',1),(2,'Urina','2025-01-11',2),(3,'Raio-X','2025-01-12',3),(4,'Ecografia','2025-01-13',4),(5,'TAC','2025-01-14',5),(6,'Colesterol','2025-01-15',6),(7,'Glicose','2025-01-16',7),(8,'Hepatite','2025-01-17',8),(9,'PCR','2025-01-18',9),(10,'Covid','2025-01-19',10),(11,'Ferritina','2025-01-20',11),(12,'Triglicerídeos','2025-01-21',12),(13,'Hemograma','2025-01-22',13),(14,'Creatinina','2025-01-23',14),(15,'Ácido Úrico','2025-01-24',15),(16,'TSH','2025-01-25',16),(17,'Vitamina D','2025-01-26',17),(18,'Hemoglobina','2025-01-27',18),(19,'Sódio','2025-01-28',19),(20,'Potássio','2025-01-29',20);
/*!40000 ALTER TABLE `analises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doentes`
--

DROP TABLE IF EXISTS `doentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doentes` (
  `idDoentes` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) DEFAULT NULL,
  `morada` varchar(50) DEFAULT NULL,
  `telefone` int DEFAULT NULL,
  `cc` int DEFAULT NULL,
  `socio` tinyint(1) DEFAULT NULL,
  `idAnalises` int DEFAULT NULL,
  PRIMARY KEY (`idDoentes`),
  KEY `doentes_analises_FK` (`idAnalises`),
  CONSTRAINT `doentes_analises_FK` FOREIGN KEY (`idAnalises`) REFERENCES `analises` (`idAnalises`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doentes`
--

LOCK TABLES `doentes` WRITE;
/*!40000 ALTER TABLE `doentes` DISABLE KEYS */;
INSERT INTO `doentes` VALUES (1,'André Matos','Rua das Palmeiras 3',931111111,33344455,1,1),(2,'Helena Marques','Rua Central 10',931111112,33344456,1,2),(3,'Rui Teixeira','Av. do Mar 2',931111113,33344457,1,3),(4,'Paula Dias','Rua Norte 14',931111114,33344458,0,4),(5,'Fernando Alves','Rua Sul 7',931111115,33344459,0,5),(6,'Carla Moura','Av. Flores 18',931111116,33344460,1,6),(7,'Vítor Rocha','Rua Azul 21',931111117,33344461,1,7),(8,'Luciana Gomes','Praça da Paz 4',931111118,33344462,1,8),(9,'Hugo Faria','Rua Norte 33',931111119,33344463,0,9),(10,'Teresa Lopes','Av. Central 5',931111120,33344464,1,10),(11,'Rafael Costa','Rua do Sol 8',931111121,33344465,1,11),(12,'Diana Silva','Rua Verde 9',931111122,33344466,0,12),(13,'Carlos Pinto','Rua das Rosas 2',931111123,33344467,1,13),(14,'Joana Reis','Rua Oeste 11',931111124,33344468,1,14),(15,'Patrícia Gomes','Rua das Laranjeiras 5',931111125,33344469,1,15),(16,'Tiago Ramos','Av. Norte 12',931111126,33344470,1,16),(17,'Sílvia Rocha','Rua Central 6',931111127,33344471,0,17),(18,'Fábio Nunes','Rua Sul 20',931111128,33344472,1,18),(19,'Mariana Pinto','Rua das Oliveiras 2',931111129,33344473,1,19),(20,'João Correia','Av. Central 15',931111130,33344474,0,20);
/*!40000 ALTER TABLE `doentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empregados`
--

DROP TABLE IF EXISTS `empregados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empregados` (
  `idEmpregado` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) DEFAULT NULL,
  `morada` varchar(50) DEFAULT NULL,
  `telefone` int DEFAULT NULL,
  `socio` tinyint DEFAULT NULL,
  `cc` int DEFAULT NULL,
  `especialidade` varchar(25) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  `num_ordem` int DEFAULT NULL,
  `idMedico` int DEFAULT NULL,
  `idEnfermeiro` int DEFAULT NULL,
  `idLaboratorio` int DEFAULT NULL,
  PRIMARY KEY (`idEmpregado`),
  KEY `empregados_medicos_FK` (`idMedico`),
  KEY `empregados_enfermeiros_FK` (`idEnfermeiro`),
  KEY `empregados_laboratorio_FK` (`idLaboratorio`),
  CONSTRAINT `empregados_enfermeiros_FK` FOREIGN KEY (`idEnfermeiro`) REFERENCES `enfermeiros` (`idEnfermeiro`),
  CONSTRAINT `empregados_laboratorio_FK` FOREIGN KEY (`idLaboratorio`) REFERENCES `laboratorio` (`idLaboratorio`),
  CONSTRAINT `empregados_medicos_FK` FOREIGN KEY (`idMedico`) REFERENCES `medicos` (`idMedico`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empregados`
--

LOCK TABLES `empregados` WRITE;
/*!40000 ALTER TABLE `empregados` DISABLE KEYS */;
INSERT INTO `empregados` VALUES (1,'João Silva','Rua das Flores 12, Lisboa',912345678,1,12345678,'Cardiologia',3200,1001,1,1,1),(2,'Maria Fernandes','Av. Central 45, Porto',913456789,0,23456789,'Enfermagem Geral',1800,2001,2,2,2),(3,'Ricardo Gomes','Rua da Liberdade 23, Coimbra',914567890,1,34567890,'Laboratório Clínico',1500,3001,3,3,3),(4,'Sofia Costa','Rua do Sol 78, Faro',915678901,0,45678901,'Neurologia',3400,1002,4,4,4),(5,'Tiago Matos','Av. República 33, Braga',916789012,1,56789012,'Enfermagem Pediátrica',1900,2002,5,5,5),(6,'Ana Oliveira','Rua Verde 15, Setúbal',917890123,0,67890123,'Laboratório Químico',1550,3002,6,6,6),(7,'Pedro Almeida','Rua do Rio 5, Aveiro',918901234,1,78901234,'Ortopedia',3100,1003,7,7,7),(8,'Carla Nunes','Rua Nova 90, Leiria',919012345,1,89012345,'Enfermagem Cirúrgica',2000,2003,8,8,8),(9,'Rui Marques','Av. Atlântica 22, Viana do Castelo',920123456,0,90123456,'Laboratório Hematologia',1600,3003,9,9,9),(10,'Marta Lopes','Rua da Praia 50, Funchal',921234567,1,1234567,'Pediatria',3300,1004,10,10,10),(11,'André Pinto','Av. Mar 10, Évora',922345678,1,11234567,'Enfermagem Geriátrica',1850,2004,11,11,11),(12,'Beatriz Sousa','Rua Alta 32, Guarda',923456789,1,12234567,'Laboratório Microbiologia',1450,3004,12,12,12),(13,'Carlos Ferreira','Rua Bela 8, Santarém',924567890,0,13234567,'Oftalmologia',3500,1005,13,13,13),(14,'Rita Santos','Av. das Oliveiras 76, Vila Real',925678901,1,14234567,'Enfermagem Obstétrica',1950,2005,14,14,14),(15,'Luís Correia','Rua Nova 9, Beja',926789012,1,15234567,'Laboratório Genética',1700,3005,15,15,15),(16,'Patrícia Rocha','Rua do Campo 14, Castelo Branco',927890123,0,16234567,'Dermatologia',3250,1006,16,16,16),(17,'Miguel Ramos','Av. da Serra 55, Bragança',928901234,1,17234567,'Enfermagem Psiquiátrica',2050,2006,17,17,17),(18,'Helena Teixeira','Rua Central 19, Ponta Delgada',929012345,0,18234567,'Laboratório Bioquímica',1650,3006,18,18,18),(19,'Daniel Carvalho','Rua das Acácias 7, Lisboa',930123456,1,19234567,'Urologia',3450,1007,19,19,19),(20,'Inês Marques','Av. Norte 88, Coimbra',931234567,0,20234567,'Enfermagem Comunitária',2100,2007,20,20,20);
/*!40000 ALTER TABLE `empregados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermarias`
--

DROP TABLE IF EXISTS `enfermarias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermarias` (
  `idEnfermarias` int NOT NULL AUTO_INCREMENT,
  `num_camas` int DEFAULT NULL,
  `siglas` varchar(15) DEFAULT NULL,
  `idDoentes` int DEFAULT NULL,
  PRIMARY KEY (`idEnfermarias`),
  KEY `enfermarias_doentes_FK` (`idDoentes`),
  CONSTRAINT `enfermarias_doentes_FK` FOREIGN KEY (`idDoentes`) REFERENCES `doentes` (`idDoentes`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermarias`
--

LOCK TABLES `enfermarias` WRITE;
/*!40000 ALTER TABLE `enfermarias` DISABLE KEYS */;
INSERT INTO `enfermarias` VALUES (1,10,'A1',1),(2,8,'B1',2),(3,12,'C1',3),(4,6,'D1',4),(5,14,'E1',5),(6,9,'F1',6),(7,11,'G1',7),(8,10,'H1',8),(9,7,'I1',9),(10,10,'J1',10),(11,12,'K1',11),(12,5,'L1',12),(13,8,'M1',13),(14,10,'N1',14),(15,8,'O1',15),(16,10,'P1',16),(17,12,'Q1',17),(18,6,'R1',18),(19,14,'S1',19),(20,9,'T1',20);
/*!40000 ALTER TABLE `enfermarias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermeiros`
--

DROP TABLE IF EXISTS `enfermeiros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermeiros` (
  `idEnfermeiro` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) DEFAULT NULL,
  `morada` varchar(50) DEFAULT NULL,
  `telefone` int DEFAULT NULL,
  `cc` int DEFAULT NULL,
  `salario` float DEFAULT NULL,
  PRIMARY KEY (`idEnfermeiro`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeiros`
--

LOCK TABLES `enfermeiros` WRITE;
/*!40000 ALTER TABLE `enfermeiros` DISABLE KEYS */;
INSERT INTO `enfermeiros` VALUES (1,'Patrícia Sousa','Rua Verde 1',930111111,22334455,1800),(2,'João Almeida','Rua Azul 2',930111112,22334456,1850),(3,'Sara Lopes','Rua Rosa 3',930111113,22334457,1900),(4,'Hugo Matos','Rua Central 4',930111114,22334458,1750),(5,'Helena Pinto','Av. Norte 5',930111115,22334459,2000),(6,'Carlos Ribeiro','Rua Leste 6',930111116,22334460,1950),(7,'Sofia Martins','Rua Oeste 7',930111117,22334461,1800),(8,'Diogo Silva','Rua Sul 8',930111118,22334462,1850),(9,'Rita Moreira','Av. Central 9',930111119,22334463,1900),(10,'Filipe Teixeira','Rua das Flores 10',930111120,22334464,1750),(11,'Marta Faria','Rua Norte 11',930111121,22334465,1800),(12,'Nuno Costa','Av. Sul 12',930111122,22334466,1950),(13,'Cátia Dias','Rua Azul 13',930111123,22334467,1850),(14,'André Ramos','Rua Verde 14',930111124,22334468,2000),(15,'Helena Duarte','Rua Leste 15',930111125,22334469,1900),(16,'Marco Silva','Rua Norte 16',930111126,22334470,1950),(17,'Daniela Costa','Av. Central 17',930111127,22334471,2000),(18,'Ricardo Santos','Rua Sul 18',930111128,22334472,1800),(19,'Vanessa Lopes','Av. Verde 19',930111129,22334473,1850),(20,'Joana Almeida','Rua das Rosas 20',930111130,22334474,1900);
/*!40000 ALTER TABLE `enfermeiros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitais`
--

DROP TABLE IF EXISTS `hospitais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitais` (
  `idHospitais` int NOT NULL AUTO_INCREMENT,
  `morada` varchar(50) DEFAULT NULL,
  `nome` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telefone` int DEFAULT NULL,
  `idEnfermarias` int DEFAULT NULL,
  `idEmpregado` int DEFAULT NULL,
  `idDoentes` int DEFAULT NULL,
  PRIMARY KEY (`idHospitais`),
  KEY `hospitais_enfermarias_FK` (`idEnfermarias`),
  KEY `hospitais_empregados_FK` (`idEmpregado`),
  KEY `hospitais_doentes_FK` (`idDoentes`),
  CONSTRAINT `hospitais_doentes_FK` FOREIGN KEY (`idDoentes`) REFERENCES `doentes` (`idDoentes`),
  CONSTRAINT `hospitais_empregados_FK` FOREIGN KEY (`idEmpregado`) REFERENCES `empregados` (`idEmpregado`),
  CONSTRAINT `hospitais_enfermarias_FK` FOREIGN KEY (`idEnfermarias`) REFERENCES `enfermarias` (`idEnfermarias`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitais`
--

LOCK TABLES `hospitais` WRITE;
/*!40000 ALTER TABLE `hospitais` DISABLE KEYS */;
INSERT INTO `hospitais` VALUES (1,'Rua Central 1','Hospital São João',220000001,1,1,1),(2,'Av. Norte 22','Hospital Santa Maria',220000002,2,2,2),(3,'Rua Sul 5','Hospital da Luz',220000003,3,3,3),(4,'Praça Verde 10','Hospital Beatriz Ângelo',220000004,4,4,4),(5,'Rua Leste 8','Hospital da Boa Nova',220000005,5,5,5),(6,'Av. Atlântica 9','Hospital do Mar',220000006,6,6,6),(7,'Rua Oeste 2','Hospital São Marcos',220000007,7,7,7),(8,'Rua das Flores 4','Hospital Central',220000008,8,8,8),(9,'Av. da Liberdade 14','Hospital Universitário',220000009,9,9,9),(10,'Rua Azul 7','Hospital Privado',220000010,10,10,10),(11,'Av. Rio 6','Hospital Esperança',220000011,11,11,11),(12,'Rua Dourada 5','Hospital do Sol',220000012,12,12,12),(13,'Av. Norte 12','Hospital Regional',220000013,13,13,13),(14,'Rua Sul 3','Hospital Nova Vida',220000014,14,14,14),(15,'Rua do Norte 10','Hospital Santa Luzia',220000015,15,15,15),(16,'Av. Central 22','Hospital São Pedro',220000016,16,16,16),(17,'Rua do Mar 18','Hospital Atlântico',220000017,17,17,17),(18,'Praça Nova 3','Hospital Esperança Nova',220000018,18,18,18),(19,'Rua das Rosas 8','Hospital Beira Mar',220000019,19,19,19),(20,'Av. Liberdade 40','Hospital São Paulo',220000020,20,20,20);
/*!40000 ALTER TABLE `hospitais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratorio` (
  `idLaboratorio` int NOT NULL AUTO_INCREMENT,
  `Data_analise` date DEFAULT NULL,
  `resultado` varchar(25) DEFAULT NULL,
  `idAnalises` int DEFAULT NULL,
  PRIMARY KEY (`idLaboratorio`),
  KEY `laboratorio_analises_FK` (`idAnalises`),
  CONSTRAINT `laboratorio_analises_FK` FOREIGN KEY (`idAnalises`) REFERENCES `analises` (`idAnalises`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio`
--

LOCK TABLES `laboratorio` WRITE;
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio` VALUES (1,'2025-02-01','Normal',1),(2,'2025-02-02','Normal',2),(3,'2025-02-03','Alterado',3),(4,'2025-02-04','Normal',4),(5,'2025-02-05','Normal',5),(6,'2025-02-06','Alterado',6),(7,'2025-02-07','Normal',7),(8,'2025-02-08','Alterado',8),(9,'2025-02-09','Normal',9),(10,'2025-02-10','Normal',10),(11,'2025-02-11','Alterado',11),(12,'2025-02-12','Normal',12),(13,'2025-02-13','Normal',13),(14,'2025-02-14','Normal',14),(15,'2025-02-15','Normal',15),(16,'2025-02-16','Alterado',16),(17,'2025-02-17','Normal',17),(18,'2025-02-18','Alterado',18),(19,'2025-02-19','Normal',19),(20,'2025-02-20','Normal',20);
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `idMedico` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) DEFAULT NULL,
  `morada` varchar(100) DEFAULT NULL,
  `telefone` int DEFAULT NULL,
  `cc` int DEFAULT NULL,
  `salario` float DEFAULT NULL,
  `idHospitais` int DEFAULT NULL,
  PRIMARY KEY (`idMedico`),
  KEY `medicos_hospitais_FK` (`idHospitais`),
  CONSTRAINT `medicos_hospitais_FK` FOREIGN KEY (`idHospitais`) REFERENCES `hospitais` (`idHospitais`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'João Pires','Rua Saúde 1',940111111,11122233,3200.2,1),(2,'Rita Gomes','Rua Saúde 2',940111112,11122234,3300.33,2),(3,'Pedro Lopes','Rua Saúde 3',940111113,11122235,3100.12,3),(4,'Ana Ramos','Rua Saúde 4',940111114,11122236,3400.65,4),(5,'Tiago Costa','Rua Saúde 5',940111115,11122237,3000.43,5),(6,'Helena Cruz','Rua Saúde 6',940111116,11122238,3100.24,6),(7,'Diogo Melo','Rua Saúde 7',940111117,11122239,3200.87,7),(8,'Carla Rocha','Rua Saúde 8',940111118,11122240,3300.84,8),(9,'Miguel Santos','Rua Saúde 9',940111119,11122241,3400.23,9),(10,'Beatriz Nunes','Rua Saúde 10',940111120,11122242,3500.65,10),(11,'Rui Fernandes','Rua Saúde 11',940111121,11122243,3150.43,11),(12,'Teresa Alves','Rua Saúde 12',940111122,11122244,3300.32,12),(13,'Joana Moreira','Rua Saúde 13',940111123,11122245,3250.67,13),(14,'Carlos Ribeiro','Rua Saúde 14',940111124,11122246,3350.98,14),(15,'Hugo Barros','Rua Saúde 15',940111125,11122247,3200.28,15),(16,'Patrícia Ramos','Rua Saúde 16',940111126,11122248,3100.73,16),(17,'Tiago Moreira','Rua Saúde 17',940111127,11122249,3250.11,17),(18,'Marta Figueira','Rua Saúde 18',940111128,11122250,3350.22,18),(19,'André Gomes','Rua Saúde 19',940111129,11122251,3450.33,19),(20,'Rita Carvalho','Rua Saúde 20',940111130,11122252,3550.44,20);
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'gestao_hospitais'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-03  9:34:01
