-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2023 a las 10:27:15
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tipeii`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `RUN` varchar(10) NOT NULL,
  `Dirección_completa` varchar(50) NOT NULL,
  `telefono_emergencia` int(10) NOT NULL,
  `nombre_completo` char(50) NOT NULL,
  `rol` enum('trabajador','administrador') DEFAULT NULL,
  `categoria` char(20) DEFAULT NULL,
  `telefono` int(10) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`RUN`, `Dirección_completa`, `telefono_emergencia`, `nombre_completo`, `rol`, `categoria`, `telefono`, `password`) VALUES
('111', 'CALLE 3', 2322, 'usario genérico', 'administrador', NULL, 232323, '1234'),
('1112232', 'CALsadsdasdaasLE 3', 2322, 'usario genérico', 'administrador', NULL, 232323, '$2a$10$c63tG5f5AOkTRR5Fe3mmQe0kkoNwZwlt.VqE3cUDkLIeONTHYoBjO'),
('222', 'CALLE 4', 222222222, 'CC DD EEC', '', NULL, 3123123, '222'),
('333', 'CALLE 6', 222222, 'FF GG DD', '', 'Tercera', 22222, '112321322');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`RUN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
