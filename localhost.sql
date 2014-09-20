-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-09-2014 a las 06:44:37
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sisminvent`
--
CREATE DATABASE `sisminvent` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci;
USE `sisminvent`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE IF NOT EXISTS `administradores` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` text COLLATE utf8_general_mysql500_ci NOT NULL,
  `password` text COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id_usuario`, `usuario`, `password`) VALUES
(1, 'eskobar', 'eskobar21'),
(2, 'santiago', '19092014');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_movimiento`
--

CREATE TABLE IF NOT EXISTS `detalle_movimiento` (
  `ID_Detalle_Movimiento` int(11) NOT NULL,
  `ID_Producto` int(11) NOT NULL,
  `Valor_Unitario` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `ID_Movimiento` int(11) NOT NULL,
  `ID_Detalle_Producto` int(11) NOT NULL,
  PRIMARY KEY (`ID_Detalle_Movimiento`),
  KEY `fk_DETALLE_MOVIMIENTO_MOVIMIENTOS1_idx` (`ID_Movimiento`),
  KEY `fk_DETALLE_MOVIMIENTO_DETALLE_PRODUCTO1_idx` (`ID_Detalle_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_producto`
--

CREATE TABLE IF NOT EXISTS `detalle_producto` (
  `ID_Detalle_Producto` int(11) NOT NULL,
  `Nombre_Producto` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  `Valor` int(11) NOT NULL,
  `Descripcion` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  `ID_Productos` int(11) NOT NULL,
  `ID_Marca` int(11) NOT NULL,
  `ID_Tipo_Productos` int(11) NOT NULL,
  PRIMARY KEY (`ID_Detalle_Producto`),
  KEY `fk_DETALLE_PRODUCTO_PRODUCTOS1_idx` (`ID_Productos`),
  KEY `fk_DETALLE_PRODUCTO_MARCA1_idx` (`ID_Marca`),
  KEY `fk_DETALLE_PRODUCTO_TIPO_PRODUCTOS1_idx` (`ID_Tipo_Productos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_movimiento`
--

CREATE TABLE IF NOT EXISTS `estado_movimiento` (
  `ID_Estado_Movimiento` int(11) NOT NULL,
  `Descripcion` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`ID_Estado_Movimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
  `ID_Marca` int(11) NOT NULL,
  `Descripcion` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`ID_Marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE IF NOT EXISTS `movimiento` (
  `ID_Movimiento` int(11) NOT NULL,
  `Fecha_Compra` date NOT NULL,
  `Fecha_Devolucion` date NOT NULL,
  `fecha_Venta` date NOT NULL,
  `ID_Productos` int(11) NOT NULL,
  `ID_Compañia` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `ID_Tipo_Movimiento` int(11) NOT NULL,
  `ID_Estado_Movimiento` int(11) NOT NULL,
  `ID_Proveedor` int(11) NOT NULL,
  `Descripcion` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  `Tipo_De_Personas_idTipo_De_Personas` int(11) NOT NULL,
  PRIMARY KEY (`ID_Movimiento`),
  KEY `fk_MOVIMIENTOS_TIPO_MOVIMIENTOTIO1_idx` (`ID_Tipo_Movimiento`),
  KEY `fk_MOVIMIENTOS_ESTADO_MOVIMIENTO1_idx` (`ID_Estado_Movimiento`),
  KEY `fk_MOVIMIENTO_Tipo_De_Personas1_idx` (`Tipo_De_Personas_idTipo_De_Personas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `idPersona` int(11) NOT NULL DEFAULT '1',
  `nombre_compañia` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Direccion` int(11) DEFAULT NULL,
  `Nombre_persona` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Tipo_De_Personas_idTipo_De_Personas` int(11) NOT NULL,
  PRIMARY KEY (`idPersona`),
  UNIQUE KEY `idPersona_UNIQUE` (`idPersona`),
  KEY `fk_Persona_Tipo_De_Personas1_idx` (`Tipo_De_Personas_idTipo_De_Personas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `ID_Productos` int(11) NOT NULL,
  `Descripcion` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`ID_Productos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_personas`
--

CREATE TABLE IF NOT EXISTS `tipo_de_personas` (
  `idTipo_De_Personas` int(11) NOT NULL,
  `Descripcion_Tipo_De_Personascol` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  PRIMARY KEY (`idTipo_De_Personas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_movimientotio`
--

CREATE TABLE IF NOT EXISTS `tipo_movimientotio` (
  `ID_Tipo_Movimiento` int(11) NOT NULL,
  `Descripcion` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`ID_Tipo_Movimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_productos`
--

CREATE TABLE IF NOT EXISTS `tipo_productos` (
  `ID_Tipo_Productos` int(11) NOT NULL,
  `Descripcion` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`ID_Tipo_Productos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_movimiento`
--
ALTER TABLE `detalle_movimiento`
  ADD CONSTRAINT `fk_DETALLE_MOVIMIENTO_DETALLE_PRODUCTO1` FOREIGN KEY (`ID_Detalle_Producto`) REFERENCES `detalle_producto` (`ID_Detalle_Producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DETALLE_MOVIMIENTO_MOVIMIENTOS1` FOREIGN KEY (`ID_Movimiento`) REFERENCES `movimiento` (`ID_Movimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_producto`
--
ALTER TABLE `detalle_producto`
  ADD CONSTRAINT `fk_DETALLE_PRODUCTO_MARCA1` FOREIGN KEY (`ID_Marca`) REFERENCES `marca` (`ID_Marca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DETALLE_PRODUCTO_PRODUCTOS1` FOREIGN KEY (`ID_Productos`) REFERENCES `productos` (`ID_Productos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DETALLE_PRODUCTO_TIPO_PRODUCTOS1` FOREIGN KEY (`ID_Tipo_Productos`) REFERENCES `tipo_productos` (`ID_Tipo_Productos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD CONSTRAINT `fk_MOVIMIENTOS_ESTADO_MOVIMIENTO1` FOREIGN KEY (`ID_Estado_Movimiento`) REFERENCES `estado_movimiento` (`ID_Estado_Movimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_MOVIMIENTOS_TIPO_MOVIMIENTOTIO1` FOREIGN KEY (`ID_Tipo_Movimiento`) REFERENCES `tipo_movimientotio` (`ID_Tipo_Movimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_MOVIMIENTO_Tipo_De_Personas1` FOREIGN KEY (`Tipo_De_Personas_idTipo_De_Personas`) REFERENCES `tipo_de_personas` (`idTipo_De_Personas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_Persona_Tipo_De_Personas1` FOREIGN KEY (`Tipo_De_Personas_idTipo_De_Personas`) REFERENCES `tipo_de_personas` (`idTipo_De_Personas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
