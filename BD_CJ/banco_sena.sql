-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-12-2021 a las 20:29:27
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `banco_sena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `id_cu` varchar(10) NOT NULL,
  `id_tpc` varchar(30) NOT NULL,
  `saldo_cu` varchar(30) NOT NULL,
  `clave_cu` varchar(4) NOT NULL,
  `id_usu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`id_cu`, `id_tpc`, `saldo_cu`, `clave_cu`, `id_usu`) VALUES
('1361055168', 'Cuenta corriente', ' 50000', '1234', '1007401224'),
('1424679200', 'Cuenta de ahorros', ' 5000', '1234', '1007401224'),
('1868183496', 'Cuenta de ahorros', '0', '4545', '1074958070'),
('1966230128', 'Cuenta corriente', ' 20000', '1234', '1007401224'),
('1988054992', 'Cuenta de ahorros', ' 1000', '0000', '1'),
('2006129600', 'Cuenta de nomina', ' -15000', '1234', '52175863'),
('2027568608', 'Cuenta de ahorros', '0', '1234', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos_cu`
--

CREATE TABLE `movimientos_cu` (
  `id_mov` varchar(10) NOT NULL,
  `nombre_usu` varchar(80) NOT NULL,
  `id_tpm` varchar(30) NOT NULL,
  `cantidad` varchar(15) NOT NULL,
  `id_cu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `movimientos_cu`
--

INSERT INTO `movimientos_cu` (`id_mov`, `nombre_usu`, `id_tpm`, `cantidad`, `id_cu`) VALUES
('1059950068', 'Brayan Alexander Trujillo Gonzalez', 'Retiro', '10000', '1424679200'),
('1071905348', 'Brayan Alexander Trujillo Gonzalez', 'Consignacion', '25000', '1361055168'),
('1095907352', 'prueba', 'Consignacion', '1000', '1988054992'),
('1116814848', 'Brayan Alexander Trujillo Gonzalez', 'Retiro', '20000', '1966230128'),
('1157256412', 'Brayan Alexander Trujillo Gonzalez', 'Consignacion', '20000', '1424679200'),
('1323740276', 'Brayan Alexander Trujillo Gonzalez', 'Envio', '25000', '1424679200'),
('1417264284', 'Brayan Alexander Trujillo Gonzalez', 'Envio', '', '1424679200'),
('1432568244', 'Brayan Alexander Trujillo Gonzalez', 'Envio', '10000', '1966230128'),
('1554869212', 'nidia gonzalez', 'Consignacion', '10000', '2006129600'),
('1555354044', 'nidia gonzalez', 'Envio', '25000', '2006129600'),
('1789442040', 'Brayan Alexander Trujillo Gonzalez', 'Consignacion', '25000', '1361055168'),
('2032606840', 'Brayan Alexander Trujillo Gonzalez', 'Consignacion', '50000', '1966230128'),
('2122480352', 'Brayan Alexander Trujillo Gonzalez', 'Consignacion', '20000', '1424679200');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nequi`
--

CREATE TABLE `nequi` (
  `telefono` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `clave` varchar(45) NOT NULL,
  `saldo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cuenta`
--

CREATE TABLE `tipo_cuenta` (
  `id_tpc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_cuenta`
--

INSERT INTO `tipo_cuenta` (`id_tpc`) VALUES
('Cuenta corriente'),
('Cuenta de ahorros'),
('Cuenta de nomina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_movimiento`
--

CREATE TABLE `tipo_movimiento` (
  `id_tpm` varchar(30) NOT NULL,
  `cod_tpm` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_movimiento`
--

INSERT INTO `tipo_movimiento` (`id_tpm`, `cod_tpm`) VALUES
('Consignacion', 'C'),
('Envio', 'E'),
('Retiro', 'R');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usu` varchar(10) NOT NULL,
  `nombre_usu` varchar(80) NOT NULL,
  `direccion_usu` varchar(30) NOT NULL,
  `telefono_usu` varchar(15) NOT NULL,
  `email_usu` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usu`, `nombre_usu`, `direccion_usu`, `telefono_usu`, `email_usu`) VALUES
('1', 'prueba', 'sss', '12468', 'asvbv'),
('1007401224', 'Brayan Alexander Trujillo Gonzalez', 'cra1a no 12-50 este', '3123654556', 'batrujillo42@mosena.edu.co'),
('1074958070', 'fabio eduardo nmaheca ', 'cra 3', '3183707550', 'maehcha@gnail.com'),
('1234567890', 'Maria Prerez', 'calle 18 960', '3133862734', 'prueba@gmail.com'),
('52175863', 'nidia gonzalez', 'cra 1 A 12 50', '3103831434', 'nonigonva@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`id_cu`),
  ADD KEY `id_tpc` (`id_tpc`),
  ADD KEY `id_usu` (`id_usu`);

--
-- Indices de la tabla `movimientos_cu`
--
ALTER TABLE `movimientos_cu`
  ADD PRIMARY KEY (`id_mov`),
  ADD KEY `id_tpm` (`id_tpm`),
  ADD KEY `id_cu` (`id_cu`);

--
-- Indices de la tabla `nequi`
--
ALTER TABLE `nequi`
  ADD PRIMARY KEY (`telefono`);

--
-- Indices de la tabla `tipo_cuenta`
--
ALTER TABLE `tipo_cuenta`
  ADD PRIMARY KEY (`id_tpc`);

--
-- Indices de la tabla `tipo_movimiento`
--
ALTER TABLE `tipo_movimiento`
  ADD PRIMARY KEY (`id_tpm`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usu`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `cuenta_ibfk_1` FOREIGN KEY (`id_usu`) REFERENCES `usuarios` (`id_usu`),
  ADD CONSTRAINT `cuenta_ibfk_2` FOREIGN KEY (`id_tpc`) REFERENCES `tipo_cuenta` (`id_tpc`);

--
-- Filtros para la tabla `movimientos_cu`
--
ALTER TABLE `movimientos_cu`
  ADD CONSTRAINT `movimientos_cu_ibfk_1` FOREIGN KEY (`id_cu`) REFERENCES `cuenta` (`id_cu`),
  ADD CONSTRAINT `movimientos_cu_ibfk_2` FOREIGN KEY (`id_tpm`) REFERENCES `tipo_movimiento` (`id_tpm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
