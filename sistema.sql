-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-03-2023 a las 03:32:15
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
-- Base de datos: `sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abonos`
--

CREATE TABLE `abonos` (
  `id` int(11) NOT NULL,
  `abono` decimal(10,2) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `apertura` int(11) NOT NULL DEFAULT 1,
  `id_credito` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `abonos`
--

INSERT INTO `abonos` (`id`, `abono`, `fecha`, `apertura`, `id_credito`, `id_usuario`) VALUES
(1, '5.40', '2023-03-08 23:30:51', 1, 9, 1),
(2, '2.00', '2023-03-09 22:22:20', 1, 19, 1),
(3, '4.00', '2023-03-10 14:26:42', 1, 2, 1),
(4, '3.00', '2023-03-10 21:17:04', 1, 6, 1),
(5, '3.00', '2023-03-10 21:19:32', 1, 14, 1),
(6, '3.00', '2023-03-10 21:21:08', 1, 17, 1),
(7, '10.00', '2023-03-13 12:27:32', 1, 28, 1),
(8, '6.00', '2023-03-13 20:25:10', 1, 4, 1),
(9, '3.25', '2023-03-14 11:32:42', 1, 26, 1),
(10, '1.00', '2023-03-14 11:41:32', 1, 22, 1),
(11, '6.50', '2023-03-14 11:45:03', 1, 24, 1),
(12, '20.00', '2023-03-14 12:58:28', 1, 39, 1),
(13, '5.00', '2023-03-14 15:25:51', 1, 25, 1),
(14, '2.00', '2023-03-14 22:13:56', 1, 35, 1),
(15, '20.00', '2023-03-15 12:31:49', 1, 31, 1),
(16, '4.00', '2023-03-15 16:12:27', 1, 21, 1),
(17, '2.00', '2023-03-15 21:30:34', 1, 37, 1),
(18, '2.00', '2023-03-15 21:43:18', 1, 44, 1),
(19, '3.00', '2023-03-15 21:45:51', 1, 40, 1),
(20, '2.00', '2023-03-15 21:48:34', 1, 30, 1),
(21, '3.40', '2023-03-15 21:57:47', 1, 9, 1),
(22, '10.00', '2023-03-15 23:39:30', 1, 39, 1),
(23, '1.00', '2023-03-15 23:41:59', 1, 20, 1),
(24, '3.00', '2023-03-15 23:47:15', 1, 55, 1),
(25, '1.20', '2023-03-16 14:42:58', 1, 59, 1),
(26, '15.00', '2023-03-16 21:07:08', 1, 34, 1),
(27, '15.00', '2023-03-16 21:09:24', 1, 41, 1),
(28, '10.00', '2023-03-16 21:11:44', 1, 57, 1),
(29, '35.00', '2023-03-16 21:30:01', 1, 64, 1),
(30, '0.80', '2023-03-16 21:32:49', 1, 64, 1),
(31, '20.80', '2023-03-16 21:50:30', 1, 66, 1),
(32, '3.00', '2023-03-16 22:48:14', 1, 15, 1),
(33, '1.50', '2023-03-17 16:17:56', 1, 25, 1),
(34, '5.00', '2023-03-17 16:54:12', 1, 39, 1),
(35, '3.00', '2023-03-17 19:54:18', 1, 51, 1),
(36, '5.00', '2023-03-20 12:18:45', 1, 39, 1),
(37, '9.00', '2023-03-20 16:07:08', 1, 49, 1),
(38, '6.00', '2023-03-20 16:09:31', 1, 48, 1),
(39, '5.00', '2023-03-20 16:11:36', 1, 39, 1),
(40, '3.25', '2023-03-20 16:21:15', 1, 69, 1),
(41, '17.50', '2023-03-20 16:25:43', 1, 71, 1),
(42, '7.00', '2023-03-20 22:19:35', 1, 60, 1),
(43, '50.00', '2023-03-21 12:21:23', 1, 66, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `id` int(11) NOT NULL,
  `evento` varchar(30) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `detalle` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `acceso` (`id`, `evento`, `ip`, `detalle`, `fecha`) VALUES
(1, 'Inicio de Sesión', '192.168.1.145', 'Mozilla/5.0 (Linux; Android 8.1.0; moto e5 (XT1920DL)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', '2023-03-22 01:04:37'),
(2, 'Cierre de Sesión', '192.168.1.145', 'Mozilla/5.0 (Linux; Android 8.1.0; moto e5 (XT1920DL)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', '2023-03-22 01:07:23'),
(3, 'Cierre de Sesión', '192.168.1.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '2023-03-22 01:15:22'),
(4, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 14:50:44'),
(5, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 15:04:15'),
(6, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 15:04:53'),
(7, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 15:15:16'),
(8, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 15:20:27'),
(9, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 15:20:34'),
(10, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 15:22:27'),
(11, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 15:25:28'),
(12, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 15:27:54'),
(13, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 15:28:11'),
(14, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 15:48:20'),
(15, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 15:49:38'),
(16, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 15:49:51'),
(17, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 15:57:06'),
(18, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 15:57:51'),
(19, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:00:47'),
(20, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:01:07'),
(21, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:14:20'),
(22, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:15:51'),
(23, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:21:45'),
(24, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:22:24'),
(25, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:22:35'),
(26, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:23:02'),
(27, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:23:04'),
(28, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:23:48'),
(29, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:26:14'),
(30, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:26:22'),
(31, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:26:54'),
(32, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:27:02'),
(33, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:27:21'),
(34, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:27:27'),
(35, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:44:11'),
(36, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:44:16'),
(37, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:44:30'),
(38, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:50:39'),
(39, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:50:57'),
(40, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:51:04'),
(41, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:53:19'),
(42, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:53:30'),
(43, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:54:28'),
(44, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:54:42'),
(45, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:55:39'),
(46, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:55:44'),
(47, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:57:54'),
(48, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:57:59'),
(49, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:58:08'),
(50, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 18:58:43'),
(51, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 19:01:11'),
(52, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 19:01:19'),
(53, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 19:03:25'),
(54, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 19:10:42'),
(55, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 19:11:24'),
(56, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 19:11:31'),
(57, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 19:19:42'),
(58, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 19:20:07'),
(59, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 19:29:14'),
(60, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 19:35:05'),
(61, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 19:45:32'),
(62, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 19:45:41'),
(63, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 20:17:04'),
(64, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 20:17:16'),
(65, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 20:29:28'),
(66, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 20:32:24'),
(67, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 20:33:55'),
(68, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 20:34:03'),
(69, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 20:34:23'),
(70, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 20:34:27'),
(71, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 20:36:44'),
(72, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 20:36:57'),
(73, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 20:37:10'),
(74, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 20:38:22'),
(75, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 20:39:18'),
(76, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 20:39:45'),
(77, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:01:11'),
(78, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:01:18'),
(79, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:01:47'),
(80, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:01:54'),
(81, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:14:42'),
(82, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:14:50'),
(83, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:21:37'),
(84, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:21:53'),
(85, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:22:17'),
(86, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:22:27'),
(87, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:22:35'),
(88, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:22:50'),
(89, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:23:03'),
(90, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:23:07'),
(91, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:23:17'),
(92, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:23:25'),
(93, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:24:10'),
(94, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:24:18'),
(95, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:42:52'),
(96, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:43:05'),
(97, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:43:36'),
(98, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:43:39'),
(99, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:48:42'),
(100, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:49:04'),
(101, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:49:15'),
(102, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:50:21'),
(103, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:52:56'),
(104, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:53:12'),
(105, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:53:26'),
(106, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:54:10'),
(107, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:54:59'),
(108, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:55:06'),
(109, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:55:17'),
(110, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:55:46'),
(111, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:58:56'),
(112, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-25 21:59:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apartados`
--

CREATE TABLE `apartados` (
  `id` int(11) NOT NULL,
  `productos` longtext NOT NULL,
  `fecha_create` date DEFAULT NULL,
  `fecha_apartado` datetime NOT NULL,
  `fecha_retiro` datetime NOT NULL,
  `abono` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `color` varchar(15) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_cliente` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`, `estado`) VALUES
(1, 'BEBIDAS', '2023-03-03 15:02:17', 1),
(2, 'ALIMENTO', '2023-03-03 15:50:47', 1),
(3, 'CAFE', '2023-03-04 13:26:59', 1),
(4, 'SUPLEMENTOS', '2023-03-06 12:43:33', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cierre_caja`
--

CREATE TABLE `cierre_caja` (
  `id` int(11) NOT NULL,
  `monto_inicial` decimal(10,2) NOT NULL,
  `fecha_apertura` date NOT NULL,
  `fecha_cierre` date DEFAULT NULL,
  `monto_final` decimal(10,2) DEFAULT NULL,
  `total_ventas` int(11) DEFAULT NULL,
  `egresos` decimal(10,2) DEFAULT NULL,
  `gastos` decimal(10,2) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cierre_caja`
--

INSERT INTO `cierre_caja` (`id`, `monto_inicial`, `fecha_apertura`, `fecha_cierre`, `monto_final`, `total_ventas`, `egresos`, `gastos`, `estado`, `id_usuario`) VALUES
(1, '20.00', '2023-03-03', '2023-03-07', '0.00', 12, '0.00', '0.00', 0, 1),
(2, '50.00', '2023-03-07', '2023-03-08', '0.00', 3, '24.10', '0.00', 0, 1),
(3, '26.00', '2023-03-08', NULL, NULL, NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `identidad` varchar(50) NOT NULL,
  `num_ci` varchar(15) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(200) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_sucursal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `identidad`, `num_ci`, `nombre`, `telefono`, `correo`, `direccion`, `fecha`, `estado`, `id_sucursal`) VALUES
(1, 'V', '20808632', 'ARNALDO GONZALEZ', '04148696650', NULL, '<p>San Félix</p>', '2023-03-25 21:55:34', 1, 2),
(2, 'V', '14509161', 'RONNY FLORES', '04143875701', NULL, '<p>La Churuata&nbsp;</p>', '2023-03-25 17:56:48', 1, 1),
(3, 'V', '9950389', 'GERMAN LEMUS', '04148711150', NULL, '<p>Los Olivos</p>', '2023-03-25 17:57:31', 1, 1),
(4, 'V', '19094489', 'YOJAIRA TURKA', '04149929018', NULL, '<p>Los Olivos&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(5, 'V', '25387103', 'PEDRO MISTERIO', '04148682232', NULL, '<p>Pto Ordaz</p>', '2023-03-25 17:57:31', 1, 1),
(6, 'V', '20252369', 'RASHAD YOUNES', '04249020695', NULL, '<p>Los Olivos&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(7, 'V', '20504067', 'NAYRETH ANTUAREZ', '04147654382', NULL, '<p>Pto Ordaz&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(8, 'V', '19331229', 'GREISY', '04140986923', NULL, '<p>Los Olivos&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(9, 'V', '19804237', 'PAOLA GONZALEZ', '04147706816', NULL, '<p>Jardin Levante Alta Vista Sur&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(10, 'V', '30905323', 'YANIER RODRIGUEZ', '04148931804', NULL, '<p>Los Mangos&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(11, 'V', '20598632', 'DANIELBA BOLIVAR', '04121175418', NULL, '<p>Los Olivos&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(12, 'V', '20596356', 'MOROCHO', '04249058410', NULL, '<p>Los Olivos&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(13, 'V', '20597863', 'YAI MARIA', '04249602845', NULL, '<p>Villa Asia</p>', '2023-03-25 17:57:31', 1, 1),
(14, 'V', '26359366', 'LUIS COELLO', '04120885348', NULL, '<p>Los Mangos&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(15, 'V', '00000000', 'VENTA RAPIDA', '04249219865', NULL, '<p>cc los olivos local 12&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(16, 'V', '26362207', 'VICTOR PLAZZI', '04249678628', NULL, '<p>Los Saltos&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(17, 'V', '22639454', 'NELLY RUJANO', '04148952285', NULL, '<p>Los Olivos</p>', '2023-03-25 17:57:31', 1, 1),
(18, 'V', '20589632', 'ANABEL GIL', '04249683126', NULL, '<p>Villa Asia&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(19, 'V', '2536963', 'FELIX', '04249481032', NULL, '<p>Los Olivos</p>', '2023-03-25 17:57:31', 1, 1),
(20, 'V', '19419237', 'PAOLA GARCIA', '04249107479', NULL, '<p>Vila Asia&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(21, 'V', '17289843', 'EDISSON BELLRIN', '04249581449', NULL, '<p>Pto Ordaz</p>', '2023-03-25 17:57:31', 1, 1),
(22, 'V', '25987463', 'RAWY FREITES', '04249709582', NULL, '<p>Los Olivos&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(23, 'V', '14726833', 'NELLYS ABREU', '04249072793', NULL, '<p>La Churuata</p>', '2023-03-25 17:57:31', 1, 1),
(24, 'V', '28619834', 'ISABEL RAMOS', '04244178936', NULL, '<p>Los Olivos&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(25, 'V', '20589636', 'PAOLA BERMUDEZ', '04148825134', NULL, '<p>Los Olivos</p>', '2023-03-25 17:57:31', 1, 1),
(26, 'V', '22590454', 'GARIC DÍAZ', '04127435460', NULL, '<p>Pto Ordaz</p>', '2023-03-25 17:57:31', 1, 1),
(27, 'V', '259863', 'ROSELIN', '04267987935', NULL, '<p>Los Olivos</p>', '2023-03-25 17:57:31', 1, 1),
(28, 'V', '20584796', 'ABRAHAM CASTRO', '04148850919', NULL, '<p>Pto Ordaz&nbsp;</p>', '2023-03-25 17:57:31', 1, 1),
(29, 'V', '18460472', 'ARMENIA DEL NOGAL', '04249124926', NULL, '<p>Los Mangos</p>', '2023-03-25 17:57:31', 1, 1),
(30, 'V', '20345678', 'CAROLINA PANIZ', '04148964748', NULL, '<p>Los Olivos</p>', '2023-03-25 17:57:31', 1, 1),
(31, 'V', '25849032', 'MATÍAS LOVERA', '04148787778', NULL, '<p>Los Olivos</p>', '2023-03-25 17:57:31', 1, 1),
(32, 'V', '123', 'PRUEBA', '123', 'prueba@gmail.com', '<p>Este es un usuario de prueba</p>', '2023-03-25 18:01:48', 1, NULL),
(33, 'V', '1111144', 'PRUEBA', '15457487', 'guao@gmail.com', '<p>no se&nbsp;</p>', '2023-03-25 21:56:56', 1, NULL),
(34, 'V', '587878', 'PRUEBADOS', '54787', 'dasd@gmail.com', '<p>ddsfsfd</p>', '2023-03-25 21:58:05', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `productos` longtext NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `serie` varchar(20) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `apertura` int(11) NOT NULL DEFAULT 1,
  `id_proveedor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `productos`, `total`, `fecha`, `hora`, `serie`, `estado`, `apertura`, `id_proveedor`, `id_usuario`) VALUES
(1, '[{\"id\":\"18\",\"nombre\":\"SPEED LATA (24 UND )\",\"precio\":\"10.30\",\"cantidad\":1},{\"id\":\"19\",\"nombre\":\"GATORADE CAJA 12 UND\",\"precio\":\"13.80\",\"cantidad\":1}]', '24.10', '2023-03-07', '15:54:19', '0002', 1, 0, 2, 1),
(2, '[{\"id\":\"17\",\"nombre\":\"AGUA MINALBA (24 UND)\",\"precio\":\"14.00\",\"cantidad\":1}]', '14.00', '2023-03-08', '16:05:21', '0002', 1, 1, 1, 1),
(3, '[{\"id\":\"19\",\"nombre\":\"GATORADE CAJA 12 UND\",\"precio\":\"13.80\",\"cantidad\":1},{\"id\":\"18\",\"nombre\":\"SPEED LATA (24 UND )\",\"precio\":\"10.30\",\"cantidad\":1}]', '24.10', '2023-03-14', '16:29:47', '0002', 1, 1, 2, 1),
(4, '[{\"id\":\"31\",\"nombre\":\"CAJA MALTA 36 UND\",\"precio\":\"14.00\",\"cantidad\":1}]', '14.00', '2023-03-15', '17:49:29', '0004', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `rif` int(12) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `direccion` text NOT NULL,
  `mensaje` text NOT NULL,
  `impuesto` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `rif`, `nombre`, `telefono`, `correo`, `direccion`, `mensaje`, `impuesto`) VALUES
(1, 502226605, 'INGSHOP', '04249219865', 'ingshopve@gmail.com', 'CC. Los Olivos local 12. Puerto Ordaz- Estado Bolivar', '<p>Somos tienda fisica en Puerto Ordaz. Productos importados con los mejores precios del mercado.</p>', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos`
--

CREATE TABLE `creditos` (
  `id` int(11) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `creditos`
--

INSERT INTO `creditos` (`id`, `monto`, `fecha`, `hora`, `estado`, `id_venta`) VALUES
(1, '6.00', '2023-03-03', '00:00:00', 1, 1),
(2, '4.00', '2023-03-03', '00:00:00', 0, 3),
(4, '6.00', '2023-03-06', '00:00:00', 0, 5),
(5, '3.00', '2023-03-06', '00:00:00', 1, 6),
(6, '3.00', '2023-03-06', '00:00:00', 0, 7),
(8, '5.00', '2023-03-06', '00:00:00', 1, 9),
(9, '8.80', '2023-03-07', '00:00:00', 0, 10),
(10, '6.50', '2023-03-07', '00:00:00', 1, 11),
(11, '3.00', '2023-03-07', '00:00:00', 1, 12),
(12, '1.00', '2023-03-07', '00:00:00', 1, 13),
(13, '0.80', '2023-03-08', '00:00:00', 0, 14),
(14, '3.00', '2023-03-08', '00:00:00', 0, 15),
(15, '3.00', '2023-03-08', '00:00:00', 0, 16),
(16, '35.00', '2023-03-08', '00:00:00', 2, 17),
(17, '3.00', '2023-03-08', '00:00:00', 0, 18),
(18, '0.80', '2023-03-09', '00:00:00', 0, 19),
(19, '2.00', '2023-03-09', '00:00:00', 0, 20),
(20, '1.00', '2023-03-09', '00:00:00', 0, 21),
(21, '4.00', '2023-03-09', '00:00:00', 0, 22),
(22, '1.00', '2023-03-10', '00:00:00', 0, 24),
(23, '1.00', '2023-03-10', '00:00:00', 1, 25),
(24, '6.50', '2023-03-10', '00:00:00', 0, 27),
(25, '6.50', '2023-03-10', '00:00:00', 0, 28),
(26, '3.25', '2023-03-10', '00:00:00', 0, 29),
(27, '0.80', '2023-03-10', '00:00:00', 0, 31),
(28, '35.00', '2023-03-11', '00:00:00', 2, 32),
(29, '10.00', '2023-03-11', '00:00:00', 2, 33),
(30, '2.00', '2023-03-11', '00:00:00', 0, 35),
(31, '40.00', '2023-03-13', '00:00:00', 1, 36),
(32, '3.25', '2023-03-13', '00:00:00', 1, 37),
(33, '20.00', '2023-03-13', '00:00:00', 1, 39),
(34, '15.00', '2023-03-13', '00:00:00', 0, 40),
(35, '2.00', '2023-03-13', '00:00:00', 0, 42),
(36, '9.00', '2023-03-13', '00:00:00', 1, 43),
(37, '2.00', '2023-03-13', '00:00:00', 0, 44),
(38, '0.80', '2023-03-14', '00:00:00', 0, 47),
(39, '45.00', '2023-03-14', '00:00:00', 0, 48),
(40, '3.00', '2023-03-14', '00:00:00', 0, 51),
(41, '15.00', '2023-03-14', '00:00:00', 0, 52),
(42, '5.00', '2023-03-14', '00:00:00', 1, 53),
(43, '5.00', '2023-03-14', '00:00:00', 1, 54),
(44, '2.00', '2023-03-14', '00:00:00', 0, 56),
(45, '2.00', '2023-03-14', '00:00:00', 1, 57),
(46, '2.00', '2023-03-14', '00:00:00', 1, 59),
(47, '6.00', '2023-03-15', '00:00:00', 1, 61),
(48, '6.00', '2023-03-15', '00:00:00', 0, 62),
(49, '9.00', '2023-03-15', '00:00:00', 0, 65),
(50, '1.20', '2023-03-15', '00:00:00', 2, 66),
(51, '3.00', '2023-03-15', '00:00:00', 0, 68),
(52, '0.80', '2023-03-15', '00:00:00', 0, 70),
(53, '0.60', '2023-03-15', '00:00:00', 0, 72),
(54, '0.80', '2023-03-15', '00:00:00', 0, 73),
(55, '3.00', '2023-03-15', '00:00:00', 0, 74),
(56, '5.00', '2023-03-15', '00:00:00', 1, 75),
(57, '10.00', '2023-03-15', '00:00:00', 0, 76),
(58, '3.25', '2023-03-16', '00:00:00', 1, 77),
(59, '1.20', '2023-03-16', '00:00:00', 0, 79),
(60, '7.00', '2023-03-16', '00:00:00', 0, 80),
(61, '0.60', '2023-03-16', '00:00:00', 0, 81),
(62, '2.00', '2023-03-16', '00:00:00', 1, 84),
(63, '70.80', '2023-03-16', '00:00:00', 2, 89),
(64, '70.80', '2023-03-16', '00:00:00', 2, 90),
(65, '70.80', '2023-03-16', '00:00:00', 2, 92),
(66, '70.80', '2023-03-16', '00:00:00', 0, 93),
(67, '0.60', '2023-03-16', '00:00:00', 0, 95),
(68, '0.80', '2023-03-17', '00:00:00', 0, 99),
(69, '3.25', '2023-03-17', '00:00:00', 0, 100),
(70, '2.80', '2023-03-17', '00:00:00', 1, 101),
(71, '35.00', '2023-03-17', '00:00:00', 1, 102),
(72, '1.80', '2023-03-17', '00:00:00', 1, 103),
(73, '2.00', '2023-03-17', '00:00:00', 1, 104),
(74, '0.80', '2023-03-18', '00:00:00', 0, 106),
(75, '1.00', '2023-03-20', '00:00:00', 1, 115),
(76, '1.80', '2023-03-20', '00:00:00', 1, 117),
(77, '1.00', '2023-03-20', '00:00:00', 1, 119),
(78, '22.00', '2023-03-20', '00:00:00', 1, 120),
(79, '6.00', '2023-03-20', '00:00:00', 1, 123),
(80, '1.50', '2023-03-20', '00:00:00', 1, 124),
(81, '1.00', '2023-03-20', '00:00:00', 1, 125),
(82, '0.20', '2023-03-20', '00:00:00', 0, 126),
(83, '0.20', '2023-03-20', '00:00:00', 0, 127),
(84, '0.20', '2023-03-20', '00:00:00', 0, 128),
(85, '5.60', '2023-03-20', '00:00:00', 1, 130),
(86, '0.80', '2023-03-20', '00:00:00', 0, 131),
(87, '3.00', '2023-03-20', '00:00:00', 1, 132),
(88, '15.00', '2023-03-20', '00:00:00', 1, 133),
(89, '0.80', '2023-03-20', '00:00:00', 0, 134),
(90, '3.25', '2023-03-20', '00:00:00', 1, 135),
(91, '15.00', '2023-03-20', '00:00:00', 1, 138),
(92, '3.25', '2023-03-21', '00:00:00', 1, 139),
(93, '15.00', '2023-03-21', '00:00:00', 1, 140),
(94, '15.00', '2023-03-21', '00:00:00', 1, 141),
(95, '148.00', '2023-03-21', '00:00:00', 1, 142);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_apartado`
--

CREATE TABLE `detalle_apartado` (
  `id` int(11) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `apertura` int(11) NOT NULL DEFAULT 1,
  `id_apartado` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` int(11) NOT NULL,
  `monto` decimal(10,0) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `foto` varchar(150) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `apertura` int(11) NOT NULL DEFAULT 1,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `movimiento` varchar(100) NOT NULL,
  `accion` varchar(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `stock_Actual` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_producto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_sucursal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `movimiento`, `accion`, `cantidad`, `stock_Actual`, `fecha`, `id_producto`, `id_usuario`, `id_sucursal`) VALUES
(1, 'Ajuste de Inventario: entrada', 'entrada', 5, 5, '2023-03-25 20:32:00', 1, 1, 1),
(2, 'Ajuste de Inventario: entrada', 'entrada', 17, 17, '2023-03-25 20:32:00', 2, 1, 1),
(3, 'Ajuste de Inventario: entrada', 'entrada', 33, 33, '2023-03-25 20:32:00', 3, 1, 1),
(4, 'Ajuste de Inventario: entrada', 'entrada', 4, 4, '2023-03-25 20:32:00', 4, 1, 1),
(5, 'Venta N°: 1', 'salida', 1, 31, '2023-03-25 20:32:00', 3, 1, 1),
(6, 'Venta N°: 1', 'salida', 1, 2, '2023-03-25 20:32:00', 4, 1, 1),
(7, 'Ajuste de Inventario: entrada', 'entrada', 6, 6, '2023-03-25 20:32:00', 5, 1, 1),
(8, 'Venta N°: 2', 'salida', 1, 30, '2023-03-25 20:32:00', 3, 1, 1),
(9, 'Venta N°: 2', 'salida', 1, 4, '2023-03-25 20:32:00', 5, 1, 1),
(10, 'Devolución Venta N°: 2', 'entrada', 1, 32, '2023-03-25 20:32:00', 3, 1, 1),
(11, 'Devolución Venta N°: 2', 'entrada', 1, 6, '2023-03-25 20:32:00', 5, 1, 1),
(12, 'Venta N°: 3', 'salida', 1, 30, '2023-03-25 20:32:00', 3, 1, 1),
(13, 'Venta N°: 3', 'salida', 1, 4, '2023-03-25 20:32:00', 5, 1, 1),
(14, 'Venta N°: 4', 'salida', 2, 13, '2023-03-25 20:32:00', 2, 1, 1),
(15, 'Venta N°: 4', 'salida', 1, 29, '2023-03-25 20:32:00', 3, 1, 1),
(16, 'Ajuste de Inventario: entrada', 'entrada', 100, 100, '2023-03-25 20:32:00', 7, 1, 1),
(17, 'Venta N°: 5', 'salida', 1, 28, '2023-03-25 20:32:00', 3, 1, 1),
(18, 'Venta N°: 5', 'salida', 1, 98, '2023-03-25 20:32:00', 7, 1, 1),
(19, 'Devolución Venta N°: 4', 'entrada', 2, 17, '2023-03-25 20:32:00', 2, 1, 1),
(20, 'Devolución Venta N°: 4', 'entrada', 1, 30, '2023-03-25 20:32:00', 3, 1, 1),
(21, 'Venta N°: 6', 'salida', 1, 15, '2023-03-25 20:32:00', 2, 1, 1),
(22, 'Venta N°: 6', 'salida', 1, 28, '2023-03-25 20:32:00', 3, 1, 1),
(23, 'Ajuste de Inventario: entrada', 'entrada', 100, 100, '2023-03-25 20:32:00', 6, 1, 1),
(24, 'Ajuste de Inventario: entrada', 'entrada', 100, 100, '2023-03-25 20:32:00', 9, 1, 1),
(25, 'Venta N°: 7', 'salida', 1, 98, '2023-03-25 20:32:00', 6, 1, 1),
(26, 'Venta N°: 8', 'salida', 1, 14, '2023-03-25 20:32:00', 2, 1, 1),
(27, 'Venta N°: 8', 'salida', 1, 27, '2023-03-25 20:32:00', 3, 1, 1),
(28, 'Ajuste de Inventario: entrada', 'entrada', 13, 28, '2023-03-25 20:32:00', 2, 1, 1),
(29, 'Venta N°: 9', 'salida', 1, 26, '2023-03-25 20:32:00', 3, 1, 1),
(30, 'Venta N°: 9', 'salida', 2, 24, '2023-03-25 20:32:00', 2, 1, 1),
(31, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 11, 1, 1),
(32, 'Venta N°: 10', 'salida', 1, 3, '2023-03-25 20:32:00', 1, 1, 1),
(33, 'Venta N°: 10', 'salida', 1, 24, '2023-03-25 20:32:00', 2, 1, 1),
(34, 'Venta N°: 10', 'salida', 1, 0, '2023-03-25 20:32:00', 11, 1, 1),
(35, 'Devolución Venta N°: 8', 'entrada', 1, 26, '2023-03-25 20:32:00', 2, 1, 1),
(36, 'Devolución Venta N°: 8', 'entrada', 1, 28, '2023-03-25 20:32:00', 3, 1, 1),
(37, 'Devolución Venta N°: 3', 'entrada', 1, 29, '2023-03-25 20:32:00', 3, 1, 1),
(38, 'Devolución Venta N°: 3', 'entrada', 1, 6, '2023-03-25 20:32:00', 5, 1, 1),
(39, 'Ajuste de Inventario: entrada', 'entrada', 100, 200, '2023-03-25 20:32:00', 9, 1, 1),
(40, 'Venta N°: 11', 'salida', 2, 196, '2023-03-25 20:32:00', 9, 1, 1),
(41, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 10, 1, 1),
(42, 'Ajuste de Inventario: entrada', 'entrada', 6, 6, '2023-03-25 20:32:00', 12, 1, 1),
(43, 'Ajuste de Inventario: entrada', 'entrada', 5, 5, '2023-03-25 20:32:00', 13, 1, 1),
(44, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 14, 1, 1),
(45, 'Ajuste de Inventario: entrada', 'entrada', 3, 3, '2023-03-25 20:32:00', 15, 1, 1),
(46, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 16, 1, 1),
(47, 'Venta N°: 12', 'salida', 1, 97, '2023-03-25 20:32:00', 6, 1, 1),
(48, 'Compra N°: 1', 'entrada', 1, 1, '2023-03-25 20:32:00', 18, 1, 1),
(49, 'Compra N°: 1', 'entrada', 1, 1, '2023-03-25 20:32:00', 19, 1, 1),
(50, 'Venta N°: 13', 'salida', 1, 27, '2023-03-25 20:32:00', 3, 1, 1),
(51, 'Venta N°: 14', 'salida', 1, 2, '2023-03-25 20:32:00', 1, 1, 1),
(52, 'Venta N°: 15', 'salida', 1, 96, '2023-03-25 20:32:00', 6, 1, 1),
(53, 'Venta N°: 16', 'salida', 1, 95, '2023-03-25 20:32:00', 6, 1, 1),
(54, 'Compra N°: 2', 'entrada', 1, 1, '2023-03-25 20:32:00', 17, 1, 1),
(55, 'Venta N°: 17', 'salida', 1, 1, '2023-03-25 20:32:00', 15, 1, 1),
(56, 'Venta N°: 18', 'salida', 1, 94, '2023-03-25 20:32:00', 6, 1, 1),
(57, 'Venta N°: 19', 'salida', 1, 1, '2023-03-25 20:32:00', 1, 1, 1),
(58, 'Venta N°: 20', 'salida', 1, 24, '2023-03-25 20:32:00', 2, 1, 1),
(59, 'Venta N°: 21', 'salida', 1, 26, '2023-03-25 20:32:00', 3, 1, 1),
(60, 'Venta N°: 22', 'salida', 2, 21, '2023-03-25 20:32:00', 2, 1, 1),
(61, 'Ajuste de Inventario: entrada', 'entrada', 25, 223, '2023-03-25 20:32:00', 9, 1, 1),
(62, 'Venta N°: 23', 'salida', 2, 219, '2023-03-25 20:32:00', 9, 1, 1),
(63, 'Ajuste de Inventario: salida', 'salida', 9, 18, '2023-03-25 20:32:00', 3, 1, 1),
(64, 'Ajuste de Inventario: salida', 'salida', 7, 11, '2023-03-25 20:32:00', 3, 1, 1),
(65, 'Venta N°: 24', 'salida', 1, 9, '2023-03-25 20:32:00', 3, 1, 1),
(66, 'Venta N°: 25', 'salida', 1, 8, '2023-03-25 20:32:00', 3, 1, 1),
(67, 'Venta N°: 26', 'salida', 2, 217, '2023-03-25 20:32:00', 9, 1, 1),
(68, 'Venta N°: 27', 'salida', 2, 215, '2023-03-25 20:32:00', 9, 1, 1),
(69, 'Venta N°: 28', 'salida', 2, 213, '2023-03-25 20:32:00', 9, 1, 1),
(70, 'Venta N°: 29', 'salida', 1, 213, '2023-03-25 20:32:00', 9, 1, 1),
(71, 'Ajuste de Inventario: entrada', 'entrada', 16, 16, '2023-03-25 20:32:00', 20, 1, 1),
(72, 'Ajuste de Inventario: entrada', 'entrada', 3, 3, '2023-03-25 20:32:00', 21, 1, 1),
(73, 'Ajuste de Inventario: entrada', 'entrada', 3, 3, '2023-03-25 20:32:00', 22, 1, 1),
(74, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 23, 1, 1),
(75, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 24, 1, 1),
(76, 'Venta N°: 30', 'salida', 1, 93, '2023-03-25 20:32:00', 6, 1, 1),
(77, 'Venta N°: 31', 'salida', 1, 0, '2023-03-25 20:32:00', 1, 1, 1),
(78, 'Venta N°: 32', 'salida', 1, 0, '2023-03-25 20:32:00', 15, 1, 1),
(79, 'Venta N°: 33', 'salida', 2, 95, '2023-03-25 20:32:00', 7, 1, 1),
(80, 'Venta N°: 34', 'salida', 1, 21, '2023-03-25 20:32:00', 2, 1, 1),
(81, 'Venta N°: 35', 'salida', 1, 20, '2023-03-25 20:32:00', 2, 1, 1),
(82, 'Venta N°: 36', 'salida', 1, -1, '2023-03-25 20:32:00', 24, 1, 1),
(83, 'Ajuste de Inventario: entrada', 'entrada', 48, 48, '2023-03-25 20:32:00', 25, 1, 1),
(84, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 24, 1, 1),
(85, 'Venta N°: 37', 'salida', 1, 212, '2023-03-25 20:32:00', 9, 1, 1),
(86, 'Venta N°: 38', 'salida', 4, 89, '2023-03-25 20:32:00', 7, 1, 1),
(87, 'Venta N°: 39', 'salida', 4, 85, '2023-03-25 20:32:00', 7, 1, 1),
(88, 'Venta N°: 40', 'salida', 3, 83, '2023-03-25 20:32:00', 7, 1, 1),
(89, 'Venta N°: 41', 'salida', 1, -1, '2023-03-25 20:32:00', 1, 1, 1),
(90, 'Venta N°: 41', 'salida', 1, 19, '2023-03-25 20:32:00', 2, 1, 1),
(91, 'Ajuste de Inventario: entrada', 'entrada', 45, 45, '2023-03-25 20:32:00', 26, 1, 1),
(92, 'Venta N°: 42', 'salida', 2, 41, '2023-03-25 20:32:00', 26, 1, 1),
(93, 'Venta N°: 43', 'salida', 2, 16, '2023-03-25 20:32:00', 2, 1, 1),
(94, 'Venta N°: 43', 'salida', 1, 84, '2023-03-25 20:32:00', 7, 1, 1),
(95, 'Venta N°: 44', 'salida', 1, 16, '2023-03-25 20:32:00', 2, 1, 1),
(96, 'Venta N°: 45', 'salida', 2, 209, '2023-03-25 20:32:00', 9, 1, 1),
(97, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 27, 1, 1),
(98, 'Venta N°: 46', 'salida', 1, -1, '2023-03-25 20:32:00', 27, 1, 1),
(99, 'Venta N°: 46', 'salida', 1, 92, '2023-03-25 20:32:00', 6, 1, 1),
(100, 'Ajuste de Inventario: entrada', 'entrada', 6, 6, '2023-03-25 20:32:00', 1, 1, 1),
(101, 'Venta N°: 47', 'salida', 1, 4, '2023-03-25 20:32:00', 1, 1, 1),
(102, 'Devolución Venta N°: 32', 'entrada', 1, 2, '2023-03-25 20:32:00', 15, 1, 1),
(103, 'Devolución Venta N°: 33', 'entrada', 2, 87, '2023-03-25 20:32:00', 7, 1, 1),
(104, 'Venta N°: 48', 'salida', 1, 3, '2023-03-25 20:32:00', 13, 1, 1),
(105, 'Compra N°: 3', 'entrada', 1, 2, '2023-03-25 20:32:00', 19, 1, 1),
(106, 'Compra N°: 3', 'entrada', 1, 2, '2023-03-25 20:32:00', 18, 1, 1),
(107, 'Ajuste de Inventario: entrada', 'entrada', 12, 14, '2023-03-25 20:32:00', 19, 1, 1),
(108, 'Venta N°: 49', 'salida', 2, 13, '2023-03-25 20:32:00', 2, 1, 1),
(109, 'Venta N°: 50', 'salida', 1, 91, '2023-03-25 20:32:00', 6, 1, 1),
(110, 'Venta N°: 51', 'salida', 1, 90, '2023-03-25 20:32:00', 6, 1, 1),
(111, 'Venta N°: 52', 'salida', 3, 81, '2023-03-25 20:32:00', 7, 1, 1),
(112, 'Venta N°: 53', 'salida', 1, 82, '2023-03-25 20:32:00', 7, 1, 1),
(113, 'Venta N°: 54', 'salida', 1, 81, '2023-03-25 20:32:00', 7, 1, 1),
(114, 'Venta N°: 55', 'salida', 1, 80, '2023-03-25 20:32:00', 7, 1, 1),
(115, 'Venta N°: 56', 'salida', 1, 13, '2023-03-25 20:32:00', 2, 1, 1),
(116, 'Venta N°: 57', 'salida', 1, 12, '2023-03-25 20:32:00', 2, 1, 1),
(117, 'Venta N°: 58', 'salida', 1, 7, '2023-03-25 20:32:00', 3, 1, 1),
(118, 'Venta N°: 59', 'salida', 1, 11, '2023-03-25 20:32:00', 2, 1, 1),
(119, 'Venta N°: 60', 'salida', 1, 10, '2023-03-25 20:32:00', 2, 1, 1),
(120, 'Ajuste de Inventario: entrada', 'entrada', 3, 3, '2023-03-25 20:32:00', 28, 1, 1),
(121, 'Venta N°: 61', 'salida', 1, 1, '2023-03-25 20:32:00', 28, 1, 1),
(122, 'Venta N°: 62', 'salida', 1, 0, '2023-03-25 20:32:00', 28, 1, 1),
(123, 'Venta N°: 63', 'salida', 1, 79, '2023-03-25 20:32:00', 7, 1, 1),
(124, 'Venta N°: 64', 'salida', 1, 46, '2023-03-25 20:32:00', 25, 1, 1),
(125, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 29, 1, 1),
(126, 'Venta N°: 65', 'salida', 1, 0, '2023-03-25 20:32:00', 29, 1, 1),
(127, 'Compra N°: 4', 'entrada', 1, 1, '2023-03-25 20:32:00', 31, 1, 1),
(128, 'Ajuste de Inventario: entrada', 'entrada', 36, 36, '2023-03-25 20:32:00', 30, 1, 1),
(129, 'Venta N°: 66', 'salida', 2, 32, '2023-03-25 20:32:00', 30, 1, 1),
(130, 'Devolución Venta N°: 66', 'entrada', 2, 36, '2023-03-25 20:32:00', 30, 1, 1),
(131, 'Venta N°: 67', 'salida', 1, 34, '2023-03-25 20:32:00', 30, 1, 1),
(132, 'Venta N°: 68', 'salida', 1, 89, '2023-03-25 20:32:00', 6, 1, 1),
(133, 'Venta N°: 69', 'salida', 1, 9, '2023-03-25 20:32:00', 2, 1, 1),
(134, 'Venta N°: 70', 'salida', 1, 3, '2023-03-25 20:32:00', 1, 1, 1),
(135, 'Venta N°: 71', 'salida', 1, 8, '2023-03-25 20:32:00', 2, 1, 1),
(136, 'Venta N°: 72', 'salida', 1, 33, '2023-03-25 20:32:00', 30, 1, 1),
(137, 'Venta N°: 73', 'salida', 1, 2, '2023-03-25 20:32:00', 1, 1, 1),
(138, 'Venta N°: 74', 'salida', 1, 88, '2023-03-25 20:32:00', 6, 1, 1),
(139, 'Venta N°: 75', 'salida', 1, 78, '2023-03-25 20:32:00', 7, 1, 1),
(140, 'Venta N°: 76', 'salida', 2, 75, '2023-03-25 20:32:00', 7, 1, 1),
(141, 'Ajuste de Inventario: entrada', 'entrada', 48, 95, '2023-03-25 20:32:00', 25, 1, 1),
(142, 'Ajuste de Inventario: salida', 'salida', 48, 47, '2023-03-25 20:32:00', 25, 1, 1),
(143, 'Ajuste de Inventario: salida', 'salida', 4, 5, '2023-03-25 20:32:00', 2, 1, 1),
(144, 'Ajuste de Inventario: entrada', 'entrada', 10, 15, '2023-03-25 20:32:00', 2, 1, 1),
(145, 'Ajuste de Inventario: salida', 'salida', 12, 3, '2023-03-25 20:32:00', 2, 1, 1),
(146, 'Ajuste de Inventario: entrada', 'entrada', 1, 4, '2023-03-25 20:32:00', 2, 1, 1),
(147, 'Venta N°: 77', 'salida', 1, 209, '2023-03-25 20:32:00', 9, 1, 1),
(148, 'Venta N°: 78', 'salida', 1, 1, '2023-03-25 20:32:00', 1, 1, 1),
(149, 'Venta N°: 79', 'salida', 2, 30, '2023-03-25 20:32:00', 30, 1, 1),
(150, 'Ajuste de Inventario: entrada', 'entrada', 2, 3, '2023-03-25 20:32:00', 11, 1, 1),
(151, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 27, 1, 1),
(152, 'Venta N°: 80', 'salida', 1, 0, '2023-03-25 20:32:00', 27, 1, 1),
(153, 'Venta N°: 81', 'salida', 1, 30, '2023-03-25 20:32:00', 30, 1, 1),
(154, 'Venta N°: 82', 'salida', 1, 0, '2023-03-25 20:32:00', 1, 1, 1),
(155, 'Venta N°: 83', 'salida', 1, 29, '2023-03-25 20:32:00', 30, 1, 1),
(156, 'Venta N°: 84', 'salida', 1, 2, '2023-03-25 20:32:00', 2, 1, 1),
(157, 'Venta N°: 85', 'salida', 1, 1, '2023-03-25 20:32:00', 2, 1, 1),
(158, 'Venta N°: 86', 'salida', 1, 87, '2023-03-25 20:32:00', 6, 1, 1),
(159, 'Ajuste de Inventario: entrada', 'entrada', 3, 3, '2023-03-25 20:32:00', 32, 1, 1),
(160, 'Venta N°: 87', 'salida', 1, 0, '2023-03-25 20:32:00', 15, 1, 1),
(161, 'Venta N°: 87', 'salida', 1, 1, '2023-03-25 20:32:00', 32, 1, 1),
(162, 'Venta N°: 88', 'salida', 1, 208, '2023-03-25 20:32:00', 9, 1, 1),
(163, 'Ajuste de Inventario: entrada', 'entrada', 5, 5, '2023-03-25 20:32:00', 33, 1, 1),
(164, 'Venta N°: 89', 'salida', 1, 14, '2023-03-25 20:32:00', 20, 1, 1),
(165, 'Venta N°: 89', 'salida', 1, 3, '2023-03-25 20:32:00', 33, 1, 1),
(166, 'Venta N°: 89', 'salida', 1, -1, '2023-03-25 20:32:00', 1, 1, 1),
(167, 'Devolución Venta N°: 89', 'entrada', 1, 16, '2023-03-25 20:32:00', 20, 1, 1),
(168, 'Devolución Venta N°: 89', 'entrada', 1, 5, '2023-03-25 20:32:00', 33, 1, 1),
(169, 'Devolución Venta N°: 89', 'entrada', 1, 1, '2023-03-25 20:32:00', 1, 1, 1),
(170, 'Venta N°: 90', 'salida', 1, -1, '2023-03-25 20:32:00', 1, 1, 1),
(171, 'Venta N°: 90', 'salida', 1, 14, '2023-03-25 20:32:00', 20, 1, 1),
(172, 'Venta N°: 90', 'salida', 1, 3, '2023-03-25 20:32:00', 33, 1, 1),
(173, 'Venta N°: 91', 'salida', 1, 207, '2023-03-25 20:32:00', 9, 1, 1),
(174, 'Devolución Venta N°: 90', 'entrada', 1, 1, '2023-03-25 20:32:00', 1, 1, 1),
(175, 'Devolución Venta N°: 90', 'entrada', 1, 16, '2023-03-25 20:32:00', 20, 1, 1),
(176, 'Devolución Venta N°: 90', 'entrada', 1, 5, '2023-03-25 20:32:00', 33, 1, 1),
(177, 'Venta N°: 92', 'salida', 1, 14, '2023-03-25 20:32:00', 20, 1, 1),
(178, 'Venta N°: 92', 'salida', 1, -1, '2023-03-25 20:32:00', 1, 1, 1),
(179, 'Venta N°: 92', 'salida', 1, 3, '2023-03-25 20:32:00', 33, 1, 1),
(180, 'Devolución Venta N°: 92', 'entrada', 1, 16, '2023-03-25 20:32:00', 20, 1, 1),
(181, 'Devolución Venta N°: 92', 'entrada', 1, 1, '2023-03-25 20:32:00', 1, 1, 1),
(182, 'Devolución Venta N°: 92', 'entrada', 1, 5, '2023-03-25 20:32:00', 33, 1, 1),
(183, 'Venta N°: 93', 'salida', 1, -1, '2023-03-25 20:32:00', 1, 1, 1),
(184, 'Venta N°: 93', 'salida', 1, 14, '2023-03-25 20:32:00', 20, 1, 1),
(185, 'Venta N°: 93', 'salida', 1, 3, '2023-03-25 20:32:00', 33, 1, 1),
(186, 'Venta N°: 94', 'salida', 1, 28, '2023-03-25 20:32:00', 30, 1, 1),
(187, 'Venta N°: 95', 'salida', 1, 27, '2023-03-25 20:32:00', 30, 1, 1),
(188, 'Ajuste de Inventario: entrada', 'entrada', 6, 6, '2023-03-25 20:32:00', 34, 1, 1),
(189, 'Ajuste de Inventario: entrada', 'entrada', 8, 8, '2023-03-25 20:32:00', 1, 1, 1),
(190, 'Venta N°: 96', 'salida', 1, 6, '2023-03-25 20:32:00', 1, 1, 1),
(191, 'Venta N°: 97', 'salida', 1, 4, '2023-03-25 20:32:00', 34, 1, 1),
(192, 'Venta N°: 98', 'salida', 1, 5, '2023-03-25 20:32:00', 1, 1, 1),
(193, 'Venta N°: 99', 'salida', 1, 4, '2023-03-25 20:32:00', 1, 1, 1),
(194, 'Venta N°: 100', 'salida', 1, 206, '2023-03-25 20:32:00', 9, 1, 1),
(195, 'Venta N°: 101', 'salida', 1, 3, '2023-03-25 20:32:00', 1, 1, 1),
(196, 'Venta N°: 101', 'salida', 1, 0, '2023-03-25 20:32:00', 2, 1, 1),
(197, 'Venta N°: 102', 'salida', 1, -1, '2023-03-25 20:32:00', 15, 1, 1),
(198, 'Ajuste de Inventario: entrada', 'entrada', 23, 51, '2023-03-25 20:32:00', 30, 1, 1),
(199, 'Ajuste de Inventario: salida', 'salida', 28, 23, '2023-03-25 20:32:00', 30, 1, 1),
(200, 'Ajuste de Inventario: entrada', 'entrada', 1, 24, '2023-03-25 20:32:00', 30, 1, 1),
(201, 'Ajuste de Inventario: entrada', 'entrada', 28, 52, '2023-03-25 20:32:00', 30, 1, 1),
(202, 'Venta N°: 103', 'salida', 3, 46, '2023-03-25 20:32:00', 30, 1, 1),
(203, 'Venta N°: 104', 'salida', 1, -1, '2023-03-25 20:32:00', 2, 1, 1),
(204, 'Venta N°: 105', 'salida', 1, 86, '2023-03-25 20:32:00', 6, 1, 1),
(205, 'Venta N°: 106', 'salida', 1, 2, '2023-03-25 20:32:00', 1, 1, 1),
(206, 'Ajuste de Inventario: entrada', 'entrada', 4, 4, '2023-03-25 20:32:00', 35, 1, 1),
(207, 'Venta N°: 107', 'salida', 1, 2, '2023-03-25 20:32:00', 35, 1, 1),
(208, 'Venta N°: 108', 'salida', 1, 1, '2023-03-25 20:32:00', 35, 1, 1),
(209, 'Ajuste de Inventario: salida', 'salida', 2, 3, '2023-03-25 20:32:00', 34, 1, 1),
(210, 'Venta N°: 109', 'salida', 1, 1, '2023-03-25 20:32:00', 34, 1, 1),
(211, 'Venta N°: 110', 'salida', 1, 0, '2023-03-25 20:32:00', 34, 1, 1),
(212, 'Venta N°: 111', 'salida', 1, 1, '2023-03-25 20:32:00', 4, 1, 1),
(213, 'Venta N°: 112', 'salida', 1, 0, '2023-03-25 20:32:00', 23, 1, 1),
(214, 'Venta N°: 113', 'salida', 1, 205, '2023-03-25 20:32:00', 9, 1, 1),
(215, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 36, 1, 1),
(216, 'Venta N°: 114', 'salida', 1, -1, '2023-03-25 20:32:00', 36, 1, 1),
(217, 'Venta N°: 115', 'salida', 1, 41, '2023-03-25 20:32:00', 26, 1, 1),
(218, 'Venta N°: 116', 'salida', 2, 73, '2023-03-25 20:32:00', 7, 1, 1),
(219, 'Venta N°: 117', 'salida', 3, 43, '2023-03-25 20:32:00', 30, 1, 1),
(220, 'Ajuste de Inventario: entrada', 'entrada', 16, 16, '2023-03-25 20:32:00', 53, 1, 1),
(221, 'Venta N°: 118', 'salida', 1, 85, '2023-03-25 20:32:00', 6, 1, 1),
(222, 'Ajuste de Inventario: entrada', 'entrada', 30, 38, '2023-03-25 20:32:00', 3, 1, 1),
(223, 'Ajuste de Inventario: entrada', 'entrada', 4, 4, '2023-03-25 20:32:00', 37, 1, 1),
(224, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 38, 1, 1),
(225, 'Ajuste de Inventario: entrada', 'entrada', 4, 4, '2023-03-25 20:32:00', 39, 1, 1),
(226, 'Ajuste de Inventario: entrada', 'entrada', 4, 4, '2023-03-25 20:32:00', 40, 1, 1),
(227, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 41, 1, 1),
(228, 'Ajuste de Inventario: entrada', 'entrada', 6, 6, '2023-03-25 20:32:00', 42, 1, 1),
(229, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 43, 1, 1),
(230, 'Ajuste de Inventario: entrada', 'entrada', 4, 4, '2023-03-25 20:32:00', 45, 1, 1),
(231, 'Ajuste de Inventario: entrada', 'entrada', 3, 3, '2023-03-25 20:32:00', 46, 1, 1),
(232, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 47, 1, 1),
(233, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 48, 1, 1),
(234, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 49, 1, 1),
(235, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 50, 1, 1),
(236, 'Ajuste de Inventario: entrada', 'entrada', 4, 4, '2023-03-25 20:32:00', 52, 1, 1),
(237, 'Ajuste de Inventario: entrada', 'entrada', 3, 3, '2023-03-25 20:32:00', 51, 1, 1),
(238, 'Ajuste de Inventario: entrada', 'entrada', 6, 6, '2023-03-25 20:32:00', 65, 1, 1),
(239, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 54, 1, 1),
(240, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 55, 1, 1),
(241, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 56, 1, 1),
(242, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 57, 1, 1),
(243, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 58, 1, 1),
(244, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 59, 1, 1),
(245, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 112, 1, 1),
(246, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 61, 1, 1),
(247, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 62, 1, 1),
(248, 'Ajuste de Inventario: entrada', 'entrada', 5, 5, '2023-03-25 20:32:00', 63, 1, 1),
(249, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 64, 1, 1),
(250, 'Ajuste de Inventario: entrada', 'entrada', 5, 5, '2023-03-25 20:32:00', 70, 1, 1),
(251, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 71, 1, 1),
(252, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 72, 1, 1),
(253, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 73, 1, 1),
(254, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 74, 1, 1),
(255, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 75, 1, 1),
(256, 'Ajuste de Inventario: entrada', 'entrada', 4, 4, '2023-03-25 20:32:00', 76, 1, 1),
(257, 'Ajuste de Inventario: entrada', 'entrada', 3, 3, '2023-03-25 20:32:00', 77, 1, 1),
(258, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 78, 1, 1),
(259, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 79, 1, 1),
(260, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 80, 1, 1),
(261, 'Ajuste de Inventario: entrada', 'entrada', 1, 2, '2023-03-25 20:32:00', 80, 1, 1),
(262, 'Ajuste de Inventario: salida', 'salida', 1, 1, '2023-03-25 20:32:00', 80, 1, 1),
(263, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 81, 1, 1),
(264, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 82, 1, 1),
(265, 'Ajuste de Inventario: entrada', 'entrada', 3, 3, '2023-03-25 20:32:00', 83, 1, 1),
(266, 'Ajuste de Inventario: entrada', 'entrada', 3, 3, '2023-03-25 20:32:00', 84, 1, 1),
(267, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 85, 1, 1),
(268, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 86, 1, 1),
(269, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 87, 1, 1),
(270, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 88, 1, 1),
(271, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 89, 1, 1),
(272, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 90, 1, 1),
(273, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 91, 1, 1),
(274, 'Ajuste de Inventario: entrada', 'entrada', 4, 4, '2023-03-25 20:32:00', 92, 1, 1),
(275, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 93, 1, 1),
(276, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 94, 1, 1),
(277, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 95, 1, 1),
(278, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 96, 1, 1),
(279, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 97, 1, 1),
(280, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 98, 1, 1),
(281, 'Ajuste de Inventario: entrada', 'entrada', 3, 3, '2023-03-25 20:32:00', 99, 1, 1),
(282, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 100, 1, 1),
(283, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 101, 1, 1),
(284, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 102, 1, 1),
(285, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 103, 1, 1),
(286, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 104, 1, 1),
(287, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 105, 1, 1),
(288, 'Ajuste de Inventario: entrada', 'entrada', 4, 4, '2023-03-25 20:32:00', 106, 1, 1),
(289, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 108, 1, 1),
(290, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 109, 1, 1),
(291, 'Ajuste de Inventario: entrada', 'entrada', 1, 1, '2023-03-25 20:32:00', 110, 1, 1),
(292, 'Ajuste de Inventario: entrada', 'entrada', 30, 68, '2023-03-25 20:32:00', 3, 1, 1),
(293, 'Venta N°: 119', 'salida', 1, 40, '2023-03-25 20:32:00', 26, 1, 1),
(294, 'Venta N°: 120', 'salida', 2, 0, '2023-03-25 20:32:00', 52, 1, 1),
(295, 'Venta N°: 120', 'salida', 1, 1, '2023-03-25 20:32:00', 51, 1, 1),
(296, 'Venta N°: 121', 'salida', 1, 14, '2023-03-25 20:32:00', 53, 1, 1),
(297, 'Venta N°: 122', 'salida', 1, -1, '2023-03-25 20:32:00', 23, 1, 1),
(298, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 44, 1, 1),
(299, 'Venta N°: 123', 'salida', 1, 2, '2023-03-25 20:32:00', 76, 1, 1),
(300, 'Venta N°: 124', 'salida', 1, 13, '2023-03-25 20:32:00', 53, 1, 1),
(301, 'Venta N°: 125', 'salida', 1, 66, '2023-03-25 20:32:00', 3, 1, 1),
(302, 'Venta N°: 126', 'salida', 1, 73, '2023-03-25 20:32:00', 7, 1, 1),
(303, 'Venta N°: 127', 'salida', 1, 72, '2023-03-25 20:32:00', 7, 1, 1),
(304, 'Venta N°: 128', 'salida', 1, 71, '2023-03-25 20:32:00', 7, 1, 1),
(305, 'Venta N°: 129', 'salida', 2, 63, '2023-03-25 20:32:00', 3, 1, 1),
(306, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 2, 1, 1),
(307, 'Venta N°: 130', 'salida', 2, -2, '2023-03-25 20:32:00', 2, 1, 1),
(308, 'Venta N°: 130', 'salida', 1, 39, '2023-03-25 20:32:00', 26, 1, 1),
(309, 'Venta N°: 130', 'salida', 1, 44, '2023-03-25 20:32:00', 30, 1, 1),
(310, 'Venta N°: 131', 'salida', 1, 1, '2023-03-25 20:32:00', 1, 1, 1),
(311, 'Venta N°: 132', 'salida', 1, 84, '2023-03-25 20:32:00', 6, 1, 1),
(312, 'Venta N°: 133', 'salida', 1, 4, '2023-03-25 20:32:00', 65, 1, 1),
(313, 'Venta N°: 134', 'salida', 1, 0, '2023-03-25 20:32:00', 1, 1, 1),
(314, 'Venta N°: 135', 'salida', 1, 204, '2023-03-25 20:32:00', 9, 1, 1),
(315, 'Venta N°: 136', 'salida', 1, 45, '2023-03-25 20:32:00', 25, 1, 1),
(316, 'Venta N°: 137', 'salida', 1, -1, '2023-03-25 20:32:00', 43, 1, 1),
(317, 'Venta N°: 138', 'salida', 1, 0, '2023-03-25 20:32:00', 48, 1, 1),
(318, 'Venta N°: 139', 'salida', 1, 203, '2023-03-25 20:32:00', 9, 1, 1),
(319, 'Venta N°: 140', 'salida', 1, 0, '2023-03-25 20:32:00', 44, 1, 1),
(320, 'Devolución Venta N°: 17', 'entrada', 1, 1, '2023-03-25 20:32:00', 15, 1, 1),
(321, 'Venta N°: 141', 'salida', 1, -1, '2023-03-25 20:32:00', 44, 1, 1),
(322, 'Ajuste de Inventario: entrada', 'entrada', 2, 3, '2023-03-25 20:32:00', 59, 1, 1),
(323, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 44, 1, 1),
(324, 'Ajuste de Inventario: entrada', 'entrada', 2, 2, '2023-03-25 20:32:00', 114, 1, 1),
(325, 'Venta N°: 142', 'salida', 1, 1, '2023-03-25 20:32:00', 59, 1, 1),
(326, 'Venta N°: 142', 'salida', 1, -1, '2023-03-25 20:32:00', 15, 1, 1),
(327, 'Venta N°: 142', 'salida', 1, 0, '2023-03-25 20:32:00', 44, 1, 1),
(328, 'Venta N°: 142', 'salida', 1, 0, '2023-03-25 20:32:00', 114, 1, 1),
(329, 'Venta N°: 142', 'salida', 1, 0, '2023-03-25 20:32:00', 108, 1, 1),
(330, 'Ajuste de Inventario: salida', 'salida', 19, 26, '2023-03-25 20:32:00', 30, 1, 1),
(331, 'Ajuste de Inventario: salida', 'salida', 6, 20, '2023-03-25 20:32:00', 30, 1, 1),
(332, 'Venta N°: 143', 'salida', 3, -2, '2023-03-25 20:32:00', 33, 1, 1),
(333, 'Venta N°: 144', 'salida', 1, -1, '2023-03-25 20:32:00', 58, 1, 1),
(334, 'Venta N°: 145', 'salida', 1, 202, '2023-03-25 20:32:00', 9, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medidas`
--

CREATE TABLE `medidas` (
  `id` int(11) NOT NULL,
  `medida` varchar(100) NOT NULL,
  `nombre_corto` varchar(10) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `medidas`
--

INSERT INTO `medidas` (`id`, `medida`, `nombre_corto`, `fecha`, `estado`) VALUES
(1, 'CM', 'CM', '2023-03-03 15:01:50', 1),
(2, 'ML', 'ML', '2023-03-03 15:38:06', 1),
(3, 'G', 'G', '2023-03-03 15:50:26', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT 0,
  `foto` varchar(100) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ventas` int(11) NOT NULL DEFAULT 0,
  `id_medida` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_sucursal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `descripcion`, `precio_compra`, `precio_venta`, `cantidad`, `foto`, `estado`, `fecha`, `ventas`, `id_medida`, `id_categoria`, `id_sucursal`) VALUES
(1, '0083', 'AGUA MINERAL MINALBA 600 CM3', '0.50', '0.80', 1, NULL, 1, '2023-03-25 20:59:05', 18, 1, 1, 1),
(2, '0080', 'GATORADE 500ML FRUTOS', '1.15', '2.00', 0, NULL, 1, '2023-03-25 20:59:05', 27, 2, 1, 1),
(3, '0081', 'SPEED MAX', '0.43', '1.00', 65, NULL, 1, '2023-03-25 20:59:05', 12, 2, 1, 1),
(4, '0084', 'JIF MANÍ (454G)', '2.50', '5.00', 2, NULL, 1, '2023-03-25 20:59:05', 2, 3, 2, 1),
(5, '4400003211', 'CHIPS AHOY MINI 99', '1.48', '3.00', 6, NULL, 0, '2023-03-25 20:59:05', 0, 3, 2, 1),
(6, '0001', 'BATIDO PROTEINA', '1.00', '3.00', 85, NULL, 1, '2023-03-25 20:59:05', 15, 2, 1, 1),
(7, '0002', 'CAFE NEGRO', '0.08', '0.20', 72, NULL, 1, '2023-03-25 20:59:05', 28, 2, 3, 1),
(8, '0113', 'COFFE MATE', '3.00', '0.50', 0, NULL, 1, '2023-03-25 20:59:05', 0, 2, 3, 1),
(9, '0003', 'BATIDO PROTEINA EXTRA', '2.00', '3.25', 203, NULL, 1, '2023-03-25 20:59:05', 22, 2, 1, 1),
(10, '0111', 'CREATINA NUTRABIO (30 SERV)', '12.00', '25.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(11, '0110', 'CHIPS AHOY 13', '3.00', '6.00', 3, NULL, 0, '2023-03-25 20:59:05', 1, 3, 2, 1),
(12, '0102', 'CREATINA CELLUCOR (72 SERV)', '22.00', '40.00', 6, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(13, '0090', 'CREATINA NUTRICOST', '25.00', '45.00', 4, NULL, 1, '2023-03-25 20:59:05', 1, 3, 4, 1),
(14, '0086', 'CREATINA MUSCLETECH', '35.00', '40.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(15, '0085', 'MUSCLETECH CELL TECH (120 SERV', '25.00', '35.00', 0, NULL, 1, '2023-03-25 20:59:05', 3, 3, 4, 1),
(16, '0092', 'L-CARNITINA LIQUIDA (16 SERV)', '10.00', '20.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 2, 4, 1),
(17, '0094', 'AGUA MINALBA (24 UND)', '14.00', '25.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 2, 1, 1),
(18, '0091', 'SPEED LATA (24 UND)', '10.30', '20.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 2, 1, 1),
(19, '0089', 'GATORADE CAJA 12 UND', '13.80', '26.00', 14, NULL, 1, '2023-03-25 20:59:05', 0, 2, 1, 1),
(20, '0095', 'HIDROXICUT 200', '15.00', '30.00', 15, NULL, 1, '2023-03-25 20:59:05', 1, 3, 4, 1),
(21, '0097', 'MUSCLET MILK', '30.00', '35.00', 3, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(22, '0087', 'ON WHEY PROTEIN', '12.00', '40.00', 3, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(23, '0107', 'SIXSTAR WHEY PROTEIN', '12.00', '35.00', 0, NULL, 1, '2023-03-25 20:59:05', 2, 3, 4, 1),
(24, '0099', 'BODY FORTRESS ISOLATE', '12.00', '40.00', 1, NULL, 1, '2023-03-25 20:59:05', 1, 3, 4, 1),
(25, '0100', 'MONSTERS 473ML', '1.50', '3.00', 46, NULL, 1, '2023-03-25 20:59:05', 2, 2, 1, 1),
(26, '0101', 'BARRITAS', '0.50', '1.00', 40, NULL, 1, '2023-03-25 20:59:05', 5, 3, 2, 1),
(27, '0096', 'CHIPS AHOY 510', '4.00', '7.00', 1, NULL, 0, '2023-03-25 20:59:05', 2, 3, 1, 1),
(28, '0109', 'MAGNESIO 250MG', '3.00', '6.00', 1, NULL, 1, '2023-03-25 20:59:05', 2, 3, 4, 1),
(29, '0108', 'SUPER COMPLEJO B 100 TAB', '4.00', '9.00', 1, NULL, 0, '2023-03-25 20:59:05', 1, 2, 4, 1),
(30, '0103', 'MALTA BOTELLA', '0.30', '0.60', 20, NULL, 1, '2023-03-25 20:59:05', 15, 2, 1, 1),
(31, '0104', 'CAJA MALTA 36 UND', '14.00', '22.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 2, 1, 1),
(32, '0106', 'COLÁGENO C', '3.00', '6.00', 2, NULL, 1, '2023-03-25 20:59:05', 1, 3, 4, 1),
(33, '0105', 'DYMATIZED (20 SERV)', '15.00', '40.00', 1, NULL, 1, '2023-03-25 20:59:05', 4, 3, 4, 1),
(34, '0098', 'DERMISA', '6.00', '12.00', 1, NULL, 1, '2023-03-25 20:59:05', 3, 2, 4, 1),
(35, '0112', 'MAGNESIO 500MG', '8.00', '15.00', 2, NULL, 1, '2023-03-25 20:59:05', 2, 3, 4, 1),
(36, '0004', 'JIF MANÍ (1.13KG)', '8.00', '10.00', 0, NULL, 1, '2023-03-25 20:59:05', 1, 3, 2, 1),
(37, '0005', 'MANTEQUILLA DE MANÍ (EN POLVO)', '10.00', '14.00', 4, NULL, 1, '2023-03-25 20:59:05', 0, 3, 2, 1),
(38, '0006', 'DYMATIZED ÉLITE (63 SERV)', '60.00', '85.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(39, '0007', 'DYMATIZED ISOLATADA (76 SERV)', '100.00', '120.00', 4, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(40, '0008', 'C4 (60 SERV)', '20.00', '40.00', 4, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(41, '0009', 'C4 (30 SERV)', '15.00', '30.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(42, '0010', 'AMINO ENERGY (30 SERV)', '25.00', '35.00', 6, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(43, '0011', 'PROTEINA ISOLATADA BODY', '20.00', '40.00', 0, NULL, 1, '2023-03-25 20:59:05', 1, 3, 4, 1),
(44, '0012', 'GUANTES', '8.00', '15.00', 1, NULL, 1, '2023-03-25 20:59:05', 3, 1, 4, 1),
(45, '0013', 'CREATINA CELLTECH', '20.00', '35.00', 4, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(46, '0014', 'ANABOL HARDCORE', '25.00', '35.00', 3, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(47, '0015', 'CONTIGO FIT', '10.00', '18.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 1, 4, 1),
(48, '0016', 'CONTIGO (SHAKERS)', '10.00', '15.00', 1, NULL, 1, '2023-03-25 20:59:05', 1, 1, 4, 1),
(49, '0017', 'CONTIGO (METÁLICOS)', '10.00', '20.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 1, 4, 1),
(50, '0018', 'CHIPS AHOY (1LB)', '5.00', '9.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 2, 1),
(51, '0019', 'GLADE (PLUGINS)', '6.00', '12.00', 2, NULL, 1, '2023-03-25 20:59:05', 1, 1, 4, 1),
(52, '0020', 'GLADE (WARMER)', '2.00', '5.00', 2, NULL, 1, '2023-03-25 20:59:05', 2, 1, 4, 1),
(53, '0021', 'PISTACHOS PEQUEÑOS', '0.50', '1.50', 14, NULL, 1, '2023-03-25 20:59:05', 2, 3, 2, 1),
(54, '0022', 'PISTACHOS (227G)', '4.00', '7.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 2, 1),
(55, '0023', 'PISTACHOS (680G)', '10.00', '18.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 2, 2, 1),
(56, '0024', 'PLANCHA REMINGTON', '20.00', '30.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 1, 4, 1),
(57, '0025', 'GUANTES DE RESISTENCIA', '10.00', '20.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 1, 4, 1),
(58, '0026', 'GLUCÓMETRO', '20.00', '40.00', 0, NULL, 1, '2023-03-25 20:59:05', 1, 1, 4, 1),
(59, '0027', 'PROTEINA MUSCLETECH (4LB)', '30.00', '75.00', 2, NULL, 1, '2023-03-25 20:59:05', 1, 3, 4, 1),
(60, '0028', 'CENTUM WOMEN', '8.00', '15.00', 0, NULL, 0, '2023-03-25 20:59:05', 0, 3, 4, 1),
(61, '0029', 'CENTRUM ADULTS +50', '8.00', '15.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(62, '0030', 'COMPLEJO MULTIVITAMÍNICO +50', '8.00', '15.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(63, '0031', 'ANTIALÉRGICO', '7.00', '14.00', 5, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(64, '0032', 'ANTIÁCIDO', '2.00', '5.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(65, '0033', 'PISTACHOS (NO SHELLS 340G)', '9.00', '15.00', 5, NULL, 1, '2023-03-25 20:59:05', 1, 3, 2, 1),
(66, '0034', 'CHIPS AHOY (2 COOKIES)', '0.50', '1.00', 0, NULL, 1, '2023-03-25 20:59:05', 0, 3, 2, 1),
(67, '0035', 'CHIPS AHOY (4 COOKIES)', '1.00', '1.50', 0, NULL, 1, '2023-03-25 20:59:05', 0, 3, 2, 1),
(68, '0036', 'CHIPS AHOY MINI', '1.00', '3.00', 0, NULL, 1, '2023-03-25 20:59:05', 0, 3, 2, 1),
(69, '0037', 'TRIDENT', '1.00', '1.50', 0, NULL, 1, '2023-03-25 20:59:05', 0, 3, 2, 1),
(70, '0039', 'COMPLEJO MULTIVITAMÍNICO WOMEN', '8.00', '12.00', 5, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(71, '0040', 'ONE DAILY WOMENS (200)', '8.00', '15.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(72, '0041', 'ONE DAILY WOMENS (100)', '5.00', '8.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(73, '0042', 'COMPLEJO MULTIVITAMÍNICO MEN', '6.00', '12.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(74, '0043', 'COMPLEJO MULTIVITAMÍNICO ADULT', '5.00', '8.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(75, '0044', 'DEGREE MEN', '2.00', '5.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(76, '0045', 'DOVE DESODORANTE', '4.00', '6.00', 3, NULL, 1, '2023-03-25 20:59:05', 1, 3, 4, 1),
(77, '0046', 'NEUTROGENA ULTRA SHEER 55', '8.00', '15.00', 3, NULL, 1, '2023-03-25 20:59:05', 0, 2, 4, 1),
(78, '0047', 'NEUTROGENA HYDRO BOOST', '20.00', '32.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 2, 4, 1),
(79, '0048', 'CERAVE CLEANSER', '9.00', '16.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 2, 4, 1),
(80, '0049', 'NATURES BOUNTY UÑA Y PIEL', '10.00', '15.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(81, '0050', 'SPRING VALLEY UÑA Y PIEL', '7.00', '10.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(82, '0051', 'EQUATE UÑA Y PIEL', '7.00', '10.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(83, '0052', 'BIOTIN 5000 MCG (240)', '10.00', '15.00', 3, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(84, '0053', 'BIOTIN 10000 MCG (120)', '8.00', '13.00', 3, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(85, '0054', 'BIOTIN 10000 MCG (60)', '5.00', '9.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(86, '0055', 'BIOTIN 1000 MCG (150)', '2.00', '5.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(87, '0056', 'BIOTIN 5000 MCG (120)', '6.00', '8.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(88, '0057', 'VITAMINA D3 (100)', '3.00', '7.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(89, '0058', 'TURMERIC 1500 MCG (90)', '7.00', '15.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(90, '0059', 'POTASIO 99 MG (100)', '3.00', '6.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(91, '0060', 'VITAMINA A (250)', '4.00', '7.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(92, '0061', 'COQ10 50 MG (30)', '4.00', '9.00', 4, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(93, '0062', 'ACIDOPHILUS (30)', '3.00', '6.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(94, '0063', 'L-CARNITINE 500 MG (30)', '6.00', '10.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(95, '0064', 'ASPIRINA', '3.00', '5.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(96, '0065', 'CETAPHIL CREMA', '11.00', '22.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(97, '0066', 'CETAPHIL CLEANSER', '11.00', '22.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(98, '0067', 'MELATONINA 10 MG (120)', '6.00', '12.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(99, '0068', 'SUPER COMPLEJO B (250)', '7.00', '14.00', 3, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(100, '0069', 'SUPER COMPLEJO B (100)', '5.00', '9.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(101, '0070', 'VITAMINA B12 500 MCG (100)', '2.00', '4.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(102, '0071', 'VITAMINA B12 500 MCG (200)', '3.00', '7.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(103, '0072', 'VITAMINA B12 1000 MCG (60)', '4.00', '8.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(104, '0073', 'VITAMINA B12 1000 MCG (150)', '5.00', '10.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(105, '0074', 'APPLE CIDER VINEGAR (60)', '9.00', '15.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(106, '0075', 'OMEGA 3 500 MG (120)', '8.00', '15.00', 4, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(107, '0076', 'ACEITE DE COCO (414ML)', '4.00', '8.00', 0, NULL, 1, '2023-03-25 20:59:05', 0, 2, 4, 1),
(108, '0077', 'TRESEMMÉ (COMBO (2))', '9.00', '18.00', 1, NULL, 1, '2023-03-25 20:59:05', 1, 2, 4, 1),
(109, '0078', 'BIOTIN Y COLÁGENO (EXTRA)', '12.00', '24.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 2, 4, 1),
(110, '0079', 'BIOTIN Y COLÁGENO', '12.00', '20.00', 1, NULL, 1, '2023-03-25 20:59:05', 0, 2, 4, 1),
(111, '0114', 'OMEPRAZOL', '3.00', '5.00', 0, NULL, 0, '2023-03-25 20:59:05', 0, 3, 4, 1),
(112, '0115', 'CENTRUM WOMEN', '8.00', '15.00', 2, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(113, '0116', 'OMEPRAZOL1', '3.00', '5.00', 0, NULL, 1, '2023-03-25 20:59:05', 0, 3, 4, 1),
(114, '00117', 'NEUTROGENA ULTRA SHEER 75', '6.00', '15.00', 1, NULL, 1, '2023-03-25 20:59:05', 1, 2, 4, 1),
(115, '000122', 'PRUEBA', '15.00', '15.00', 0, NULL, 1, '2023-03-25 21:15:27', 0, 1, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `rif` int(12) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `rif`, `nombre`, `telefono`, `correo`, `direccion`, `fecha`, `estado`) VALUES
(1, 405035463, 'LA ESTRELLA', '04128500281', 'laestrella@gmail.com', '<p>Los Olivos&nbsp;</p>', '2023-03-07 14:44:14', 1),
(2, 501360278, 'DISTRIBUIDORA M&M', '04148597597', 'DISTRINUIDORA@GMAIL.COM', '<p>CIUDAD BOLIVAR&nbsp;</p>', '2023-03-07 14:47:37', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre`) VALUES
(1, 'ADMINISTRADOR'),
(2, 'VENDEDOR'),
(3, 'GERENTE SUCURSAL'),
(4, 'COBRANZA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id`, `nombre`) VALUES
(1, 'CARACAS'),
(2, 'PUERTO LA CRUZ'),
(3, 'CUMANA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `ci` varchar(12) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `clave` varchar(100) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` int(11) NOT NULL DEFAULT 1,
  `rol` int(11) NOT NULL,
  `id_sucursal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `ci`, `nombre`, `apellido`, `correo`, `telefono`, `direccion`, `perfil`, `clave`, `token`, `fecha`, `estado`, `rol`, `id_sucursal`) VALUES
(1, '22590454', 'GARIC DIAZ', 'INGSHOP', 'ingshopve@gmail.com', '04249219865', 'CC. Los Olivos local 12. Puerto Ordaz- Estado Bolivar', NULL, '$2y$10$CZPm1Z7dyXxSs.l2Oxy3relCxmqejDh6HoBq2rH79U8IRXrOqj2Ju', NULL, '2023-03-25 18:46:01', 1, 1, 0),
(5, '1', 'ENRIQUE', 'LEON', 'enrique@gmail.com', '12345', 'calle', NULL, '$2y$10$.b7Gv2ZatHbxALXd0ZpC9uladHTI.B.HHRhas/ZCJsUaKxcfhIpbu', NULL, '2023-03-25 17:55:59', 1, 2, 1),
(6, '12345', 'DASDA', 'DASDA', 'ADA@GMAIL.COM', '123', 'ASDA', NULL, '$2y$10$8kr0FcQ4H0BETc/haX7mYulva7FD8g2AlKLqgqOmzfGqKnlPxS0YO', NULL, '2023-03-25 19:41:00', 1, 3, NULL),
(7, '30102', 'GERENTE', 'SUCURSAL', 'gerentesucursal@gmail.com', '11111', 'gerente de los gerentes', NULL, '$2y$10$CZbTyUbrhcH5UAWmIUQcOODPmgCuziVB5JXLUNaHIG3lQrV8EQcY6', NULL, '2023-03-25 21:55:24', 1, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `productos` longtext NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `metodo` varchar(15) NOT NULL,
  `descuento` decimal(10,2) NOT NULL DEFAULT 0.00,
  `serie` varchar(20) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `apertura` int(11) NOT NULL DEFAULT 1,
  `id_cliente` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `productos`, `total`, `fecha`, `metodo`, `descuento`, `serie`, `estado`, `apertura`, `id_cliente`, `id_usuario`) VALUES
(1, '[{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":1},{\"id\":\"4\",\"nombre\":\"JIF MANI\",\"precio\":\"5.00\",\"cantidad\":1}]', '6.00', '2023-03-07 14:53:29', 'CREDITO', '0.00', '0001', 1, 0, 1, 1),
(2, '[{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":1},{\"id\":\"5\",\"nombre\":\"CHIPS AHOY MINI 99\",\"precio\":\"3.00\",\"cantidad\":1}]', '4.00', '2023-03-07 14:53:29', 'CONTADO', '0.00', '0002', 0, 0, 2, 1),
(3, '[{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":1},{\"id\":\"5\",\"nombre\":\"CHIPS AHOY MINI 99\",\"precio\":\"3.00\",\"cantidad\":1}]', '4.00', '2023-03-10 14:21:29', 'CREDITO', '0.00', '0003', 2, 0, 2, 1),
(4, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":2},{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":1}]', '5.00', '2023-03-07 14:53:29', 'CREDITO', '0.00', '0004', 0, 0, 1, 1),
(5, '[{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":\"1\"},{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"5.00\",\"cantidad\":1}]', '6.00', '2023-03-07 14:53:29', 'CREDITO', '0.00', '0005', 1, 0, 4, 1),
(6, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1},{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":1}]', '3.00', '2023-03-07 14:53:29', 'CREDITO', '0.00', '0006', 1, 0, 1, 1),
(7, '[{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-07 14:53:29', 'CREDITO', '0.00', '0007', 1, 0, 3, 1),
(8, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1},{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":1}]', '3.00', '2023-03-07 14:53:29', 'CREDITO', '0.00', '0008', 0, 0, 5, 1),
(9, '[{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":1},{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":\"2\"}]', '5.00', '2023-03-07 14:53:29', 'CREDITO', '0.00', '0009', 1, 0, 5, 1),
(10, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1},{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1},{\"id\":\"11\",\"nombre\":\"CHIPS AHOY 13\",\"precio\":\"6.00\",\"cantidad\":1}]', '8.80', '2023-03-07 14:53:29', 'CREDITO', '0.00', '0010', 1, 0, 6, 1),
(11, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":\"2\"}]', '6.50', '2023-03-07 14:53:29', 'CREDITO', '0.00', '0011', 1, 0, 7, 1),
(12, '[{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-07 14:53:29', 'CREDITO', '0.00', '0012', 1, 0, 8, 1),
(13, '[{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":1}]', '1.00', '2023-03-08 12:09:33', 'CREDITO', '0.00', '0013', 1, 0, 10, 1),
(14, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '0.80', '2023-03-08 12:09:33', 'CREDITO', '0.00', '0014', 1, 0, 6, 1),
(15, '[{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-08 12:09:33', 'CREDITO', '0.00', '0015', 1, 0, 3, 1),
(16, '[{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-08 04:00:00', 'CREDITO', '0.00', '0016', 1, 1, 11, 1),
(17, '[{\"id\":\"15\",\"nombre\":\"MUSCLETECH CELL TECH (120 SERV\",\"precio\":\"35.00\",\"cantidad\":1}]', '35.00', '2023-03-21 13:38:09', 'CREDITO', '0.00', '0017', 0, 1, 12, 1),
(18, '[{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-08 04:00:00', 'CREDITO', '0.00', '0018', 1, 1, 3, 1),
(19, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '0.80', '2023-03-09 04:00:00', 'CREDITO', '0.00', '0019', 1, 1, 6, 1),
(20, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":\"1\"}]', '2.00', '2023-03-09 04:00:00', 'CREDITO', '0.00', '0020', 1, 1, 13, 1),
(21, '[{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":1}]', '1.00', '2023-03-09 04:00:00', 'CREDITO', '0.00', '0021', 1, 1, 6, 1),
(22, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":\"2\"}]', '4.00', '2023-03-09 04:00:00', 'CREDITO', '0.00', '0022', 1, 1, 13, 1),
(23, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":\"2\"}]', '6.50', '2023-03-09 04:00:00', 'CONTADO', '0.00', '0023', 1, 1, 14, 1),
(24, '[{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":1}]', '1.00', '2023-03-10 04:00:00', 'CREDITO', '0.00', '0024', 1, 1, 14, 1),
(25, '[{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":1}]', '1.00', '2023-03-10 04:00:00', 'CREDITO', '0.00', '0025', 1, 1, 16, 1),
(26, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":\"2\"}]', '6.50', '2023-03-10 04:00:00', 'CONTADO', '0.00', '0026', 1, 1, 17, 1),
(27, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":\"2\"}]', '6.50', '2023-03-10 04:00:00', 'CREDITO', '0.00', '0027', 1, 1, 14, 1),
(28, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":\"2\"}]', '6.50', '2023-03-10 04:00:00', 'CREDITO', '0.00', '0028', 1, 1, 17, 1),
(29, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":1}]', '3.25', '2023-03-10 04:00:00', 'CREDITO', '0.00', '0029', 1, 1, 18, 1),
(30, '[{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-10 04:00:00', 'CONTADO', '0.00', '0030', 1, 1, 3, 1),
(31, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '0.80', '2023-03-10 04:00:00', 'CREDITO', '0.00', '0031', 1, 1, 6, 1),
(32, '[{\"id\":\"15\",\"nombre\":\"MUSCLETECH CELL TECH (120 SERV\",\"precio\":\"35.00\",\"cantidad\":1}]', '35.00', '2023-03-14 11:31:47', 'CREDITO', '0.00', '0032', 0, 1, 19, 1),
(33, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"5.00\",\"cantidad\":\"2\"}]', '10.00', '2023-03-14 11:31:53', 'CREDITO', '0.00', '0033', 0, 1, 19, 1),
(34, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1}]', '2.00', '2023-03-11 04:00:00', 'CONTADO', '0.00', '0034', 1, 1, 15, 1),
(35, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1}]', '2.00', '2023-03-11 04:00:00', 'CREDITO', '0.00', '0035', 1, 1, 6, 1),
(36, '[{\"id\":\"24\",\"nombre\":\"BODY FORTRESS ISOLATE\",\"precio\":\"40.00\",\"cantidad\":1}]', '40.00', '2023-03-13 04:00:00', 'CREDITO', '0.00', '0036', 1, 1, 7, 1),
(37, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":1}]', '3.25', '2023-03-13 04:00:00', 'CREDITO', '0.00', '0037', 1, 1, 2, 1),
(38, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"5.00\",\"cantidad\":\"4\"}]', '20.00', '2023-03-13 04:00:00', 'CONTADO', '0.00', '0038', 1, 1, 20, 1),
(39, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"5.00\",\"cantidad\":\"4\"}]', '20.00', '2023-03-13 04:00:00', 'CREDITO', '0.00', '0039', 1, 1, 20, 1),
(40, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"5.00\",\"cantidad\":\"3\"}]', '15.00', '2023-03-13 04:00:00', 'CREDITO', '0.00', '0040', 1, 1, 4, 1),
(41, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1},{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1}]', '2.80', '2023-03-13 04:00:00', 'CONTADO', '0.00', '0041', 1, 1, 22, 1),
(42, '[{\"id\":\"26\",\"nombre\":\"BARRITAS\",\"precio\":\"1.00\",\"cantidad\":\"2\"}]', '2.00', '2023-03-13 04:00:00', 'CREDITO', '0.00', '0042', 1, 1, 21, 1),
(43, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":\"2\"},{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"5.00\",\"cantidad\":1}]', '9.00', '2023-03-13 04:00:00', 'CREDITO', '0.00', '0043', 1, 1, 23, 1),
(44, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1}]', '2.00', '2023-03-13 04:00:00', 'CREDITO', '0.00', '0044', 1, 1, 24, 1),
(45, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":\"2\"}]', '6.50', '2023-03-13 04:00:00', 'CONTADO', '0.00', '0045', 1, 1, 15, 1),
(46, '[{\"id\":\"27\",\"nombre\":\"CHIPS AHOY 510\",\"precio\":\"7.00\",\"cantidad\":1},{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '10.00', '2023-03-14 04:00:00', 'CONTADO', '0.00', '0046', 1, 1, 25, 1),
(47, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '0.80', '2023-03-14 04:00:00', 'CREDITO', '0.00', '0047', 1, 1, 6, 1),
(48, '[{\"id\":\"13\",\"nombre\":\"CREATINA NUTRICOST\",\"precio\":\"45.00\",\"cantidad\":1}]', '45.00', '2023-03-14 04:00:00', 'CREDITO', '0.00', '0048', 1, 1, 19, 1),
(49, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":2}]', '4.00', '2023-03-14 04:00:00', 'CONTADO', '0.00', '0049', 1, 1, 22, 1),
(50, '[{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-14 04:00:00', 'CONTADO', '1.00', '0050', 1, 1, 15, 1),
(51, '[{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-14 04:00:00', 'CREDITO', '0.00', '0051', 1, 1, 6, 1),
(52, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"5.00\",\"cantidad\":\"3\"}]', '15.00', '2023-03-14 04:00:00', 'CREDITO', '0.00', '0052', 1, 1, 4, 1),
(53, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"5.00\",\"cantidad\":1}]', '5.00', '2023-03-14 04:00:00', 'CREDITO', '0.00', '0053', 1, 1, 20, 1),
(54, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"5.00\",\"cantidad\":1}]', '5.00', '2023-03-14 04:00:00', 'CREDITO', '0.00', '0054', 1, 1, 23, 1),
(55, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"5.00\",\"cantidad\":1}]', '5.00', '2023-03-14 04:00:00', 'CONTADO', '0.00', '0055', 1, 1, 15, 1),
(56, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1}]', '2.00', '2023-03-14 04:00:00', 'CREDITO', '0.00', '0056', 1, 1, 6, 1),
(57, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1}]', '2.00', '2023-03-14 04:00:00', 'CREDITO', '0.00', '0057', 1, 1, 1, 1),
(58, '[{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":1}]', '1.00', '2023-03-14 04:00:00', 'CONTADO', '0.00', '0058', 1, 1, 15, 1),
(59, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1}]', '2.00', '2023-03-14 04:00:00', 'CREDITO', '0.00', '0059', 1, 1, 10, 1),
(60, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1}]', '2.00', '2023-03-15 04:00:00', 'CONTADO', '0.00', '0060', 1, 1, 15, 1),
(61, '[{\"id\":\"28\",\"nombre\":\"MAGNESIO 250MG\",\"precio\":\"6.00\",\"cantidad\":1}]', '6.00', '2023-03-15 04:00:00', 'CREDITO', '0.00', '0061', 1, 1, 7, 1),
(62, '[{\"id\":\"28\",\"nombre\":\"MAGNESIO 250MG\",\"precio\":\"6.00\",\"cantidad\":1}]', '6.00', '2023-03-15 04:00:00', 'CREDITO', '0.00', '0062', 1, 1, 19, 1),
(63, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"5.00\",\"cantidad\":1}]', '5.00', '2023-03-15 04:00:00', 'CONTADO', '0.00', '0063', 1, 1, 15, 1),
(64, '[{\"id\":\"25\",\"nombre\":\"MONSTERS 473ML\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-15 04:00:00', 'CONTADO', '0.00', '0064', 1, 1, 15, 1),
(65, '[{\"id\":\"29\",\"nombre\":\"SUPER COMPLEJO B 100 TAB\",\"precio\":\"9.00\",\"cantidad\":1}]', '9.00', '2023-03-15 04:00:00', 'CREDITO', '0.00', '0065', 1, 1, 19, 1),
(66, '[{\"id\":\"30\",\"nombre\":\"MALTA BOTELLA\",\"precio\":\"0.60\",\"cantidad\":\"2\"}]', '1.20', '2023-03-15 17:40:09', 'CREDITO', '0.00', '0066', 0, 1, 15, 1),
(67, '[{\"id\":\"30\",\"nombre\":\"MALTA BOTELLA\",\"precio\":\"0.60\",\"cantidad\":1}]', '0.60', '2023-03-15 04:00:00', 'CONTADO', '0.00', '0067', 1, 1, 15, 1),
(68, '[{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-15 04:00:00', 'CREDITO', '0.00', '0068', 1, 1, 3, 1),
(69, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1}]', '2.00', '2023-03-15 04:00:00', 'CONTADO', '0.00', '0069', 1, 1, 22, 1),
(70, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '0.80', '2023-03-15 04:00:00', 'CREDITO', '0.00', '0070', 1, 1, 20, 1),
(71, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1}]', '2.00', '2023-03-15 04:00:00', 'CONTADO', '0.00', '0071', 1, 1, 24, 1),
(72, '[{\"id\":\"30\",\"nombre\":\"MALTA BOTELLA\",\"precio\":\"0.60\",\"cantidad\":1}]', '0.60', '2023-03-15 04:00:00', 'CREDITO', '0.00', '0072', 1, 1, 2, 1),
(73, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '0.80', '2023-03-15 04:00:00', 'CREDITO', '0.00', '0073', 1, 1, 6, 1),
(74, '[{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-15 04:00:00', 'CREDITO', '0.00', '0074', 1, 1, 6, 1),
(75, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"5.00\",\"cantidad\":1}]', '5.00', '2023-03-15 04:00:00', 'CREDITO', '0.00', '0075', 1, 1, 13, 1),
(76, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"5.00\",\"cantidad\":\"2\"}]', '10.00', '2023-03-15 04:00:00', 'CREDITO', '0.00', '0076', 1, 1, 4, 1),
(77, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":1}]', '3.25', '2023-03-16 04:00:00', 'CREDITO', '0.00', '0077', 1, 1, 7, 1),
(78, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '0.80', '2023-03-16 04:00:00', 'CONTADO', '0.00', '0078', 1, 1, 15, 1),
(79, '[{\"id\":\"30\",\"nombre\":\"MALTA BOTELLA\",\"precio\":\"0.60\",\"cantidad\":\"2\"}]', '1.20', '2023-03-16 04:00:00', 'CREDITO', '0.00', '0079', 1, 1, 19, 1),
(80, '[{\"id\":\"27\",\"nombre\":\"CHIPS AHOY 510\",\"precio\":\"7.00\",\"cantidad\":1}]', '7.00', '2023-03-16 04:00:00', 'CREDITO', '0.00', '0080', 1, 1, 27, 1),
(81, '[{\"id\":\"30\",\"nombre\":\"MALTA BOTELLA\",\"precio\":\"0.60\",\"cantidad\":1}]', '0.60', '2023-03-16 04:00:00', 'CREDITO', '0.00', '0081', 1, 1, 13, 1),
(82, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '0.80', '2023-03-16 04:00:00', 'CONTADO', '0.00', '0082', 1, 1, 20, 1),
(83, '[{\"id\":\"30\",\"nombre\":\"MALTA BOTELLA\",\"precio\":\"0.60\",\"cantidad\":1}]', '0.60', '2023-03-16 04:00:00', 'CONTADO', '0.00', '0083', 1, 1, 15, 1),
(84, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1}]', '2.00', '2023-03-16 04:00:00', 'CREDITO', '0.00', '0084', 1, 1, 6, 1),
(85, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1}]', '2.00', '2023-03-16 04:00:00', 'CONTADO', '0.00', '0085', 1, 1, 22, 1),
(86, '[{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-16 04:00:00', 'CONTADO', '0.00', '0086', 1, 1, 6, 1),
(87, '[{\"id\":\"15\",\"nombre\":\"MUSCLETECH CELL TECH (120 SERV\",\"precio\":\"35.00\",\"cantidad\":1},{\"id\":\"32\",\"nombre\":\"COL\\u00c1GENO C\",\"precio\":\"6.00\",\"cantidad\":1}]', '41.00', '2023-03-16 04:00:00', 'CONTADO', '0.00', '0087', 1, 1, 15, 1),
(88, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":1}]', '3.25', '2023-03-16 04:00:00', 'CONTADO', '0.00', '0088', 1, 1, 4, 1),
(89, '[{\"id\":\"20\",\"nombre\":\"HIDROXICUT 200\",\"precio\":\"30.00\",\"cantidad\":1},{\"id\":\"33\",\"nombre\":\"DYMATIZED 20\",\"precio\":\"40.00\",\"cantidad\":1},{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '70.80', '2023-03-16 21:27:36', 'CREDITO', '0.00', '0089', 0, 1, 1, 1),
(90, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1},{\"id\":\"20\",\"nombre\":\"HIDROXICUT 200\",\"precio\":\"30.00\",\"cantidad\":1},{\"id\":\"33\",\"nombre\":\"DYMATIZED 20\",\"precio\":\"40.00\",\"cantidad\":1}]', '70.80', '2023-03-16 21:47:04', 'CREDITO', '0.00', '0090', 0, 1, 28, 1),
(91, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":1}]', '3.25', '2023-03-16 04:00:00', 'CONTADO', '0.00', '0091', 1, 1, 15, 1),
(92, '[{\"id\":\"20\",\"nombre\":\"HIDROXICUT 200\",\"precio\":\"30.00\",\"cantidad\":1},{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1},{\"id\":\"33\",\"nombre\":\"DYMATIZED 20\",\"precio\":\"40.00\",\"cantidad\":1}]', '70.80', '2023-03-16 21:49:00', 'CREDITO', '0.00', '0092', 0, 1, 1, 1),
(93, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1},{\"id\":\"20\",\"nombre\":\"HIDROXICUT 200\",\"precio\":\"30.00\",\"cantidad\":1},{\"id\":\"33\",\"nombre\":\"DYMATIZED 20\",\"precio\":\"40.00\",\"cantidad\":1}]', '70.80', '2023-03-16 04:00:00', 'CREDITO', '0.00', '0093', 1, 1, 28, 1),
(94, '[{\"id\":\"30\",\"nombre\":\"MALTA BOTELLA\",\"precio\":\"0.60\",\"cantidad\":1}]', '0.60', '2023-03-16 04:00:00', 'CONTADO', '0.00', '0094', 1, 1, 15, 1),
(95, '[{\"id\":\"30\",\"nombre\":\"MALTA BOTELLA\",\"precio\":\"0.60\",\"cantidad\":1}]', '0.60', '2023-03-16 04:00:00', 'CREDITO', '0.00', '0095', 1, 1, 2, 1),
(96, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '0.80', '2023-03-16 04:00:00', 'CONTADO', '0.00', '0096', 1, 1, 15, 1),
(97, '[{\"id\":\"34\",\"nombre\":\"DERMISA\",\"precio\":\"12.00\",\"cantidad\":1}]', '12.00', '2023-03-16 04:00:00', 'CONTADO', '0.00', '0097', 1, 1, 15, 1),
(98, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '0.80', '2023-03-16 04:00:00', 'CONTADO', '0.00', '0098', 1, 1, 15, 1),
(99, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '0.80', '2023-03-17 04:00:00', 'CREDITO', '0.00', '0099', 1, 1, 28, 1),
(100, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":1}]', '3.25', '2023-03-17 04:00:00', 'CREDITO', '0.00', '0100', 1, 1, 25, 1),
(101, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1},{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1}]', '2.80', '2023-03-17 04:00:00', 'CREDITO', '0.00', '0101', 1, 1, 13, 1),
(102, '[{\"id\":\"15\",\"nombre\":\"MUSCLETECH CELL TECH (120 SERV\",\"precio\":\"35.00\",\"cantidad\":1}]', '35.00', '2023-03-17 04:00:00', 'CREDITO', '0.00', '0102', 1, 1, 25, 1),
(103, '[{\"id\":\"30\",\"nombre\":\"MALTA BOTELLA\",\"precio\":\"0.60\",\"cantidad\":\"3\"}]', '1.80', '2023-03-17 04:00:00', 'CREDITO', '0.00', '0103', 1, 1, 13, 1),
(104, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":1}]', '2.00', '2023-03-17 04:00:00', 'CREDITO', '0.00', '0104', 1, 1, 6, 1),
(105, '[{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-17 04:00:00', 'CONTADO', '0.00', '0105', 1, 1, 3, 1),
(106, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '0.80', '2023-03-18 04:00:00', 'CREDITO', '0.00', '0106', 1, 1, 13, 1),
(107, '[{\"id\":\"35\",\"nombre\":\"MAGNESIO 500MG\",\"precio\":\"15.00\",\"cantidad\":1}]', '15.00', '2023-03-18 04:00:00', 'CONTADO', '0.00', '0107', 1, 1, 15, 1),
(108, '[{\"id\":\"35\",\"nombre\":\"MAGNESIO 500MG\",\"precio\":\"15.00\",\"cantidad\":1}]', '15.00', '2023-03-18 04:00:00', 'CONTADO', '0.00', '0108', 1, 1, 15, 1),
(109, '[{\"id\":\"34\",\"nombre\":\"DERMISA\",\"precio\":\"12.00\",\"cantidad\":1}]', '12.00', '2023-03-18 04:00:00', 'CONTADO', '0.00', '0109', 1, 1, 15, 1),
(110, '[{\"id\":\"34\",\"nombre\":\"DERMISA\",\"precio\":\"12.00\",\"cantidad\":1}]', '12.00', '2023-03-18 04:00:00', 'CONTADO', '0.00', '0110', 1, 1, 15, 1),
(111, '[{\"id\":\"4\",\"nombre\":\"JIF MANI\",\"precio\":\"5.00\",\"cantidad\":1}]', '5.00', '2023-03-18 04:00:00', 'CONTADO', '0.00', '0111', 1, 1, 15, 1),
(112, '[{\"id\":\"23\",\"nombre\":\"SIXSTAR WHEY PROTEIN\",\"precio\":\"35.00\",\"cantidad\":1}]', '35.00', '2023-03-18 04:00:00', 'CONTADO', '0.00', '0112', 1, 1, 26, 1),
(113, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":1}]', '3.25', '2023-03-18 04:00:00', 'CONTADO', '0.00', '0113', 1, 1, 15, 1),
(114, '[{\"id\":\"36\",\"nombre\":\"JIF MAN\\u00cd (1.13KG)\",\"precio\":\"10.00\",\"cantidad\":1}]', '10.00', '2023-03-20 04:00:00', 'CONTADO', '0.00', '0114', 1, 1, 15, 1),
(115, '[{\"id\":\"26\",\"nombre\":\"BARRITAS\",\"precio\":\"1.00\",\"cantidad\":1}]', '1.00', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0115', 1, 1, 2, 1),
(116, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"0.20\",\"cantidad\":\"2\"}]', '0.40', '2023-03-20 04:00:00', 'CONTADO', '0.00', '0116', 1, 1, 15, 1),
(117, '[{\"id\":\"30\",\"nombre\":\"MALTA BOTELLA\",\"precio\":\"0.60\",\"cantidad\":\"3\"}]', '1.80', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0117', 1, 1, 2, 1),
(118, '[{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-20 04:00:00', 'CONTADO', '0.00', '0118', 1, 1, 1, 1),
(119, '[{\"id\":\"26\",\"nombre\":\"BARRITAS\",\"precio\":\"1.00\",\"cantidad\":\"1\"}]', '1.00', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0119', 1, 1, 25, 1),
(120, '[{\"id\":\"52\",\"nombre\":\"GLADE (WARMER)\",\"precio\":\"5.00\",\"cantidad\":\"2\"},{\"id\":\"51\",\"nombre\":\"GLADE (PLUGINS)\",\"precio\":\"12.00\",\"cantidad\":1}]', '22.00', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0120', 1, 1, 19, 1),
(121, '[{\"id\":\"53\",\"nombre\":\"PISTACHOS (NO SHELLS 21G)\",\"precio\":\"1.50\",\"cantidad\":1}]', '1.50', '2023-03-20 04:00:00', 'CONTADO', '0.00', '0121', 1, 1, 3, 1),
(122, '[{\"id\":\"23\",\"nombre\":\"SIXSTAR WHEY PROTEIN\",\"precio\":\"35.00\",\"cantidad\":1}]', '35.00', '2023-03-20 04:00:00', 'CONTADO', '0.00', '0122', 1, 1, 15, 1),
(123, '[{\"id\":\"76\",\"nombre\":\"DOVE DESODORANTE\",\"precio\":\"6.00\",\"cantidad\":1}]', '6.00', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0123', 1, 1, 29, 1),
(124, '[{\"id\":\"53\",\"nombre\":\"PISTACHOS PEQUE\\u00d1OS\",\"precio\":\"1.50\",\"cantidad\":1}]', '1.50', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0124', 1, 1, 30, 1),
(125, '[{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":1}]', '1.00', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0125', 1, 1, 24, 1),
(126, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"0.20\",\"cantidad\":1}]', '0.20', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0126', 1, 1, 20, 1),
(127, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"0.20\",\"cantidad\":1}]', '0.20', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0127', 1, 1, 20, 1),
(128, '[{\"id\":\"7\",\"nombre\":\"CAFE NEGRO\",\"precio\":\"0.20\",\"cantidad\":1}]', '0.20', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0128', 1, 1, 6, 1),
(129, '[{\"id\":\"3\",\"nombre\":\"SPEED MAX\",\"precio\":\"1.00\",\"cantidad\":\"2\"}]', '2.00', '2023-03-20 04:00:00', 'CONTADO', '0.00', '0129', 1, 1, 15, 1),
(130, '[{\"id\":\"2\",\"nombre\":\"GATORADE 500ML FRUTOS\",\"precio\":\"2.00\",\"cantidad\":\"2\"},{\"id\":\"26\",\"nombre\":\"BARRITAS\",\"precio\":\"1.00\",\"cantidad\":1},{\"id\":\"30\",\"nombre\":\"MALTA BOTELLA\",\"precio\":\"0.60\",\"cantidad\":1}]', '5.60', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0130', 1, 1, 31, 1),
(131, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '0.80', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0131', 1, 1, 6, 1),
(132, '[{\"id\":\"6\",\"nombre\":\"BATIDO PROTEINA\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0132', 1, 1, 6, 1),
(133, '[{\"id\":\"65\",\"nombre\":\"PISTACHOS (NO SHELLS 340G)\",\"precio\":\"15.00\",\"cantidad\":1}]', '15.00', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0133', 1, 1, 27, 1),
(134, '[{\"id\":\"1\",\"nombre\":\"AGUA MINERAL MINALBA 600 CM3\",\"precio\":\"0.80\",\"cantidad\":1}]', '0.80', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0134', 1, 1, 2, 1),
(135, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":1}]', '3.25', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0135', 1, 1, 14, 1),
(136, '[{\"id\":\"25\",\"nombre\":\"MONSTERS 473ML\",\"precio\":\"3.00\",\"cantidad\":1}]', '3.00', '2023-03-20 04:00:00', 'CONTADO', '0.00', '0136', 1, 1, 15, 1),
(137, '[{\"id\":\"43\",\"nombre\":\"PROTEINA ISOLATADA BODY\",\"precio\":\"40.00\",\"cantidad\":1}]', '40.00', '2023-03-20 04:00:00', 'CONTADO', '0.00', '0137', 1, 1, 15, 1),
(138, '[{\"id\":\"48\",\"nombre\":\"CONTIGO (SHAKERS)\",\"precio\":\"15.00\",\"cantidad\":1}]', '15.00', '2023-03-20 04:00:00', 'CREDITO', '0.00', '0138', 1, 1, 18, 1),
(139, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":1}]', '3.25', '2023-03-21 04:00:00', 'CREDITO', '0.00', '0139', 1, 1, 21, 1),
(140, '[{\"id\":\"44\",\"nombre\":\"GUANTES\",\"precio\":\"15.00\",\"cantidad\":1}]', '15.00', '2023-03-21 04:00:00', 'CREDITO', '0.00', '0140', 1, 1, 28, 1),
(141, '[{\"id\":\"44\",\"nombre\":\"GUANTES\",\"precio\":\"15.00\",\"cantidad\":1}]', '15.00', '2023-03-21 04:00:00', 'CREDITO', '0.00', '0141', 1, 1, 28, 1),
(142, '[{\"id\":\"59\",\"nombre\":\"PROTEINA MUSCLETECH (4LB)\",\"precio\":\"75.00\",\"cantidad\":1},{\"id\":\"15\",\"nombre\":\"MUSCLETECH CELL TECH (120 SERV\",\"precio\":\"35.00\",\"cantidad\":1},{\"id\":\"44\",\"nombre\":\"GUANTES\",\"precio\":\"15.00\",\"cantidad\":1},{\"id\":\"114\",\"nombre\":\"NEUTROGENA ULTRA SHEER 75\",\"precio\":\"15.00\",\"cantidad\":1},{\"id\":\"108\",\"nombre\":\"TRESEMM\\u00c9 (COMBO (2))\",\"precio\":\"18.00\",\"cantidad\":1}]', '158.00', '2023-03-21 04:00:00', 'CREDITO', '10.00', '0142', 1, 1, 12, 1),
(143, '[{\"id\":33,\"nombre\":\"DYMATIZED (20 SERV)\",\"precio\":\"40.00\",\"cantidad\":\"3\"}]', '120.00', '2023-03-21 04:00:00', 'CONTADO', '0.00', '0143', 1, 1, 12, 1),
(144, '[{\"id\":\"58\",\"nombre\":\"GLUC\\u00d3METRO\",\"precio\":\"40.00\",\"cantidad\":1}]', '40.00', '2023-03-25 04:00:00', 'CONTADO', '0.00', '0144', 1, 1, 1, 1),
(145, '[{\"id\":\"9\",\"nombre\":\"BATIDO PROTEINA EXTRA\",\"precio\":\"3.25\",\"cantidad\":1}]', '3.25', '2023-03-25 04:00:00', 'CONTADO', '0.00', '0145', 1, 1, 24, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abonos`
--
ALTER TABLE `abonos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_credito` (`id_credito`);

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `apartados`
--
ALTER TABLE `apartados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cierre_caja`
--
ALTER TABLE `cierre_caja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `detalle_apartado`
--
ALTER TABLE `detalle_apartado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_apartado` (`id_apartado`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `medidas`
--
ALTER TABLE `medidas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_medida` (`id_medida`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `abonos`
--
ALTER TABLE `abonos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `acceso`
--
ALTER TABLE `acceso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de la tabla `apartados`
--
ALTER TABLE `apartados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cierre_caja`
--
ALTER TABLE `cierre_caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `creditos`
--
ALTER TABLE `creditos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de la tabla `detalle_apartado`
--
ALTER TABLE `detalle_apartado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT de la tabla `medidas`
--
ALTER TABLE `medidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `abonos`
--
ALTER TABLE `abonos`
  ADD CONSTRAINT `abonos_ibfk_1` FOREIGN KEY (`id_credito`) REFERENCES `creditos` (`id`);

--
-- Filtros para la tabla `apartados`
--
ALTER TABLE `apartados`
  ADD CONSTRAINT `apartados_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `cierre_caja`
--
ALTER TABLE `cierre_caja`
  ADD CONSTRAINT `cierre_caja_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD CONSTRAINT `creditos_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`);

--
-- Filtros para la tabla `detalle_apartado`
--
ALTER TABLE `detalle_apartado`
  ADD CONSTRAINT `detalle_apartado_ibfk_1` FOREIGN KEY (`id_apartado`) REFERENCES `apartados` (`id`);

--
-- Filtros para la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD CONSTRAINT `gastos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_medida`) REFERENCES `medidas` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
