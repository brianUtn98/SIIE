-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2017 a las 17:57:23
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbmalvinas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `Id_Alumno` int(11) NOT NULL,
  `Numero_de_documento` int(11) NOT NULL,
  `Apellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Sexo` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha_de_nacimiento` date NOT NULL,
  `Lugar_de_nacimiento` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Nacionalidad` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Localidad` int(11) NOT NULL,
  `Domicilio` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Codigo_postal` mediumint(9) NOT NULL,
  `Telefono` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Celular` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='datos de alumno';

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`Id_Alumno`, `Numero_de_documento`, `Apellido`, `Nombre`, `Sexo`, `Fecha_de_nacimiento`, `Lugar_de_nacimiento`, `Nacionalidad`, `Localidad`, `Domicilio`, `Codigo_postal`, `Telefono`, `Celular`) VALUES
(8, 41912183, 'Martinez Ocampo', 'Alexander', 'M', '1999-04-23', 'CABA', 'Argentino', 0, 'Riglos', 1759, '2202454759', '1155788525'),
(9, 40903428, 'Choque', 'Elizabeth Florencia', 'F', '1998-01-15', 'CABA', 'Argentina', 0, 'Salvigny', 1757, '44577364', '1140384482'),
(10, 41561346, 'CÃ¡ceres Aguilar', 'Juan Francisco', 'M', '1998-08-26', 'CABA', 'Argentino', 0, 'Sixto Fajardo', 1757, '46266330', '1164960024'),
(11, 41461039, 'Lencinas', 'Julian Andres', 'M', '1999-01-10', 'CABA', 'Argentino', 0, 'Ricardo Gutierrez', 1757, '20710696', '1154738082'),
(12, 41665156, 'Monroy', 'Brian Gabriel', 'M', '1998-12-10', 'CABA', 'Argentino', 0, 'Balboa', 1759, '2202430342', '1556050595'),
(13, 39914892, 'Avila', 'Facundo Nahuel', 'M', '1996-10-23', 'CABA', 'Argentino', 0, 'Fray J. Gonzalez', 1778, NULL, '1133798298'),
(14, 41639843, 'Alati', 'Francisco', 'M', '1998-11-06', 'Gran Buenos Aires', 'Argentino', 0, 'El cÃ³ndor', 1778, NULL, NULL),
(17, 454654, 'jhsdhgf', 'asdjasdjnn', 'M', '0565-05-26', 'asdasd', 'YUGUYG', 0, 'yuasdgdayusg', 544, '654654654', '654654654'),
(18, 41665156, 'Monroy', 'Brian', 'M', '1998-12-10', 'CABA', 'Argentino', 0, 'Balboa ', 1759, '2202430342', '1556050595'),
(19, 41561346, 'CÃ ceres', 'Juan', 'M', '1998-08-26', 'CABA', 'Argentino', 0, 'Sixto Fajardo', 1757, '46266330', '1564960024'),
(20, 40244418, 'Vargas', 'Rodrigo', 'M', '1997-04-10', 'CABA', 'Argentino', 0, 'Las rosas', 1778, '46951125', NULL),
(21, 42012191, 'Pintos', 'Luca Nahuel', 'M', '1999-05-29', 'Gran Buenos Aires', 'Argentino', 0, 'El cuervo', 1775, '46201062', '1533323361'),
(22, 41561346, 'CÃ ceres Aguilar', 'Juan Francisco', 'M', '1998-08-26', 'CABA', 'Argentino', 2, 'Sixto Fajardo', 1757, '4626-6330', '11-6496-0024');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `Id_Curso` int(11) NOT NULL,
  `Anio` tinyint(4) NOT NULL,
  `Division` tinyint(4) NOT NULL,
  `Especialidad` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `Id_Docente` int(11) NOT NULL,
  `Numero_de_documento` int(11) NOT NULL,
  `Apellido` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Sexo` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha_de_nacimiento` date NOT NULL,
  `Lugar_de_nacimiento` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Nacionalidad` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Localidad` int(11) NOT NULL,
  `Domicilio` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Codigo_postal` int(11) NOT NULL,
  `Telefono` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Celular` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Correo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='datos del docente' ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`Id_Docente`, `Numero_de_documento`, `Apellido`, `Nombre`, `Sexo`, `Fecha_de_nacimiento`, `Lugar_de_nacimiento`, `Nacionalidad`, `Localidad`, `Domicilio`, `Codigo_postal`, `Telefono`, `Celular`, `Correo`) VALUES
(2, 38027576, 'Andrada', 'Nicolas Eduardo', 'M', '1994-02-07', 'CABA', 'Argentino', 0, 'Voissin', 1757, '44445555', '1565658399', 'nicolas.andrada@hotmail.com'),
(3, 18323595, 'Gomikian', 'Adolfo', 'M', '1967-07-05', 'CABA', 'Argentino', 0, 'El chacuru', 1778, '44445555', '556452111', 'null'),
(4, 21848285, 'Goncalves', 'Nestor Javier', 'M', '1971-08-22', 'Buenos Aires', 'Argentino', 0, 'La Rositaq ', 1778, '2147483647', '2486568', 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ensenia`
--

