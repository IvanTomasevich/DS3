-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-09-2012 a las 12:55:00
-- Versión del servidor: 5.5.24
-- Versión de PHP: 5.3.10-1ubuntu3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ciclistas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclistas`
--

CREATE TABLE IF NOT EXISTS `ciclistas` (
  `numero` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `equipo` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciclistas`
--

INSERT INTO `ciclistas` (`numero`, `nombre`, `edad`, `equipo`) VALUES
(1, 'Miguel Indurain', 32, 'Banesto'),
(2, 'Pedro Delgado', 35, 'Banesto'),
(3, 'Alex Zulle', 27, 'ONCE'),
(4, 'Tony Rominger', 30, 'Mapei-Clas'),
(5, 'Gert-Jan Theunisse', 32, 'TVM'),
(6, 'Adriano Baffi', 33, 'Mercatone Uno'),
(7, 'Massimiliano Lelli', 30, 'Mercatone Uno'),
(8, 'Jean Van Poppel', 33, 'Lotus Festina'),
(9, 'Massimo Podenzana', 34, 'Navigare'),
(10, 'Mario Cipollini', 28, 'Mercatone Uno'),
(11, 'Flavio Giupponi', 31, 'Bresciali-Refin'),
(12, 'Alessio Di Basco', 31, 'Amore Vita'),
(13, 'Lale Cubino', 28, 'Seguros Amaya'),
(14, 'Roberto Pagnin', 33, 'Navigare'),
(15, 'Jesper Skibby', 31, 'TVM'),
(16, 'Dimitri Konishev', 29, 'Jolly Club'),
(17, 'Bruno Leali', 37, 'Bresciali-Refin'),
(18, 'Robert Millar', 37, 'TVM'),
(19, 'Julian Gorospe', 34, 'Banesto'),
(20, 'Alfonso Gutirrez', 29, 'Artiach'),
(21, 'Erwin Nijboer', 31, 'Artiach'),
(22, 'Giorgio Furlan', 32, 'Gewiss'),
(23, 'Lance Armstrong', 27, 'Motorola'),
(24, 'Claudio Chiappucci', 29, 'Carrera'),
(25, 'Gianni Bugno', 32, 'Gatorade'),
(26, 'Mikel Zarrabeitia', 27, 'Banesto'),
(27, 'Laurent Jalabert', 28, 'ONCE'),
(28, 'Jesus Montoya', 33, 'Banesto'),
(29, 'Angel Edo', 28, 'Kelme'),
(30, 'Melchor Mauri', 28, 'Banesto'),
(31, 'Vicente Aparicio', 30, 'Banesto'),
(32, 'Laurent Dufaux', 28, 'ONCE'),
(33, 'Stefano della Santa', 29, 'Mapei-Clas'),
(34, 'Angel Yesid Camargo', 30, 'Kelme'),
(35, 'Erik Dekker', 28, 'Wordperfect'),
(36, 'Gian Matteo Fagnini', 32, 'Mercatone Uno'),
(37, 'Scott Sunderland', 29, 'TVM'),
(38, 'Javier Palacin', 25, 'Euskadi'),
(39, 'Rudy Verdonck', 30, 'Lotus Festina'),
(40, 'Viatceslav Ekimov', 32, 'Wordperfect'),
(41, 'Rolf Aldag', 25, 'Telecom'),
(42, 'Davide Cassani', 29, 'TVM'),
(43, 'Francesco Casagrande', 28, 'Mercatone Uno'),
(44, 'Luca Gelfi', 27, 'Gatorade'),
(45, 'Alberto Elli', 26, 'Artiach'),
(46, 'Agustin Sagasti', 24, 'Euskadi'),
(47, 'Laurent Pillon', 32, 'Gewiss'),
(48, 'Marco Saligari', 29, 'Gewiss'),
(49, 'Eugeni Berzin', 23, 'Gewiss'),
(50, 'Fernando Escartin', 27, 'Mapei-Clas'),
(51, 'Udo Bolts', 30, 'Telecom'),
(52, 'Vladislav Bobrik', 26, 'Gewiss'),
(53, 'Michele Bartoli', 28, 'Mercatone Uno'),
(54, 'Steffen Wesemann', 30, 'Telecom'),
(55, 'Nicola Minali', 28, 'Gewiss'),
(56, 'Andrew Hampsten', 29, 'Banesto'),
(57, 'Stefano Zanini', 28, 'Navigare'),
(58, 'Gerd Audehm', 34, 'Telecom'),
(59, 'Mariano Picolli', 28, 'Mercatone Uno'),
(60, 'Giovanni Lombardi', 28, 'Bresciali-Refin'),
(61, 'Walte Castignola', 26, 'Navigare'),
(62, 'Raul Alcala', 30, 'Motorola'),
(63, 'Alvaro Mejia', 32, 'Motorola'),
(64, 'Giuseppe Petito', 28, 'Mercatone Uno'),
(65, 'Pascal Lino', 29, 'Amore Vita'),
(66, 'Enrico Zaina', 24, 'Gewiss'),
(67, 'Armand de las Cuevas', 28, 'Castorama'),
(68, 'Angel Citracca', 28, 'Navigare'),
(69, 'Eddy Seigneur', 27, 'Castorama'),
(70, 'Sandro Heulot', 29, 'Banesto'),
(71, 'Prudencio Indurin', 27, 'Banesto'),
(72, 'Stefano Colage', 28, 'Bresciali-Refin'),
(73, 'Laurent Fignon', 35, 'Gatorade'),
(74, 'Claudio Chioccioli', 36, 'Amore Vita'),
(75, 'Juan Romero', 32, 'Seguros Amaya'),
(76, 'Marco Giovannetti', 34, 'Gatorade'),
(77, 'Javier Mauleon', 33, 'Mapei-Clas'),
(78, 'Antonio Esparza', 35, 'Kelme'),
(79, 'Johan Bruyneel', 33, 'ONCE'),
(80, 'Federico Echave', 37, 'Mapei-Clas'),
(81, 'Piotr Ugrumov', 33, 'Gewiss'),
(82, 'Edgar Corredor', 30, 'Kelme'),
(83, 'Hernan Buenahora', 32, 'Kelme'),
(84, 'Jon Unzaga', 31, 'Mapei-Clas'),
(85, 'Dimitri Abdoujaparov', 30, 'Carrera'),
(86, 'Juan Martinez Oliver', 32, 'Kelme'),
(87, 'Fernando Mota', 32, 'Artiach'),
(88, 'Angel Camarillo', 28, 'Mapei-Clas'),
(89, 'Stefan Roche', 36, 'Carrera'),
(90, 'Ivan Ivanov', 27, 'Artiach'),
(91, 'Nestor Mora', 28, 'Kelme'),
(92, 'Federico García', 27, 'Artiach'),
(93, 'Bo Hamburger', 29, 'TVM'),
(94, 'Marino Alonso', 30, 'Banesto'),
(95, 'Manuel Guijarro', 31, 'Lotus Festina'),
(96, 'Tom Cordes', 29, 'Wordperfect'),
(97, 'Casimiro Moreda', 28, 'ONCE'),
(98, 'Eleuterio Anguita', 25, 'Artiach'),
(99, 'Per Pedersen', 29, 'Seguros Amaya'),
(100, 'William Palacios', 30, 'Jolly Club');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE IF NOT EXISTS `equipos` (
  `nombre_equipo` varchar(25) NOT NULL,
  `director` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nombre_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`nombre_equipo`, `director`) VALUES
