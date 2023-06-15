-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2023 a las 10:42:27
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tundraparqueadero_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblclientes`
--

CREATE TABLE `tblclientes` (
  `cliDocumento` int(10) NOT NULL,
  `cliNombre` varchar(30) NOT NULL,
  `cliApellido` varchar(30) NOT NULL,
  `cliEdad` varchar(2) NOT NULL,
  `cliNumeroCelular` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tblclientes`
--

INSERT INTO `tblclientes` (`cliDocumento`, `cliNombre`, `cliApellido`, `cliEdad`, `cliNumeroCelular`) VALUES
(30350639, 'Maria', 'Gomez', '50', '3115758321'),
(1016001488, 'Jean Paul', 'Garcia', '18', '3215107676'),
(1016527241, 'Diego', 'Herrera', '23', '3122457442');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblvehiculo`
--

CREATE TABLE `tblvehiculo` (
  `vehId` int(11) NOT NULL,
  `vehPlaca` varchar(6) NOT NULL,
  `vehMarca` varchar(20) NOT NULL,
  `vehModelo` varchar(20) NOT NULL,
  `vehIngreso` datetime NOT NULL DEFAULT current_timestamp(),
  `vehSalida` datetime NOT NULL,
  `vehTarifa` int(5) NOT NULL,
  `vehCliente` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tblvehiculo`
--

INSERT INTO `tblvehiculo` (`vehId`, `vehPlaca`, `vehMarca`, `vehModelo`, `vehIngreso`, `vehSalida`, `vehTarifa`, `vehCliente`) VALUES
(1, 'VGS251', 'Ford', 'Mustang GT 2018', '2023-06-15 01:39:51', '2023-06-15 03:40:34', 50000, 1016001488),
(2, 'AFC', 'Renault', 'Kangoo 2013', '2023-06-15 01:39:51', '2023-06-15 05:40:34', 20000, 30350639);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblclientes`
--
ALTER TABLE `tblclientes`
  ADD PRIMARY KEY (`cliDocumento`);

--
-- Indices de la tabla `tblvehiculo`
--
ALTER TABLE `tblvehiculo`
  ADD PRIMARY KEY (`vehId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblvehiculo`
--
ALTER TABLE `tblvehiculo`
  MODIFY `vehId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tblvehiculo`
--
ALTER TABLE `tblvehiculo`
  ADD CONSTRAINT `tblvehiculo_ibfk_1` FOREIGN KEY (`vehCliente`) REFERENCES `tblclientes` (`cliDocumento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
