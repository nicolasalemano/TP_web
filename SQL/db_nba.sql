-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2017 a las 21:32:15
-- Versión del servidor: 10.1.22-MariaDB
-- Versión de PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_nba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id` int(150) NOT NULL,
  `id_equipo` int(150) NOT NULL,
  `comentario` varchar(256) NOT NULL,
  `fecha` date NOT NULL,
  `id_usuario` int(150) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id` int(11) NOT NULL,
  `equipo` varchar(120) NOT NULL,
  `nom_corto` varchar(25) NOT NULL,
  `ganados` int(11) NOT NULL,
  `perdidos` int(11) NOT NULL,
  `porcentaje` varchar(11) NOT NULL,
  `dif_partido` int(11) NOT NULL,
  `conferencia` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id`, `equipo`, `nom_corto`, `ganados`, `perdidos`, `porcentaje`, `dif_partido`, `conferencia`) VALUES
(1, 'San Antonio Spurs', 'Spurs', 67, 15, '.817', 6, 'Oeste'),
(2, 'Oklahoma City Thunder', 'Thunder', 55, 27, '.671', 18, 'Oeste'),
(3, 'Los Angeles Clippers', 'Clippers', 53, 29, '.646', 20, 'Oeste'),
(4, 'Portland Trail Blazers', 'Blazers', 44, 38, '.537', 29, 'Oeste'),
(5, 'Dallas Mavericks', 'Mavericks', 42, 40, '.512', 31, 'Oeste'),
(6, 'Memphis Grizzlies', 'Grizzlies', 42, 40, '.512', 31, 'Oeste'),
(7, 'Houston Rockets', 'Rockets', 41, 41, '.500', 32, 'Oeste'),
(8, 'Utah Jazz', 'Jazz', 40, 42, '.488', 33, 'Oeste'),
(9, 'Sacramento Kings', 'Kings', 33, 49, '.402', 40, 'Oeste'),
(10, 'Denver  Nuggets', 'Nuggets', 33, 49, '.402', 40, 'Oeste'),
(11, 'New Orleans Pelicans', 'Pelicans', 30, 52, '.366', 43, 'Oeste'),
(12, 'Minnesota Timberwolves', 'Timberwolves', 29, 53, '.354', 44, 'Oeste'),
(13, 'Phoenix Suns', 'Suns', 23, 59, '.280', 50, 'Oeste'),
(14, 'Los Angeles Lakers', 'Lakers', 17, 65, '.207', 56, 'Oeste'),
(15, 'Cleveland Cavaliers', 'Cavaliers', 57, 25, '.695', 0, 'Este'),
(16, 'Toronto Raptors', 'Raptors', 56, 26, '.683', 1, 'Este'),
(17, 'Miami Heat', 'Heat', 48, 34, '.585', 9, 'Este'),
(18, 'Atlanta Hawks', 'Hawks', 48, 34, '.585', 9, 'Este'),
(19, 'Boston Celtics', 'Celtics', 48, 34, '.585', 9, 'Este'),
(20, 'Charlotte Hornets', 'Hornets', 48, 34, '.585', 9, 'Este'),
(21, 'Indiana Pacers', 'Pacers', 45, 37, '.549', 12, 'Este'),
(22, 'Detroit Pistons', 'Pistons', 44, 38, '.537', 13, 'Este'),
(23, 'Chicago Bulls', 'Bulls', 42, 40, '.512', 15, 'Este'),
(24, 'Washington Wizards', 'Wizards', 41, 41, '.500', 16, 'Este'),
(25, 'Orlando Magic', 'Magic', 35, 47, '.427', 22, 'Este'),
(26, 'Milwaukee Bucks', 'Bucks', 33, 49, '.402', 24, 'Este'),
(27, 'New York Knicks', 'Knicks', 32, 50, '.390', 25, 'Este'),
(28, 'Brooklyn Nets', 'Nets', 21, 61, '.256', 36, 'Este'),
(29, 'Philadelphia 76ers', '76ers', 10, 72, '.122', 47, 'Este'),
(30, 'Golden State Warriors', 'Warriors', 73, 9, '.890\r\n', 0, 'Oeste'),
(35, 'asdasd', 'asda', 2, 2, '23', 0, 'Oeste'),
(36, 'ads', 'ads', 0, 0, '', 0, 'Oeste'),
(37, ' d', '', 0, 0, '', 0, 'Oeste');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id` int(255) NOT NULL,
  `id_equipo` int(255) NOT NULL,
  `ruta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `id` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(125) NOT NULL,
  `apellido` varchar(125) NOT NULL,
  `posicion` varchar(25) NOT NULL,
  `numero` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `altura` decimal(10,0) NOT NULL,
  `peso` decimal(10,0) NOT NULL,
  `universidad` varchar(125) NOT NULL,
  `salario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`id`, `id_equipo`, `nombre`, `apellido`, `posicion`, `numero`, `edad`, `altura`, `peso`, `universidad`, `salario`) VALUES