('Amore Vita', 'Ricardo Padacci'),
('Artiach', 'Jose Perez'),
('Banesto', 'Miguel Echevarria'),
('Bresciali-Refin', 'Pietro Armani'),
('Carrera', 'Luigi Petroni'),
('Castorama', 'Jean Philip'),
('Euskadi', 'Pedro Txucaru'),
('Gatorade', 'Gian Luca Pacceli'),
('Gewiss', 'Moreno Argentin'),
('Jolly Club', 'Johan Richard'),
('Kelme', 'lvaro Pino'),
('Lotus Festina', 'Suarez Cuevas'),
('Mapei-Clas', 'Juan Fernandez'),
('Mercatone Uno', 'Ettore Romano'),
('Motorola', 'John Fidwell'),
('Navigare', 'Lonrenzo Sciacci'),
('ONCE', 'Manuel Sainz'),
('PDM', 'Piet Van Der Kruis'),
('Seguros Amaya', 'Minguez'),
('Telecom', 'Morgan Reikcard'),
('TVM', 'Steveens Henk'),
('Wordperfect', 'Bill Gates');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etapas`
--

CREATE TABLE IF NOT EXISTS `etapas` (
  `numero_etapa` int(10) unsigned NOT NULL,
  `kms` int(10) unsigned NOT NULL,
  `salida` varchar(35) DEFAULT NULL,
  `llegada` varchar(35) DEFAULT NULL,
  `ganador` int(10) unsigned,
  PRIMARY KEY (`numero_etapa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `etapas`
--

INSERT INTO `etapas` (`numero_etapa`, `kms`, `salida`, `llegada`, `ganador`) VALUES
(1, 9, 'Valladolid', 'Valladolid', 1),
(2, 180, 'Valladolid', 'Salamanca', 36),
(3, 240, 'Salamanca', 'Caceres', 12),
(4, 230, 'Almendralejo', 'Cordoba', 83),
(5, 170, 'Cordoba', 'Granada', 27),
(6, 150, 'Granada', 'Sierra Nevada', 52),
(7, 250, 'Baza', 'Alicante', 22),
(8, 40, 'Benidorm', 'Benidorm', 1),
(9, 150, 'Benidorm', 'Valencia', 35),
(10, 200, 'Igualada', 'Andorra', 2),
(11, 195, 'Andorra', 'Estacin de Cerler', 65),
(12, 220, 'Benasque', 'Zaragoza', 12),
(13, 200, 'Zaragoza', 'Pamplona', 93),
(14, 172, 'Pamplona', 'Alto de la Cruz de la Demanda', 86),
(15, 207, 'Santo Domingo de la Calzada', 'Santander', 10),
(16, 160, 'Santander', 'Lagos de Covadonga', 5),
(17, 140, 'Cangas de Onis', 'Alto del Naranco', 4),
(18, 195, 'vila', 'vila', 8),
(19, 190, 'vila', 'Destilerias Dyc', 2),
(20, 52, 'Segovia', 'Destilerias Dyc', 2),
(21, 170, 'Destilerias Dyc', 'Madrid', 27),
(22, 17, 'Madrid', 'Madrid Sur', NULL),
(23, 170, 'Madrid Sur', 'Madrid Norte', NULL);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciclistas`
--
ALTER TABLE `ciclistas`
  ADD CONSTRAINT `ciclistas_ibfk_1` FOREIGN KEY (`equipo`) REFERENCES `equipos` (`nombre_equipo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `etapas`
--
ALTER TABLE `etapas`
  ADD CONSTRAINT `etapas_ibfk_1` FOREIGN KEY (`ganador`) REFERENCES `ciclistas` (`numero`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
