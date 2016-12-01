
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 01-12-2016 a las 08:41:48
-- Versión del servidor: 10.0.22-MariaDB
-- Versión de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u580360334_final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locales`
--

CREATE TABLE IF NOT EXISTS `locales` (
  `id_local` int(11) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nomSucursal` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `foto` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_local`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `locales`
--

INSERT INTO `locales` (`id_local`, `direccion`, `nomSucursal`, `foto`) VALUES
(2, 'Av. Bartolomé Mitre 701, Avellaneda, Buenos Aires', 'Sucursal Avellaneda', 'pizzeria1.jpg'),
(3, 'Ramallo 406, Sarandí, Buenos Aires', 'Sucursal Sarandi', 'pizzeria2.jpg'),
(6, ' Lima 1713, Cdad. Autónoma de Buenos Aires', 'Sucursal Lima', 'pizzeria3.jpg'),
(8, 'Pje. Beazley 100,Villa Dominico,Buenos Aires', 'Sucursal Dominico', 'pizzeria4.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `misusuarios`
--

CREATE TABLE IF NOT EXISTS `misusuarios` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `correo` varchar(5000) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `clave` varchar(5000) NOT NULL,
  `tipo` varchar(500) DEFAULT NULL,
  `foto` varchar(5000) NOT NULL,
  `id_local` int(11) NOT NULL,
  `direccion` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Volcado de datos para la tabla `misusuarios`
--

INSERT INTO `misusuarios` (`id`, `correo`, `nombre`, `clave`, `tipo`, `foto`, `id_local`, `direccion`) VALUES
(1, 'admin@admin.com', 'admin', '123', 'admin', 'pordefecto.png', 0, 'José M. Cecconi 3977, Remedios de Escalada, Buenos Aires'),
(43, 'guille@guille.com', 'Guillermo', '123', 'enca', 'pordefecto.png', 6, ''),
(42, 'emple2@emple2.com', 'emple2', '123', 'emple', 'pordefecto.png', 2, ''),
(40, 'enca@enca.com', 'enca', '123', 'enca', 'pordefecto.png', 2, ''),
(41, 'emple@emple.com', 'emple', '123', 'emple', 'pordefecto.png', 2, ''),
(44, 'juan@juan.com', 'Juan', '123', 'emple', 'pordefecto.png', 6, ''),
(45, 'pepe@pepe.com', 'pepe', '123', 'emple', 'pordefecto.png', 6, ''),
(46, 'rodri@rodri.com', 'rodri', '123', 'enca', 'pordefecto.png', 3, ''),
(47, 'panchito@panchito.com', 'panchito', '123', 'emple', 'pordefecto.png', 3, ''),
(48, 'uriel@uriel.com', 'uriel', '123', 'emple', 'pordefecto.png', 3, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) DEFAULT NULL,
  `ingredientes` mediumtext,
  `precio` float DEFAULT NULL,
  `cantidad` mediumint(9) DEFAULT NULL,
  `nombre` varchar(5000) DEFAULT NULL,
  `longitud` varchar(20) NOT NULL,
  `latitud` varchar(20) NOT NULL,
  `id_local` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=131 ;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `tipo`, `ingredientes`, `precio`, `cantidad`, `nombre`, `longitud`, `latitud`, `id_local`) VALUES
(130, 'Mozzarella', 'ajo', 130, 2, 'enca@enca.com', '?', '?', 2),
(129, 'Mozzarella con Jamon', 'jamon', 150, 2, 'enca@enca.com', '?', '?', 2),
(128, 'Mozzarella', 'jamon , queso y tomate', 200, 2, 'enca@enca.com', '?', '?', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `id_local` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`id`, `nombre`, `apellido`, `foto`, `tipo`, `id_local`) VALUES
(6, 'emple2', 'Gonzalez', 'pordefecto.png', 'emple', 2),
(3, 'enca', 'Avellaneda', 'pordefecto.png', 'enca', 2),
(5, 'emple', 'Perez', 'pordefecto.png', 'emple', 2),
(7, 'Guillermo', 'Arce', 'pordefecto.png', 'enca', 6),
(8, 'Juan', 'Velazquez', 'pordefecto.png', 'emple', 6),
(9, 'pepe', 'pepito', 'pordefecto.png', 'emple', 6),
(10, 'rodri', 'fernandez', 'pordefecto.png', 'enca', 3),
(11, 'panchito', 'gallemi', 'pordefecto.png', 'emple', 3),
(12, 'uriel', 'lozano', 'pordefecto.png', 'emple', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) DEFAULT NULL,
  `ingredientes` varchar(50000) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `id_local` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `tipo`, `ingredientes`, `cantidad`, `foto`, `precio`, `id_local`) VALUES
(69, 'Mozzarella', 'jamon', 0, 'clasica.jpg', 100, 6),
(68, 'Mozzarella', 'jamon , queso y tomate', 0, 'clasica.jpg', 200, 2),
(67, 'Mozzarella con Jamon', 'jamon', 0, 'fondo-pizza.jpg', 150, 2),
(66, 'Mozzarella', 'ajo', 0, 'clasica.jpg', 130, 2),
(70, 'Mozzarella', 'jamon , queso y tomate', 0, 'clasica.jpg', 180, 6),
(71, 'Mozzarella', 'morron', 0, 'clasica.jpg', 120, 6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