(1, 18, 'Luke', 'Babbitt', 'Escolta', 5, 28, '2', '225', 'Nevada', 1471382),
(2, 18, 'Kent', 'Bazemore', 'Escolta', 24, 28, '2', '201', 'Old Dominion', 16910113),
(3, 18, 'DeAndre', 'Bembry', 'Escolta', 95, 23, '2', '210', 'Saint Joseph\'s', 1567200),
(4, 18, 'Nicolas', 'Brussino', 'Escolta', 9, 24, '2', '195', '', 1312611),
(5, 18, 'Tyler', 'Cavanaugh', 'Ala Pivot', 50, 23, '2', '238', 'George Washington', 81562),
(6, 18, 'John', 'Collins', 'Ala Pivot', 20, 19, '2', '235', 'Wake Forest', 1936920),
(7, 18, 'Quinn', 'Cook', 'Base', 22, 24, '2', '179', 'Duke', 1312611),
(8, 18, 'Dewayne', 'Dedmon', 'Pivot', 3, 28, '2', '245', 'USC', 6000000),
(9, 18, 'Malcolm', 'Delaney', 'Ala', 5, 28, '2', '190', 'Virginia Tech', 2500000),
(10, 18, 'Kris', 'Humphries', 'Ala Pivot', 43, 32, '2', '235', 'Minnesota', 0),
(11, 18, 'Ersan', 'Ilyasova', 'Ala Pivot', 7, 30, '2', '235', '', 6000000),
(12, 18, 'Josh', 'Magette', 'Base', 3, 27, '2', '160', 'Alabama-Huntsville', 0),
(13, 18, 'Mike', 'Muscala', 'Ala Pivot', 31, 26, '2', '240', 'Bucknell', 5000000),
(14, 18, 'Miles', 'Plumlee', 'Pivot', 18, 29, '2', '249', 'Duke', 12500000),
(15, 18, 'Taurean', 'Prince', 'Escolta', 12, 23, '2', '220', 'Baylor', 2422560),
(16, 18, 'Dennis', 'Schroder', 'Base', 17, 24, '2', '172', '', 15500000),
(17, 18, 'Marco', 'Belinelli', 'Escolta', 21, 31, '2', '210', '', 6060606),
(18, 18, 'Tyler', 'Dorsey', 'Escolta', 2, 21, '2', '183', 'Oregon', 81562),
(19, 19, 'Aron', 'Baynes', 'Pivot', 12, 30, '2', '260', 'Washington State', 4328000),
(20, 19, 'Jaylen', 'Brown', 'Escolta', 7, 20, '2', '225', 'California', 4956480),
(21, 19, 'Gerald', 'Green', 'Escolta', 30, 31, '2', '205', '', 0),
(22, 19, 'Gordon', 'Hayward', 'Escolta', 20, 27, '2', '226', 'Butler', 29727900),
(23, 19, 'Al', 'Horford', 'Pivot', 42, 31, '2', '245', 'Florida', 27734406),
(24, 19, 'Kyrie', 'Irving', 'Base', 11, 25, '2', '193', 'Duke', 18868626),
(25, 19, 'Shane', 'Larkin', 'Base', 0, 24, '2', '175', 'Miami (FL)', 1471382),
(26, 19, 'Marcus', 'Morris', 'Ala Pivot', 13, 28, '2', '235', 'Kansas', 5000000),
(27, 19, 'Abdel', 'Nader', 'Escolta', 51, 23, '2', '230', 'Iowa State', 1167333),
(28, 19, 'Semi', 'Ojeleye', 'Ala Pivot', 37, 22, '2', '235', 'SMU', 1291892),
(29, 19, 'L.J.', 'Peak', 'Ala', 51, 0, '2', '215', '', 81562),
(30, 19, 'Terry', 'Rozier', 'Base', 12, 23, '2', '190', 'Louisville', 1988520),
(31, 19, 'Marcus', 'Smart', 'Base', 36, 23, '2', '220', 'Oklahoma State', 4538020),
(32, 19, 'Jayson', 'Tatum', 'Escolta', 11, 19, '2', '205', 'Duke', 5645400),
(33, 19, 'Daniel', 'Theis', 'Ala Pivot', 99, 25, '2', '243', '', 81562),
(34, 19, 'Andrew', 'White III', 'Ala', 38, 24, '2', '210', '', 81562),
(35, 19, 'Guerschon', 'Yabusele', 'Ala Pivot', 98, 21, '2', '260', '', 2247480),
(36, 19, 'Kadeem', 'Allen', 'Escolta', 45, 24, '2', '200', 'Arizona', 0),
(37, 19, 'Jabari', 'Bird', 'Escolta', 26, 23, '2', '198', 'California', 0),
(38, 28, 'Quincy', 'Acy', 'Escolta', 13, 26, '2', '240', 'Baylor', 1709538),
(39, 28, 'Jarrett', 'Allen', 'Pivot', 0, 19, '2', '235', 'Texas', 1713720),
(40, 28, 'Trevor', 'Booker', 'Ala Pivot', 35, 29, '2', '228', 'Clemson', 9125000),
(41, 28, 'DeMarre', 'Carroll', 'Escolta', 5, 31, '2', '212', 'Missouri', 14800000),
(42, 28, 'Spencer', 'Dinwiddie', 'Base', 8, 24, '2', '200', 'Colorado', 1524305),
(43, 28, 'Jeremy', 'Lin', 'Base', 7, 29, '2', '200', 'Harvard', 12000000),
(44, 28, 'Timofey', 'Mozgov', 'Pivot', 20, 31, '2', '275', '', 15280000),
(45, 28, 'D\'Angelo', 'Russell', 'Base', 1, 21, '2', '195', 'Ohio State', 5562360),
(46, 28, 'Isaiah', 'Whitehead', 'Ala', 15, 22, '2', '213', 'Seton Hall', 1312611),
(47, 28, 'Jacob', 'Wiley', 'Escolta', 12, 23, '2', '213', 'Eastern Washington', 0),
(48, 28, 'Tyler', 'Zeller', 'Pivot', 44, 27, '2', '253', 'North Carolina', 1709538),
(49, 28, 'Allen', 'Crabbe', 'Escolta', 23, 25, '2', '215', 'California', 19332500),
(50, 28, 'Randy', 'Foye', 'Escolta', 2, 33, '2', '218', 'Villanova', 0),
(51, 28, 'Joe', 'Harris', 'Escolta', 12, 26, '2', '219', 'Virginia', 1524305),
(52, 28, 'Rondae', 'Hollis-Jefferson', 'Escolta', 24, 22, '2', '214', 'Arizona', 1471382),
(53, 28, 'Sean', 'Kilpatrick', 'Escolta', 6, 27, '2', '219', 'Cincinnati', 1524305),
(54, 28, 'Caris', 'LeVert', 'Escolta', 22, 23, '2', '203', 'Michigan', 1632480),
(55, 28, 'Yakuba', 'Ouattara', 'Escolta', 25, 25, '2', '185', '', 0),
(56, 20, 'Michael', 'Carter-Williams', 'Base', 10, 25, '2', '190', 'Syracuse', 2700000),
(57, 20, 'Terry', 'Henderson', 'Ala', 3, 23, '2', '190', '', 0),
(58, 20, 'Isaiah', 'Hicks', 'Ala Pivot', 37, 23, '2', '230', 'North Carolina', 81562),
(59, 20, 'Dwight', 'Howard', 'Pivot', 12, 31, '2', '265', '', 23500000),
(60, 20, 'Frank', 'Kaminsky', 'Pivot', 44, 24, '2', '240', 'Wisconsin', 2847600),
(61, 20, 'Michael', 'Kidd-Gilchrist', 'Escolta', 14, 23, '2', '232', 'Kentucky', 13000000),
(62, 20, 'Mangok', 'Mathiang', 'Ala Pivot', 11, 24, '2', '230', 'Louisville', 0),
(63, 20, 'Johnny', 'O\'Bryant III', 'Ala Pivot', 8, 24, '2', '257', 'LSU', 1524305),
(64, 20, 'Marcus', 'Paige', 'Base', 7, 24, '2', '164', 'North Carolina', 0),
(65, 20, 'Julyan', 'Stone', 'Base', 10, 28, '2', '200', 'UTEP', 1524305),
(66, 20, 'Kemba', 'Walker', 'Base', 15, 27, '2', '184', 'Connecticut', 12000000),
(67, 20, 'Marvin', 'Williams', 'Ala Pivot', 2, 31, '2', '237', 'North Carolina', 13168750),
(68, 20, 'T.J.', 'Williams', 'Base', 32, 22, '2', '205', 'Northeastern', 81562),
(69, 20, 'Cody', 'Zeller', 'Pivot', 40, 24, '2', '240', 'Indiana', 12584270),
(70, 20, 'Dwayne', 'Bacon', 'Escolta', 0, 22, '2', '220', 'Florida State', 81562),
(71, 20, 'Nicolas', 'Batum', 'Escolta', 5, 28, '2', '200', '', 22434783),
(72, 20, 'Treveon', 'Graham', 'Escolta', 21, 23, '2', '226', 'Virginia Commonwealth', 1312611),
(73, 20, 'Jeremy', 'Lamb', 'Escolta', 3, 25, '2', '185', 'Connecticut', 7000000),
(74, 20, 'Malik', 'Monk', 'Escolta', 0, 19, '2', '200', 'Kentucky', 2904480),
(75, 23, 'Antonio', 'Blakeney', 'Escolta', 9, 20, '2', '197', 'LSU', 0),
(76, 23, 'Justin', 'Holiday', 'Escolta', 8, 28, '2', '185', 'Washington', 4615385),
(77, 23, 'Ryan', 'Arcidiacono', 'Base', 99, 23, '2', '195', 'Villanova', 0),
(78, 23, 'Anthony', 'Morrow', 'Escolta', 11, 31, '2', '210', 'Georgia Tech', 0),
(79, 23, 'Kris', 'Dunn', 'Base', 32, 23, '2', '210', 'Providence', 4046760),
(80, 23, 'Cristiano', 'Felicio', 'Ala Pivot', 6, 25, '2', '266', '', 7833500),
(81, 23, 'Jerian', 'Grant', 'Base', 2, 24, '2', '198', 'Notre Dame', 1713840),
(82, 23, 'Quincy', 'Pondexter', 'Escolta', 99, 29, '2', '225', 'Washington', 3853931),
(83, 23, 'Zach', 'LaVine', 'Base', 99, 22, '2', '185', 'UCLA', 3202218),
(84, 23, 'Robin', 'Lopez', 'Pivot', 8, 29, '2', '255', 'Stanford', 13788500),
(85, 23, 'Lauri', 'Markkanen', 'Ala Pivot', 24, 20, '2', '230', 'Arizona', 3821640),
(86, 23, 'Nikola', 'Mirotic', 'Ala Pivot', 44, 26, '2', '238', '', 0),
(87, 23, 'Denzel', 'Valentine', 'Escolta', 45, 23, '2', '212', 'Michigan State', 2186400),
(88, 23, 'David', 'Nwaba', 'Base', 0, 24, '2', '209', 'Cal Poly', 1312611),
(89, 23, 'Cameron', 'Payne', 'Base', 22, 23, '2', '185', 'Murray State', 2203440),
(90, 23, 'Dwyane', 'Wade', 'Escolta', 3, 35, '2', '220', 'Marquette', 23800000),
(91, 23, 'Bobby', 'Portis', 'Ala Pivot', 5, 22, '2', '246', 'Arkansas', 1516320),
(92, 23, 'Diamond', 'Stone', 'Pivot', 0, 20, '2', '255', 'Maryland', 1312611),
(93, 23, 'Paul', 'Zipser', 'Escolta', 16, 23, '2', '226', '', 1312611),
(94, 15, 'John', 'Holland', 'Escolta', 32, 28, '2', '205', 'Boston University', 0),
(95, 15, 'Dahntay', 'Jones', 'Escolta', 30, 36, '2', '225', 'Duke', 0),
(96, 15, 'Jose', 'Calderon', 'Base', 13, 35, '2', '200', '', 1471382),
(97, 15, 'Jae', 'Crowder', 'Escolta', 99, 27, '2', '235', 'Marquette', 6796117),
(98, 15, 'Kay', 'Felder', 'Base', 20, 22, '2', '176', '', 1312611),
(99, 15, 'Channing', 'Frye', 'Ala Pivot', 8, 34, '2', '255', 'Arizona', 7420912),
(100, 15, 'Jeff', 'Green', 'Escolta', 34, 31, '2', '235', 'Georgetown', 1471382),
(101, 15, 'Kyle', 'Korver', 'Escolta', 26, 36, '2', '212', 'Creighton', 7000000),
(102, 15, 'LeBron', 'James', 'Escolta', 23, 32, '2', '250', '', 33285709),
(103, 15, 'Richard', 'Jefferson', 'Escolta', 24, 37, '2', '233', 'Arizona', 2500000),
(104, 15, 'Iman', 'Shumpert', 'Escolta', 4, 27, '2', '220', 'Georgia Tech', 10337079),
(105, 15, 'JR', 'Smith', 'Escolta', 5, 32, '2', '225', '', 13760000),
(106, 15, 'Kevin', 'Love', 'Ala Pivot', 0, 29, '2', '251', 'UCLA', 22642350),
(107, 15, 'Cedi', 'Osman', 'Escolta', 98, 22, '2', '215', '', 2642857),
(108, 15, 'Derrick', 'Rose', 'Base', 25, 28, '2', '190', 'Memphis', 1471382),
(109, 15, 'Edy', 'Tavares', 'Pivot', 40, 25, '2', '265', '', 1312611),
(110, 15, 'Isaiah', 'Thomas', 'Base', 4, 28, '2', '185', 'Washington', 6261395),
(111, 15, 'Tristan', 'Thompson', 'Pivot', 13, 26, '2', '238', 'Texas', 16400000),
(112, 15, 'Deron', 'Williams', 'Base', 31, 33, '2', '200', 'Illinois', 0),
(113, 15, 'Derrick', 'Williams', 'Ala Pivot', 3, 26, '2', '240', 'Arizona', 0),
(114, 15, 'Ante', 'Zizic', 'Ala Pivot', 54, 20, '2', '250', '', 1645200),
(115, 5, 'Brandon', 'Ashley', 'Ala Pivot', 4, 23, '2', '230', 'Arizona', 81562),
(116, 5, 'J.J.', 'Barea', 'Base', 5, 33, '2', '185', 'Northeastern', 3903900),
(117, 5, 'Harrison', 'Barnes', 'Escolta', 40, 25, '2', '225', 'North Carolina', 23112004),
(118, 5, 'PJ', 'Dozier', 'Base', 6, 20, '2', '205', 'South Carolina', 81562),
(119, 5, 'Yogi', 'Ferrell', 'Base', 11, 24, '2', '180', 'Indiana', 1312611),
(120, 5, 'Dorian', 'Finney-Smith', 'Escolta', 10, 24, '2', '220', 'Florida', 1312611),
(121, 5, 'Devin', 'Harris', 'Base', 34, 34, '2', '185', 'Wisconsin', 4402546),
(122, 5, 'Maximilian', 'Kleber', 'Escolta', 0, 25, '2', '220', '', 81562),
(123, 5, 'Josh', 'McRoberts', 'Ala Pivot', 4, 30, '2', '240', 'Duke', 6021175),
(124, 5, 'Salah', 'Mejri', 'Pivot', 50, 31, '2', '245', '', 1471382),
(125, 5, 'Johnathan', 'Motley', 'Ala Pivot', 55, 22, '2', '230', 'Baylor', 0),
(126, 5, 'Nerlens', 'Noel', 'Ala Pivot', 3, 23, '2', '228', 'Kentucky', 4187599),
(127, 5, 'Dirk', 'Nowitzki', 'Ala Pivot', 41, 39, '2', '245', '', 5000000),
(128, 5, 'Dwight', 'Powell', 'Ala Pivot', 7, 26, '2', '240', 'Stanford', 9003125),
(129, 5, 'Dennis', 'Smith Jr.', 'Base', 1, 19, '2', '195', 'North Carolina State', 3218280),
(130, 5, 'Maalik', 'Wayns', 'Base', 99, 26, '2', '200', 'Villanova', 1471382),
(131, 5, 'Jeff', 'Withey', 'Pivot', 24, 27, '2', '231', 'Kansas', 1577230),
(132, 5, 'Gian', 'Clavell', 'Escolta', 99, 23, '2', '185', 'Colorado State', 81562),
(133, 5, 'Seth', 'Curry', 'Escolta', 30, 27, '2', '185', 'Duke', 3028410),
(134, 5, 'Wesley', 'Matthews', 'Escolta', 23, 30, '2', '220', 'Marquette', 17884176),
(135, 10, 'Darrell', 'Arthur', 'Ala Pivot', 0, 29, '2', '235', 'Kansas', 7464912),
(136, 10, 'Wilson', 'Chandler', 'Escolta', 21, 30, '2', '225', 'DePaul', 12016854),
(137, 10, 'Josh', 'Childress', 'Escolta', 8, 34, '2', '210', 'Stanford', 0),
(138, 10, 'Kenneth', 'Faried', 'Ala Pivot', 35, 27, '2', '228', 'Morehead State', 12921348),
(139, 10, 'Juan', 'Hernangomez', 'Ala Pivot', 41, 21, '2', '230', '', 2076840),
(140, 10, 'Roy', 'Hibbert', 'Pivot', 34, 30, '2', '270', 'Georgetown', 0),
(141, 10, 'Nikola', 'Jokic', 'Pivot', 15, 22, '2', '250', '', 1471382),
(142, 10, 'Tyler', 'Lydon', 'Ala Pivot', 0, 21, '2', '220', 'Syracuse', 1579440),
(143, 10, 'Trey', 'Lyles', 'Ala Pivot', 41, 21, '2', '234', 'Kentucky', 2441400),
(144, 10, 'Paul', 'Millsap', 'Ala Pivot', 4, 32, '2', '246', 'Louisiana Tech', 31269231),
(145, 10, 'Monte', 'Morris', 'Base', 0, 22, '2', '175', 'Iowa State', 0),
(146, 10, 'Emmanuel', 'Mudiay', 'Base', 0, 21, '2', '200', '', 3381480),
(147, 10, 'Jamal', 'Murray', 'Ala', 27, 20, '2', '207', 'Kentucky', 3355320),
(148, 10, 'Jameer', 'Nelson', 'Base', 1, 35, '2', '190', 'Saint Joseph\'s', 4736050),
(149, 10, 'Will', 'Barton', 'Escolta', 5, 26, '2', '175', 'Memphis', 3533333),
(150, 10, 'Malik', 'Beasley', 'Escolta', 25, 20, '2', '196', 'Florida State', 1700640),
(151, 10, 'Torrey', 'Craig', 'Escolta', 1, 26, '2', '215', '', 0),
(152, 10, 'Gary', 'Harris', 'Escolta', 14, 23, '2', '210', 'Michigan State', 2550055),
(153, 22, 'Avery', 'Bradley', 'Base', 0, 26, '2', '180', 'Texas', 8808989),
(154, 22, 'Reggie', 'Bullock', 'Escolta', 25, 26, '2', '205', 'North Carolina', 2500000),
(155, 22, 'Dwight', 'Buycks', 'Base', 0, 28, '2', '190', 'Marquette', 0),
(156, 22, 'Andre', 'Drummond', 'Pivot', 0, 24, '2', '279', 'Connecticut', 23775506),
(157, 22, 'Henry', 'Ellenson', 'Escolta', 8, 20, '2', '245', 'Marquette', 1780800),
(158, 22, 'Tobias', 'Harris', 'Escolta', 34, 25, '2', '235', 'Tennessee', 16000000),
(159, 22, 'Reggie', 'Jackson', 'Base', 1, 27, '2', '208', 'Boston College', 16000000),
(160, 22, 'Stanley', 'Johnson', 'Escolta', 7, 21, '2', '245', 'Arizona', 3097800),
(161, 22, 'Jon', 'Leuer', 'Ala Pivot', 30, 28, '2', '228', 'Wisconsin', 10497319),
(162, 22, 'Boban', 'Marjanovic', 'Pivot', 51, 29, '2', '290', '', 7000000),
(163, 22, 'Eric', 'Moreland', 'Ala Pivot', 36, 25, '2', '238', 'Oregon State', 1739333),
(164, 22, 'Ish', 'Smith', 'Base', 14, 29, '2', '175', 'Wake Forest', 6000000),
(165, 22, 'Anthony', 'Tolliver', 'Ala Pivot', 43, 32, '2', '240', 'Creighton', 3290000),
(166, 22, 'Langston', 'Galloway', 'Escolta', 9, 25, '2', '200', 'Saint Joseph\'s', 6666667),
(167, 22, 'Luke', 'Kennard', 'Escolta', 0, 21, '2', '200', 'Duke', 2759280),
(168, 22, 'Luis', 'Montero', 'Escolta', 0, 24, '2', '200', 'Westchester CC', 0),
(169, 30, 'Matt', 'Barnes', 'Escolta', 22, 37, '2', '226', 'UCLA', 0),
(170, 30, 'Jordan', 'Bell', 'Ala Pivot', 0, 22, '2', '225', 'Oregon', 81562),
(171, 30, 'Chris', 'Boucher', 'Ala Pivot', 25, 24, '2', '200', 'Oregon', 0),
(172, 30, 'Omri', 'Casspi', 'Escolta', 18, 29, '2', '225', '', 1471382),
(173, 30, 'Antonius', 'Cleveland', 'Ala', 44, 0, '2', '188', '', 81562),
(174, 30, 'Stephen', 'Curry', 'Base', 30, 29, '2', '190', 'Davidson', 34382550),
(175, 30, 'Kevin', 'Durant', 'Escolta', 35, 28, '2', '240', 'Texas', 25000000),
(176, 30, 'Draymond', 'Green', 'Ala Pivot', 23, 27, '2', '230', 'Michigan State', 16400000),
(177, 30, 'Andre', 'Iguodala', 'Escolta', 9, 33, '2', '215', 'Arizona', 14814815),
(178, 30, 'Damian', 'Jones', 'Escolta', 15, 22, '2', '245', 'Vanderbilt', 1312611),
(179, 30, 'Shaun', 'Livingston', 'Base', 34, 32, '2', '192', '', 7692308),
(180, 30, 'Kevon', 'Looney', 'Escolta', 5, 21, '2', '220', 'UCLA', 1471382),
(181, 30, 'Patrick', 'McCaw', 'Ala', 0, 21, '2', '185', 'UNLV', 1312611),
(182, 30, 'JaVale', 'McGee', 'Pivot', 1, 29, '2', '270', 'Nevada', 1471382),
(183, 30, 'Georges', 'Niang', 'Escolta', 32, 24, '2', '230', 'Iowa State', 1312611),
(184, 30, 'Zaza', 'Pachulia', 'Pivot', 27, 33, '2', '275', '', 3477600),
(185, 30, 'David', 'West', 'Ala Pivot', 3, 37, '2', '250', 'Xavier', 1471382),
(186, 30, 'Michael', 'Gbinije', 'Escolta', 12, 25, '2', '200', 'Syracuse', 1312611),
(187, 30, 'Klay', 'Thompson', 'Escolta', 11, 27, '2', '215', 'Washington State', 17826150),
(188, 30, 'Nick', 'Young', 'Escolta', 0, 32, '2', '210', 'USC', 5192000),
(189, 7, 'Ryan', 'Anderson', 'Ala Pivot', 3, 29, '2', '240', 'California', 19578455),
(190, 7, 'Trevor', 'Ariza', 'Escolta', 1, 32, '2', '215', 'UCLA', 7420912),
(191, 7, 'Tarik', 'Black', 'Pivot', 0, 25, '2', '250', 'Kansas', 3290000),
(192, 7, 'Bobby', 'Brown', 'Base', 8, 32, '2', '175', 'Cal State Fullerton', 1471382),
(193, 7, 'Clint', 'Capela', 'Pivot', 15, 23, '2', '240', '', 2334528),
(194, 7, 'Isaiah', 'Hartenstein', 'Ala Pivot', 0, 19, '2', '249', '', 0),
(195, 7, 'Nene', 'Hilario', 'Pivot', 42, 35, '2', '250', '', 3477600),
(196, 7, 'Demetrius', 'Jackson', 'Base', 9, 23, '2', '201', 'Notre Dame', 0),
(197, 7, 'Shawn', 'Long', 'Ala Pivot', 95, 24, '2', '255', 'Louisiana-Lafayette', 1312611),
(198, 7, 'Luc Mbah a', 'Moute', 'Ala Pivot', 12, 31, '2', '230', 'UCLA', 1471382),
(199, 7, 'Cameron', 'Oliver', 'Ala Pivot', 50, 21, '2', '235', 'Nevada', 81562),
(200, 7, 'Chinanu', 'Onuaku', 'Escolta', 21, 20, '2', '245', 'Louisville', 1312611),
(201, 7, 'Chris', 'Paul', 'Base', 99, 32, '2', '175', 'Wake Forest', 24599495),
(202, 7, 'Zhou', 'Qi', 'Ala Pivot', 15, 21, '2', '210', '', 81562),
(203, 7, 'Isaiah', 'Taylor', 'Base', 17, 23, '2', '170', 'Texas', 1312611),
(204, 7, 'PJ', 'Tucker', 'Escolta', 2, 32, '2', '245', 'Texas', 7590035),
(205, 7, 'Troy', 'Williams', 'Escolta', 14, 22, '2', '210', 'Indiana', 1471382),
(206, 7, 'Eric', 'Gordon', 'Escolta', 10, 28, '2', '215', 'Indiana', 12943020),
(207, 7, 'James', 'Harden', 'Escolta', 13, 28, '2', '220', 'Arizona State', 28299399),
(208, 7, 'Tim', 'Quarterman', 'Escolta', 55, 22, '2', '190', 'LSU', 1312611),
(209, 21, 'Lavoy', 'Allen', 'Ala Pivot', 5, 28, '2', '260', 'Temple', 0),
(210, 21, 'Ike', 'Anigbogu', 'Pivot', 13, 18, '2', '250', 'UCLA', 95000),
(211, 21, 'Aaron', 'Brooks', 'Base', 0, 32, '2', '161', 'Oregon', 0),
(212, 21, 'Darren', 'Collison', 'Base', 7, 30, '2', '175', 'UCLA', 10000000),
(213, 21, 'Al', 'Jefferson', 'Pivot', 7, 32, '2', '289', '', 9769821),
(214, 21, 'DeQuan', 'Jones', 'Escolta', 0, 27, '2', '230', 'Miami (FL)', 1312611),
(215, 21, 'Cory', 'Joseph', 'Base', 6, 26, '2', '190', 'Texas', 7630000),
(216, 21, 'T.J.', 'Leaf', 'Ala Pivot', 22, 20, '2', '225', 'UCLA', 2028360),
(217, 21, 'Ben', 'Moore', 'Ala Pivot', 20, 22, '2', '220', 'SMU', 81562),
(218, 21, 'Alex', 'Poythress', 'Escolta', 5, 24, '2', '235', 'Kentucky', 0),
(219, 21, 'Domantas', 'Sabonis', 'Ala Pivot', 11, 21, '2', '240', 'Gonzaga', 2550000),
(220, 21, 'Edmond', 'Sumner', 'Base', 5, 21, '2', '185', 'Xavier', 0),
(221, 21, 'Myles', 'Turner', 'Pivot', 33, 21, '2', '243', 'Texas', 2569920),
(222, 21, 'Joe', 'Young', 'Base', 3, 25, '2', '180', 'Oregon', 1471382),
(223, 21, 'Thaddeus', 'Young', 'Ala Pivot', 21, 29, '2', '221', 'Georgia Tech', 14996348),
(224, 21, 'Bojan', 'Bogdanovic', 'Escolta', 44, 28, '2', '225', '', 10500000),
(225, 21, 'Victor', 'Oladipo', 'Escolta', 4, 25, '2', '210', 'Indiana', 21000000),
(226, 21, 'Glenn', 'Robinson III', 'Escolta', 40, 23, '2', '222', 'Michigan', 1524305),
(227, 21, 'Lance', 'Stephenson', 'Escolta', 6, 27, '2', '230', 'Cincinnati', 4180000),
(228, 21, 'Damien', 'Wilkins', 'Escolta', 12, 37, '2', '225', 'Georgia', 1471382),
(229, 3, 'Alan', 'Anderson', 'Escolta', 9, 34, '2', '220', 'Michigan State', 0),
(230, 3, 'DeAndre', 'Liggins', 'Escolta', 14, 29, '2', '209', 'Kentucky', 1577230),
(231, 3, 'Sindarius', 'Thornwell', 'Escolta', 0, 22, '2', '215', 'South Carolina', 81562),
(232, 3, 'Tyrone', 'Wallace', 'Escolta', 31, 23, '2', '205', 'California', 81562),
(233, 3, 'C.J.', 'Williams', 'Escolta', 14, 27, '2', '225', 'North Carolina State', 54347),
(234, 3, 'Lou', 'Williams', 'Escolta', 97, 30, '2', '175', '', 7000000),
(235, 3, 'Patrick', 'Beverley', 'Base', 99, 29, '2', '185', 'Arkansas', 5513514),
(236, 3, 'Sam', 'Dekker', 'Escolta', 98, 23, '2', '230', 'Wisconsin', 1794600),
(237, 3, 'Jawun', 'Evans', 'Base', 0, 21, '2', '190', 'Oklahoma State', 81562),
(238, 3, 'Danilo', 'Gallinari', 'Escolta', 8, 29, '2', '225', '', 20559599),
(239, 3, 'Blake', 'Griffin', 'Ala Pivot', 32, 28, '2', '251', 'Oklahoma', 29512900),
(240, 3, 'Montrezl', 'Harrell', 'Ala Pivot', 94, 23, '2', '240', 'Louisville', 1471382),
(241, 3, 'LaDontae', 'Henton', 'Escolta', 23, 0, '2', '215', '', 81562),
(242, 3, 'Brice', 'Johnson', 'Escolta', 10, 23, '2', '230', 'North Carolina', 1331160),
(243, 3, 'Wesley', 'Johnson', 'Escolta', 33, 30, '2', '215', 'Syracuse', 5882260),
(244, 3, 'DeAndre', 'Jordan', 'Pivot', 6, 29, '2', '265', 'Texas A&M', 22642350),
(245, 3, 'Marshall', 'Plumlee', 'Pivot', 40, 25, '2', '250', 'Duke', 1312611),
(246, 3, 'Willie', 'Reed', 'Ala Pivot', 35, 27, '2', '245', 'Saint Louis', 1471382),
(247, 3, 'Austin', 'Rivers', 'Base', 25, 25, '2', '200', 'Duke', 11825000),
(248, 3, 'Milos', 'Teodosic', 'Base', 4, 30, '2', '194', '', 6000000),
(249, 14, 'Lonzo', 'Ball', 'Base', 0, 19, '2', '190', 'UCLA', 6286560),
(250, 14, 'V.J.', 'Beachem', 'Escolta', 3, 22, '2', '200', 'Notre Dame', 81562),
(251, 14, 'Thomas', 'Bryant', 'Pivot', 0, 20, '2', '248', 'Indiana', 81562),
(252, 14, 'Jordan', 'Clarkson', 'Base', 6, 25, '2', '194', 'Missouri', 11562500),
(253, 14, 'Luol', 'Deng', 'Escolta', 9, 32, '2', '220', 'Duke', 17190000),
(254, 14, 'Tyler', 'Ennis', 'Base', 11, 23, '2', '194', 'Syracuse', 1524305),
(255, 14, 'Brandon', 'Ingram', 'Escolta', 14, 20, '2', '190', 'Duke', 5519400),
(256, 14, 'Kyle', 'Kuzma', 'Ala Pivot', 0, 22, '2', '220', 'Utah', 1423560),
(257, 14, 'Brook', 'Lopez', 'Pivot', 11, 29, '2', '268', 'Stanford', 22642650),
(258, 14, 'Larry', 'Nance Jr.', 'Ala Pivot', 7, 24, '2', '230', 'Wyoming', 1471382),
(259, 14, 'Julius Randle', '', 'Ala Pivot', 30, 22, '2', '250', 'Kentucky', 4149242),
(260, 14, 'Thomas', 'Robinson', 'Ala Pivot', 15, 26, '2', '237', 'Kansas', 0),
(261, 14, 'Briante', 'Weber', 'Base', 0, 24, '2', '165', 'Virginia Commonwealth', 1471382),
(262, 14, 'Metta', 'World Peace', 'Escolta', 37, 37, '2', '260', 'St. John\'s', 0),
(263, 14, 'Stephen', 'Zimmerman', 'Pivot', 99, 21, '2', '240', 'UNLV', 1312611),
(264, 14, 'Ivica', 'Zubac', 'Pivot', 40, 20, '2', '240', '', 1312611),
(265, 14, 'Vander', 'Blue', 'Escolta', 12, 25, '2', '200', 'Marquette', 1471382),
(266, 14, 'Corey', 'Brewer', 'Escolta', 3, 31, '2', '186', 'Florida', 7579366),
(267, 14, 'Kentavious', 'Caldwell-Pope', 'Escolta', 0, 24, '2', '205', 'Georgia', 17745894),
(268, 14, 'Alex', 'Caruso', 'Escolta', 4, 23, '2', '186', 'Texas A&M', 0),
(269, 14, 'Josh', 'Hart', 'Escolta', 0, 22, '2', '215', 'Villanova', 1394520),
(270, 6, 'Troy', 'Daniels', 'Escolta', 30, 26, '2', '205', 'Virginia Commonwealth', 3408520),
(271, 6, 'Tyreke', 'Evans', 'Escolta', 32, 27, '2', '220', 'Memphis', 3290000),
(272, 6, 'Ben', 'McLemore', 'Escolta', 23, 24, '2', '195', 'Kansas', 5200000),
(273, 6, 'Rade', 'Zagorac', 'Escolta', 52, 22, '2', '202', '', 95000),
(274, 6, 'Wade', 'Baldwin IV', 'Base', 4, 21, '2', '202', 'Vanderbilt', 1874400),
(275, 6, 'Dillon', 'Brooks', 'Escolta', 0, 21, '2', '225', 'Oregon', 81562),
(276, 6, 'Mario', 'Chalmers', 'Base', 6, 31, '2', '190', 'Kansas', 1471382),
(277, 6, 'Mike', 'Conley', 'Base', 11, 29, '2', '175', 'Ohio State', 28530608),
(278, 6, 'Deyonta', 'Davis', 'Escolta', 23, 20, '2', '240', 'Michigan State', 1312611),
(279, 6, 'James', 'Ennis III', 'Escolta', 8, 27, '2', '210', 'Long Beach State', 3028410),
(280, 6, 'Marc', 'Gasol', 'Pivot', 33, 32, '2', '255', '', 22642350),
(281, 6, 'JaMychal', 'Green', 'Ala Pivot', 0, 27, '2', '227', 'Alabama', 0),
(282, 6, 'Andrew', 'Harrison', 'Base', 5, 22, '2', '213', 'Kentucky', 1312611),
(283, 6, 'Vince', 'Hunter', 'Escolta', 32, 23, '2', '208', 'UTEP', 0),
(284, 6, 'Jarell', 'Martin', 'Ala Pivot', 1, 23, '2', '239', 'LSU', 1471382),
(285, 6, 'Chandler', 'Parsons', 'Escolta', 25, 28, '2', '230', 'Florida', 23112004),
(286, 6, 'Ivan', 'Rabb', 'Ala Pivot', 0, 20, '2', '220', 'California', 0),
(287, 6, 'Wayne', 'Selden', 'Ala', 7, 22, '2', '230', 'Kansas', 1312611),
(288, 6, 'Kobi', 'Simmons', 'Base', 0, 20, '2', '175', 'Arizona', 0),
(289, 6, 'Brandan', 'Wright', 'Ala Pivot', 34, 29, '2', '210', 'North Carolina', 5955760),
(290, 17, 'Wayne', 'Ellington', 'Escolta', 2, 29, '2', '200', 'North Carolina', 6270000),
(291, 17, 'Tyler', 'Johnson', 'Escolta', 8, 25, '2', '186', 'Fresno State', 5881260),
(292, 17, 'Rodney', 'McGruder', 'Escolta', 17, 26, '2', '205', 'Kansas State', 1312611),
(293, 17, 'Josh', 'Richardson', 'Escolta', 0, 24, '2', '200', 'Tennessee', 1471382),
(294, 17, 'Dion', 'Waiters', 'Escolta', 11, 25, '2', '220', 'Syracuse', 11000000),
(295, 17, 'Matt', 'Williams', 'Escolta', 54, 23, '2', '220', 'UCF', 81562),
(296, 17, 'Bam', 'Adebayo', 'Ala Pivot', 0, 20, '2', '245', 'Kentucky', 2490360),
(297, 17, 'Goran', 'Dragic', 'Base', 7, 31, '2', '190', '', 17000450),
(298, 17, 'Larry', 'Drew II', 'Base', 0, 27, '2', '180', 'UCLA', 1312611),
(299, 17, 'AJ', 'Hammons', 'Pivot', 20, 25, '2', '250', 'Purdue', 1312611),
(300, 17, 'Udonis', 'Haslem', 'Ala Pivot', 40, 37, '2', '235', 'Florida', 1471382),
(301, 17, 'James', 'Johnson', 'Ala Pivot', 16, 30, '2', '250', 'Wake Forest', 13734000),
(302, 17, 'Jordan', 'Mickey', 'Ala Pivot', 0, 23, '2', '235', 'LSU', 1471382),
(303, 17, 'Kelly', 'Olynyk', 'Pivot', 41, 26, '2', '245', 'Gonzaga', 10607169),
(304, 17, 'Derrick', 'Walton Jr.', 'Base', 0, 22, '2', '185', 'Michigan', 0),
(305, 17, 'Okaro', 'White', 'Ala Pivot', 15, 25, '2', '204', 'Florida State', 1312611),
(306, 17, 'Hassan', 'Whiteside', 'Pivot', 21, 28, '2', '265', 'Marshall', 23775506),
(307, 17, 'Justise', 'Winslow', 'Escolta', 20, 21, '2', '225', 'Duke', 2705040),
(308, 26, 'Khris', 'Middleton', 'Escolta', 22, 26, '2', '234', 'Texas A&M', 14100000),
(309, 26, 'Jason', 'Terry', 'Escolta', 3, 40, '2', '185', 'Arizona', 1471382),
(310, 26, 'Rashad', 'Vaughn', 'Escolta', 20, 21, '2', '202', 'UNLV', 1889040),
(311, 26, 'James', 'Young', 'Escolta', 1, 22, '2', '215', 'Kentucky', 1471382),
(312, 26, 'Giannis', 'Antetokounmpo', 'Escolta', 34, 22, '2', '222', '', 22471910),
(313, 26, 'Malcolm', 'Brogdon', 'Ala', 13, 24, '2', '215', 'Virginia', 1312611),
(314, 26, 'Sterling', 'Brown', 'Ala', 0, 22, '2', '230', 'SMU', 81562),
(315, 26, 'Matthew', 'Dellavedova', 'Base', 8, 27, '2', '198', 'Saint Mary\'s', 9607500),
(316, 26, 'John', 'Henson', 'Ala Pivot', 31, 26, '2', '229', 'North Carolina', 11422536),
(317, 26, 'Bronson', 'Koenig', 'Base', 24, 22, '2', '193', 'Wisconsin', 0),
(318, 26, 'JeQuan', 'Lewis', 'Base', 10, 22, '2', '181', 'Virginia Commonwealth', 81562),
(319, 26, 'Thon', 'Maker', 'Ala Pivot', 7, 20, '2', '223', '', 2684160),
(320, 26, 'Greg', 'Monroe', 'Pivot', 15, 27, '2', '265', 'Georgetown', 17884176),
(321, 26, 'Jabari', 'Parker', 'Ala Pivot', 12, 22, '2', '250', 'Duke', 6782392),
(322, 26, 'Gary', 'Payton II', 'Base', 0, 24, '2', '190', 'Oregon State', 1312611),
(323, 26, 'Tony', 'Snell', 'Escolta', 21, 25, '2', '217', 'New Mexico', 9887640),
(324, 26, 'Mirza', 'Teletovic', 'Ala Pivot', 35, 32, '2', '245', '', 10500000),
(325, 26, 'D.J.', 'Wilson', 'Escolta', 0, 21, '2', '236', '', 2135040),
(326, 12, 'Cole', 'Aldrich', 'Pivot', 45, 28, '2', '250', 'Kansas', 7300000),
(327, 12, 'Nemanja', 'Bjelica', 'Ala Pivot', 88, 29, '2', '225', '', 3949999),
(328, 12, 'Anthony', 'Brown', 'Escolta', 26, 24, '2', '211', 'Stanford', 0),
(329, 12, 'Gorgui', 'Dieng', 'Ala Pivot', 5, 27, '2', '240', 'Louisville', 14112360),
(330, 12, 'Taj', 'Gibson', 'Ala Pivot', 22, 32, '2', '236', 'USC', 14000000),
(331, 12, 'Tyus', 'Jones', 'Base', 1, 21, '2', '195', 'Duke', 1471382),
(332, 12, 'Shabazz', 'Muhammad', 'Escolta', 15, 24, '2', '223', 'UCLA', 1577230),
(333, 12, 'Justin', 'Patton', 'Pivot', 0, 20, '2', '230', 'Creighton', 2247480),
(334, 12, 'Jeff', 'Teague', 'Base', 44, 29, '2', '186', 'Wake Forest', 19000000),
(335, 12, 'Karl-Anthony', 'Towns', 'Pivot', 32, 21, '2', '244', 'Kentucky', 6216840),
(336, 12, 'Jimmy', 'Butler', 'Escolta', 21, 28, '2', '231', 'Marquette', 19301070),
(337, 12, 'Jamal', 'Crawford', 'Escolta', 11, 37, '2', '195', 'Michigan', 4328000),
(338, 12, 'Marcus', 'Georges-Hunt', 'Escolta', 13, 23, '2', '220', 'Georgia Tech', 1312611),
(339, 12, 'Brandon', 'Rush', 'Escolta', 4, 32, '2', '225', 'Kansas', 0),
(340, 12, 'Andrew', 'Wiggins', 'Escolta', 22, 22, '2', '199', 'Kansas', 7574323),
(341, 11, 'Alexis', 'Ajinca', 'Pivot', 42, 29, '2', '248', '', 4961798),
(342, 11, 'Omer', 'Asik', 'Pivot', 3, 31, '2', '255', '', 10595505),
(343, 11, 'DeMarcus', 'Cousins', 'Pivot', 0, 27, '2', '270', 'Kentucky', 18063850),
(344, 11, 'Dante', 'Cunningham', 'Ala Pivot', 33, 30, '2', '230', 'Villanova', 0),
(345, 11, 'Anthony', 'Davis', 'Ala Pivot', 23, 24, '2', '253', 'Kentucky', 23775506),
(346, 11, 'Cheick', 'Diallo', 'Escolta', 13, 21, '2', '220', 'Kansas', 1312611),
(347, 11, 'Solomon', 'Hill', 'Escolta', 44, 26, '2', '225', 'Arizona', 12236535),
(348, 11, 'Jrue', 'Holiday', 'Base', 11, 27, '2', '205', 'UCLA', 25686667),
(349, 11, 'Frank', 'Jackson', 'Base', 0, 19, '2', '202', 'Duke', 81562),
(350, 11, 'Jalen', 'Jones', 'Escolta', 52, 24, '2', '220', 'Texas A&M', 0),
(351, 11, 'Perry', 'Jones', 'Escolta', 38, 25, '2', '235', 'Baylor', 1471382),
(352, 11, 'Darius', 'Miller', 'Escolta', 2, 27, '2', '225', 'Kentucky', 2100000),
(353, 11, 'Rajon', 'Rondo', 'Base', 9, 31, '2', '186', 'Kentucky', 3300000),
(354, 11, 'Tony', 'Allen', 'Escolta', 9, 35, '2', '213', 'Oklahoma State', 1471382),
(355, 11, 'Ian', 'Clark', 'Escolta', 21, 26, '2', '175', 'Belmont', 1471382),
(356, 11, 'Charles', 'Cooke', 'Escolta', 44, 23, '2', '196', 'Dayton', 0),
(357, 11, 'Jordan', 'Crawford', 'Escolta', 4, 28, '2', '195', 'Xavier', 1709538),
(358, 11, 'E\'Twaun', 'Moore', 'Escolta', 55, 28, '2', '191', 'Purdue', 8445024),
(359, 27, 'Jamel', 'Artis', 'Escolta', 26, 24, '2', '213', 'Pittsburgh', 81562),
(360, 27, 'Ron', 'Baker', 'Escolta', 31, 24, '2', '220', 'Wichita State', 4328000),
(361, 27, 'Damyean', 'Dotson', 'Escolta', 0, 23, '2', '210', 'Houston', 1100000),
(362, 27, 'Tim', 'Hardaway Jr.', 'Escolta', 10, 25, '2', '205', 'Michigan', 16500000),
(363, 27, 'Courtney', 'Lee', 'Escolta', 5, 31, '2', '200', 'Western Kentucky', 11747890),
(364, 27, 'Xavier', 'Rathan-Mayes', 'Escolta', 1, 23, '2', '208', 'Florida State', 81562),
(365, 27, 'Carmelo', 'Anthony', 'Escolta', 7, 33, '2', '240', 'Syracuse', 26243760),
(366, 27, 'Michael', 'Beasley', 'Escolta', 9, 28, '2', '235', 'Kansas State', 1471382),
(367, 27, 'Nigel', 'Hayes', 'Escolta', 20, 22, '2', '254', 'Wisconsin', 81562),
(368, 27, 'Willy', 'Hernangomez', 'Pivot', 14, 23, '2', '240', '', 1435750),
(369, 27, 'Jarrett', 'Jack', 'Base', 1, 33, '2', '200', 'Georgia Tech', 5767),
(370, 27, 'Ognjen', 'Jaramaz', 'Base', 0, 22, '2', '194', '', 0),
(371, 27, 'Luke', 'Kornet', 'Ala Pivot', 99, 22, '2', '250', 'Vanderbilt', 0),
(372, 27, 'Mindaugas', 'Kuzminskas', 'Escolta', 91, 27, '2', '215', '', 3025035),
(373, 27, 'Joakim', 'Noah', 'Pivot', 13, 32, '2', '230', 'Florida', 17765000),
(374, 27, 'Frank', 'Ntilikina', 'Ala', 17, 18, '2', '190', '', 3501120),
(375, 27, 'Kyle', 'O\'Quinn', 'Pivot', 9, 27, '2', '250', 'Norfolk State', 4087500),
(376, 27, 'Kristaps', 'Porzingis', 'Ala Pivot', 6, 22, '2', '240', '', 4503600),
(377, 27, 'Chasson', 'Randle', 'Base', 4, 24, '2', '185', 'Stanford', 1312611),
(378, 27, 'Ramon', 'Sessions', 'Base', 7, 31, '2', '190', 'Nevada', 1471382),
(379, 27, 'Lance', 'Thomas', 'Escolta', 42, 29, '2', '235', 'Duke', 6655325),
(380, 2, 'Steven', 'Adams', 'Pivot', 12, 24, '2', '255', 'Pittsburgh', 22471910),
(381, 2, 'Semaj', 'Christon', 'Base', 6, 24, '2', '190', 'Xavier', 1312611),
(382, 2, 'Norris', 'Cole', 'Base', 30, 28, '2', '175', 'Cleveland State', 0),
(383, 2, 'Nick', 'Collison', 'Ala Pivot', 4, 36, '2', '255', 'Kansas', 1471382),
(384, 2, 'Raymond', 'Felton', 'Base', 2, 33, '2', '205', 'North Carolina', 1471382),
(385, 2, 'Terrance', 'Ferguson', 'Ala', 0, 19, '2', '185', '', 1785000),
(386, 2, 'Paul', 'George', 'Escolta', 13, 27, '2', '220', 'Fresno State', 19508958),
(387, 2, 'Jerami', 'Grant', 'Escolta', 9, 23, '2', '210', 'Syracuse', 1524305),
(388, 2, 'Josh', 'Huestis', 'Escolta', 34, 25, '2', '230', 'Stanford', 1471382),
(389, 2, 'Dakari', 'Johnson', 'Pivot', 44, 21, '2', '255', 'Kentucky', 81562),
(390, 2, 'Enes', 'Kanter', 'Pivot', 11, 25, '2', '245', 'Kentucky', 17884176),
(391, 2, 'Doug', 'McDermott', 'Escolta', 25, 25, '2', '219', 'Creighton', 3294994),
(392, 2, 'Patrick', 'Patterson', 'Ala Pivot', 54, 28, '2', '235', 'Kentucky', 5192000),
(393, 2, 'Kyle', 'Singler', 'Escolta', 15, 29, '2', '228', 'Duke', 4666500),
(394, 2, 'Russell', 'Westbrook', 'Base', 0, 28, '2', '200', 'UCLA', 28530608),
(395, 2, 'Alex', 'Abrines', 'Escolta', 8, 24, '2', '190', '', 5725000),
(396, 2, 'Daniel', 'Hamilton', 'Escolta', 25, 22, '2', '195', 'Connecticut', 0),
(397, 2, 'Andre', 'Roberson', 'Escolta', 21, 25, '2', '210', 'Colorado', 9259260),
(398, 25, 'Arron', 'Afflalo', 'Escolta', 40, 31, '2', '215', 'UCLA', 1471382),
(399, 25, 'Evan', 'Fournier', 'Escolta', 10, 24, '2', '205', '', 17000000),
(400, 25, 'Mario', 'Hezonja', 'Escolta', 8, 22, '2', '218', '', 3909840),
(401, 25, 'Wesley', 'Iwundu', 'Escolta', 0, 22, '2', '205', 'Kansas State', 1050000),
(402, 25, 'Jonathon', 'Simmons', 'Escolta', 17, 28, '2', '195', 'Houston', 6300000),
(403, 25, 'D.J.', 'Augustin', 'Base', 14, 29, '2', '183', 'Texas', 7250000),
(404, 25, 'Khem', 'Birch', 'Pivot', 14, 24, '2', '220', 'UNLV', 81562),
(405, 25, 'Bismack', 'Biyombo', 'Pivot', 11, 25, '2', '255', '', 17000000),
(406, 25, 'Troy', 'Caupain', 'Base', 23, 21, '2', '210', 'Cincinnati', 81562),
(407, 25, 'Aaron', 'Gordon', 'Ala Pivot', 0, 22, '2', '220', 'Arizona', 5504420),
(408, 25, 'Jonathan', 'Isaac', 'Escolta', 0, 19, '2', '210', 'Florida State', 4186320),
(409, 25, 'Kalin', 'Lucas', 'Base', 27, 28, '2', '195', 'Michigan State', 1312611),
(410, 25, 'Shelvin', 'Mack', 'Base', 99, 27, '2', '203', 'Butler', 6000000),
(411, 25, 'Adreian', 'Payne', 'Ala Pivot', 33, 26, '2', '237', 'Michigan State', 0),
(412, 25, 'Elfrid', 'Payton', 'Base', 4, 23, '2', '185', 'Louisiana-Lafayette', 3332340),
(413, 25, 'Terrence', 'Ross', 'Escolta', 31, 26, '2', '206', 'Washington', 10500000),
(414, 25, 'Damjan', 'Rudez', 'Escolta', 3, 31, '2', '228', '', 1471382),
(415, 25, 'Marreese', 'Speights', 'Ala Pivot', 5, 30, '2', '255', 'Florida', 1471382),
(416, 25, 'Nikola', 'Vucevic', 'Pivot', 9, 26, '2', '260', 'USC', 12250000),
(417, 29, 'Justin', 'Anderson', 'Escolta', 23, 23, '2', '228', 'Virginia', 1579440),
(418, 29, 'James', 'Blackmon Jr.', 'Escolta', 19, 22, '2', '200', 'Indiana', 81562),
(419, 29, 'Furkan', 'Korkmaz', 'Escolta', 16, 20, '2', '190', '', 1465920),
(420, 29, 'Timothe', 'Luwawu-Cabarrot', 'Escolta', 20, 22, '2', '200', '', 1386600),
(421, 29, 'JJ', 'Redick', 'Escolta', 4, 33, '2', '190', 'Duke', 23000000),
(422, 29, 'Nik', 'Stauskas', 'Escolta', 11, 23, '2', '205', 'Michigan', 3807147),
(423, 29, 'Jerryd', 'Bayless', 'Base', 0, 29, '2', '200', 'Arizona', 9000000),
(424, 29, 'Robert', 'Covington', 'Escolta', 33, 26, '2', '215', 'Tennessee State', 1577230),
(425, 29, 'Joel', 'Embiid', 'Pivot', 21, 23, '2', '250', 'Kansas', 6100266),
(426, 29, 'Markelle', 'Fultz', 'Base', 0, 19, '2', '195', 'Washington', 7026240),
(427, 29, 'Richaun', 'Holmes', 'Ala Pivot', 22, 23, '2', '245', 'Bowling Green', 1471382),
(428, 29, 'Amir', 'Johnson', 'Ala Pivot', 90, 30, '2', '240', '', 11000000),
(429, 29, 'James Michael', 'McAdoo', 'Escolta', 99, 24, '2', '240', 'North Carolina', 0),
(430, 29, 'T.J.', 'McConnell', 'Base', 1, 25, '2', '200', 'Arizona', 1471382),
(431, 29, 'Jahlil', 'Okafor', 'Pivot', 8, 21, '2', '275', 'Duke', 4995120),
(432, 29, 'Dario', 'Saric', 'Escolta', 9, 23, '2', '223', '', 2422560),
(433, 29, 'Ben', 'Simmons', 'Escolta', 25, 21, '2', '240', 'LSU', 6168840),
(434, 29, 'Tiago', 'Splitter', 'Pivot', 47, 32, '2', '245', '', 0),
(435, 13, 'Dragan', 'Bender', 'Ala Pivot', 35, 19, '2', '225', '', 4468800),
(436, 13, 'Eric', 'Bledsoe', 'Base', 2, 27, '2', '205', 'Kentucky', 14500000),
(437, 13, 'Tyson', 'Chandler', 'Pivot', 4, 34, '2', '240', '', 13000000),
(438, 13, 'Marquese', 'Chriss', 'Escolta', 0, 20, '2', '233', 'Washington', 3073800),
(439, 13, 'Jared', 'Dudley', 'Escolta', 3, 32, '2', '225', 'Boston College', 10000000),
(440, 13, 'Josh', 'Jackson', 'Escolta', 99, 20, '2', '205', 'Kansas', 5090040),
(441, 13, 'Mike', 'James', 'Base', 55, 27, '2', '190', 'Lamar', 0),
(442, 13, 'Peter', 'Jok', 'Ala', 13, 0, '2', '205', '', 0),
(443, 13, 'Derrick', 'Jones Jr.', 'Escolta', 10, 20, '2', '190', 'UNLV', 1312611),
(444, 13, 'Brandon', 'Knight', 'Base', 11, 25, '2', '195', 'Kentucky', 13618750),
(445, 13, 'Alex', 'Len', 'Pivot', 21, 24, '2', '260', 'Maryland', 0),
(446, 13, 'Alec', 'Peters', 'Ala Pivot', 0, 22, '2', '235', 'Valparaiso', 0),
(447, 13, 'Ronnie', 'Price', 'Base', 14, 34, '2', '190', 'Utah Valley', 0),
(448, 13, 'Tyler', 'Ulis', 'Ala', 8, 21, '2', '150', 'Kentucky', 1312611),
(449, 13, 'TJ', 'Warren', 'Escolta', 12, 24, '2', '225', 'North Carolina State', 3152931),
(450, 13, 'Alan', 'Williams', 'Ala Pivot', 15, 24, '2', '260', 'UC Santa Barbara', 6000000),
(451, 13, 'Devin', 'Booker', 'Escolta', 1, 20, '2', '206', 'Kentucky', 2319360),
(452, 13, 'Elijah', 'Millsap', 'Escolta', 22, 30, '2', '215', 'UAB', 1524305),
(453, 13, 'Davon', 'Reed', 'Escolta', 0, 22, '2', '220', 'Miami (FL)', 81562),
(454, 4, 'Pat', 'Connaughton', 'Escolta', 5, 24, '2', '210', 'Notre Dame', 1471382),
(455, 4, 'Archie', 'Goodwin', 'Escolta', 20, 23, '2', '205', 'Kentucky', 1577230),
(456, 4, 'CJ', 'McCollum', 'Escolta', 3, 25, '2', '190', 'Lehigh', 23962573),
(457, 4, 'Evan', 'Turner', 'Escolta', 1, 28, '2', '220', 'Ohio State', 17131148),
(458, 4, 'Al-Farouq', 'Aminu', 'Escolta', 8, 26, '2', '220', 'Wake Forest', 7319035),
(459, 4, 'Isaiah', 'Briscoe', 'Ala', 27, 21, '2', '209', '', 0),
(460, 4, 'Zach', 'Collins', 'Pivot', 0, 19, '2', '230', 'Gonzaga', 3057240),
(461, 4, 'Ed', 'Davis', 'Ala Pivot', 17, 28, '2', '245', 'North Carolina', 6352531),
(462, 4, 'Maurice', 'Harkless', 'Escolta', 4, 24, '2', '220', 'St. John\'s', 10162922),
(463, 4, 'Jake', 'Layman', 'Escolta', 10, 23, '2', '210', 'Maryland', 1312611),
(464, 4, 'Meyers', 'Leonard', 'Ala Pivot', 11, 25, '2', '255', 'Illinois', 9904495),
(465, 4, 'Damian', 'Lillard', 'Base', 0, 27, '2', '195', 'Weber State', 26153057),
(466, 4, 'Shabazz', 'Napier', 'Base', 6, 26, '2', '175', 'Connecticut', 2361360),
(467, 4, 'Jusuf', 'Nurkic', 'Pivot', 27, 23, '2', '280', '', 2947305),
(468, 4, 'Caleb', 'Swanigan', 'Ala Pivot', 0, 20, '2', '250', 'Purdue', 1465920),
(469, 4, 'Noah', 'Vonleh', 'Ala Pivot', 21, 22, '2', '245', 'Indiana', 3505233),
(470, 9, 'Bogdan', 'Bogdanovic', 'Escolta', 94, 25, '2', '205', '', 9412280),
(471, 9, 'Vince', 'Carter', 'Escolta', 15, 40, '2', '220', 'North Carolina', 8000000),
(472, 9, 'Buddy', 'Hield', 'Escolta', 24, 23, '2', '214', 'Oklahoma', 3675480),
(473, 9, 'Malachi', 'Richardson', 'Escolta', 5, 21, '2', '205', 'Syracuse', 1504560),
(474, 9, 'Garrett', 'Temple', 'Escolta', 17, 31, '2', '195', 'LSU', 8000000),
(475, 9, 'Willie', 'Cauley-Stein', 'Pivot', 0, 24, '2', '240', 'Kentucky', 3704160),
(476, 9, 'Jack', 'Cooley', 'Escolta', 45, 26, '2', '274', 'Notre Dame', 0),
(477, 9, 'De\'Aaron', 'Fox', 'Base', 0, 19, '2', '175', 'Kentucky', 4609200),
(478, 9, 'Harry', 'Giles', 'Ala Pivot', 0, 19, '2', '240', 'Duke', 1859400),
(479, 9, 'George', 'Hill', 'Base', 3, 31, '2', '188', 'IUPUI', 20000000),
(480, 9, 'Justin', 'Jackson', 'Escolta', 0, 22, '2', '210', 'North Carolina', 2365560),
(481, 9, 'Matt', 'Jones', 'Ala', 99, 22, '2', '204', '', 81562),
(482, 9, 'Kosta', 'Koufos', 'Pivot', 41, 28, '2', '265', 'Ohio State', 8393000),
(483, 9, 'Skal', 'Labissiere', 'Escolta', 3, 21, '2', '225', 'Kentucky', 1312611),
(484, 9, 'Frank', 'Mason III', 'Base', 0, 23, '2', '190', 'Kansas', 1184385),
(485, 9, 'Georgios', 'Papagiannis', 'Pivot', 13, 20, '2', '240', '', 2301360),
(486, 9, 'Zach', 'Randolph', 'Ala Pivot', 50, 36, '2', '260', 'Michigan State', 12307692),
(487, 9, 'JaKarr', 'Sampson', 'Escolta', 9, 24, '2', '207', 'St. John\'s', 0),
(488, 1, 'Bryn', 'Forbes', 'Escolta', 11, 24, '2', '190', 'Michigan State', 1312611),
(489, 1, 'Manu', 'Ginobili', 'Escolta', 20, 40, '2', '205', '', 2500000),
(490, 1, 'Danny', 'Green', 'Escolta', 14, 30, '2', '215', 'North Carolina', 10000000),
(491, 1, 'Darrun', 'Hilliard', 'Escolta', 0, 24, '2', '220', 'Villanova', 0),
(492, 1, 'Brandon', 'Paul', 'Escolta', 98, 26, '2', '200', 'Illinois', 81562),
(493, 1, 'LaMarcus', 'Aldridge', 'Ala Pivot', 12, 32, '2', '260', 'Texas', 21461010),
(494, 1, 'Kyle', 'Anderson', 'Escolta', 1, 23, '2', '230', 'UCLA', 2151704),
(495, 1, 'Joel', 'Anthony', 'Pivot', 30, 35, '2', '245', 'UNLV', 0),
(496, 1, 'Davis', 'Bertans', 'Escolta', 42, 24, '2', '210', '', 1312611),
(497, 1, 'Jaron', 'Blossomgame', 'Escolta', 15, 24, '2', '220', 'Clemson', 0),
(498, 1, 'Matt', 'Costello', 'Escolta', 40, 24, '2', '240', 'Michigan State', 0),
(499, 1, 'Pau', 'Gasol', 'Pivot', 16, 37, '2', '250', '', 16000000),
(500, 1, 'Rudy', 'Gay', 'Escolta', 97, 31, '2', '230', 'Connecticut', 8406000),
(501, 1, 'Joffrey', 'Lauvergne', 'Pivot', 77, 25, '2', '220', '', 1524305),
(502, 1, 'David', 'Lee', 'Ala Pivot', 10, 34, '2', '245', 'Florida', 0),
(503, 1, 'Kawhi', 'Leonard', 'Escolta', 2, 26, '2', '230', 'San Diego State', 18868626),
(504, 1, 'Patty', 'Mills', 'Base', 8, 29, '2', '185', 'Saint Mary\'s', 10714286),
(505, 1, 'Dejounte', 'Murray', 'Ala', 5, 20, '2', '170', 'Washington', 1312611),
(506, 1, 'Tony', 'Parker', 'Base', 9, 35, '2', '185', '', 15453126),
(507, 1, 'London', 'Perrantes', 'Base', 99, 22, '2', '190', 'Virginia', 81562),
(508, 1, 'Derrick', 'White', 'Base', 4, 23, '2', '200', 'Colorado', 1404600),
(509, 16, 'DeMar', 'DeRozan', 'Escolta', 10, 28, '2', '220', 'USC', 27739975),
(510, 16, 'KJ', 'McDaniels', 'Escolta', 14, 24, '2', '205', 'Clemson', 1471382),
(511, 16, 'Norman', 'Powell', 'Escolta', 24, 24, '2', '215', 'UCLA', 1471382),
(512, 16, 'OG', 'Anunoby', 'Escolta', 0, 20, '2', '235', 'Indiana', 1645200),
(513, 16, 'Lorenzo', 'Brown', 'Base', 17, 27, '2', '189', 'North Carolina State', 0),
(514, 16, 'Bruno', 'Caboclo', 'Escolta', 20, 21, '2', '205', '', 2451225),
(515, 16, 'Serge', 'Ibaka', 'Ala Pivot', 9, 27, '2', '235', '', 20061729),
(516, 16, 'Kyle', 'Lowry', 'Base', 7, 31, '2', '205', 'Villanova', 28703704),
(517, 16, 'Kennedy', 'Meeks', 'Pivot', 1, 22, '2', '277', 'North Carolina', 81562),
(518, 16, 'CJ', 'Miles', 'Escolta', 0, 30, '2', '225', '', 7936509),
(519, 16, 'Malcolm', 'Miller', 'Escolta', 0, 24, '2', '210', 'Holy Cross', 0),
(520, 16, 'Lucas', 'Nogueira', 'Pivot', 92, 25, '2', '220', '', 2947305),
(521, 16, 'Jakob', 'Poeltl', 'Pivot', 42, 21, '2', '230', 'Utah', 2825640),
(522, 16, 'Pascal', 'Siakam', 'Escolta', 43, 23, '2', '230', 'New Mexico State', 1312611),
(523, 16, 'Jonas', 'Valanciunas', 'Pivot', 17, 25, '2', '255', '', 15460675),
(524, 16, 'Fred', 'VanVleet', 'Base', 23, 23, '2', '195', 'Wichita State', 1312611),
(525, 16, 'Kyle', 'Wiltjer', 'Escolta', 38, 24, '2', '240', 'Gonzaga', 1312611),
(526, 16, 'Delon', 'Wright', 'Base', 55, 25, '2', '190', 'Utah', 1645200),
(527, 8, 'Alec', 'Burks', 'Escolta', 10, 26, '2', '214', 'Colorado', 10845506),
(528, 8, 'Rodney', 'Hood', 'Escolta', 5, 24, '2', '206', 'Duke', 2386864),
(529, 8, 'Donovan', 'Mitchell', 'Escolta', 0, 21, '2', '215', 'Louisville', 2621280),
(530, 8, 'Joel', 'Bolomboy', 'Ala Pivot', 21, 23, '2', '235', 'Weber State', 1312611),
(531, 8, 'Tony', 'Bradley', 'Pivot', 0, 19, '2', '240', 'North Carolina', 1414920),
(532, 8, 'Dante', 'Exum', 'Base', 11, 22, '2', '190', '', 4992385),
(533, 8, 'Derrick', 'Favors', 'Ala Pivot', 15, 26, '2', '265', 'Georgia Tech', 12000000),
(534, 8, 'Rudy', 'Gobert', 'Pivot', 27, 25, '2', '245', '', 21924719),
(535, 8, 'Eric', 'Griffin', 'Escolta', 17, 27, '2', '205', 'Campbell', 0),
(536, 8, 'Joe', 'Ingles', 'Escolta', 2, 29, '2', '226', '', 14136364),
(537, 8, 'Jonas', 'Jerebko', 'Ala Pivot', 8, 30, '2', '231', '', 4000000),
(538, 8, 'Joe', 'Johnson', 'Escolta', 6, 36, '2', '240', 'Arkansas', 10505000),
(539, 8, 'Nazareth', 'Mitrou-Long', 'Ala', 19, 24, '2', '209', '', 0),
(540, 8, 'Raul', 'Neto', 'Base', 25, 25, '2', '179', '', 1471382),
(541, 8, 'Royce', 'O\'Neale', 'Escolta', 45, 24, '2', '215', 'Baylor', 81562),
(542, 8, 'Ricky', 'Rubio', 'Base', 9, 26, '2', '190', '', 14275000),
(543, 8, 'Thabo', 'Sefolosha', 'Escolta', 25, 33, '2', '220', '', 5500000),
(544, 8, 'Ekpe', 'Udoh', 'Ala Pivot', 0, 30, '2', '245', 'Baylor', 3200000),
(545, 24, 'Bradley', 'Beal', 'Escolta', 3, 24, '2', '207', 'Florida', 23775506),
(546, 24, 'Trey', 'Burke', 'Base', 33, 24, '2', '191', 'Michigan', 0),
(547, 24, 'Carrick', 'Felix', 'Escolta', 29, 27, '2', '201', 'Arizona State', 1312611),
(548, 24, 'Tim', 'Frazier', 'Base', 0, 26, '2', '170', 'Penn State', 2000000),
(549, 24, 'Marcin', 'Gortat', 'Pivot', 13, 33, '2', '240', '', 12782609),
(550, 24, 'Sheldon', 'Mac', 'Escolta', 9, 24, '2', '200', 'Miami (FL)', 1312611),
(551, 24, 'Ian', 'Mahinmi', 'Pivot', 28, 30, '2', '262', '', 1661641),
(552, 24, 'Chris', 'McCullough', 'Ala Pivot', 1, 22, '2', '215', 'Syracuse', 1471382),
(553, 24, 'Jodie', 'Meeks', 'Escolta', 20, 30, '2', '210', 'Kentucky', 3290000),
(554, 24, 'Markieff', 'Morris', 'Ala Pivot', 5, 28, '2', '245', 'Kansas', 8000000),
(555, 24, 'Daniel', 'Ochefu', 'Ala Pivot', 32, 23, '2', '245', 'Villanova', 1312611),
(556, 24, 'Kelly', 'Oubre Jr.', 'Escolta', 12, 21, '2', '205', 'Kansas', 2093040),
(557, 24, 'Otto', 'Porter Jr.', 'Escolta', 22, 24, '2', '198', 'Georgetown', 24773250),
(558, 24, 'Devin', 'Robinson', 'Escolta', 40, 22, '2', '200', 'Florida', 0),
(559, 24, 'Tomas Satoransky', '', 'Escolta', 31, 25, '2', '210', '', 3000000),
(560, 24, 'Mike', 'Scott', 'Ala Pivot', 32, 29, '2', '237', 'Virginia', 1471382),
(561, 24, 'Donald', 'Sloan', 'Base', 15, 29, '2', '205', 'Texas A&M', 1471382),
(562, 24, 'Jason', 'Smith', 'Ala Pivot', 14, 31, '2', '240', 'Colorado State', 5225000),
(563, 24, 'John', 'Wall', 'Base', 2, 27, '2', '210', 'Kentucky', 18063850),
(567, 1, 'seae', 'asdeada', 'Ala Pivot', 3, 4, '4', '4', 'wrser', 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(250) NOT NULL,
  `permisos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `user`, `password`, `name`, `permisos`) VALUES
(1, 'nico', '$2y$10$//AkYaV0pPxumfIfScXgh.oCVkROmW2UneppKgWIAmXFBM81C2Gi2', 'nico', 0),
(2, 'admin', '$2y$10$Sa8QUMl2rWFYeG1T8yTJk.nwVkL5ZmslqomLg5CajfWaXRti6oxfy', 'admin', 1),
(7, 'as', '$2y$10$At3DclJRZv3cZeeXPiwdvuNXWj25CgYiJu5FhHMUYEVsKIUBQJzXO', 'asa', 0),
(11, 'n', '$2y$10$9IIub1w2m4std3wmjEc9AO9xslwZacZt0FXka0BsWeBSkWLGw/Zy2', 'nicolas a', 1),
(12, 'd', '$2y$10$w7v4kf1wbqQIcJa7k/uKluEv605Yv2ce758OGGOOXKeE2KqTBKpGW', 'wef', 0),
(13, 'tete', '$2y$10$Qs1OsWWGSFPcyAR5RdlCvuYc8zjJ3DvJyMGJUyZpnPkGXDl2lAYga', 'tete', 1),
(14, 'carlos', '$2y$10$IS1BuKIYQ3ntkGOVd.Y2bO7XYjoC/d3LfUzQUi02Ga1dCuYPUCKAa', 'carlos', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_equipo` (`id_equipo`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipo` (`equipo`) USING BTREE;

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tarea` (`id_equipo`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=570;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentario_ibfk_3` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`id`) REFERENCES `equipo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `jugador_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