CREATE TABLE `ensenia` (
  `Id_Ensenia` bigint(20) NOT NULL,
  `Materia` int(11) NOT NULL,
  `Curso` int(11) NOT NULL,
  `Profesor` int(11) NOT NULL,
  `Grupo` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha_de_ingreso` date NOT NULL,
  `Fecha_de_egreso` date NOT NULL,
  `Estado_de_revista` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Actividad` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Horario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `Id_Horario` bigint(20) NOT NULL,
  `Num_Horario` int(11) NOT NULL,
  `Dia` int(11) NOT NULL,
  `Entrada` time NOT NULL,
  `Salida` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `Id_Localidad` int(11) NOT NULL,
  `Nombre_Localidad` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`Id_Localidad`, `Nombre_Localidad`) VALUES
(1, '20 de Junio'),
(2, 'Gregorio de Laferrere'),
(3, 'Ramos Mejia'),
(4, 'Aldo Bonzi'),
(5, 'Ciudad Evita'),
(6, 'Isidro Casanova'),
(7, 'Lomas del Mirador'),
(8, 'San Justo'),
(9, 'La Tablada'),
(10, 'Tapiales'),
(11, 'Ciudad de Madero'),
(12, 'Villa Luzuriaga'),
(13, 'Gonzales Catan'),
(14, 'Rafael Castillo'),
(15, 'Virrey del Pino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `Id_Materia` int(11) NOT NULL,
  `Nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Especialidad` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Plan_Anio` int(4) NOT NULL,
  `Equivalente_A` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`Id_Materia`, `Nombre`, `Especialidad`, `Plan_Anio`, `Equivalente_A`) VALUES
(1, 'Lab. ProgramaciÃ³n I', 'InformÃ¡tica', 2017, NULL),
(3, 'Lab. ProgramaciÃ³n II', 'InformÃ¡tica', 2017, NULL),
(4, 'Lab. ProgramaciÃ³n III', 'InformÃ¡tica', 2017, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parentezco`
--

CREATE TABLE `parentezco` (
  `Id_Parentezco` int(11) NOT NULL,
  `Alumno` int(11) NOT NULL,
  `Tutor` int(11) NOT NULL,
  `Parentezco` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='relación alumno-tutor';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenece`
--

CREATE TABLE `pertenece` (
  `Id_Pertenece` bigint(11) NOT NULL,
  `Alumno` int(11) NOT NULL,
  `Curso` int(11) NOT NULL,
  `Grupo` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `Anio` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regulares_previos`
--

CREATE TABLE `regulares_previos` (
  `Id_Reg_Prev` bigint(20) NOT NULL,
  `Alumno` int(11) NOT NULL,
  `Profesor` int(11) NOT NULL,
  `Materia` int(11) NOT NULL,
  `Curso` int(11) NOT NULL,
  `Ciclo_Lectivo` smallint(4) NOT NULL,
  `Oral` tinyint(4) NOT NULL,
  `Escrito` tinyint(4) NOT NULL,
  `Final` int(11) NOT NULL,
  `Revisado_Por` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Estado` varchar(3) COLLATE utf8_spanish_ci NOT NULL COMMENT 'ingresar Pre o reg',
  `Libro` smallint(6) NOT NULL,
  `Folio` smallint(6) NOT NULL,
  `Mesa` varchar(5) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulo`
--

CREATE TABLE `titulo` (
  `Id_Titulo` int(11) NOT NULL,
  `Nombre` varchar(140) COLLATE utf8_spanish_ci NOT NULL,
  `Institucion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Profesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trimestre`
--

CREATE TABLE `trimestre` (
  `Id_Trimestre` bigint(20) NOT NULL,
  `Alumno` int(11) NOT NULL,
  `Profesor` int(11) NOT NULL,
  `Materia` int(11) NOT NULL,
  `Curso` int(11) NOT NULL,
  `Ciclo_Lectivo` int(4) NOT NULL,
  `Nota1` tinyint(4) NOT NULL,
  `Nota2` tinyint(4) NOT NULL,
  `Nota3` tinyint(4) NOT NULL,
  `Nota4` tinyint(4) NOT NULL,
  `Promedio` tinyint(4) NOT NULL,
  `Trimestre` tinyint(1) NOT NULL,
  `Fecha` date NOT NULL,
  `Validado` tinyint(1) NOT NULL,
  `Validado_Por` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor`
--

CREATE TABLE `tutor` (
  `Id_Tutor` int(11) NOT NULL,
  `Numero_de_documento` int(11) NOT NULL,
  `Apellido` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Sexo` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha_de_nacimiento` date NOT NULL,
  `Lugar_de_nacimiento` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Nacionalidad` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Localidad` int(11) NOT NULL,
  `Domicilio` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Codigo_postal` int(11) NOT NULL,
  `Telefono` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Celular` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tutor`
--

INSERT INTO `tutor` (`Id_Tutor`, `Numero_de_documento`, `Apellido`, `Nombre`, `Sexo`, `Fecha_de_nacimiento`, `Lugar_de_nacimiento`, `Nacionalidad`, `Localidad`, `Domicilio`, `Codigo_postal`, `Telefono`, `Celular`) VALUES
(1, 1, '1', '1', 'F', '2017-09-13', '1', '1', 0, '2', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` bigint(20) NOT NULL,
  `Usuario` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Clave` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `Ultima_Conexion` datetime DEFAULT NULL,
  `Fecha_Registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Tipo` varchar(3) COLLATE utf8_spanish2_ci NOT NULL,
  `Identificacion` int(11) NOT NULL,
  `Nivel` tinyint(4) NOT NULL DEFAULT '0',
  `Habilitado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Usuario`, `Clave`, `Ultima_Conexion`, `Fecha_Registro`, `Tipo`, `Identificacion`, `Nivel`, `Habilitado`) VALUES
(1, 'dfsd', '123', NULL, '2017-10-20 14:37:32', 'DOC', 2, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`Id_Alumno`),
  ADD KEY `Localidad` (`Localidad`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`Id_Curso`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`Id_Docente`),
  ADD KEY `Localidad` (`Localidad`);

--
-- Indices de la tabla `ensenia`
--
ALTER TABLE `ensenia`
  ADD PRIMARY KEY (`Id_Ensenia`),
  ADD KEY `Materia` (`Materia`,`Curso`,`Profesor`),
  ADD KEY `Profesor` (`Profesor`),
  ADD KEY `Curso` (`Curso`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`Id_Localidad`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`Id_Materia`),
  ADD KEY `Equivalente_A` (`Equivalente_A`);

--
-- Indices de la tabla `parentezco`
--
ALTER TABLE `parentezco`
  ADD PRIMARY KEY (`Id_Parentezco`),
  ADD KEY `Alumno` (`Alumno`,`Tutor`),
  ADD KEY `Tutor` (`Tutor`);

--
-- Indices de la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD PRIMARY KEY (`Id_Pertenece`),
  ADD KEY `Alumno` (`Alumno`,`Curso`),
  ADD KEY `Curso` (`Curso`);

--
-- Indices de la tabla `regulares_previos`
--
ALTER TABLE `regulares_previos`
  ADD KEY `Alumno` (`Alumno`),
  ADD KEY `Profesor` (`Profesor`),
  ADD KEY `Materia` (`Materia`);

--
-- Indices de la tabla `titulo`
--
ALTER TABLE `titulo`
  ADD PRIMARY KEY (`Id_Titulo`),
  ADD KEY `Profesor` (`Profesor`);

--
-- Indices de la tabla `trimestre`
--
ALTER TABLE `trimestre`
  ADD PRIMARY KEY (`Id_Trimestre`),
  ADD KEY `Alumno` (`Alumno`),
  ADD KEY `Profesor` (`Profesor`),
  ADD KEY `Materia` (`Materia`),
  ADD KEY `Curso` (`Curso`);

--
-- Indices de la tabla `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`Id_Tutor`),
  ADD KEY `Localidad` (`Localidad`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `Id_Alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `Id_Curso` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `Id_Docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ensenia`
--
ALTER TABLE `ensenia`
  MODIFY `Id_Ensenia` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `localidad`
--
ALTER TABLE `localidad`
  MODIFY `Id_Localidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `Id_Materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `parentezco`
--
ALTER TABLE `parentezco`
  MODIFY `Id_Parentezco` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pertenece`
--
ALTER TABLE `pertenece`
  MODIFY `Id_Pertenece` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `titulo`
--
ALTER TABLE `titulo`
  MODIFY `Id_Titulo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `trimestre`
--
ALTER TABLE `trimestre`
  MODIFY `Id_Trimestre` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tutor`
--
ALTER TABLE `tutor`
  MODIFY `Id_Tutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ensenia`
--
ALTER TABLE `ensenia`
  ADD CONSTRAINT `ensenia_ibfk_1` FOREIGN KEY (`Profesor`) REFERENCES `docente` (`Id_Docente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ensenia_ibfk_2` FOREIGN KEY (`Materia`) REFERENCES `materia` (`Id_Materia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ensenia_ibfk_3` FOREIGN KEY (`Curso`) REFERENCES `curso` (`Id_Curso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `parentezco`
--
ALTER TABLE `parentezco`
  ADD CONSTRAINT `parentezco_ibfk_1` FOREIGN KEY (`Alumno`) REFERENCES `alumno` (`Id_Alumno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parentezco_ibfk_2` FOREIGN KEY (`Tutor`) REFERENCES `tutor` (`Id_Tutor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD CONSTRAINT `pertenece_ibfk_1` FOREIGN KEY (`Alumno`) REFERENCES `alumno` (`Id_Alumno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pertenece_ibfk_2` FOREIGN KEY (`Curso`) REFERENCES `curso` (`Id_Curso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `regulares_previos`
--
ALTER TABLE `regulares_previos`
  ADD CONSTRAINT `regulares_previos_ibfk_1` FOREIGN KEY (`Alumno`) REFERENCES `alumno` (`Id_Alumno`);

--
-- Filtros para la tabla `titulo`
--
ALTER TABLE `titulo`
  ADD CONSTRAINT `titulo_ibfk_1` FOREIGN KEY (`Profesor`) REFERENCES `docente` (`Id_Docente`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
