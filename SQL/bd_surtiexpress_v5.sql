-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2022 a las 23:24:27
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_surtiexpress_v5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE `devolucion` (
  `Id_Devolucion` int(11) NOT NULL,
  `FechaDevolucion` date DEFAULT NULL,
  `Motivo` text DEFAULT NULL,
  `Id_Pedido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadopedido`
--

CREATE TABLE `estadopedido` (
  `Id_EstadoPedido` int(11) NOT NULL,
  `EstadoPedido` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estadopedido`
--

INSERT INTO `estadopedido` (`Id_EstadoPedido`, `EstadoPedido`) VALUES
(1, 'Pendiente'),
(2, 'Enviado'),
(3, 'Entregado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoplanilla`
--

CREATE TABLE `estadoplanilla` (
  `Id_EstadoPlanilla` int(11) NOT NULL,
  `EstadoPlanilla` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estadoplanilla`
--

INSERT INTO `estadoplanilla` (`Id_EstadoPlanilla`, `EstadoPlanilla`) VALUES
(1, 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoproducto`
--

CREATE TABLE `estadoproducto` (
  `Id_EstadoProducto` int(11) NOT NULL,
  `EstadoProducto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estadoproducto`
--

INSERT INTO `estadoproducto` (`Id_EstadoProducto`, `EstadoProducto`) VALUES
(1, 'Agotado'),
(2, 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadotarea`
--

CREATE TABLE `estadotarea` (
  `Id_EstadoTarea` int(11) NOT NULL,
  `EstadoTarea` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estadotarea`
--

INSERT INTO `estadotarea` (`Id_EstadoTarea`, `EstadoTarea`) VALUES
(1, 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `Id_Marca` int(11) NOT NULL,
  `Marca` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`Id_Marca`, `Marca`) VALUES
(21, 'Luffy'),
(22, 'Prubea');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `Id_Pedido` int(11) NOT NULL,
  `FechaCreacion` date DEFAULT NULL,
  `FechaEntrega` date DEFAULT NULL,
  `Subtotal` double DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `Id_EstadoPedido` int(11) DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`Id_Pedido`, `FechaCreacion`, `FechaEntrega`, `Subtotal`, `Total`, `Id_EstadoPedido`, `Id_Usuario`) VALUES
(14, '2020-02-04', '2020-02-06', 10, 10, 1, 7),
(15, '2020-02-04', '2020-02-06', 30, 30, 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_producto`
--

CREATE TABLE `pedido_producto` (
  `Id_Pedido` int(11) DEFAULT NULL,
  `Id_Producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planilla`
--

CREATE TABLE `planilla` (
  `Id_Planilla` int(11) NOT NULL,
  `Id_EstadoPlanilla` int(11) DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `planilla`
--

INSERT INTO `planilla` (`Id_Planilla`, `Id_EstadoPlanilla`, `Id_Usuario`) VALUES
(1, 1, 12),
(2, 1, 1),
(3, 1, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planilla_pedido`
--

CREATE TABLE `planilla_pedido` (
  `Id_Planilla` int(11) DEFAULT NULL,
  `Id_Pedido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `planilla_pedido`
--

INSERT INTO `planilla_pedido` (`Id_Planilla`, `Id_Pedido`) VALUES
(1, 15),
(2, 14),
(2, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Id_Producto` int(11) NOT NULL,
  `imagen` text DEFAULT NULL,
  `Nombre` text DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `PrecioBruto` double DEFAULT NULL,
  `iva` int(11) DEFAULT NULL,
  `PrecioNeto` double DEFAULT NULL,
  `Id_EstadoProducto` int(11) DEFAULT NULL,
  `Id_Submarca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`Id_Producto`, `imagen`, `Nombre`, `Descripcion`, `Cantidad`, `PrecioBruto`, `iva`, `PrecioNeto`, `Id_EstadoProducto`, `Id_Submarca`) VALUES
(33, '/SurtiExpressV.3/IMGCatalogo/', 'Producto Prueba', 'sdafsfjghj', 3, 12222, 12, 100000, 2, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `Id_Rol` int(11) NOT NULL,
  `Rol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`Id_Rol`, `Rol`) VALUES
(1, 'Administrador'),
(2, 'Cliente'),
(3, 'Transportador'),
(4, 'Bodeguista'),
(5, 'Auxiliar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `submarca`
--

CREATE TABLE `submarca` (
  `Id_SubMarca` int(11) NOT NULL,
  `SubMarca` varchar(45) DEFAULT NULL,
  `Id_Marca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `submarca`
--

INSERT INTO `submarca` (`Id_SubMarca`, `SubMarca`, `Id_Marca`) VALUES
(12, 'One Piece', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `Id_Tarea` int(11) NOT NULL,
  `Tarea` text DEFAULT NULL,
  `Id_Planilla` int(11) DEFAULT NULL,
  `Id_EstadoTarea` int(11) DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`Id_Tarea`, `Tarea`, `Id_Planilla`, `Id_EstadoTarea`, `Id_Usuario`) VALUES
(1, 'hacer la planilla #2', 1, 1, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `Id_TipoDocumento` int(11) NOT NULL,
  `TipoDocumento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`Id_TipoDocumento`, `TipoDocumento`) VALUES
(1, 'C.C'),
(2, 'C.E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int(11) NOT NULL,
  `Id_Rol` int(11) DEFAULT NULL,
  `Id_Vehiculo` int(11) DEFAULT NULL,
  `Id_Zona` int(11) DEFAULT NULL,
  `Nombre` text DEFAULT NULL,
  `Apellido` text DEFAULT NULL,
  `Id_TipoDocumento` int(11) DEFAULT NULL,
  `Documento` int(11) DEFAULT NULL,
  `Telefono` bigint(12) DEFAULT NULL,
  `Correo` text DEFAULT NULL,
  `Contrasena` varchar(32) DEFAULT NULL,
  `Razon_Social` text DEFAULT NULL,
  `Direccion` text DEFAULT NULL,
  `Barrio` text DEFAULT NULL,
  `RUT` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Id_Rol`, `Id_Vehiculo`, `Id_Zona`, `Nombre`, `Apellido`, `Id_TipoDocumento`, `Documento`, `Telefono`, `Correo`, `Contrasena`, `Razon_Social`, `Direccion`, `Barrio`, `RUT`) VALUES
(24, 1, NULL, NULL, 'Mateo ', 'Morera', 1, 1000692482, 3057471816, 'moreramateo@gmail.com', 'marvel22', NULL, NULL, NULL, NULL),
(28, 5, NULL, NULL, 'prueba', 'prueba', 1, 1000692475, NULL, 'jmorera92482@universidadean.edu.co', NULL, NULL, NULL, NULL, NULL),
(30, 3, 13, NULL, 'Prueba', 'Prueba', 1, 1000692484, NULL, 'mateomorera@outlook.com', NULL, NULL, NULL, NULL, NULL),
(31, 5, NULL, NULL, 'Prueba', 'Prueba', 1, 1000000000, NULL, 'qshn_wyopr42@kygur.com', 'prueba1234', NULL, NULL, NULL, NULL),
(32, 3, 19, NULL, 'Transportista', 'Prueba', 1, 1000567890, NULL, 'moreramateo6767@gmail.com', NULL, NULL, NULL, NULL, NULL),
(33, 4, NULL, NULL, 'Prueba', 'Prueba', 1, 100000000, NULL, 'ioioio@gmail.com', NULL, NULL, NULL, NULL, NULL),
(36, 2, NULL, 1, 'Mateo', 'Morera', 1, 100000000, NULL, 'moreramateo@gmail.com', NULL, 'Negro', 'Calle 166 #19-96', 'sddd', '100005258');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `Id_Vehiculo` int(11) NOT NULL,
  `Placa` varchar(45) DEFAULT NULL,
  `Marca` varchar(45) DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`Id_Vehiculo`, `Placa`, `Marca`, `Color`) VALUES
(1, '', '', ''),
(2, '', '', ''),
(3, '', '', ''),
(4, '', '', ''),
(5, '', '', ''),
(6, '', '', ''),
(7, '', '', ''),
(8, '', '', ''),
(9, '', '', ''),
(10, 'XCM-DFE', 'Calle 166 #19-96', 'Blanco'),
(11, 'XCM-DFE', 'Calle 166 #19-96', 'Blanco'),
(12, 'XCM-DFE', 'Chevrolet', 'Negro'),
(13, 'XCM-DFE', 'Chevrolet', 'Negro'),
(14, 'XCM-DFE', 'Chevrolet', 'Negro'),
(15, 'XCM-DFE', 'Chevrolet', 'Negro'),
(16, 'XCM-DFE', 'Chevrolet', 'Negro'),
(17, 'XCM-DFE', 'Chevrolet', 'Negro'),
(18, 'XCM-DFE', 'Chevrolet', 'Negro'),
(19, 'XCM-DFE', 'Chevrolet', 'Negro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona`
--

CREATE TABLE `zona` (
  `Id_Zona` int(11) NOT NULL,
  `Zona` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zona`
--

INSERT INTO `zona` (`Id_Zona`, `Zona`) VALUES
(1, 'Soacha'),
(2, 'Usme');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona_planilla`
--

CREATE TABLE `zona_planilla` (
  `Id_Zona` int(11) DEFAULT NULL,
  `Id_Planilla` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD PRIMARY KEY (`Id_Devolucion`),
  ADD KEY `Id_Pedido` (`Id_Pedido`);

--
-- Indices de la tabla `estadopedido`
--
ALTER TABLE `estadopedido`
  ADD PRIMARY KEY (`Id_EstadoPedido`);

--
-- Indices de la tabla `estadoplanilla`
--
ALTER TABLE `estadoplanilla`
  ADD PRIMARY KEY (`Id_EstadoPlanilla`);

--
-- Indices de la tabla `estadoproducto`
--
ALTER TABLE `estadoproducto`
  ADD PRIMARY KEY (`Id_EstadoProducto`);

--
-- Indices de la tabla `estadotarea`
--
ALTER TABLE `estadotarea`
  ADD PRIMARY KEY (`Id_EstadoTarea`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`Id_Marca`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`Id_Pedido`),
  ADD KEY `Id_Usuario` (`Id_Usuario`),
  ADD KEY `Id_EstadoPedido` (`Id_EstadoPedido`);

--
-- Indices de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD KEY `Id_Pedido` (`Id_Pedido`),
  ADD KEY `Id_Producto` (`Id_Producto`);

--
-- Indices de la tabla `planilla`
--
ALTER TABLE `planilla`
  ADD PRIMARY KEY (`Id_Planilla`),
  ADD KEY `Id_EstadoPlanilla` (`Id_EstadoPlanilla`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `planilla_pedido`
--
ALTER TABLE `planilla_pedido`
  ADD KEY `Id_Planilla` (`Id_Planilla`),
  ADD KEY `Id_Pedido` (`Id_Pedido`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Id_Producto`),
  ADD KEY `Id_EstadoProducto` (`Id_EstadoProducto`),
  ADD KEY `Id_Submarca` (`Id_Submarca`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`Id_Rol`);

--
-- Indices de la tabla `submarca`
--
ALTER TABLE `submarca`
  ADD PRIMARY KEY (`Id_SubMarca`),
  ADD KEY `Id_Marca` (`Id_Marca`);

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`Id_Tarea`),
  ADD KEY `Id_Planilla` (`Id_Planilla`),
  ADD KEY `Id_EstadoTarea` (`Id_EstadoTarea`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`Id_TipoDocumento`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Id_Rol` (`Id_Rol`),
  ADD KEY `Id_Vehiculo` (`Id_Vehiculo`),
  ADD KEY `Id_Zona` (`Id_Zona`),
  ADD KEY `Id_TipoDocumento` (`Id_TipoDocumento`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`Id_Vehiculo`);

--
-- Indices de la tabla `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`Id_Zona`);

--
-- Indices de la tabla `zona_planilla`
--
ALTER TABLE `zona_planilla`
  ADD KEY `Id_Zona` (`Id_Zona`),
  ADD KEY `Id_Planilla` (`Id_Planilla`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  MODIFY `Id_Devolucion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estadopedido`
--
ALTER TABLE `estadopedido`
  MODIFY `Id_EstadoPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estadoplanilla`
--
ALTER TABLE `estadoplanilla`
  MODIFY `Id_EstadoPlanilla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estadoproducto`
--
ALTER TABLE `estadoproducto`
  MODIFY `Id_EstadoProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estadotarea`
--
ALTER TABLE `estadotarea`
  MODIFY `Id_EstadoTarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `Id_Marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `Id_Pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `planilla`
--
ALTER TABLE `planilla`
  MODIFY `Id_Planilla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `Id_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `Id_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `submarca`
--
ALTER TABLE `submarca`
  MODIFY `Id_SubMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `Id_Tarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `Id_TipoDocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `Id_Vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `zona`
--
ALTER TABLE `zona`
  MODIFY `Id_Zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD CONSTRAINT `devolucion_ibfk_1` FOREIGN KEY (`Id_Pedido`) REFERENCES `pedido` (`Id_Pedido`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`Id_EstadoPedido`) REFERENCES `estadopedido` (`Id_EstadoPedido`);

--
-- Filtros para la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD CONSTRAINT `pedido_producto_ibfk_1` FOREIGN KEY (`Id_Pedido`) REFERENCES `pedido` (`Id_Pedido`),
  ADD CONSTRAINT `pedido_producto_ibfk_2` FOREIGN KEY (`Id_Producto`) REFERENCES `producto` (`Id_Producto`);

--
-- Filtros para la tabla `planilla`
--
ALTER TABLE `planilla`
  ADD CONSTRAINT `planilla_ibfk_2` FOREIGN KEY (`Id_EstadoPlanilla`) REFERENCES `estadoplanilla` (`Id_EstadoPlanilla`),
  ADD CONSTRAINT `planilla_ibfk_3` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`);

--
-- Filtros para la tabla `planilla_pedido`
--
ALTER TABLE `planilla_pedido`
  ADD CONSTRAINT `planilla_pedido_ibfk_1` FOREIGN KEY (`Id_Planilla`) REFERENCES `planilla` (`Id_Planilla`),
  ADD CONSTRAINT `planilla_pedido_ibfk_2` FOREIGN KEY (`Id_Pedido`) REFERENCES `pedido` (`Id_Pedido`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Id_EstadoProducto`) REFERENCES `estadoproducto` (`Id_EstadoProducto`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`Id_Submarca`) REFERENCES `submarca` (`Id_SubMarca`);

--
-- Filtros para la tabla `submarca`
--
ALTER TABLE `submarca`
  ADD CONSTRAINT `submarca_ibfk_1` FOREIGN KEY (`Id_Marca`) REFERENCES `marca` (`Id_Marca`);

--
-- Filtros para la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD CONSTRAINT `tarea_ibfk_1` FOREIGN KEY (`Id_Planilla`) REFERENCES `planilla` (`Id_Planilla`),
  ADD CONSTRAINT `tarea_ibfk_2` FOREIGN KEY (`Id_EstadoTarea`) REFERENCES `estadotarea` (`Id_EstadoTarea`),
  ADD CONSTRAINT `tarea_ibfk_3` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id_Rol`) REFERENCES `rol` (`Id_Rol`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`Id_Vehiculo`) REFERENCES `vehiculo` (`Id_Vehiculo`),
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`Id_Zona`) REFERENCES `zona` (`Id_Zona`),
  ADD CONSTRAINT `usuario_ibfk_4` FOREIGN KEY (`Id_TipoDocumento`) REFERENCES `tipodocumento` (`Id_TipoDocumento`);

--
-- Filtros para la tabla `zona_planilla`
--
ALTER TABLE `zona_planilla`
  ADD CONSTRAINT `zona_planilla_ibfk_1` FOREIGN KEY (`Id_Zona`) REFERENCES `zona` (`Id_Zona`),
  ADD CONSTRAINT `zona_planilla_ibfk_2` FOREIGN KEY (`Id_Planilla`) REFERENCES `planilla` (`Id_Planilla`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
