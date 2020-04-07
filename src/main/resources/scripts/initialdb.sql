--
-- Host: localhost    Database: JAV_PATRONES_COTIZACIONES_DB
CREATE DATABASE IF NOT EXISTS JAV_PATRONES_COTIZACIONES_DB;
USE JAV_PATRONES_COTIZACIONES_DB;

-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria`
(
    `id_categoria`   int          NOT NULL AUTO_INCREMENT,
    `categoria`      varchar(100) NOT NULL,
    `fecha_registro` timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_categoria`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria`
    DISABLE KEYS */;
INSERT INTO `categoria`
VALUES (1, 'PRODUCTOS', '2020-04-06 00:21:12'),
       (2, 'SERVICIOS', '2020-04-06 00:21:36');
/*!40000 ALTER TABLE `categoria`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion`
--

DROP TABLE IF EXISTS `cotizacion`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizacion`
(
    `id_cotizacion`   int       NOT NULL AUTO_INCREMENT,
    `id_solicitud`    int       NOT NULL,
    `id_proveedor`    int       NOT NULL,
    `vlr_cotizacion`  double    NOT NULL,
    `notificacion_ok` tinyint(1)         DEFAULT NULL,
    `fecha_registro`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_cotizacion`),
    KEY `cotizacion_FK` (`id_solicitud`),
    KEY `cotizacion_FK_1` (`id_proveedor`),
    CONSTRAINT `cotizacion_FK` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud_cotizacion` (`id_solicitud`),
    CONSTRAINT `cotizacion_FK_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion`
--

LOCK TABLES `cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacion`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacion`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion_detalle`
--

DROP TABLE IF EXISTS `cotizacion_detalle`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizacion_detalle`
(
    `id_cotizacion_detalle`      int       NOT NULL AUTO_INCREMENT,
    `id_cotizacion`              int       NOT NULL,
    `id_producto_servicio`       int       NOT NULL,
    `cant_producto_servicio`     int       NOT NULL,
    `vlr_producto_servicio`      double    NOT NULL DEFAULT '0',
    `vlr_dcto_producto_servicio` double             DEFAULT '0',
    `des_oferta`                 varchar(100)       DEFAULT NULL,
    `fecha_registro`             timestamp NULL     DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_cotizacion_detalle`),
    KEY `cotizacion_detalle_FK` (`id_cotizacion`),
    KEY `cotizacion_detalle_FK_1` (`id_producto_servicio`),
    CONSTRAINT `cotizacion_detalle_FK` FOREIGN KEY (`id_cotizacion`) REFERENCES `cotizacion` (`id_cotizacion`),
    CONSTRAINT `cotizacion_detalle_FK_1` FOREIGN KEY (`id_producto_servicio`) REFERENCES `producto_servicio` (`id_producto_servicio`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion_detalle`
--

LOCK TABLES `cotizacion_detalle` WRITE;
/*!40000 ALTER TABLE `cotizacion_detalle`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacion_detalle`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado`
(
    `id_estado`      int         NOT NULL AUTO_INCREMENT,
    `estado`         varchar(50) NOT NULL,
    `fecha_registro` timestamp   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_estado`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado`
    DISABLE KEYS */;
INSERT INTO `estado`
VALUES (0, 'INACTIVO', '2020-04-05 22:14:03'),
       (1, 'ACTIVO', '2020-04-05 22:16:04');
/*!40000 ALTER TABLE `estado`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_solicitud`
--

DROP TABLE IF EXISTS `estado_solicitud`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_solicitud`
(
    `id_estado_solicitud` int          NOT NULL AUTO_INCREMENT,
    `estado_solicitud`    varchar(100) NOT NULL,
    `fecha_registro`      timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_estado_solicitud`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_solicitud`
--

LOCK TABLES `estado_solicitud` WRITE;
/*!40000 ALTER TABLE `estado_solicitud`
    DISABLE KEYS */;
INSERT INTO `estado_solicitud`
VALUES (1, 'REGISTRADA', '2020-04-05 22:30:14'),
       (2, 'EN PROCESO', '2020-04-05 22:31:22'),
       (3, 'EN COTIZACION', '2020-04-05 22:31:45'),
       (4, 'FINALIZADA', '2020-04-05 22:31:45');
/*!40000 ALTER TABLE `estado_solicitud`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pefil`
--

DROP TABLE IF EXISTS `pefil`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pefil`
(
    `id_perfil`      int                                     NOT NULL AUTO_INCREMENT,
    `perfil`         varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
    `fecha_registro` timestamp                               NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_perfil`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pefil`
--

LOCK TABLES `pefil` WRITE;
/*!40000 ALTER TABLE `pefil`
    DISABLE KEYS */;
INSERT INTO `pefil`
VALUES (1, 'ADMINISTRADOR', '2020-04-05 21:36:06'),
       (2, 'CLIENTE', '2020-04-05 21:36:28'),
       (3, 'PROVEEDOR', '2020-04-05 21:36:28');
/*!40000 ALTER TABLE `pefil`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona`
(
    `id_persona`             int          NOT NULL AUTO_INCREMENT,
    `nombre`                 varchar(100) NOT NULL,
    `apellido`               varchar(100) NOT NULL,
    `id_tipo_identificacion` int          NOT NULL,
    `numero_identificacion`  varchar(100) NOT NULL,
    `correo`                 varchar(100) NOT NULL,
    `telefono`               varchar(100) NOT NULL,
    `id_proveedor`           int                   DEFAULT NULL,
    `fecha_registro`         timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_persona`),
    KEY `persona_FK` (`id_proveedor`),
    CONSTRAINT `persona_FK` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona`
    DISABLE KEYS */;
INSERT INTO `persona`
VALUES (1, 'ROBINSON', 'TORRES', 1, '18470317', 'ROBINSON.TORRES@JAVERIANA.EDU.CO', '3007875067', NULL,
        '2020-04-05 22:00:05');
/*!40000 ALTER TABLE `persona`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_servicio`
--

DROP TABLE IF EXISTS `producto_servicio`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_servicio`
(
    `id_producto_servicio` int          NOT NULL AUTO_INCREMENT,
    `id_sub_categoria`     int          NOT NULL,
    `producto_servicio`    varchar(100) NOT NULL,
    `fecha_registro`       timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_producto_servicio`),
    KEY `producto_servicio_FK` (`id_sub_categoria`),
    CONSTRAINT `producto_servicio_FK` FOREIGN KEY (`id_sub_categoria`) REFERENCES `sub_categoria` (`id_sub_categoria`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 22
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_servicio`
--

LOCK TABLES `producto_servicio` WRITE;
/*!40000 ALTER TABLE `producto_servicio`
    DISABLE KEYS */;
INSERT INTO `producto_servicio`
VALUES (1, 1, 'CELULARES', '2020-04-06 00:29:18'),
       (2, 1, 'COMPUTADORES', '2020-04-06 00:29:35'),
       (3, 2, 'TELEVISORES', '2020-04-06 00:29:51'),
       (4, 2, 'NEVERAS', '2020-04-06 00:30:07'),
       (5, 2, 'ESTUFAS', '2020-04-06 00:30:18'),
       (6, 3, 'ZAPATOS', '2020-04-06 00:30:36'),
       (7, 3, 'ROPA INFANTIL', '2020-04-06 00:31:15'),
       (8, 3, 'BOLZOS', '2020-04-06 00:31:15'),
       (9, 3, 'MEDIAS', '2020-04-06 00:31:15'),
       (10, 4, 'MESAS', '2020-04-06 00:32:00'),
       (11, 4, 'CAMAS', '2020-04-06 00:32:00'),
       (12, 4, 'SOFAS', '2020-04-06 00:32:00'),
       (13, 4, 'ESCRITORIOS', '2020-04-06 00:33:56'),
       (14, 4, 'BIBLIOTECA', '2020-04-06 00:33:56'),
       (15, 5, 'COMPUTADORES', '2020-04-06 00:33:56'),
       (16, 5, 'ELECTRODOMESTICOS', '2020-04-06 00:33:56'),
       (17, 6, 'ELECTRICA', '2020-04-06 00:33:56'),
       (18, 6, 'GAS', '2020-04-06 00:33:56'),
       (19, 7, 'DIRECT TV', '2020-04-06 00:34:38'),
       (20, 7, 'CLARO', '2020-04-06 00:34:38'),
       (21, 7, 'HVTV', '2020-04-06 00:34:38');
/*!40000 ALTER TABLE `producto_servicio`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor`
(
    `id_proveedor`           int                                                           NOT NULL AUTO_INCREMENT,
    `id_categoria`           int                                                           NOT NULL,
    `id_tipo_identificacion` int                                                           NOT NULL,
    `numero_identificacion`  varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `razon_social`           varchar(100)                                                  NOT NULL,
    `correo`                 varchar(100)                                                  NOT NULL,
    `telefono`               varchar(100)                                                  NOT NULL,
    `direccion`              varchar(100)                                                  NOT NULL,
    `end_point`              varchar(100)                                                           DEFAULT NULL,
    `info_general`           text,
    `fecha_registro`         timestamp                                                     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_proveedor`),
    KEY `proveedor_FK` (`id_categoria`),
    CONSTRAINT `proveedor_FK` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud_cotizacion`
--

DROP TABLE IF EXISTS `solicitud_cotizacion`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud_cotizacion`
(
    `id_solicitud`        int       NOT NULL AUTO_INCREMENT,
    `id_persona`          int       NOT NULL,
    `id_estado_solicitud` int       NOT NULL,
    `id_categoria`        int       NOT NULL,
    `info_solicitud`      varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
    `fecha_registro`      timestamp NOT NULL                                            DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_solicitud`),
    KEY `solicitud_cotizacion_FK` (`id_persona`),
    KEY `solicitud_cotizacion_FK_1` (`id_categoria`),
    KEY `solicitud_cotizacion_FK_2` (`id_estado_solicitud`),
    CONSTRAINT `solicitud_cotizacion_FK` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`),
    CONSTRAINT `solicitud_cotizacion_FK_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
    CONSTRAINT `solicitud_cotizacion_FK_2` FOREIGN KEY (`id_estado_solicitud`) REFERENCES `estado_solicitud` (`id_estado_solicitud`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_cotizacion`
--

LOCK TABLES `solicitud_cotizacion` WRITE;
/*!40000 ALTER TABLE `solicitud_cotizacion`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitud_cotizacion`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud_detalle`
--

DROP TABLE IF EXISTS `solicitud_detalle`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud_detalle`
(
    `id_solicitud_detalle`   int       NOT NULL AUTO_INCREMENT,
    `id_solicitud`           int       NOT NULL,
    `id_producto_servicio`   int       NOT NULL,
    `cant_producto_servicio` int       NOT NULL,
    `info_adicional`         varchar(100)       DEFAULT NULL,
    `fecha_registro`         timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_solicitud_detalle`),
    KEY `solicitud_detalle_FK` (`id_solicitud`),
    KEY `solicitud_detalle_FK_1` (`id_producto_servicio`),
    CONSTRAINT `solicitud_detalle_FK` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud_cotizacion` (`id_solicitud`),
    CONSTRAINT `solicitud_detalle_FK_1` FOREIGN KEY (`id_producto_servicio`) REFERENCES `producto_servicio` (`id_producto_servicio`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_detalle`
--

LOCK TABLES `solicitud_detalle` WRITE;
/*!40000 ALTER TABLE `solicitud_detalle`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitud_detalle`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud_historico_estado`
--

DROP TABLE IF EXISTS `solicitud_historico_estado`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud_historico_estado`
(
    `id_solicitud_historico_estado` int       NOT NULL AUTO_INCREMENT,
    `id_solicitud`                  int       NOT NULL,
    `id_estado_solicitud`           int       NOT NULL,
    `fecha_registro`                timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_solicitud_historico_estado`),
    KEY `solicitud_historico_estado_FK_1` (`id_solicitud`),
    CONSTRAINT `solicitud_historico_estado_FK` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud_cotizacion` (`id_solicitud`),
    CONSTRAINT `solicitud_historico_estado_FK_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud_cotizacion` (`id_solicitud`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_historico_estado`
--

LOCK TABLES `solicitud_historico_estado` WRITE;
/*!40000 ALTER TABLE `solicitud_historico_estado`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitud_historico_estado`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categoria`
--

DROP TABLE IF EXISTS `sub_categoria`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categoria`
(
    `id_sub_categoria` int          NOT NULL AUTO_INCREMENT,
    `id_categoria`     int          NOT NULL,
    `sub_categoria`    varchar(100) NOT NULL,
    `fecha_registro`   timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_sub_categoria`),
    KEY `sub_categoria_FK` (`id_categoria`),
    CONSTRAINT `sub_categoria_FK` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 8
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categoria`
--

LOCK TABLES `sub_categoria` WRITE;
/*!40000 ALTER TABLE `sub_categoria`
    DISABLE KEYS */;
INSERT INTO `sub_categoria`
VALUES (1, 1, 'TECNOLOGIA', '2020-04-06 00:22:01'),
       (2, 1, 'ELECTRODOMESTICOS', '2020-04-06 00:22:20'),
       (3, 1, 'ROPA', '2020-04-06 00:22:35'),
       (4, 1, 'MUEBLES', '2020-04-06 00:22:44'),
       (5, 2, 'MANTENIMIENTO', '2020-04-06 00:23:18'),
       (6, 2, 'INSTALACION', '2020-04-06 00:23:29'),
       (7, 2, 'CABLE', '2020-04-06 00:23:36');
/*!40000 ALTER TABLE `sub_categoria`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario`
(
    `id_usuario`     int          NOT NULL AUTO_INCREMENT,
    `id_persona`     int          NOT NULL,
    `id_perfil`      int          NOT NULL,
    `usuario`        varchar(100) NOT NULL,
    `password`       varchar(100) NOT NULL,
    `token`          varchar(100)          DEFAULT NULL,
    `id_estado`      int          NOT NULL,
    `fecha_registro` timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_usuario`),
    KEY `usuario_FK` (`id_persona`),
    KEY `usuario_FK_2` (`id_perfil`),
    KEY `usuario_FK_3` (`id_estado`),
    CONSTRAINT `usuario_FK` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`),
    CONSTRAINT `usuario_FK_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
    CONSTRAINT `usuario_FK_2` FOREIGN KEY (`id_perfil`) REFERENCES `pefil` (`id_perfil`),
    CONSTRAINT `usuario_FK_3` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2020-04-05 19:58:33