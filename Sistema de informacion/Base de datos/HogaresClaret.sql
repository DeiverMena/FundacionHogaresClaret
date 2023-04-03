-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hogaresclaret
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `alimentos`
--

DROP TABLE IF EXISTS `alimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alimentos` (
  `codigo_alimento` int NOT NULL,
  `nombre_alimento` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `cantidad` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`codigo_alimento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alimentos`
--

LOCK TABLES `alimentos` WRITE;
/*!40000 ALTER TABLE `alimentos` DISABLE KEYS */;
INSERT INTO `alimentos` VALUES (1,'Carne','libra'),(2,'Manzana','unidad'),(3,'Margarina','unidad'),(4,'Panqueso','unidad'),(5,'YY','libra'),(6,'XX','litro'),(7,'ZZ','unidad'),(8,'Banano','unidad'),(9,'Bienestarina','libra'),(10,'Galleta wafer','unidad'),(11,'leche','litro'),(12,'aguacate','libra'),(13,'arroz','libra'),(14,'azucar','libra'),(15,'cebolla larga','libra'),(16,'cilantro','libra'),(17,'crema de leche','unidad'),(18,'pasta spaguetti','unidad'),(19,'galleta avena','unidad'),(20,'cumis','litro'),(21,'cocada','unidad'),(22,'queso campesino','libra'),(23,'pastel gloria','unidad'),(24,'galleta briky','unidad'),(25,'tomate','libra'),(26,'roscon de arequ','unidad'),(27,'yuca','libra'),(28,'lentejas','libra'),(29,'frijoles blanco','libra'),(30,'garbanzo','libra');
/*!40000 ALTER TABLE `alimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comidas`
--

DROP TABLE IF EXISTS `comidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comidas` (
  `codigo_comida` int NOT NULL,
  `nombre_comida` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`codigo_comida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comidas`
--

LOCK TABLES `comidas` WRITE;
/*!40000 ALTER TABLE `comidas` DISABLE KEYS */;
INSERT INTO `comidas` VALUES (1,'Desayuno'),(2,'Nueves'),(3,'Almuerzo'),(4,'Onces'),(5,'Cena');
/*!40000 ALTER TABLE `comidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comidaxalimentos`
--

DROP TABLE IF EXISTS `comidaxalimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comidaxalimentos` (
  `id_comida` int DEFAULT NULL,
  `id_alimento` int DEFAULT NULL,
  KEY `id_comida` (`id_comida`),
  KEY `id_alimento` (`id_alimento`),
  CONSTRAINT `comidaxalimentos_ibfk_1` FOREIGN KEY (`id_comida`) REFERENCES `comidas` (`codigo_comida`),
  CONSTRAINT `comidaxalimentos_ibfk_2` FOREIGN KEY (`id_alimento`) REFERENCES `alimentos` (`codigo_alimento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comidaxalimentos`
--

LOCK TABLES `comidaxalimentos` WRITE;
/*!40000 ALTER TABLE `comidaxalimentos` DISABLE KEYS */;
INSERT INTO `comidaxalimentos` VALUES (1,2),(1,26),(1,16),(1,17),(1,9),(2,21),(2,10),(2,30),(2,12),(2,15),(3,1),(3,2),(3,3),(3,4),(3,5),(4,6),(4,6),(4,6),(4,6),(4,6),(5,6),(5,7),(5,8),(5,8),(5,9);
/*!40000 ALTER TABLE `comidaxalimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dias`
--

DROP TABLE IF EXISTS `dias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dias` (
  `codigo_dia` int NOT NULL,
  `nombre_dia` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `id_menu` int NOT NULL,
  PRIMARY KEY (`codigo_dia`,`id_menu`),
  KEY `id_menu` (`id_menu`),
  CONSTRAINT `dias_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`codigo_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dias`
--

LOCK TABLES `dias` WRITE;
/*!40000 ALTER TABLE `dias` DISABLE KEYS */;
INSERT INTO `dias` VALUES (1,'Lunes',1),(2,'Martes',1),(3,'Miercoles',1),(4,'Jueves',1),(5,'Viernes',1),(6,'Sabado',1),(7,'Domingo',1),(8,'Lunes',2),(9,'Martes',2),(10,'Miercoles',2),(11,'Jueves',2),(12,'Viernes',2),(13,'Sabado',2),(14,'Domingo',2),(15,'Lunes',3),(16,'Martes',3),(17,'Miercoles',3),(18,'Jueves',3),(19,'Viernes',3),(20,'Sabado',3),(21,'Domingo',3),(22,'Lunes',4),(23,'Martes',4),(24,'Miercoles',4),(25,'Jueves',4),(26,'Viernes',4),(27,'Sabado',4),(28,'Domingo',4);
/*!40000 ALTER TABLE `dias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diasxcomida`
--

DROP TABLE IF EXISTS `diasxcomida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diasxcomida` (
  `id_dia` int DEFAULT NULL,
  `id_comida` int DEFAULT NULL,
  KEY `id_comida` (`id_comida`),
  KEY `id_dia` (`id_dia`),
  CONSTRAINT `diasxcomida_ibfk_1` FOREIGN KEY (`id_comida`) REFERENCES `comidas` (`codigo_comida`),
  CONSTRAINT `diasxcomida_ibfk_2` FOREIGN KEY (`id_dia`) REFERENCES `dias` (`codigo_dia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diasxcomida`
--

LOCK TABLES `diasxcomida` WRITE;
/*!40000 ALTER TABLE `diasxcomida` DISABLE KEYS */;
INSERT INTO `diasxcomida` VALUES (1,1),(1,1),(1,1),(2,1),(3,1),(4,1),(5,1),(6,2),(7,2),(8,2),(9,2),(10,2),(11,3),(12,3),(13,3),(14,3),(15,3),(16,4),(17,4),(18,4),(19,4),(20,4),(21,5),(22,5),(23,5),(24,5),(25,5);
/*!40000 ALTER TABLE `diasxcomida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `codigo_menu` int NOT NULL,
  `cod_region` int DEFAULT NULL,
  PRIMARY KEY (`codigo_menu`),
  KEY `cod_region` (`cod_region`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`cod_region`) REFERENCES `region` (`id_region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,1),(2,1),(3,1),(4,1),(5,2),(6,2),(7,2),(8,2),(9,3),(10,3),(11,3),(12,3),(13,4),(14,4),(15,4),(16,4),(17,5),(18,5),(19,5),(20,5);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_03_25_014303_create_permission_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(2,'App\\Models\\User',2);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'users.index','web','2022-04-11 20:19:24','2022-04-11 20:19:24','Navegar usuarios'),(2,'users.show','web','2022-04-11 20:19:24','2022-04-11 20:19:24','Ver detalle usuarios'),(3,'user.create','web','2022-04-11 20:19:24','2022-04-11 20:19:24','Crear usuarios'),(4,'users.edit','web','2022-04-11 20:19:24','2022-04-11 20:19:24','Editar usuarios'),(5,'users.destroy','web','2022-04-11 20:19:24','2022-04-11 20:19:24','Eliminar usuarios'),(6,'roles.index','web','2022-04-11 20:19:24','2022-04-11 20:19:24','Navegar roles'),(7,'roles.show','web','2022-04-11 20:19:24','2022-04-11 20:19:24','Ver detalle roles'),(8,'roles.create','web','2022-04-11 20:19:24','2022-04-11 20:19:24','Crear roles'),(9,'roles.edit','web','2022-04-11 20:19:24','2022-04-11 20:19:24','Editar roles'),(10,'roles.destroy','web','2022-04-11 20:19:24','2022-04-11 20:19:24','Eliminar roles');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `nit_proveedor` int NOT NULL,
  `nombre_proveedor` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nit_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'ProvedorUno'),(2,'ProvedorDos'),(3,'ProvedorTres'),(4,'ProvedorCuatro'),(5,'ProvedorCinco'),(6,'ProvedorSeis');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedorxalimentos`
--

DROP TABLE IF EXISTS `proveedorxalimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedorxalimentos` (
  `id_proveedor` int DEFAULT NULL,
  `id_alimento` int DEFAULT NULL,
  KEY `id_proveedor` (`id_proveedor`),
  KEY `id_alimento` (`id_alimento`),
  CONSTRAINT `proveedorxalimentos_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`nit_proveedor`),
  CONSTRAINT `proveedorxalimentos_ibfk_2` FOREIGN KEY (`id_alimento`) REFERENCES `alimentos` (`codigo_alimento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedorxalimentos`
--

LOCK TABLES `proveedorxalimentos` WRITE;
/*!40000 ALTER TABLE `proveedorxalimentos` DISABLE KEYS */;
INSERT INTO `proveedorxalimentos` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(1,7),(2,8),(3,9),(4,10),(5,11),(6,12),(1,13),(2,14),(3,15),(4,16),(5,17),(5,18),(1,19),(2,20),(3,21),(4,22),(5,23),(6,24),(1,25),(2,26),(3,27),(4,28),(5,29),(6,30);
/*!40000 ALTER TABLE `proveedorxalimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `id_region` int NOT NULL,
  `nombre_region` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Andina'),(2,'Caribe'),(3,'Pacifico'),(4,'Orinoquia'),(5,'Amazonas');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(1,3),(2,3),(4,3),(8,4),(9,4);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','web','2022-04-11 20:19:24','2022-04-11 20:19:24'),(2,'Profesional','web','2022-04-11 20:19:24','2022-04-11 20:19:24'),(3,'Ayudante','web','2022-05-25 23:24:43','2022-05-25 23:24:43'),(4,'Prueba','web','2022-05-25 23:58:41','2022-05-25 23:58:41');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Cedula` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nombre1` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nombre2` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Apellido1` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Apellido2` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Genero` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tipo_Documento` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cod_region` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `usu_region` (`cod_region`),
  CONSTRAINT `usu_region` FOREIGN KEY (`cod_region`) REFERENCES `region` (`id_region`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'1022422123','Hogares','Claret','Administrador','','','','administrador@hotmail.com',NULL,'$2y$10$vMFdbYrInIYLX8VzIxW6S.Z4NI0WIHe1x/a5GKuaYb2Rvc/TwuM4K',NULL,'2022-04-11 20:19:24','2022-05-08 22:45:31',3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hogaresclaret'
--

--
-- Dumping routines for database 'hogaresclaret'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-06 23:03:52
