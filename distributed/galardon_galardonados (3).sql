-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-02-2019 a las 00:25:06
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `galardon_galardonados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `Usuario` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `acceso` (`Usuario`, `Tipo`) VALUES
('Admin', 'Administrador'),
('Gilberto', 'Maestro Ceremonias'),
('Joathan123', 'Archivador'),
('Joathan123', 'Edecan'),
('Karen24', 'Edecan'),
('Yirz24', 'Archivador'),
('Yirz24', 'Edecan'),
('Yirz241', 'Edecan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `Numero_Empleado` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Paterno` varchar(45) DEFAULT NULL,
  `Materno` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`Numero_Empleado`, `Nombre`, `Paterno`, `Materno`, `Email`, `Usuario`) VALUES
(456239, 'Jonathan', 'Melendez', 'Macedonio', 'jonathan98mm@hotmail.com', 'Joathan123'),
(512347, 'Joaquin', 'Dominguez', 'Moran', 'joaks.jdm@gmail.com', 'Admin'),
(541237, 'Yirz', 'Carrillo', 'Balcazar', 'yirz.carrillo@gmail.com', 'Yirz241'),
(789654, 'Eduardo', 'Carrillo', 'Balcazar', 'yair_cruzazul56@hotmail.com', 'Yirz24'),
(796412, 'Gilberto', 'Oledo', 'Enriquez', 'oledoenrriquez@gmail.com', 'Gilberto'),
(896147, 'Karen', 'Moreno', 'Maldonado', 'karen.2401122001@gmail.com', 'Karen24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galardon`
--

CREATE TABLE `galardon` (
  `ID` int(11) NOT NULL,
  `Galardon` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `galardon`
--

INSERT INTO `galardon` (`ID`, `Galardon`) VALUES
(1, 'DIPLOMA A LA EFICIENCIA Y EFICACIA '),
(2, 'DIPLOMA DE MAESTRO EMÉRITO'),
(3, 'DIPLOMA DE MAESTRO DECANO'),
(4, 'DIPLOMA A LA INVESTIGACIÓN'),
(5, 'DIPLOMA A LA CULTURA'),
(6, 'DIPLOMA AL DEPORTE6'),
(7, 'PRESEA JUAN DE DIOS BÁTIZ'),
(8, 'PRESEA CARLOS VALLEJO MÁRQUEZ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galardonado`
--

CREATE TABLE `galardonado` (
  `RFC` varchar(45) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Paterno` varchar(45) DEFAULT NULL,
  `Materno` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Unidad_Academica` int(11) DEFAULT NULL,
  `Galardon` int(11) DEFAULT NULL,
  `Asiento` varchar(5) DEFAULT NULL,
  `Asistencia` int(11) DEFAULT NULL,
  `Observaciones` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `galardonado`
--

INSERT INTO `galardonado` (`RFC`, `Nombre`, `Paterno`, `Materno`, `Email`, `Unidad_Academica`, `Galardon`, `Asiento`, `Asistencia`, `Observaciones`) VALUES
('AAAC670607', 'Celia', 'Ayala', 'Arellano', 'juaco-1997@hotmail.es', 14, 1, '16E', 0, ''),
('AAAJ410118', 'Jorge Helio', 'Altamirano', 'Aguilar', 'oledoenriquez@gmail.com', 22, 8, '6Y', 0, ''),
('AABS460521', 'Salvador', 'Álvarez', 'Ballesteros', 'oledoenriquez@gmail.com', 30, 8, '7X', 0, ''),
('AAER600805', 'Rosa Martha', 'Alcántara', 'Escamilla', 'kpto_21@hotmail.com', 14, 7, '15O', 0, ''),
('AAFD851118', 'Daniel', 'Álvarez', 'Fuentes', 'juaco-1997@hotmail.es', 28, 1, '23G', 0, ''),
('AAGG570404', 'Gonzalo Isidro', 'Alvarado', 'González', 'kpto_21@hotmail.com', 34, 7, '21Q', 0, ''),
('AAIA810312', 'José Andrés', 'Álvarez', 'Ibarra', 'juaco-1997@hotmail.es', 70, 1, '9J', 0, ''),
('AALE860922', 'Edith Yuliana', 'Amador', 'López', 'juaco-1997@hotmail.es', 38, 1, '10F', 0, ''),
('AAMA580502', 'José Antonio', 'Andrade', 'Morales', 'juaco-1997@hotmail.es', 14, 1, '14E', 0, ''),
('AAMJ470215', 'Juan', 'Álvarez', 'Mendoza', 'kpto_21@hotmail.com', 8, 7, '20N', 0, ''),
('AAMJ550319', 'José Juan', 'Aljama', 'Moral', 'juaco-1997@hotmail.es', 15, 1, '17E', 0, ''),
('AAMS420723', 'Samuel', 'Alcantara', 'Montes', 'oledoenriquez@gmail.com', 30, 8, '8X', 1, ''),
('AAOE530715', 'Enrique', 'Anaya', 'Ornelas', 'kpto_21@hotmail.com', 45, 7, '12R', 0, ''),
('AARE791201', 'María Elena', 'Álvarez', 'Rodríguez', 'juaco-1997@hotmail.es', 79, 1, '4K', 0, ''),
('AASA570727', 'Alfonso Javier', 'Álvarez', 'Sierra', 'kpto_21@hotmail.com', 10, 7, '24N', 0, ''),
('AASR630322', 'Rosaura', 'Amador', 'Sánchez', 'kpto_21@hotmail.com', 85, 7, '19W', 0, ''),
('AAZA700603', 'Ana María', 'Almanza', 'Zendejas', 'juaco-1997@hotmail.es', 33, 1, '6F', 0, ''),
('AEMA610302', 'Agustín Humberto', 'Ángeles', 'Mejía', 'kpto_21@hotmail.com', 31, 7, '21P', 0, ''),
('AERL450609', 'Lucio', 'Alemán', 'Rodríguez', 'oledoenriquez@gmail.com', 20, 8, '16Y', 0, ''),
('AIGE760708', 'Esperanza', 'Aviña', 'García', 'juaco-1997@hotmail.es', 71, 1, '11J', 0, ''),
('AIRR361024', 'Rafael', 'Ávila', 'Reyes', 'oledoenriquez@gmail.com', 36, 8, '17X', 0, ''),
('AISL760127', 'Lizeth', 'Avilés', 'Sánchez', 'juaco-1997@hotmail.es', 12, 1, '8E', 0, ''),
('AIVJ410529', 'Jorge Arturo', 'Aviña', 'Valencia', 'kpto_21@hotmail.com', 39, 7, '12T', 0, ''),
('AOAR441112', 'Roberto Segundo', 'Acosta', 'Abreu', 'oledoenriquez@gmail.com', 29, 8, '22X', 0, ''),
('AOOE651222', 'Emilio', 'Arroyo', 'Orrala', 'kpto_21@hotmail.com', 49, 7, '18V', 0, ''),
('AORG480916', 'María Guadalupe', 'Alonso', 'Ríos', 'kpto_21@hotmail.com', 11, 7, '2O', 0, ''),
('AOTS630428', 'Sergio Cesar', 'Arroyo', 'Trejo', 'kpto_21@hotmail.com', 38, 7, '13Q', 0, ''),
('AUAJ590101', 'julio', 'Aquino', 'Aquino', 'kpto_21@hotmail.com', 15, 7, '17O', 0, ''),
('AUBF470810', 'Fernando', 'Angulo', 'Brown', 'oledoenriquez@gmail.com', 29, 8, '24X', 0, ''),
('AUCJ600223', 'Jesús Raúl', 'Aguilar', 'Caballero', 'kpto_21@hotmail.com', 22, 7, '12S', 0, ''),
('AUFB570717', 'Blanca Rosa', 'Aguilar ', 'Aguilar Figueroa', 'kpto_21@hotmail.com', 22, 7, '19S', 0, ''),
('AULC650915', 'Carlos', 'Aguilar', 'López', 'juaco-1997@hotmail.es', 35, 1, '17F', 0, ''),
('AUMF640309', 'Fernando Raul', 'Aguilar', 'Martínez', 'kpto_21@hotmail.com', 22, 7, '23R', 0, ''),
('AUTV660101', 'Víctor Manuel', 'Aguilar', 'Tlapale', 'juaco-1997@hotmail.es', 91, 1, '3L', 0, ''),
('BAAC641022', 'César', 'Basurto', 'Acevedo', 'juaco-1997@hotmail.es', 80, 1, '5K', 0, ''),
('BABE570407', 'Epifanio Donato', 'Barbabosa', 'Beltrán', 'juaco-1997@hotmail.es', 28, 1, '25G', 0, ''),
('BACM520429', 'Mario Alberto', 'Ballesteros', 'Curiel', 'kpto_21@hotmail.com', 13, 7, '9O', 0, ''),
('BAEE770115', 'Elda', 'Baranda', 'Esquivel', 'juaco-1997@hotmail.es', 55, 1, '4I', 0, ''),
('BAFM531103', 'Mario Alfredo', 'Batta', 'Fonseca', 'kpto_21@hotmail.com', 33, 7, '4Q', 0, ''),
('BAGA541105', 'Ana María', 'Baeza', 'Gómez', 'juaco-1997@hotmail.es', 92, 1, '4L', 0, ''),
('BAHH520810', 'Hilda', 'Banda', 'Hernández', 'juaco-1997@hotmail.es', 20, 1, '3H', 0, ''),
('BAJO591030', 'Jorge ', 'Barrón', '', 'kpto_21@hotmail.com', 3, 7, '24M', 0, ''),
('BALH681010', 'Homar Jorge', 'Bautista', 'Lugo', 'kpto_21@hotmail.com', 37, 7, '9Q', 0, ''),
('BAMV840328', 'Víctor Alejandro', 'Banderas', 'Mérida', 'juaco-1997@hotmail.es', 32, 1, '2F', 0, ''),
('BANL531018', 'Laura Leticia', 'Barrera', 'Necha', 'kpto_21@hotmail.com', 48, 7, '5V', 0, ''),
('BASR381220', 'José Roberto de Jesús', 'Bastarrachea', 'Sabido', 'kpto_21@hotmail.com', 40, 3, '24L', 0, ''),
('BAVD370403', 'Daniel', 'Barajas', 'y Valencia', 'oledoenriquez@gmail.com', 30, 8, '11X', 0, ''),
('BEEJ580206', 'Jesús Gonzalo', 'Benítez', 'Escobar', 'kpto_21@hotmail.com', 34, 7, '22Q', 0, ''),
('BEFG410730', 'José Guadalupe', 'Becerra', 'Ferreyra', 'kpto_21@hotmail.com', 40, 7, '2V', 0, ''),
('BEHJ600304', 'Judith', 'Benitez', 'Hernández', 'kpto_21@hotmail.com', 39, 7, '15T', 0, ''),
('BEHM730706', 'Ma. Guadalupe del Carmen', 'Belmonte', 'Hernández', 'juaco-1997@hotmail.es', 17, 1, '21E', 0, ''),
('BEJA641207', 'María Alma', 'Benitez', 'Juárez', 'juaco-1997@hotmail.es', 27, 1, '14H', 0, ''),
('BELA640913', 'Amada Gabriela', 'Brenes', 'López', 'kpto_21@hotmail.com', 33, 7, '3Q', 0, ''),
('BEMB431109', 'Blanca Margarita', 'Berdeja', 'Martínez', 'oledoenriquez@gmail.com', 22, 8, '7Y', 0, ''),
('BEMG581122', 'Gerardo', 'Bernal', 'Méndez', 'juaco-1997@hotmail.es', 11, 1, '7E', 0, ''),
('BERJ620714', 'Judith', 'Betancourt', 'Ruiz', 'kpto_21@hotmail.com', 20, 7, '21O', 0, ''),
('BESH660721', 'Maria Haydee', 'Bernal', 'Sanchez', 'kpto_21@hotmail.com', 30, 7, '7P', 0, ''),
('BIMR670106', 'Rocío', 'Bizarro', 'Moreno', 'kpto_21@hotmail.com', 10, 7, '1O', 0, ''),
('BOMJ600427', 'Jesús Roberto', 'Bolivar', 'Meza', 'juaco-1997@hotmail.es', 4, 1, '11D', 0, ''),
('BUAI920831', 'Ismael Bruno', 'Arellano', '', 'juaco-1997@hotmail.es', 8, 1, '23D', 0, ''),
('BUGT430510', 'Maria Teresa', 'Bustamante', 'García', 'kpto_21@hotmail.com', 24, 7, '3U', 0, ''),
('BUMM681026', 'Miguel Alejandro', ' Buendía', 'Meneses', 'kpto_21@hotmail.com', 39, 7, '25S', 0, ''),
('CAAA660515', 'Aida Areli', 'Castro', 'Aguirre', 'kpto_21@hotmail.com', 6, 7, '12N', 0, ''),
('CAAE620708', 'Maria Elena', 'Campos', 'Aldrete', 'kpto_21@hotmail.com', 22, 7, '13S', 0, ''),
('CAAG560830', 'Guadencio', 'Camacho', 'Alvarado', 'juaco-1997@hotmail.es', 13, 1, '11E', 0, ''),
('CAAH551119', 'Higinio', 'Carballar', 'Aranda', 'kpto_21@hotmail.com', 84, 7, '14W', 0, ''),
('CAAN800412', 'Norma Alicia', 'Caltenco', 'Arceo', 'juaco-1997@hotmail.es', 25, 1, '10H', 0, ''),
('CAAP690310', 'Pablo', 'Cabrera', 'Alvarado', 'juaco-1997@hotmail.es', 47, 1, '7I', 0, ''),
('CABI750704', 'Isidro', 'Castillo', 'Bautista', 'juaco-1997@hotmail.es', 35, 1, '18F', 0, ''),
('CABM811007', 'Mariana Elizabeth', 'Chávez', 'Benítez', 'juaco-1997@hotmail.es', 3, 1, '7D', 0, ''),
('CACG660118', 'Gema', 'Cancino', 'Calderón', 'kpto_21@hotmail.com', 30, 7, '24O', 0, ''),
('CACJ361020', 'Juan', 'Castro', 'Carrillo', 'kpto_21@hotmail.com', 39, 7, '6T', 0, ''),
('CACJ600212', 'María de Jesús', 'Calva', 'Calva', 'kpto_21@hotmail.com', 85, 7, '20W', 0, ''),
('CACJ620311', 'María Josefina', 'Campos', 'Cano', 'juaco-1997@hotmail.es', 5, 1, '13D', 0, ''),
('CACN810816', 'Nayeli', 'Caballero', 'Cerpa', 'juaco-1997@hotmail.es', 34, 1, '20F', 0, ''),
('CADB581204', 'Blanca Leticia', 'Callejas', ' Dávila', 'kpto_21@hotmail.com', 39, 7, '7T', 0, ''),
('CADR791106', 'Rafael', 'Castañeda', 'Díaz', 'kpto_21@hotmail.com', 43, 3, '23L', 0, ''),
('CAFA661128', 'Angelina', 'Cadena', 'Flores', 'kpto_21@hotmail.com', 13, 7, '10O', 0, ''),
('CAFJ811202', 'Janet', 'Cadena', 'Flores', 'juaco-1997@hotmail.es', 15, 1, '18E', 0, ''),
('CAGD601102', 'Diana Rocío', 'Castañeda', 'García', 'kpto_21@hotmail.com', 39, 7, '24S', 0, ''),
('CAGE550405', 'Emilio', 'Calixto', 'González', 'kpto_21@hotmail.com', 1, 7, '10M', 0, ''),
('CAGG640505', 'Guillermo', 'Carrasco', 'García', 'kpto_21@hotmail.com', 9, 7, '23N', 0, ''),
('CAGL570825', 'José Luis', 'Carvajal', 'Gómez', 'kpto_21@hotmail.com', 35, 7, '20Q', 0, ''),
('CAGM440225', 'Modesto', 'Cárdenas', 'García ', 'oledoenriquez@gmail.com', 29, 8, '23X', 0, ''),
('CAGN631226', 'Noe Marina', 'Chagolla', 'Guerrero', 'kpto_21@hotmail.com', 22, 7, '2S', 0, ''),
('CAGX671023', 'José Alberto', 'Chagolla', 'Guerrero', 'kpto_21@hotmail.com', 22, 7, '1S', 0, ''),
('CAJC500324', 'José Claudio', 'Chávez', 'Jiménez', 'juaco-1997@hotmail.es', 46, 1, '5G', 0, ''),
('CAJC700425', 'Celia', 'Carrasco', 'Jiménez ', 'kpto_21@hotmail.com', 14, 7, '14O', 0, ''),
('CAJG620516', 'María Guadalupe', 'Castelán', 'Jiménez', 'kpto_21@hotmail.com', 13, 7, '11O', 0, ''),
('CAJT580925', 'Teresita', 'Cardona', 'Juárez', 'juaco-1997@hotmail.es', 51, 1, '22I', 0, ''),
('CALA700920', 'Adolfo', 'Cabrera', 'López', 'juaco-1997@hotmail.es', 22, 1, '14G', 0, ''),
('CAMA630623', 'José Armando', 'Campos', 'Martínez', 'kpto_21@hotmail.com', 24, 7, '2U', 0, ''),
('CANC800416', 'César Servando', 'Casas', 'Núñez', 'juaco-1997@hotmail.es', 59, 1, '19H', 0, ''),
('CANO650124', 'Oscar', 'Camacho', 'Nieto', 'kpto_21@hotmail.com', 49, 7, '21V', 0, ''),
('CAOL521221', 'Luis ', 'Castillo', 'Olivares', 'kpto_21@hotmail.com', 31, 7, '22P', 0, ''),
('CAOM641215', 'Miroslava', 'Castelán', 'Olguín', 'kpto_21@hotmail.com', 30, 7, '1P', 0, ''),
('CAOV650225', 'Virginia', 'Chávez', 'Orozco', 'kpto_21@hotmail.com', 31, 7, '19P', 0, ''),
('CAPM560515', 'Manuela', 'Calva', 'Pérez', 'kpto_21@hotmail.com', 45, 7, '13R', 0, ''),
('CAQD650908', 'David Filiberto', 'Calderón', 'Quintana', 'kpto_21@hotmail.com', 22, 7, '24R', 0, ''),
('CARA550419', 'Antonio', 'Castillo', 'Rivas', 'juaco-1997@hotmail.es', 84, 1, '11K', 0, ''),
('CARE870706', 'Edith Berenitze', 'Calvillo', 'Ramirez', 'juaco-1997@hotmail.es', 58, 1, '25I', 0, ''),
('CATJ800217', 'Jorge Ivan', 'Carrillo', 'Tellez', 'juaco-1997@hotmail.es', 55, 1, '3I', 0, ''),
('CAVM560102', 'Macario', 'Camacho', 'Valdez', 'kpto_21@hotmail.com', 59, 7, '6V', 0, ''),
('CAVS680901', 'Silvia Lucila', 'Chávez', 'Valdez', 'kpto_21@hotmail.com', 77, 7, '2W', 0, ''),
('CEBL641209', 'Luis', 'Ceballos', 'Barragán', 'juaco-1997@hotmail.es', 86, 1, '15K', 0, ''),
('CECD550401', 'María Dolores', 'Cervantes', 'Cadena', 'kpto_21@hotmail.com', 12, 7, '6O', 0, ''),
('CEEV640206', 'Victor Manuel', 'Cedillo', 'Estrada', 'kpto_21@hotmail.com', 31, 7, '18P', 0, ''),
('CEGG770409', 'Gloria', 'Araceli', 'Cedillo González', 'juaco-1997@hotmail.es', 85, 1, '13K', 0, ''),
('CEMJ490521', 'Jaime', 'Celis', 'Méndez', 'oledoenriquez@gmail.com', 41, 8, '2Y', 0, ''),
('CEPP650317', 'Patricia', 'Cervantes', 'Pérez', 'juaco-1997@hotmail.es', 33, 1, '5F', 0, ''),
('CEQI610121', 'María Ines', 'Centeno', 'Quintanar', 'kpto_21@hotmail.com', 4, 7, '5N', 0, ''),
('CICM700907', 'María Mireya', 'Cristino', 'Castillo', 'juaco-1997@hotmail.es', 7, 1, '20D', 0, ''),
('CIDP680624', 'Patricia Ramona', 'Cisneros', 'Díaz', 'kpto_21@hotmail.com', 13, 7, '7O', 0, ''),
('COAM650109', 'Miguel Ángel', 'Correa', 'Ascencio', 'kpto_21@hotmail.com', 22, 7, '21R', 0, ''),
('COGX700718', 'María Eugenia', 'Contreras', 'Gallardo', 'juaco-1997@hotmail.es', 85, 1, '14K', 0, ''),
('COJD560226', 'Denise', 'Córdova', 'Just', 'kpto_21@hotmail.com', 101, 7, '24V', 0, ''),
('COMS580919', 'José Salvador', 'Contreras', 'Mascota', 'kpto_21@hotmail.com', 22, 7, '25R', 0, ''),
('COPJ590902', 'Julian', 'Cordero', 'Pérez', 'kpto_21@hotmail.com', 20, 7, '22O', 0, ''),
('COSL680114', 'María de Lourdes', 'Correa', 'Saldaña', 'juaco-1997@hotmail.es', 52, 1, '14I', 0, ''),
('COVC500403', 'María Cristina', 'Colín', 'Villanueva', 'juaco-1997@hotmail.es', 76, 1, '21J', 0, ''),
('CUAE610405', 'Emilio Alberto', 'Cruz', 'Aguirre', 'kpto_21@hotmail.com', 62, 7, '8V', 0, ''),
('CUBB650629', 'Blanca Estela', 'Cuevas', 'Bribiesca', 'kpto_21@hotmail.com', 1, 7, '7M', 0, ''),
('CUDJ700330', 'José Juan', 'Cruz', 'Durán ', 'juaco-1997@hotmail.es', 25, 1, '12H', 0, ''),
('CUPA641214', 'Alejandro', 'Cruz', 'Paniagua', 'kpto_21@hotmail.com', 39, 7, '23S', 0, ''),
('CUPS631212', 'Sonia Elizabeth', 'Cruz', 'Pérez', 'juaco-1997@hotmail.es', 19, 1, '22E', 0, ''),
('CURE671008', 'María Eugenia', 'Cruz', 'Reyes', 'kpto_21@hotmail.com', 32, 7, '13P', 0, ''),
('CUVA600612', 'Aida', 'Cruz', 'Vega', 'juaco-1997@hotmail.es', 54, 1, '16I', 0, ''),
('DEAV540628', 'Víctor Manuel', 'Delgado', 'Arellano', 'juaco-1997@hotmail.es', 86, 1, '17K', 0, ''),
('DOAS541112', 'Samuel', 'Dorantes', 'Álvarez', 'kpto_21@hotmail.com', 41, 7, '18R', 0, ''),
('DUMJ520111', 'Juana Leydy Yadira', 'Duarte', 'Mena', 'juaco-1997@hotmail.es', 35, 1, '19F', 0, ''),
('DUVM620927', 'Mónica', 'Durán', 'Velasco', 'kpto_21@hotmail.com', 22, 7, '3S', 0, ''),
('EAGC770416', 'Carolina', 'Estrada', 'García', 'juaco-1997@hotmail.es', 2, 1, '6D', 0, ''),
('EAMM710909', 'Martha', 'Escalante', 'Morales', 'juaco-1997@hotmail.es', 97, 1, '13L', 0, ''),
('EARG821010', 'Georgina Irasema', 'Estrada', 'Rivera', 'juaco-1997@hotmail.es', 68, 1, '5J', 0, ''),
('EEBA650625', 'Alma Araceli', 'Erceg', 'Bravo', 'kpto_21@hotmail.com', 20, 7, '20O', 0, ''),
('EEGG660911', 'Graciela', 'Erreguín', 'González', 'kpto_21@hotmail.com', 14, 7, '12O', 0, ''),
('EEUS570818', 'Sergio Federico', 'Eckstein', 'Ugarte', 'kpto_21@hotmail.com', 85, 7, '17W', 0, ''),
('EIGL470116', 'Lucas', 'Encinas', 'García ', 'kpto_21@hotmail.com', 6, 7, '9N', 0, ''),
('EILJ440328', 'Juana Mercedes', 'Espinosa', 'Lara', 'oledoenriquez@gmail.com', 22, 8, '3Y', 0, ''),
('EIVA450412', 'Albertina', 'Espinoza', 'Venegas', 'oledoenriquez@gmail.com', 25, 8, '14Y', 0, ''),
('EIVI600524', 'José Isaías', 'Enríquez', 'Vicente', 'juaco-1997@hotmail.es', 29, 1, '24F', 0, ''),
('EUMA630826', 'Adolfo', 'Esquivel', 'Martínez', 'kpto_21@hotmail.com', 56, 7, '15V', 0, ''),
('FAGA530612', 'Armando', 'Frausto', 'Guerrero', 'kpto_21@hotmail.com', 39, 7, '16T', 0, ''),
('FAGJ781015', 'Jesús', 'Franco', 'Gómez', 'juaco-1997@hotmail.es', 42, 1, '11G', 0, ''),
('FARM481129', 'Miguel', 'Franco', 'Romano', 'kpto_21@hotmail.com', 77, 7, '3W', 0, ''),
('FATE610606', 'Enrique', 'Frasco', 'Tapia', 'kpto_21@hotmail.com', 62, 7, '9V', 0, ''),
('FERA561101', 'Ángela', 'Félix', 'Reyes', 'juaco-1997@hotmail.es', 74, 1, '16J', 0, ''),
('FETD600118', 'Dionisio Salomon', 'Fernández', 'Tapia', 'kpto_21@hotmail.com', 45, 7, '16R', 0, ''),
('FOBF680603', 'María Francisca', 'Flores', 'Bárcenas ', 'juaco-1997@hotmail.es', 27, 1, '13H', 0, ''),
('FOGR691218', 'Rubén', 'Fonseca', 'Gutiérrez', 'juaco-1997@hotmail.es', 90, 1, '2L', 0, ''),
('FOLD600328', 'Dora María', 'Fonseca', 'López', 'kpto_21@hotmail.com', 52, 7, '13V', 0, ''),
('FOMS580218', 'Sergio', 'Flores', 'Meza', 'kpto_21@hotmail.com', 34, 7, '2R', 0, ''),
('GAAA630612', 'Antonio', 'García', 'Aguilar', 'kpto_21@hotmail.com', 31, 7, '20P', 0, ''),
('GAAJ580420', 'Jorge', 'García', 'Ángeles', 'kpto_21@hotmail.com', 30, 7, '6P', 0, ''),
('GAAN560517', 'Nadia', 'Garín', 'Aguilar', 'kpto_21@hotmail.com', 39, 7, '17T', 0, ''),
('GAAP490622', 'Paulino', 'García', ' Altamirano', 'kpto_21@hotmail.com', 22, 7, '4S', 0, ''),
('GAAS600109', 'Silva', 'Gallegos', ' Alcantara', 'kpto_21@hotmail.com', 40, 7, '3V', 0, ''),
('GABJ630131', 'Juan Manuel', 'García', 'Barrios', 'kpto_21@hotmail.com', 3, 7, '20M', 0, ''),
('GABR450924', 'Rubén Joel', 'García', 'Barajas', 'oledoenriquez@gmail.com', 34, 8, '20X', 0, ''),
('GACG621104', 'Gonzalo', 'Galvez', 'Coyt', 'kpto_21@hotmail.com', 41, 7, '19R', 0, ''),
('GACH581217', 'Héctor Hugo', 'García', 'Castillo', 'kpto_21@hotmail.com', 79, 7, '5W', 0, ''),
('GACI590603', 'José Isaac', 'García', 'Carmona', 'juaco-1997@hotmail.es', 89, 1, '24K', 0, ''),
('GACI730704', 'Isabel Angélica', 'Gayosso', 'de la Cruz', 'juaco-1997@hotmail.es', 41, 1, '9G', 0, ''),
('GACJ570530', 'Jorge', 'Gallegos', 'Contreras', 'kpto_21@hotmail.com', 38, 7, '18Q', 0, ''),
('GACJ590822', 'Javier', 'Galván', 'Chávez', 'juaco-1997@hotmail.es', 40, 1, '18H', 0, ''),
('GACM710712', 'María Martha', 'García', 'Coronado', 'juaco-1997@hotmail.es', 56, 1, '18I', 0, ''),
('GADF790414', 'Fabiola', 'García', 'Durán', 'juaco-1997@hotmail.es', 89, 1, '1L', 0, ''),
('GAGA651215', 'Arturo', 'García', 'González', 'kpto_21@hotmail.com', 1, 7, '11M', 0, ''),
('GAGE930619', 'Ernesto Saúl', 'Galván', 'González', 'juaco-1997@hotmail.es', 96, 1, '11L', 0, ''),
('GAGL620822', 'María de Lourdes', 'Galicia', 'Galicia', 'juaco-1997@hotmail.es', 52, 1, '13I', 0, ''),
('GAHE570925', 'Engracia Mireya', 'García', 'Hernández', 'kpto_21@hotmail.com', 6, 7, '10N', 0, ''),
('GAHF630822', 'Filiberto', 'García', 'Hernández', 'kpto_21@hotmail.com', 8, 7, '16N', 0, ''),
('GAHG471123', 'Gabriel', 'García', 'Hernández', 'oledoenriquez@gmail.com', 4, 8, '6X', 0, ''),
('GAJJ611026', 'Jaime Ernesto', 'García', 'Jiménez', 'juaco-1997@hotmail.es', 40, 1, '17H', 0, ''),
('GALL661221', 'María de Lourdes', 'García', 'López', 'juaco-1997@hotmail.es', 61, 1, '22H', 0, ''),
('GAMC530827', 'Cesárea Rosa María', 'Garduño', 'Mendieta', 'kpto_21@hotmail.com', 33, 7, '5Q', 0, ''),
('GAPC680404', 'Claudia', 'Garces', 'Peñaloza', 'oledoenriquez@gmail.com', 1, 7, '6M', 0, ''),
('GARJ640319', 'Juan José', 'García', 'Rivera', 'juaco-1997@hotmail.es', 6, 1, '16D', 0, ''),
('GARV801005', 'Viridiana Karina', 'García', 'Romero', 'juaco-1997@hotmail.es', 1, 1, '2D', 0, ''),
('GASA810421', 'Annel', 'Galicia', 'San Miguel', 'juaco-1997@hotmail.es', 22, 1, '5H', 0, ''),
('GAVS530520', 'Silvia', 'Galicia', 'Villanueva', 'kpto_21@hotmail.com', 25, 7, '17U', 0, ''),
('GAVT670924', 'María Teresa', 'García', 'Vázquez', 'juaco-1997@hotmail.es', 89, 1, '25K', 0, ''),
('GAXG691204', 'Gustavo', 'Galicia', 'Xolalpa', 'juaco-1997@hotmail.es', 22, 1, '4H', 0, ''),
('GIGJ590910', 'Julia', 'Grijalva', 'García', 'kpto_21@hotmail.com', 22, 7, '22R', 0, ''),
('GOAM910530', 'Mario Iván', 'González', 'Abad', 'juaco-1997@hotmail.es', 24, 1, '8H', 0, ''),
('GOCA520427', 'Ma. Anastasia Mónica', 'Gordiano', 'Cervantes', 'kpto_21@hotmail.com', 4, 7, '4N', 0, ''),
('GOCJ540509', 'Jorge', 'Gómez', 'Contreras', 'kpto_21@hotmail.com', 85, 7, '23W', 0, ''),
('GOCL610302', 'Luis Alfonso', 'Godinez', 'Contreras', 'kpto_21@hotmail.com', 29, 7, '11R', 0, ''),
('GODA750831', 'Alberto Jorge', 'González', 'Díaz', 'juaco-1997@hotmail.es', 76, 1, '22J', 0, ''),
('GOEE930613', 'Erick', 'Gordillo', 'Escobar ', 'juaco-1997@hotmail.es', 75, 1, '19J', 0, ''),
('GOFA671026', 'Adolfo', 'Gómez', 'Flores', 'juaco-1997@hotmail.es', 38, 1, '8F', 0, ''),
('GOHG580525', 'Gregorio', 'Gómez', 'Hernández', 'kpto_21@hotmail.com', 39, 7, '14T', 0, ''),
('GOHL460918', 'Luis Arturo', 'González', 'Hernández', 'kpto_21@hotmail.com', 56, 3, '25L', 0, ''),
('GOLU570429', 'José Luis', 'González', '', 'kpto_21@hotmail.com', 31, 7, '1Q', 0, ''),
('GOMJ590712', 'Juana', 'González', 'Monroy', 'kpto_21@hotmail.com', 40, 7, '24U', 0, ''),
('GOML560209', 'María Luisa', 'González', 'Moreno', 'kpto_21@hotmail.com', 49, 7, '17V', 0, ''),
('GOMV580325', 'Vicente Hugo', 'González', 'Majul', 'kpto_21@hotmail.com', 5, 7, '8N', 0, ''),
('GOPF630603', 'Felipe', 'González', 'Pérez', 'juaco-1997@hotmail.es', 23, 1, '20G', 0, ''),
('GOPP651210', 'María Patricia', 'Godínez', 'Pavón', 'juaco-1997@hotmail.es', 29, 1, '23F', 0, ''),
('GORA611230', 'Abel', 'Gonzalez', 'Reyes', 'kpto_21@hotmail.com', 20, 7, '23O', 0, ''),
('GORJ580113', 'Juan Carlos', 'González', 'Robles', 'kpto_21@hotmail.com', 49, 7, '22V', 0, ''),
('GOVA480616', 'Aurelio', 'Gómez', 'Velázquez', 'oledoenriquez@gmail.com', 32, 8, '16X', 0, ''),
('GOVN621207', 'Norma Angélica', 'Godínez', 'Vallejo', 'juaco-1997@hotmail.es', 81, 1, '6K', 0, ''),
('GOZA600901', 'Artemio', 'González', 'Zamudio', 'juaco-1997@hotmail.es', 53, 1, '10I', 0, ''),
('GUAJ850112', 'Jazmín', 'Guerra', 'Alcántara', 'juaco-1997@hotmail.es', 67, 1, '1J', 0, ''),
('GUAV770529', 'Vianey', 'Guerra', 'Alcantara', 'juaco-1997@hotmail.es', 95, 1, '10L', 0, ''),
('GUCE590602', 'Maria Eugenia', 'Gutiérrez', 'Castillo', 'kpto_21@hotmail.com', 64, 7, '12V', 0, ''),
('GUCY710615', 'Yolanda', 'Gutiérrez', 'Cárdenas', 'juaco-1997@hotmail.es', 25, 1, '11H', 0, ''),
('GUDE820907', 'Edgar René', 'Guzmán', 'Delgado', 'juaco-1997@hotmail.es', 12, 1, '10E', 0, ''),
('GUGC640225', 'Cesareo', 'Guillén', 'García', 'kpto_21@hotmail.com', 25, 7, '9U', 0, ''),
('GUGM570426', 'Marcelino', 'Guzmán', 'Gallardo', 'juaco-1997@hotmail.es', 28, 1, '24G', 0, ''),
('GUHE740114', 'Erika', 'Gutiérrez', 'Hernández', 'juaco-1997@hotmail.es', 5, 1, '15D', 0, ''),
('GUHL810712', 'Luis Paul', 'Gutiérrez', 'Hernández', 'juaco-1997@hotmail.es', 67, 1, '2J', 0, ''),
('GUIF610129', 'Fernando Martín', 'Guerra', 'Infante', 'kpto_21@hotmail.com', 22, 7, '14S', 0, ''),
('GULR860123', 'Roberto Antonio', 'Guzmán', 'León', 'juaco-1997@hotmail.es', 62, 1, '2I', 0, ''),
('GUMG560331', 'Gloria', 'Gutierrez', 'Menchaca', 'kpto_21@hotmail.com', 39, 7, '13T', 0, ''),
('GUPE640521', 'Elías', 'Gutiérrez', 'Páramo', 'juaco-1997@hotmail.es', 52, 1, '15I', 0, ''),
('GUPS640707', 'Silvino', 'Guerrero', 'Peña', 'juaco-1997@hotmail.es', 88, 1, '23K', 0, ''),
('GURJ720122', 'Jorge Alberto', 'Gutiérrez', 'Ramírez', 'juaco-1997@hotmail.es', 37, 1, '14F', 0, ''),
('GUSJ751114', 'Juan Manuel', 'Guzmán', 'Salas', 'juaco-1997@hotmail.es', 49, 1, '23I', 0, ''),
('GUSV811105', 'María Vianey', 'Gudiño', 'Sánchez', 'juaco-1997@hotmail.es', 1, 1, '3D', 0, ''),
('GUTA410412', 'Armando', 'Guerra', 'Trejo', 'oledoenriquez@gmail.com', 22, 8, '8Y', 0, ''),
('GUTF561129', 'Filomeno', 'Gutiérrez', 'Toribio', 'kpto_21@hotmail.com', 80, 7, '13W', 0, ''),
('HALM580923', 'José Manuel', 'Hallen', 'López', 'kpto_21@hotmail.com', 34, 7, '6R', 0, ''),
('HEAJ480905', 'Jesús', 'Herrnández', 'Almaguer', 'kpto_21@hotmail.com', 39, 7, '22S', 0, ''),
('HEBP580102', 'Patricia', 'Hernández', 'Balderas', 'juaco-1997@hotmail.es', 74, 1, '17J', 0, ''),
('HEGB680314', 'Benito', 'Hernández', 'García', 'kpto_21@hotmail.com', 23, 7, '19T', 0, ''),
('HEGJ590310', 'Juana', 'Hernández', 'Gutiérrez', 'kpto_21@hotmail.com', 10, 7, '25N', 0, ''),
('HEGL560415', 'Luis Héctor', 'Hernández', 'Gómez', 'kpto_21@hotmail.com', 30, 7, '11P', 0, ''),
('HEGP610330', 'Pedro Roberto', 'Hernández', 'García', 'kpto_21@hotmail.com', 2, 7, '14M', 0, ''),
('HEGR450905', 'Rosa Isabel', 'Hernández', 'Gómez', 'oledoenriquez@gmail.com', 32, 8, '14X', 0, ''),
('HEGU731014', 'Ubaldo', 'Hernández', 'Gutiérrez', 'juaco-1997@hotmail.es', 59, 1, '21H', 0, ''),
('HEHS611127', 'Santa Adriana', 'Hernandez', 'Hernandez', 'kpto_21@hotmail.com', 24, 7, '6U', 0, ''),
('HEIM680226', 'Martha', 'Hernández', 'Iturriaga ', 'juaco-1997@hotmail.es', 27, 1, '15H', 0, ''),
('HELI891227', 'Itzel Marisol', 'Hernández', 'Luis', 'juaco-1997@hotmail.es', 26, 1, '1G', 0, ''),
('HEMA760104', 'Ana Laura', 'Hernández', 'Medina', 'juaco-1997@hotmail.es', 45, 1, '3G', 0, ''),
('HEMP610409', 'Patricia', 'Hernández', 'Monsalvo', 'juaco-1997@hotmail.es', 1, 1, '1D', 0, ''),
('HERA631206', 'Alicia', 'Hernández', 'Ramírez', 'juaco-1997@hotmail.es', 99, 1, '18L', 0, ''),
('HERF391001', 'Francisco', 'Hernández', 'Rangel', 'oledoenriquez@gmail.com', 30, 8, '9X', 1, ''),
('HESR530831', 'Ramón', 'Herrera', 'Segovia', 'juaco-1997@hotmail.es', 20, 1, '1H', 0, ''),
('HEVO590818', 'Othón Enrique', 'Herrera', 'Villegas', 'kpto_21@hotmail.com', 22, 7, '5S', 0, ''),
('HUAE800531', 'Edgar', 'Hurtado', 'Ávila', 'juaco-1997@hotmail.es', 23, 1, '21G', 0, ''),
('HUAF470205', 'Felipe Placido', 'Hueramo', 'Acosta', 'kpto_21@hotmail.com', 24, 7, '7U', 0, ''),
('HUGF680607', 'José Francisco', 'Huerta', 'Gutiérrez', 'kpto_21@hotmail.com', 8, 7, '17N', 0, ''),
('IACA610703', 'Ana María', 'Islas', 'Cortes', 'kpto_21@hotmail.com', 35, 7, '19Q', 0, ''),
('IANE820517', 'Nereyda', 'Guadalupe', 'Ibarra', 'juaco-1997@hotmail.es', 59, 1, '20H', 0, ''),
('IAOV730304', 'Víctor Manuel', 'Islas', 'Olivos', 'juaco-1997@hotmail.es', 86, 1, '16K', 0, ''),
('IAPE721117', 'Enedelia', 'Ibarra', 'Pineda', 'juaco-1997@hotmail.es', 87, 1, '18K', 0, ''),
('IIAY431021', 'Yolanda', 'Iriarte', 'Arteaga', 'kpto_21@hotmail.com', 23, 7, '18T', 0, ''),
('JAVD540613', 'David', 'Jaramillo', 'Vigueras', 'kpto_21@hotmail.com', 50, 3, '1M', 0, ''),
('JEHJ620923', 'Joselito Abilio', 'de Jesús', 'Herrera', 'juaco-1997@hotmail.es', 34, 1, '21F', 0, ''),
('JICJ500418', 'Jorge', 'Jiménez', 'Cervantes', 'kpto_21@hotmail.com', 4, 7, '6N', 0, ''),
('JIGF420129', 'Felipe Ignacio', 'Jiménez', 'García', 'oledoenriquez@gmail.com', 22, 8, '9Y', 0, ''),
('JIMA610709', 'Alejandra', 'Jiménez', 'Méndez', 'juaco-1997@hotmail.es', 3, 1, '8D', 0, ''),
('JIMI631018', 'Ignacio', 'Jiménez', 'Martínez', 'kpto_21@hotmail.com', 29, 7, '9R', 0, ''),
('JIPG660523', 'Guadalupe', 'Jiménez', 'Pérez', 'kpto_21@hotmail.com', 34, 7, '23Q', 0, ''),
('JUBD720623', 'Dulce María', 'Juárez', 'Banda', 'juaco-1997@hotmail.es', 51, 1, '20I', 0, ''),
('JULF841004', 'Francisco', 'Juanes', 'Loera', 'juaco-1997@hotmail.es', 43, 1, '13G', 0, ''),
('JULM671105', 'Ma. Isabel', 'Juárez', 'Lara', 'juaco-1997@hotmail.es', 77, 1, '25J', 0, ''),
('JUMM651228', 'María Martha', 'Juárez', 'Morales', 'kpto_21@hotmail.com', 77, 7, '4W', 0, ''),
('JUSM570722', 'Magdaleno Rafael', 'Juárez', 'Sánchez', 'kpto_21@hotmail.com', 85, 7, '21W', 0, ''),
('KEML370228', 'Leonel', 'Kelly', 'Mexia', 'kpto_21@hotmail.com', 39, 7, '8T', 0, ''),
('LIFM570506', 'Magdalena', 'Licona', 'Flores', 'kpto_21@hotmail.com', 6, 7, '11N', 0, ''),
('LOAA770303', 'Adaluz', 'López', 'Ángeles', 'juaco-1997@hotmail.es', 36, 1, '11F', 0, ''),
('LOAP630409', 'Pedro Antonio', 'Loyola', 'Abitia', 'kpto_21@hotmail.com', 22, 7, '17S', 0, ''),
('LOCS670617', 'Salvador', 'López', 'Chávez', 'kpto_21@hotmail.com', 39, 7, '5T', 0, ''),
('LOFT610501', 'María Teresa', 'López', ' Flores', 'juaco-1997@hotmail.es', 4, 1, '12D', 0, ''),
('LOGE810825', 'Esmirna Concepción', 'López', 'Gallegos', 'juaco-1997@hotmail.es', 98, 1, '15L', 0, ''),
('LORC630708', 'Corina', 'López', 'Rangel', 'juaco-1997@hotmail.es', 22, 1, '16G', 0, ''),
('LORJ690319', 'José', 'López', 'Ríos', 'juaco-1997@hotmail.es', 56, 1, '17I', 0, ''),
('LOUS630530', 'SiIvia Rosa', 'Lopeandia', 'Urbina', 'juaco-1997@hotmail.es', 87, 1, '19K', 0, ''),
('LOVS570524', 'Susana', 'López', 'Valenzuela', 'kpto_21@hotmail.com', 21, 7, '24T', 0, ''),
('MAAC530822', 'Carlos', 'Martínez', 'Álvarez', 'kpto_21@hotmail.com', 62, 7, '10V', 0, ''),
('MAAO560123', 'Olivia', 'MartÍnez', 'Abad', 'kpto_21@hotmail.com', 3, 7, '22M', 0, ''),
('MABV750223', 'Víctor Alberto', 'Martínez', 'Bautista', 'juaco-1997@hotmail.es', 82, 1, '8K', 0, ''),
('MACJ590327', 'Juan Raymundo', 'Mayorga', 'Cervantes', 'kpto_21@hotmail.com', 36, 7, '8Q', 0, ''),
('MACM640411', 'María Magdalena', 'Martínez', 'Carrillo', 'juaco-1997@hotmail.es', 67, 1, '3J', 0, ''),
('MADG430608', 'Gildardo Carlos', 'Magdaleno', 'Domínguez', 'oledoenriquez@gmail.com', 38, 8, '19X', 0, ''),
('MAFE621217', 'Everardo Elías', 'Martinez', 'Flores', 'kpto_21@hotmail.com', 2, 7, '13M', 0, ''),
('MAFJ450121', 'José', 'Madrid', 'Flores', 'oledoenriquez@gmail.com', 102, 8, '17Y', 0, ''),
('MAFV600123', 'Victor Manuel', 'Martínez', 'Fuentes', 'kpto_21@hotmail.com', 38, 7, '14Q', 0, ''),
('MAGG600807', 'Gabino Alberto', 'Martínez', 'Gutiérrez', 'kpto_21@hotmail.com', 62, 7, '11V', 0, ''),
('MAGJ460629', 'Josefina', 'Martínez', 'Guzmán', 'kpto_21@hotmail.com', 25, 7, '15U', 0, ''),
('MAGJ611102', 'Juan Carlos', 'Mares', 'Gutiérrez', 'kpto_21@hotmail.com', 22, 7, '20S', 0, ''),
('MAIU850513', 'Uriel', 'Martínez', 'Islas', 'juaco-1997@hotmail.es', 11, 1, '5E', 0, ''),
('MAJV541230', 'Venustiano', 'Martinez', 'Jimenez', 'kpto_21@hotmail.com', 25, 7, '18U', 0, ''),
('MALA861025', 'Alejandra Danae', 'Martínez', 'López', 'juaco-1997@hotmail.es', 94, 1, '8L', 0, ''),
('MALS631205', 'Sandra Carolina', 'Marín', 'López', 'kpto_21@hotmail.com', 52, 7, '14V', 0, ''),
('MAMR670830', 'Ramón Leonardo', 'Martínez', 'Montes', 'kpto_21@hotmail.com', 34, 7, '24Q', 0, ''),
('MAMS570302', 'María Susana', 'Martínez', 'Morales', 'kpto_21@hotmail.com', 30, 7, '9P', 0, ''),
('MANK750818', 'Karol Angélica', 'Marín', 'Nova', 'juaco-1997@hotmail.es', 71, 1, '12J', 0, ''),
('MAOA620915', 'Ma. de los Ángeles', 'Martínez', 'Ortega', 'kpto_21@hotmail.com', 36, 7, '7Q', 0, ''),
('MAPD850325', 'Dalia', 'Martínez', 'Próspero', 'juaco-1997@hotmail.es', 26, 1, '2G', 0, ''),
('MAPG741025', 'Gabino', 'Martínez', 'Pérez', 'juaco-1997@hotmail.es', 53, 1, '12I', 0, ''),
('MAPM660426', 'Miriam', 'Martínez', 'Pradel', 'kpto_21@hotmail.com', 15, 7, '16O', 0, ''),
('MAPO581026', 'Olga Goretty', 'Mandujano', 'Pérez', 'kpto_21@hotmail.com', 58, 7, '23V', 0, ''),
('MARA810111', 'Álvaro', 'Martínez', 'Reyes', 'juaco-1997@hotmail.es', 62, 1, '25H', 0, ''),
('MARL600702', 'Luis Manuel', 'Martínez', 'Reyes', 'kpto_21@hotmail.com', 1, 7, '9M', 0, ''),
('MARR450109', 'Rogelio', 'Maldonado', 'Rodríguez', 'oledoenriquez@gmail.com', 22, 8, '4Y', 0, ''),
('MARR730921', 'Rosario', 'Márquez', 'Ramírez', 'juaco-1997@hotmail.es', 93, 1, '5L', 0, ''),
('MARS461224', 'Salvador', 'Mata', 'Ramírez', 'oledoenriquez@gmail.com', 89, 8, '19Y', 0, ''),
('MASC731120', 'Carolina', ' Mares', 'Sandoval', 'juaco-1997@hotmail.es', 4, 1, '10D', 0, ''),
('MASO581005', 'Sofía', 'Macías', '', 'juaco-1997@hotmail.es', 68, 1, '4J', 0, ''),
('MATP810925', 'Pablo Ricardo', 'Martínez', 'Téllez', 'juaco-1997@hotmail.es', 46, 1, '6G', 0, ''),
('MAVH550316', 'Heriberto Efrén', 'Maldonado', 'Victoria', 'kpto_21@hotmail.com', 38, 7, '17Q', 0, ''),
('MEBC660713', 'Cesar Miguel', 'Mejía', 'Barradas', 'juaco-1997@hotmail.es', 39, 1, '18G', 0, ''),
('MECE501109', 'María Estela', 'Melendez', 'Camargo', 'oledoenriquez@gmail.com', 22, 8, '5Y', 0, ''),
('MECV841214', 'Verónica', 'Medina', 'Corral', 'juaco-1997@hotmail.es', 56, 1, '19I', 0, ''),
('MEDC870705', 'Claudia del Carmen', 'Mendoza', 'Delgado', 'juaco-1997@hotmail.es', 42, 1, '10G', 0, ''),
('MEER810505', 'Ricardo', 'Medel', 'Esquivel', 'juaco-1997@hotmail.es', 53, 5, '4M', 0, ''),
('MEGC640919', 'Concepción', 'Mejía', 'García', 'kpto_21@hotmail.com', 29, 7, '10R', 0, ''),
('MEGS581117', 'Salvador Ricardo', 'Meneses', 'González', 'kpto_21@hotmail.com', 30, 7, '12P', 0, ''),
('MERA550906', 'Arturo', 'Méndez', 'Romero', 'juaco-1997@hotmail.es', 53, 1, '11I', 0, ''),
('MESL420327', 'José Luis', 'Mejía', 'Soler', 'oledoenriquez@gmail.com', 29, 8, '25X', 0, ''),
('MITI600219', 'Ignacio', 'Minjares', 'Tarazena', 'kpto_21@hotmail.com', 49, 7, '20V', 0, ''),
('MOAC651030', 'Carlos', 'Moreno', 'Ayala', 'kpto_21@hotmail.com', 22, 7, '6S', 0, ''),
('MOAC701121', 'Claudia Adriana', 'Moreno', 'Arenas', 'kpto_21@hotmail.com', 38, 7, '12Q', 0, ''),
('MOAJ631206', 'Ma. Julia', 'Morales', 'Álvarez', 'juaco-1997@hotmail.es', 77, 1, '24J', 0, ''),
('MOAS610429', 'Sofía Beatríz', 'Moreno', 'Acosta', 'kpto_21@hotmail.com', 23, 7, '20T', 0, ''),
('MOCB620227', 'Baldomero', 'Morales', 'Campos', 'kpto_21@hotmail.com', 21, 7, '25T', 0, ''),
('MOCE800511', 'Esthela', 'Moreno', 'Chapa', 'juaco-1997@hotmail.es', 47, 1, '8I', 0, ''),
('MOGR571111', 'Rodrigo', 'Mondragón', 'Guzmán', 'kpto_21@hotmail.com', 37, 7, '11Q', 0, ''),
('MOHV680927', 'Verónica', 'Morales', 'Hernández', 'kpto_21@hotmail.com', 104, 7, '11W', 0, ''),
('MOIR590502', 'Ricardo', 'Moreno', 'Ibarra', 'kpto_21@hotmail.com', 66, 7, '2X', 0, ''),
('MOLP601009', 'Pablo', 'Monjarás', 'López', 'juaco-1997@hotmail.es', 83, 1, '9K', 0, ''),
('MOMA530924', 'Alfonso', 'Morales', 'Martínez', 'juaco-1997@hotmail.es', 9, 1, '1E', 0, ''),
('MOMA540122', 'Armando', 'Morales', 'Meza', 'kpto_21@hotmail.com', 27, 7, '22U', 0, ''),
('MORA621123', 'Alma Delia', 'Morán', 'Ruíz', 'juaco-1997@hotmail.es', 26, 1, '25F', 0, ''),
('MORA640123', 'Arturo', 'Moreno', 'Reyes', 'juaco-1997@hotmail.es', 9, 1, '2E', 0, ''),
('MORA740726', 'Ana Aurora', 'Montoya', 'Ramírez', 'juaco-1997@hotmail.es', 37, 1, '15F', 0, ''),
('MORC551103', 'Carlos Fernando', 'Montes de Oca', 'Rasgado', 'kpto_21@hotmail.com', 2, 7, '15M', 0, ''),
('MORE680104', 'Eva', 'Moreno', 'Reyes', 'kpto_21@hotmail.com', 85, 7, '18W', 0, ''),
('MORJ410214', 'Juan Bautista', 'Morales', 'Rodriguez', 'kpto_21@hotmail.com', 40, 7, '1V', 0, ''),
('MOSF661214', 'Fernando Javier', 'Montes de Oca', 'Segura', 'kpto_21@hotmail.com', 84, 7, '15W', 0, ''),
('MOVG601118', 'María Guadalupe', 'Morales', 'Vázquez', 'kpto_21@hotmail.com', 74, 7, '1X', 0, ''),
('NACF571118', 'Francisco ', 'Nava', 'Cervantes', 'kpto_21@hotmail.com', 22, 7, '18S', 0, ''),
('NAHG510514', 'Gerardo Bonifacio', 'Nava', 'Hernandez', 'kpto_21@hotmail.com', 24, 7, '8U', 0, ''),
('NAMJ870131', 'Joaquín Alejandro', 'Nares', 'Miller', 'juaco-1997@hotmail.es', 8, 1, '24D', 0, ''),
('NARR700417', 'María del Rosario', 'Nájera', 'Ramírez', 'juaco-1997@hotmail.es', 24, 1, '7H', 0, ''),
('NEEL730512', 'Laura Alicia', 'Neyra', 'Estrada', 'juaco-1997@hotmail.es', 7, 1, '21D', 0, ''),
('NERM870525', 'María Monserrat', 'Neria', 'Reyes', 'juaco-1997@hotmail.es', 43, 1, '12G', 0, ''),
('NOVJ720424', 'Jorge', 'Noriega', 'Villa', 'juaco-1997@hotmail.es', 61, 1, '24H', 0, ''),
('NURA470505', 'María de los Ángeles', 'Núñez', 'Robles', 'kpto_21@hotmail.com', 34, 7, '3R', 0, ''),
('OELE810505', 'Edgar Josué', 'Ojeda', 'Layseca', 'juaco-1997@hotmail.es', 8, 1, '22D', 0, ''),
('OIRA730527', 'Alfredo Erasto', 'Ortiz', 'Rodríguez', 'juaco-1997@hotmail.es', 94, 1, '6L', 0, ''),
('OIRG550715', 'Gloria', 'Olivos', 'Rosas', 'kpto_21@hotmail.com', 82, 7, '9W', 0, ''),
('OIVG660721', 'Guillermina Isabel', 'Oliva', 'Vallejo', 'kpto_21@hotmail.com', 30, 7, '4P', 0, ''),
('OOLC571220', 'Crisóforo', 'Ordoñes', 'López', 'kpto_21@hotmail.com', 23, 7, '21T', 0, ''),
('OORC880806', 'Carolina', 'Oropeza', 'Ramírez', 'juaco-1997@hotmail.es', 88, 1, '21K', 0, ''),
('OOSN660502', 'Norma Marisol', 'Ordoñez', 'Sánchez', 'kpto_21@hotmail.com', 94, 7, '3X', 0, ''),
('OUDJ370713', 'José', 'Osuna', 'Díaz', 'oledoenriquez@gmail.com', 36, 8, '18X', 0, ''),
('OUFA850727', 'Andrea Patricia', 'Olguín', 'Ferreira', 'juaco-1997@hotmail.es', 13, 1, '12E', 0, ''),
('OUGU580124', 'Ubaldo', 'Olguín', 'García', 'kpto_21@hotmail.com', 9, 7, '21N', 0, ''),
('PAGC570307', 'Clotilde', 'Prado', 'García', 'juaco-1997@hotmail.es', 10, 1, '3E', 0, ''),
('PAGI560421', 'Ixtaccihuatl Alejandra', 'Padilla', 'García', 'kpto_21@hotmail.com', 39, 7, '11T', 0, ''),
('PALG831114', 'María Guadalupe', 'Parga', 'López', 'juaco-1997@hotmail.es', 72, 1, '13J', 0, ''),
('PAMI691010', 'Irene', 'Plata', 'Monroy', 'juaco-1997@hotmail.es', 57, 1, '5I', 0, ''),
('PAOA571102', 'Ángel Francisco', 'Paz', 'Orzuna', 'kpto_21@hotmail.com', 8, 7, '18N', 0, ''),
('PAYO680604', 'Orlando', 'Palacios', 'Yañez', 'kpto_21@hotmail.com', 41, 7, '17R', 0, ''),
('PECA340531', 'Alberto', 'Perez', 'Calderón', 'oledoenriquez@gmail.com', 27, 8, '3A', 0, 'Requiere representante.'),
('PEDH721121', 'Héctor', 'Peña', 'Domínguez', 'juaco-1997@hotmail.es', 46, 1, '4G', 0, ''),
('PELC600109', 'Cecilia Yolanda', 'Pérez', 'López', 'kpto_21@hotmail.com', 1, 7, '8M', 0, ''),
('PELE580813', 'María Elena', 'Pérez', 'Lucio', 'kpto_21@hotmail.com', 14, 7, '13O', 0, ''),
('PEME560514', 'Enedino', 'Pérez', 'Mendoza', 'kpto_21@hotmail.com', 39, 7, '4T', 0, ''),
('PEMI611213', 'Isaac', 'Perusquia', 'Medina', 'kpto_21@hotmail.com', 22, 7, '7S', 0, ''),
('PEMN701116', 'Norma Angélica', 'Pérez', 'Moctezuma', 'juaco-1997@hotmail.es', 40, 1, '16H', 0, ''),
('PEMV670605', 'Venustiano', 'Pérez', 'Medina', 'kpto_21@hotmail.com', 25, 7, '10U', 0, ''),
('PEMV670606', 'José Luis', 'Ramírez', 'Contreras ', 'kpto_21@hotmail.com', 25, 7, '11U', 0, ''),
('PEOE560828', 'Eduardo', 'Pérez', 'Orta', 'kpto_21@hotmail.com', 32, 7, '16P', 0, ''),
('PEPJ550328', 'Juan Alejandro', 'Perales', 'Pastrana', 'kpto_21@hotmail.com', 38, 7, '15Q', 0, ''),
('PEPM451130', 'Mauricio', 'Pedraza', 'Pérez', 'kpto_21@hotmail.com', 31, 7, '23P', 0, ''),
('PERJ440727', 'Jorge', 'Pérez', 'Rosas', 'kpto_21@hotmail.com', 31, 7, '2Q', 0, ''),
('PESL790811', 'María de Lourdes', 'Peregrino', 'Sánchez', 'juaco-1997@hotmail.es', 7, 1, '19D', 0, ''),
('PETS750209', 'Sonia Mayra', 'Pérez', 'Tapia', 'oledoenriquez@gmail.com', 22, 4, '2M', 0, ''),
('PEVM561221', 'Martha', 'Pérez', 'Vargas', 'kpto_21@hotmail.com', 105, 7, '4X', 0, ''),
('PICA790917', 'Arianna Arozibel', 'Pineda', 'Carrasco', 'juaco-1997@hotmail.es', 70, 1, '10J', 0, ''),
('PISJ580125', 'Juventino', 'Pineda', 'Sánchez', 'kpto_21@hotmail.com', 39, 7, '3T', 0, ''),
('POAE661230', 'Enrique', 'Portillo', 'Arenas', 'kpto_21@hotmail.com', 2, 7, '16M', 0, ''),
('POMP800723', 'Pablo', 'Poo', 'Mendieta', 'juaco-1997@hotmail.es', 85, 1, '12K', 0, ''),
('POPG570126', 'Graciela', 'Portillo', 'Padilla', 'kpto_21@hotmail.com', 27, 7, '20U', 0, ''),
('PUEG530218', 'Griselda', 'Puebla', 'Espinosa', 'kpto_21@hotmail.com', 24, 7, '5U', 0, ''),
('PUMF820301', 'Francisco', 'Pulido', 'Morales', 'juaco-1997@hotmail.es', 96, 1, '12L', 0, ''),
('PURP650517', 'Pascual', 'Puebla', 'Robles ', 'kpto_21@hotmail.com', 21, 7, '23T', 0, ''),
('QUDN750305', 'Narda Araceli', 'Quintana', 'Diosdado', 'juaco-1997@hotmail.es', 100, 1, '19L', 0, ''),
('QUHC650913', 'María del Carmen', 'Quiroz', 'Herrera', 'juaco-1997@hotmail.es', 47, 1, '9I', 0, ''),
('QUMR681113', 'Rosa Isela', 'Quiterio', 'Martinez', 'kpto_21@hotmail.com', 83, 7, '10W', 0, ''),
('QUVH590512', 'Hilda Jesús', 'Quezada', 'Villegas', 'kpto_21@hotmail.com', 29, 7, '7R', 0, ''),
('RAAA740815', 'Alfredo', 'Ramirez', 'Arechar', 'juaco-1997@hotmail.es', 83, 1, '10K', 0, ''),
('RAAD681019', 'Diana Laura', 'Ramírez', 'Álvarez', 'juaco-1997@hotmail.es', 73, 1, '14J', 0, ''),
('RABC690320', 'Claudia', 'Ramírez', 'Brassetti', 'juaco-1997@hotmail.es', 33, 1, '7F', 0, ''),
('RABP720605', 'Papik Alfredo', 'Ramírez', 'Bernal', 'juaco-1997@hotmail.es', 68, 5, '3M', 0, ''),
('RAGA691007', 'Alicia Marcela', 'Ramírez', 'Guzmán', 'kpto_21@hotmail.com', 102, 7, '1W', 0, ''),
('RALT520821', 'María Teresa', 'Ramírez', 'Landeros', 'juaco-1997@hotmail.es', 13, 1, '13E', 0, ''),
('RAPF560820', 'Florencio Enrique', 'Ramírez', 'Pérez', 'kpto_21@hotmail.com', 34, 7, '1R', 0, ''),
('RAPM631028', 'Martín', 'Ramírez', 'Pérez', 'kpto_21@hotmail.com', 31, 7, '25P', 0, ''),
('RARC621127', 'Catalina', 'Ramos', 'Ramos', 'juaco-1997@hotmail.es', 100, 1, '21L', 0, ''),
('RARE551026', 'Evaristo Gabino', 'Ramírez', 'Rojas', 'kpto_21@hotmail.com', 22, 7, '8S', 0, ''),
('RASF610711', 'Fernando', 'Ramírez', 'Saavedra', 'kpto_21@hotmail.com', 7, 7, '13N', 0, ''),
('RASR710510', 'Raquel', 'Ramón', 'Sosa ', 'juaco-1997@hotmail.es', 62, 1, '1I', 0, ''),
('RAVM650728', 'Ma. Victoria', 'Rafael', 'Valdivia', 'juaco-1997@hotmail.es', 30, 1, '25E', 0, ''),
('REBS560910', 'Sergio', 'Rea', 'Blanquet', 'kpto_21@hotmail.com', 39, 7, '2T', 0, ''),
('REGG611025', 'Guadalupe del Socorro', 'Reyes', 'García', 'kpto_21@hotmail.com', 96, 7, '5X', 0, ''),
('REGJ420909', 'Juan Ignacio', 'Reyes', 'García', 'oledoenriquez@gmail.com', 45, 8, '1Y', 0, ''),
('REGM590502', 'Magdalena', 'Reyes', ' García', 'juaco-1997@hotmail.es', 32, 1, '3F', 0, ''),
('REHA740406', 'Armando', 'Reséndiz', 'Hernández', 'juaco-1997@hotmail.es', 88, 1, '22K', 0, ''),
('REIH830819', 'Héctor Yair', 'Reyes', 'Izquierdo', 'juaco-1997@hotmail.es', 14, 1, '15E', 0, ''),
('REMH610209', 'Heriberto', 'Reyes', 'Mantilla', 'kpto_21@hotmail.com', 27, 7, '19U', 0, ''),
('RERF841114', 'Flor Isela', 'Retana', 'Rentería', 'juaco-1997@hotmail.es', 61, 1, '23H', 0, ''),
('RERN651110', 'Noemí', 'del Real', 'Rodríguez', 'kpto_21@hotmail.com', 102, 7, '25V', 0, ''),
('RICF720523', 'Francisco Alejandro', 'Ríos', 'Coria', 'juaco-1997@hotmail.es', 41, 1, '8G', 0, ''),
('RIFJ621206', 'Javier', 'Rivera', 'Flores', 'kpto_21@hotmail.com', 45, 7, '14R', 0, ''),
('RIHF580501', 'Felipe', 'Rivera', 'Hernández', 'kpto_21@hotmail.com', 8, 7, '19N', 0, ''),
('RIJR571220', 'Rosa María', 'Ribas', 'Jaimes', 'kpto_21@hotmail.com', 22, 7, '15S', 0, ''),
('RIRL780924', 'Luis', 'Rizo', 'Ruíz', 'juaco-1997@hotmail.es', 57, 1, '6I', 0, ''),
('RISJ410709', 'Jorge', 'Rivera', 'Salcedo ', 'oledoenriquez@gmail.com', 25, 8, '12Y', 0, ''),
('RISR610808', 'María del Rosario', 'Rivera', 'Samaniego', 'juaco-1997@hotmail.es', 68, 1, '6J', 0, ''),
('ROAB630611', 'Bernabe', 'Rodríguez', 'Almanza', 'kpto_21@hotmail.com', 32, 7, '14P', 0, ''),
('ROAJ530902', 'Juan', 'Romero', 'Amaya', 'juaco-1997@hotmail.es', 19, 1, '23E', 0, ''),
('ROCC730916', 'Cornelio', 'Romero', 'Cruz', 'juaco-1997@hotmail.es', 36, 1, '13F', 0, ''),
('ROCG600508', 'Guillermo', 'Romero', 'Carsolio', 'kpto_21@hotmail.com', 79, 7, '7W', 0, ''),
('ROCL700110', 'José Luis Tonatihu', 'Rojas', 'Castro', 'juaco-1997@hotmail.es', 3, 1, '9D', 0, ''),
('ROCR620603', 'Rubén', 'Rosas', 'Casados', 'kpto_21@hotmail.com', 5, 7, '7N', 0, ''),
('ROEO430714', 'Oscar', 'Rojas', 'Espinosa', 'oledoenriquez@gmail.com', 22, 8, '11Y', 0, ''),
('ROGA651102', 'Alfredo', 'Rodríguez', 'Gómez', 'kpto_21@hotmail.com', 2, 7, '17M', 0, ''),
('ROGA801023', 'Alejandro', 'Rojas', 'Guzmán', 'juaco-1997@hotmail.es', 82, 1, '7K', 0, ''),
('ROHI710319', 'Ivonne', 'Romo', 'Hernández', 'juaco-1997@hotmail.es', 31, 1, '4F', 0, ''),
('ROHL600403', 'Lucía', 'Román', 'Hinojosa', 'kpto_21@hotmail.com', 20, 7, '22T', 0, ''),
('ROHL720825', 'Luis Francisco', 'Rodríguez', 'Hernández', 'juaco-1997@hotmail.es', 29, 1, '22F', 0, ''),
('ROHP740712', 'María del Pilar', 'Roa', 'Hernández', 'juaco-1997@hotmail.es', 97, 1, '14L', 0, ''),
('ROLA460505', 'Ángel', 'Rodríguez', 'y Leyva', 'kpto_21@hotmail.com', 22, 7, '9S', 0, ''),
('ROLL520413', 'José Luis', 'Rosas', 'López', 'kpto_21@hotmail.com', 37, 7, '10Q', 0, ''),
('ROLP651211', 'Pedro', 'Rodríguez', 'Luevano', 'juaco-1997@hotmail.es', 12, 1, '9E', 0, ''),
('ROOD790509', 'Dalia', 'Rosas', 'Olivos ', 'juaco-1997@hotmail.es', 94, 1, '7L', 0, ''),
('ROOL570306', 'Laura Felicitas', 'Rodríguez', 'Ortega', 'kpto_21@hotmail.com', 3, 7, '23M', 0, ''),
('ROOP561012', 'María del Pilar', 'Rodríguez', 'Olmedo', 'kpto_21@hotmail.com', 79, 7, '6W', 0, ''),
('ROOR690527', 'José Ramón', 'Rodríguez', 'Ojeda', 'juaco-1997@hotmail.es', 73, 1, '15J', 0, ''),
('ROPA550531', 'Ángel', 'Rodríguez', 'Paez', 'kpto_21@hotmail.com', 85, 7, '24W', 0, ''),
('ROPA880429', 'Ana Montserrat', 'Romero', 'Paredes', 'juaco-1997@hotmail.es', 20, 1, '2H', 0, ''),
('RORE650831', 'Evangelina', 'Rojas', 'Rodríguez', 'juaco-1997@hotmail.es', 15, 1, '19E', 0, ''),
('RORM630319', 'Miguel Ángel', 'Rodríguez', 'Ruíz', 'kpto_21@hotmail.com', 3, 7, '21M', 0, ''),
('RORO370912', 'Octavio', 'Rojas', 'Rodriguez', 'kpto_21@hotmail.com', 24, 7, '4U', 0, ''),
('RORR590111', 'Rocío', 'Rodas', 'Ruíz', 'juaco-1997@hotmail.es', 19, 1, '24E', 0, ''),
('RORS491127', 'Santiago', 'Rodríguez', 'Rojas', 'kpto_21@hotmail.com', 39, 7, '1T', 0, ''),
('ROSA580505', 'José Artemio', 'Rodríguez', 'Salas', 'kpto_21@hotmail.com', 25, 7, '12U', 0, ''),
('ROSL540909', 'Laura Catalina', 'Romero', 'Sotomayor', 'kpto_21@hotmail.com', 25, 7, '16U', 0, ''),
('RUBM600910', 'María Margarita', 'Ruíz', 'Badillo', 'juaco-1997@hotmail.es', 6, 1, '18D', 0, ''),
('RUCR841028', 'Ramón Octavio', 'Ruíz', 'Carlón', 'juaco-1997@hotmail.es', 70, 1, '8J', 0, ''),
('RURA600723', 'María Adoración', 'Ruíz', 'Ramírez', 'kpto_21@hotmail.com', 34, 7, '25Q', 0, ''),
('RUZJ530430', 'Jaime Roberto', 'Ruíz', 'y Zurvia Flores', 'kpto_21@hotmail.com', 38, 7, '16Q', 0, ''),
('SAAM630318', 'Moisés', 'Sánchez', 'Adame', 'kpto_21@hotmail.com', 56, 7, '16V', 0, ''),
('SABM670425', 'Marcos', 'Salazar', 'Bolaños', 'kpto_21@hotmail.com', 25, 7, '13U', 0, ''),
('SABN621118', 'Norma Ángelica', 'Sánchez', 'Barragán', 'kpto_21@hotmail.com', 3, 7, '19M', 0, ''),
('SACC820315', 'Catalina', 'Sánchez', 'Castillo', 'juaco-1997@hotmail.es', 6, 1, '17D', 0, ''),
('SACG371110', 'Guadalupe', 'Salinas', 'Castillo', 'oledoenriquez@gmail.com', 25, 8, '13Y', 0, ''),
('SADC571215', 'Carolina Margarita', 'Sánchez', 'Díaz', 'kpto_21@hotmail.com', 4, 7, '3N', 0, ''),
('SADV700522', 'Víctor Manuel', 'Salas', 'Domínguez', 'juaco-1997@hotmail.es', 2, 1, '4D', 0, ''),
('SAEB601008', 'María Beatriz', 'Sánchez', 'Estrada', 'juaco-1997@hotmail.es', 39, 1, '19G', 0, ''),
('SAGG641221', 'Germán Adalberto', 'Sandoval', 'Gonzalez', 'kpto_21@hotmail.com', 11, 7, '4O', 0, ''),
('SAHF780227', 'Fanny', 'Sauza', 'Hernández', 'juaco-1997@hotmail.es', 76, 1, '23J', 0, ''),
('SALJ650711', 'Jorge', 'Sánchez', 'Leal', 'kpto_21@hotmail.com', 3, 7, '18M', 0, ''),
('SALL490808', 'Luis Emilio', 'Sánchez', 'Licéaga', 'kpto_21@hotmail.com', 15, 7, '19O', 0, ''),
('SALM390114', 'Macrino', 'Sánchez', 'Lara', 'oledoenriquez@gmail.com', 32, 8, '15X', 0, ''),
('SALO680206', 'Olga Alicia', 'Sánchez', 'López', 'juaco-1997@hotmail.es', 100, 1, '20L', 0, ''),
('SALR400622', 'Rafael', 'Sánchez', 'López', 'oledoenriquez@gmail.com', 30, 8, '12X', 1, ''),
('SALU600601', 'María de la Luz', 'Santillán', '', 'kpto_21@hotmail.com', 7, 7, '14N', 0, ''),
('SALV610526', 'Victor', 'Sandoval', 'Lobato', 'juaco-1997@hotmail.es', 36, 1, '12F', 0, ''),
('SAME770202', 'María Esther', 'Sánchez', 'Marín', 'juaco-1997@hotmail.es', 11, 1, '6E', 0, ''),
('SAMG560528', 'Gloria', 'Salgado', 'Morgan', 'kpto_21@hotmail.com', 11, 7, '5O', 0, ''),
('SAMJ740319', 'Josefina', 'Sánchez', 'Monroy', 'juaco-1997@hotmail.es', 2, 1, '5D', 0, ''),
('SAMJ870323', 'Juan Jesús', 'Sánchez', 'Marín', 'juaco-1997@hotmail.es', 78, 1, '1K', 0, ''),
('SAML711230', 'Luz María', 'Sánchez', 'Martínez', 'juaco-1997@hotmail.es', 23, 1, '22G', 0, ''),
('SAOA620508', 'Álvaro', 'Sánchez', 'Osuna', 'kpto_21@hotmail.com', 32, 7, '15P', 0, ''),
('SAPL540211', 'Leobardo', 'Sánchez', 'Pimentel', 'kpto_21@hotmail.com', 1, 7, '12M', 0, ''),
('SAPM670320', 'María Magdalena', 'Salazar', 'Páramo', 'kpto_21@hotmail.com', 30, 7, '5P', 0, ''),
('SARA500917', 'Alberto', 'Sandoval', 'Romero', 'kpto_21@hotmail.com', 27, 7, '21U', 0, ''),
('SARE620826', 'Enrique', 'Salinas', 'Rodríguez', 'kpto_21@hotmail.com', 3, 7, '25M', 0, ''),
('SARF761129', 'Francisco Javier', 'Sánchez', 'Romero', 'juaco-1997@hotmail.es', 24, 1, '9H', 0, ''),
('SARL560604', 'Laura Patricia', 'Salas ', 'Salas Rangel', 'kpto_21@hotmail.com', 22, 7, '16S', 0, ''),
('SARM501017', 'Margarita del Pilar', 'Sam', 'Rodríguez', 'kpto_21@hotmail.com', 80, 7, '1A', 0, 'No se puede desplazar.'),
('SARM610123', 'Mauricio Darío', 'Sánchez', 'Ramos', 'kpto_21@hotmail.com', 30, 7, '8P', 0, ''),
('SASF660302', 'José Federico', 'Sánchez', 'Sosa', 'juaco-1997@hotmail.es', 51, 1, '21I', 0, ''),
('SATR610723', 'María del Rosario', 'Salinas', 'Tobón', 'kpto_21@hotmail.com', 22, 7, '21S', 0, ''),
('SAZA451003', 'Alfonso', 'Salazar', 'Zorrilla', 'oledoenriquez@gmail.com', 30, 8, '10X', 0, ''),
('SEGB500831', 'Blanca Rosa', 'Servin', 'Gonzalez', 'kpto_21@hotmail.com', 103, 7, '8W', 0, ''),
('SEPS580912', 'María Sara', 'Serrano', 'Perez', 'kpto_21@hotmail.com', 27, 7, '23U', 0, ''),
('SERE560311', 'Erik Gilberto', 'Strevel', 'Roche', 'kpto_21@hotmail.com', 84, 7, '16W', 0, ''),
('SIBM600702', 'Mario', 'Silva', 'Barrera', 'kpto_21@hotmail.com', 4, 7, '2N', 0, ''),
('SIGG840712', 'Gustavo Rodolfo', 'Shields', 'García ', 'juaco-1997@hotmail.es', 5, 1, '14D', 0, ''),
('SIGT601109', 'José Teodoro', 'Silva', 'García', 'kpto_21@hotmail.com', 63, 7, '7V', 0, ''),
('SILL681102', 'Luis Enrique', 'Sigler', ' Licona', 'juaco-1997@hotmail.es', 17, 1, '20E', 0, ''),
('SISD970602', 'Dante Mir', 'Schmitter', 'Sánchez', 'yirz.carrillo@gmail.com', 22, 6, '5M', 1, ''),
('SOAE590718', 'Ezequiel', 'Solis', 'Araujo', 'kpto_21@hotmail.com', 30, 7, '10P', 0, ''),
('SOCR591028', 'Rosa Gabriela', 'Sotelo', 'Candelaria', 'kpto_21@hotmail.com', 22, 7, '10S', 0, ''),
('SOGE490329', 'Gerardo', 'Sosa', '', 'kpto_21@hotmail.com', 34, 7, '4R', 0, ''),
('SOGE650823', 'Eleazar', 'Sosa', 'González', 'kpto_21@hotmail.com', 13, 7, '8O', 0, ''),
('SOMM790430', 'Miriam Selene', 'Somera', 'Martinez', 'juaco-1997@hotmail.es', 98, 1, '17L', 0, ''),
('SOOE761215', 'Elizabeth', 'Solis', 'Ocampo', 'juaco-1997@hotmail.es', 78, 1, '2K', 0, ''),
('SUAS530117', 'Samuel', 'Suazo', 'Abarca', 'kpto_21@hotmail.com', 41, 7, '20R', 0, ''),
('SUCA511123', 'Armando', 'Suárez', 'Caudillo', 'juaco-1997@hotmail.es', 9, 1, '25D', 0, ''),
('TACT460218', 'José Trinidad', 'Tapia', 'Cisneros', 'kpto_21@hotmail.com', 31, 7, '24P', 0, ''),
('TAMJ711204', 'Javier', 'Tadeo', 'Márquez ', 'juaco-1997@hotmail.es', 87, 1, '20K', 0, ''),
('TASA630119', 'Adolfo', 'Tapia', 'Sánchez', 'kpto_21@hotmail.com', 85, 7, '22W', 0, ''),
('TAVL610516', 'José Luis', 'Tagle', 'Vargas', 'kpto_21@hotmail.com', 7, 7, '15N', 0, ''),
('TEMA670502', 'Alberto', 'Trejo', 'Moreno', 'kpto_21@hotmail.com', 11, 7, '3O', 0, ''),
('TEMG631204', 'Ma. Guadalupe', 'Trejo', 'Martínez', 'juaco-1997@hotmail.es', 75, 1, '18J', 0, ''),
('TOAF601224', 'Francisco Javier', 'Torres', 'Argüelles', 'juaco-1997@hotmail.es', 41, 1, '7G', 0, ''),
('TOBE620920', 'Eduardo', 'Torres', 'Buenrostro', 'juaco-1997@hotmail.es', 39, 1, '17G', 0, ''),
('TOEL840404', 'Lizeth Araceli', 'Toledo', 'Escalante', 'juaco-1997@hotmail.es', 98, 1, '16L', 0, ''),
('TOGA770224', 'Alfredo', 'Torres', 'García', 'juaco-1997@hotmail.es', 37, 1, '16F', 0, ''),
('TOLV710602', 'Viridiana', 'del Toro', 'López', 'juaco-1997@hotmail.es', 69, 1, '7J', 0, ''),
('TOMJ650420', 'Joel', 'Toledo', 'Molano ', 'juaco-1997@hotmail.es', 49, 1, '24I', 0, ''),
('TOMM430929', 'Miguel Ángel', 'Toledo', 'Martínez', 'oledoenriquez@gmail.com', 30, 8, '13X', 0, ''),
('TOOG450118', 'José Guadalupe', 'Torres', ' y Ortega', 'yirz.carrillo@gmail.com', 31, 2, '22L', 0, ''),
('TOPE551216', 'María Eugenia', 'Tome', 'Pérez', 'juaco-1997@hotmail.es', 10, 1, '4E', 0, ''),
('TORG630413', 'Gloria', 'Tovar', 'Rojo', 'juaco-1997@hotmail.es', 22, 1, '15G', 0, ''),
('TORM471203', 'Mirta Araceli', 'Toledo', 'Rojas', 'oledoenriquez@gmail.com', 104, 8, '18Y', 0, ''),
('TORR491029', 'Rebeca', 'Tovar', 'Ramírez', 'kpto_21@hotmail.com', 40, 7, '25U', 0, ''),
('VAAL680202', 'María de Lourdes', 'Valdes', 'Alcantar', 'kpto_21@hotmail.com', 22, 7, '11S', 0, ''),
('VABA721101', 'Araceli', 'Vázquez', 'Betancourt', 'juaco-1997@hotmail.es', 79, 1, '3K', 0, ''),
('VADF430822', 'Filiberto', 'Vázquez', 'Dávila', 'oledoenriquez@gmail.com', 22, 8, '10Y', 0, ''),
('VARA570908', 'Adrián', 'Valdez', 'Rodríguez', 'kpto_21@hotmail.com', 89, 7, '25W', 0, ''),
('VARB570219', 'Bersain', 'Vázquez', 'Rincón', 'kpto_21@hotmail.com', 9, 7, '22N', 0, ''),
('VARC580808', 'María del Consuelo', 'Vázquez', 'Romero', 'kpto_21@hotmail.com', 26, 7, '4V', 0, ''),
('VATH760227', 'Héctor Gilberto Gabriel', 'Valencia', 'Trujillo', 'juaco-1997@hotmail.es', 95, 1, '9L', 0, ''),
('VEAE651027', 'Eduardo', 'Vega', 'Alvarado', 'kpto_21@hotmail.com', 49, 7, '19V', 0, ''),
('VECG481101', 'Gustavo', 'Velázquez', 'Corichi', 'kpto_21@hotmail.com', 34, 7, '5R', 0, ''),
('VECK781228', 'Karina Vianey', 'Vergara', 'Camacho', 'juaco-1997@hotmail.es', 22, 1, '6H', 0, ''),
('VEPS580519', 'Saúl', 'Vega', 'Pérez', 'kpto_21@hotmail.com', 33, 7, '6Q', 0, ''),
('VESG530225', 'Guillermo', 'Velazquez', 'Samano', 'kpto_21@hotmail.com', 39, 7, '9T', 0, '');
INSERT INTO `galardonado` (`RFC`, `Nombre`, `Paterno`, `Materno`, `Email`, `Unidad_Academica`, `Galardon`, `Asiento`, `Asistencia`, `Observaciones`) VALUES
('VIAL571012', 'José Luis', 'Villareal', 'Aguirre', 'kpto_21@hotmail.com', 32, 7, '17P', 0, ''),
('VIHA670801', 'Alejandro Isauro', 'Villagrán', 'Hernández', 'kpto_21@hotmail.com', 30, 7, '3P', 0, ''),
('VINA780922', 'Ana Laura', 'Villalpando', 'Nava', 'juaco-1997@hotmail.es', 30, 1, '1F', 0, ''),
('VIRC600318', 'Carmelo', 'Villanueva', 'Ruíz', 'kpto_21@hotmail.com', 3, 7, '1N', 0, ''),
('VIRE550813', 'Enrique', 'Villaseñor', 'Rosas', 'kpto_21@hotmail.com', 25, 7, '14U', 0, ''),
('VISE630124', 'Enrique', 'Vignati', 'Sánchez', 'kpto_21@hotmail.com', 45, 7, '15R', 0, ''),
('VISH570106', 'Héctor', 'Villanueva', 'Silva', 'kpto_21@hotmail.com', 15, 7, '18O', 0, ''),
('XACR421024', 'Rafael', 'Xala', 'Camacho', 'oledoenriquez@gmail.com', 34, 8, '21X', 0, ''),
('XILS910302', 'Sergio Yair', 'Xicotencatl', 'Llera', 'juaco-1997@hotmail.es', 75, 1, '20J', 0, ''),
('ZACM620126', 'Ma. Elena', 'Zavala', 'Castillo', 'kpto_21@hotmail.com', 21, 7, '1U', 0, ''),
('ZACR760228', 'Rosario Angélica', 'Zavala', 'Candelaria', 'juaco-1997@hotmail.es', 38, 1, '9F', 0, ''),
('ZAMR680730', 'María del Rocío', 'Zamora', 'Mendoza', 'kpto_21@hotmail.com', 29, 7, '8R', 0, ''),
('ZASE420615', 'Etelvina', ' Zavala', 'Suárez', 'kpto_21@hotmail.com', 39, 7, '10T', 0, ''),
('ZEGV620728', 'Victor', 'Zepeda', 'González', 'kpto_21@hotmail.com', 30, 7, '25O', 0, ''),
('ZUCM690919', 'Mayra Elizabeth', 'Zuñiga', 'Coss', 'kpto_21@hotmail.com', 30, 7, '2P', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `representante`
--

CREATE TABLE `representante` (
  `ClaveElector` varchar(45) NOT NULL,
  `RFCGalardonado` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Paterno` varchar(45) DEFAULT NULL,
  `Materno` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `representante`
--

INSERT INTO `representante` (`ClaveElector`, `RFCGalardonado`, `Nombre`, `Paterno`, `Materno`) VALUES
('AAAC-REP1', 'AAAC670607', 'Celia', 'Ayala', 'Arellano'),
('AAAJ-REP', 'AAAJ410118', 'Jorge Helio', 'Altamirano', 'Aguilar'),
('AABS-REP', 'AABS460521', 'Salvador', 'Álvarez', 'Ballesteros'),
('AAER-REP', 'AAER600805', 'Rosa Martha', 'Alcántara', 'Escamilla'),
('AAFD-REP', 'AAFD851118', 'Daniel', 'Álvarez', 'Fuentes'),
('AAGG-REP', 'AAGG570404', 'Gonzalo Isidro', 'Alvarado', 'González'),
('AAIA-REP', 'AAIA810312', 'José Andrés', 'Álvarez', 'Ibarra'),
('AALE-REP', 'AALE860922', 'Edith Yuliana', 'Amador', 'López'),
('AAMA-REP', 'AAMA580502', 'José Antonio', 'Andrade', 'Morales'),
('AAMJ-REP', 'AAMJ470215', 'Juan', 'Álvarez', 'Mendoza'),
('AAMS-REP', 'AAMS420723', 'Samuel', 'Alcantara', 'Montes'),
('AAOE-REP', 'AAOE530715', 'Enrique', 'Anaya', 'Ornelas'),
('AARE-REP', 'AARE791201', 'María Elena', 'Álvarez', 'Rodríguez'),
('AASA-REP', 'AASA570727', 'Alfonso Javier', 'Álvarez', 'Sierra'),
('AASR-REP', 'AASR630322', 'Rosaura', 'Amador', 'Sánchez'),
('AAZA-REP', 'AAZA700603', 'Ana María', 'Almanza', 'Zendejas'),
('AEMA-REP', 'AEMA610302', 'Agustín Humberto', 'Ángeles', 'Mejía'),
('AERL-REP', 'AERL450609', 'Lucio', 'Alemán', 'Rodríguez'),
('AIGE-REP', 'AIGE760708', 'Esperanza', 'Aviña', 'García'),
('CRBLED97101309H006', 'TOOG450118', 'Eduardo', 'undefined', 'Balcazar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_academica`
--

CREATE TABLE `unidad_academica` (
  `ID` int(11) NOT NULL,
  `Unidad_Academica` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unidad_academica`
--

INSERT INTO `unidad_academica` (`ID`, `Unidad_Academica`) VALUES
(1, 'CECyT No.1 Gonzalo Vázquez Vela'),
(2, 'CECyT No.2 Miguel Bernard'),
(3, 'CECyT No.3 Estanislao Ramírez Ruiz'),
(4, 'CECyT No.4 Lázaro Cárdenas del Río'),
(5, 'CECyT No.5 Benito Juárez'),
(6, 'CECyT No.6 Miguel Othón de Mendizábal'),
(7, 'CECyT No.7 Cuauhtémoc'),
(8, 'CECyT No.8 Narciso Bassols'),
(9, 'CECyT No.9 Juan de Dios Bátiz'),
(10, 'CECyT No.10 Carlos Vallejo Márquez'),
(11, 'CECyT No.11 Wilfrido Massieu'),
(12, 'CECyT No.12 José María Morelos'),
(13, 'CECyT No.13 Ricardo Flores Magón'),
(14, 'CECyT No.14 Luis Enrique Erro Soler'),
(15, 'CECyT No.15 Diódoro Antúnez Echegaray'),
(16, 'CECyT No.16 Hidalgo'),
(17, 'CECyT No.17 León-Guanajuato'),
(18, 'CECyT No.18 Zacatecas'),
(19, 'CET 1 Walter Cross Buchanan'),
(20, 'CICS Unidad Santo Tomás'),
(21, 'CICS Unidad Milpa Alta'),
(22, 'ENCB'),
(23, 'ENMyH'),
(24, 'ESCA Unidad Santo Tomás'),
(25, 'ESCA Unidad Tepepan'),
(26, 'ESCOM'),
(27, 'ESE'),
(28, 'ESEO'),
(29, 'ESFM'),
(30, 'ESIME Unidad Zacatenco'),
(31, 'ESIME Unidad Azcapotzalco'),
(32, 'ESIME Unidad Culhuacán'),
(33, 'ESIME Unidad Ticomán'),
(34, 'ESIQIE'),
(35, 'ESIT'),
(36, 'ESIA Unidad Tecamachalco'),
(37, 'ESIA Unidad Ticomán'),
(38, 'ESIA Unidad Zacatenco'),
(39, 'ESM'),
(40, 'EST'),
(41, 'UPIBI'),
(42, 'UPIIG Campus Guanajuato'),
(43, 'UPIIZ Campus Zacatecas'),
(44, 'UPIIH Campus Hidalgo'),
(45, 'UPIICSA'),
(46, 'UPIITA'),
(47, 'CBG'),
(48, 'CEPROBI'),
(49, 'CIDETEC'),
(50, 'CIITEC'),
(51, 'CIBA Unidad Tlaxcala'),
(52, 'CICATA Unidad Querétaro'),
(53, 'CICATA Unidad Legaria'),
(54, 'CICATA Unidad Altamira'),
(55, 'CIC'),
(56, 'CITEDI Unidad Tijuana'),
(57, 'CIECAS'),
(58, 'Centro de Nanociencias y Micro y Nanotecnologías'),
(59, 'CICIMAR'),
(60, 'CIIDIR Unidad Sinaloa'),
(61, 'CIIDIR Unidad Durango'),
(62, 'CIIDIR Unidad Oaxaca'),
(63, 'CIIDIR Unidad Michoacán'),
(64, 'CIIEMAD'),
(65, 'CMP+L'),
(66, 'TechnoPoli'),
(67, 'Centro de Cómputo y Comunicaciones'),
(68, 'Centro de Educación Continúa Unidad Culiacán '),
(69, 'Centro de Educación Continúa Unidad Durango'),
(70, 'Centro de Educación Continúa Unidad Los Mochis'),
(71, 'Centro de Educación Continúa Unidad Tijuana'),
(72, 'Secretaría Particular de la Dirección General'),
(73, 'Coordinación de Asesores'),
(74, 'Coordinación de Comunicación Social'),
(75, 'Defensoría de los Derechos Politécnicos'),
(76, 'Coordinación Politécnica para la Sustentabilidad'),
(77, 'Secretaría General'),
(78, 'Secretaría Académica'),
(79, 'Dirección de Educación Media Superior'),
(80, 'Dirección de Publicaciones'),
(81, 'Secretaría de Servicios Educativos'),
(82, 'Dirección de Bibliotecas'),
(83, 'Dirección de Administración Escolar'),
(84, 'Dirección de Desarrollo y Fomento Deportivo'),
(85, 'Dirección de Difusión y Fomento a la Cultura'),
(86, 'Dirección de Evaluación'),
(87, 'Dirección de Capital Humano'),
(88, 'Dirección de Recursos Financieros'),
(89, 'Dirección de Recursos Materiales y Servicios'),
(90, 'Oficina del Abogado General'),
(91, 'Dirección de Normatividad Consulta y Dictaminación '),
(92, 'Dirección de Asuntos Jurídicos'),
(93, 'Coordinación General de Servicios Informáticos'),
(94, 'Coordinación General de Formación e Innovación Educativa'),
(95, 'Unidad Politécnica para el Desarrollo y la Competitividad Empresarial'),
(96, 'Coordinación de Centros de Desarrollo Infantil'),
(97, 'Centro de Desarrollo Infantil Amalia Solórzano de Cárdenas'),
(98, 'Centro de Desarrollo Infantil Clementina Batalla de Bassols'),
(99, 'Centro de Desarrollo Infantil Laura Pérez de Bátiz'),
(100, 'Centro de Desarrollo Infantil Margarita Salazar de Erro'),
(101, 'Centro de Educación Continúa Ing. Eugenio Méndez Docurro'),
(102, 'Dirección General'),
(103, 'Dirección de Educación Superior'),
(104, 'Dirección de Servicios Estudiantiles'),
(105, 'Coordinación del Sistema Institucional de Información');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Usuario` varchar(45) NOT NULL,
  `Password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Usuario`, `Password`) VALUES
('Admin', 'e10adc3949ba59abbe56e057f20f883e'),
('Gilberto', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('Joathan123', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('Karen24', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('Yirz24', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('Yirz241', 'd8578edf8458ce06fbc5bb76a58c5ca4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`Usuario`,`Tipo`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`Numero_Empleado`),
  ADD KEY `Usuario` (`Usuario`);

--
-- Indices de la tabla `galardon`
--
ALTER TABLE `galardon`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `galardonado`
--
ALTER TABLE `galardonado`
  ADD PRIMARY KEY (`RFC`),
  ADD KEY `Unidad_Academica` (`Unidad_Academica`),
  ADD KEY `Galardon` (`Galardon`);

--
-- Indices de la tabla `representante`
--
ALTER TABLE `representante`
  ADD PRIMARY KEY (`ClaveElector`),
  ADD KEY `RFCGalardonado` (`RFCGalardonado`);

--
-- Indices de la tabla `unidad_academica`
--
ALTER TABLE `unidad_academica`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD CONSTRAINT `acceso_ibfk_1` FOREIGN KEY (`Usuario`) REFERENCES `usuario` (`Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`Usuario`) REFERENCES `usuario` (`Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `galardonado`
--
ALTER TABLE `galardonado`
  ADD CONSTRAINT `galardonado_ibfk_1` FOREIGN KEY (`Unidad_Academica`) REFERENCES `unidad_academica` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `galardonado_ibfk_2` FOREIGN KEY (`Galardon`) REFERENCES `galardon` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `representante`
--
ALTER TABLE `representante`
  ADD CONSTRAINT `representante_ibfk_1` FOREIGN KEY (`RFCGalardonado`) REFERENCES `galardonado` (`RFC`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
