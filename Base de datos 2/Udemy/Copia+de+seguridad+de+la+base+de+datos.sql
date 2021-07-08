-- phpMyAdmin SQL Dump
-- version 4.5.3.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-07-2017 a las 22:35:22
-- Versión del servidor: 5.6.14
-- Versión de PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ud3my`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `Codigo` int(11) NOT NULL,
  `ApellidoPaterno` varchar(35) CHARACTER SET latin1 NOT NULL,
  `ApellidoMaterno` varchar(35) CHARACTER SET latin1 NOT NULL,
  `Nombres` varchar(35) CHARACTER SET latin1 NOT NULL,
  `Sexo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `FechaNacimiento` date NOT NULL,
  `CodigoCarrera` tinyint(2) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Contiene los datos personales de los alumnos.';

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`Codigo`, `ApellidoPaterno`, `ApellidoMaterno`, `Nombres`, `Sexo`, `FechaNacimiento`, `CodigoCarrera`) VALUES
(1, 'García', 'Fuentes', 'Oscar Alejandro Flavio', 'M', '1992-03-09', 1),
(2, 'Coronado', 'Linares', 'Valeria Antonella', 'F', '1997-03-15', 2),
(3, 'Peña', 'Blas', 'Maricielo', 'F', '1998-05-16', 3),
(4, 'Alvarado', 'Guerra', 'Edinson', 'M', '1991-07-11', 1),
(5, 'Ojeda', 'Sánchez', 'Melissa', 'F', '1994-09-29', 6),
(6, 'Otero', 'Dávila', 'Claudia Patricia', 'F', '1984-10-11', 6),
(7, 'Quispe', 'López', 'Esteban', 'M', '1995-04-02', 1),
(8, 'Vega', 'Durán', 'Stephanie Ximena', 'F', '1996-04-01', 2),
(9, 'Sosa', 'Ramírez', 'Diana del Pilar', 'F', '1997-01-03', 5),
(10, 'Kaiser', 'Torres', 'Iris Rosario', 'F', '1994-09-30', 3),
(11, 'Castillo', 'Vidal', 'Alejandro Alberto', 'M', '1992-05-18', 1),
(12, 'Herrera', 'Valdiviezo', 'Jesús', 'M', '1990-07-02', 4),
(13, 'Zapata', 'De la Cruz', 'Marco Antonio', 'M', '1996-11-12', 5),
(14, 'Lee', 'Arana', 'Diego', 'M', '1995-12-19', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `Codigo` tinyint(2) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Contiene los datos de las carreras disponibles.';

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`Codigo`, `Nombre`) VALUES
(1, 'Ingeniería de Software'),
(2, 'Ingeniería Civil'),
(3, 'Ingeniería Electrónica'),
(4, 'Medicina Humana'),
(5, 'Derecho'),
(6, 'Marketing'),
(7, 'Odontología');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `Codigo` smallint(4) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Creditos` tinyint(2) NOT NULL,
  `CodigoCarrera` tinyint(2) NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Contiene los datos de los cursos activos.';

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`Codigo`, `Nombre`, `Creditos`, `CodigoCarrera`, `Estado`) VALUES
(1, 'Diseño Web', 5, 1, 1),
(2, 'Programación Web', 4, 1, 1),
(3, 'Seguridad Informática', 6, 1, 1),
(4, 'Topografía', 4, 2, 1),
(5, 'Diseño de Bases de Datos', 5, 1, 1),
(6, 'Administración de Bases de Datos', 4, 1, 1),
(7, 'Redes y Conectividad', 5, 1, 1),
(8, 'Procesamiento Distribuido', 4, 3, 1),
(9, 'Mundos virtuales', 3, 1, 1),
(10, 'Teoría de campos', 5, 3, 1),
(11, 'Estática', 4, 2, 1),
(12, 'Dinámica', 5, 2, 1),
(13, 'Mecánica de Fluidos', 5, 2, 1),
(14, 'Pediatría', 10, 4, 1),
(15, 'Acto jurídico', 5, 5, 1),
(16, 'Biología', 11, 4, 1),
(17, 'Criminología', 5, 5, 1),
(18, 'Fundamentos sociales', 4, 6, 1),
(19, 'Medios publicitarios', 4, 6, 1),
(20, 'Cirugía dental', 8, 7, 1),
(21, 'Ingeniería de Software', 5, 1, 1),
(22, 'Calidad de Software', 4, 1, 1),
(23, 'Anatomía Humana', 9, 4, 1),
(24, 'Oncología', 10, 4, 1),
(25, 'Derecho Civil I', 4, 5, 1),
(26, 'Derecho Civil II', 5, 5, 1),
(27, 'Derecho Civil III', 5, 5, 1),
(28, 'Dinámica de Suelos', 5, 2, 1),
(29, 'Señales', 5, 3, 1),
(30, 'Marketing Digital', 4, 6, 1),
(31, 'Taller de Boletín Publicitario', 3, 6, 1),
(32, 'Prótesis fija', 7, 7, 1),
(33, 'Prótesis removible', 8, 7, 1),
(34, 'Histología Humana', 8, 4, 1),
(35, 'Psicología Médica', 9, 4, 1),
(36, 'Parasitología', 7, 4, 1),
(37, 'Inmunología Básica', 9, 4, 1),
(38, 'Teoría Constitucional', 5, 5, 1),
(39, 'Derechos Fundamentales', 4, 5, 1),
(40, 'Derecho Tributario General', 5, 5, 1),
(41, 'Resistencia de Materiales', 5, 2, 1),
(42, 'Análisis Estructural', 6, 2, 1),
(43, 'Hidráulica', 5, 2, 1),
(44, 'Marketing Digital Aplicado', 4, 6, 1),
(45, 'Comportamiento Organizacional', 3, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `Codigo` int(10) UNSIGNED NOT NULL,
  `CodigoAlumno` int(11) NOT NULL,
  `CodigoCurso` smallint(6) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contiene los datos de las matrículas.';

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`Codigo`, `CodigoAlumno`, `CodigoCurso`, `Fecha`) VALUES
(1, 1, 1, '2017-08-02'),
(2, 1, 2, '2017-08-02'),
(3, 1, 5, '2017-08-02'),
(4, 2, 4, '2017-08-01'),
(5, 2, 11, '2017-08-01'),
(6, 2, 12, '2017-08-01'),
(7, 2, 42, '2017-08-01'),
(8, 3, 10, '2017-08-03'),
(9, 4, 3, '2017-08-04'),
(10, 4, 7, '2017-08-04'),
(11, 4, 9, '2017-08-04'),
(12, 4, 21, '2017-08-04'),
(13, 5, 18, '2017-08-01'),
(14, 5, 30, '2017-08-01'),
(15, 5, 31, '2017-08-01'),
(16, 6, 18, '2017-08-01'),
(17, 6, 44, '2017-08-01'),
(18, 7, 6, '2017-08-05'),
(19, 8, 43, '2017-08-05'),
(20, 9, 25, '2017-08-03'),
(21, 9, 26, '2017-08-03'),
(22, 9, 39, '2017-08-03'),
(23, 10, 29, '2017-08-01'),
(24, 11, 2, '2017-08-02'),
(25, 11, 7, '2017-08-02'),
(26, 11, 8, '2017-08-02'),
(27, 11, 21, '2017-08-02'),
(28, 12, 14, '2017-08-04'),
(29, 12, 24, '2017-08-04'),
(30, 14, 20, '2017-08-06'),
(31, 14, 32, '2017-08-06'),
(32, 14, 33, '2017-08-06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`Codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `Codigo` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `Codigo` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT de la tabla `matricula`
--
ALTER TABLE `matricula`
  MODIFY `Codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
