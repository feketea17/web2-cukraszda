-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Gép: mysql.omega:3306
-- Létrehozás ideje: 2021. Nov 11. 15:31
-- Kiszolgáló verziója: 5.7.35-log
-- PHP verzió: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `cukraszda123`
--
CREATE DATABASE IF NOT EXISTS `cukraszda123` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cukraszda123`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ar`
--

CREATE TABLE `ar` (
  `id` int(3) NOT NULL,
  `sutiid` int(10) NOT NULL,
  `ertek` int(10) NOT NULL,
  `egyseg` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `ar`
--

INSERT INTO `ar` (`id`, `sutiid`, `ertek`, `egyseg`) VALUES
(1, 32, 500, 'db'),
(2, 76, 10900, '16 szeletes'),
(3, 106, 4300, '8 szeletes'),
(4, 88, 300, 'db'),
(5, 116, 16200, '24 szeletes'),
(6, 135, 250, 'db'),
(7, 127, 4400, 'kg'),
(8, 50, 13400, '24 szeletes'),
(9, 70, 700, 'db'),
(10, 31, 5200, 'kg'),
(11, 96, 3300, 'kg'),
(12, 116, 5700, '8 szeletes'),
(13, 22, 9000, '16 szeletes'),
(14, 138, 4400, 'kg'),
(15, 112, 2900, 'kg'),
(16, 58, 3200, 'kg'),
(17, 98, 10400, '16 szeletes'),
(18, 75, 2100, 'rúd'),
(19, 24, 11400, '24 szeletes'),
(20, 62, 600, 'db'),
(21, 61, 8400, '16 szeletes'),
(22, 105, 10900, '16 szeletes'),
(23, 20, 4700, '8 szeletes'),
(24, 123, 1800, 'rúd'),
(25, 60, 8200, '16 szeletes'),
(26, 24, 3900, '8 szeletes'),
(27, 38, 4300, '8 szeletes'),
(28, 126, 2100, 'rúd'),
(29, 64, 750, 'db'),
(30, 109, 300, 'db'),
(31, 66, 350, ''),
(32, 89, 13200, '24 szeletes'),
(33, 98, 15400, '24 szeletes'),
(34, 24, 7400, '16 szeletes'),
(35, 76, 5700, '8 szeletes'),
(36, 131, 250, 'db'),
(37, 50, 9200, '16 szeletes'),
(38, 55, 600, 'db'),
(39, 87, 3400, 'kg'),
(40, 4, 3500, 'koszorú'),
(41, 8, 400, 'db'),
(42, 100, 450, 'db'),
(43, 129, 5300, '8 szeletes'),
(44, 35, 4700, '8 szeletes'),
(45, 47, 490, 'db'),
(46, 89, 9000, '16 szeletes'),
(47, 111, 3300, 'kg'),
(48, 94, 400, 'db'),
(49, 42, 16200, '24 szeletes'),
(50, 80, 350, 'db'),
(51, 134, 4700, '8 szeletes'),
(52, 128, 4000, 'kg'),
(53, 90, 5200, 'kg'),
(54, 39, 13200, '24 szeletes'),
(55, 71, 7400, '16 szeletes'),
(56, 17, 3400, 'kg'),
(57, 68, 18400, '24 szeletes'),
(58, 81, 8200, '16 szeletes'),
(59, 134, 9000, '16 szeletes'),
(60, 108, 11400, '24 szeletes'),
(61, 97, 5200, 'kg'),
(62, 81, 4300, '8 szeletes'),
(63, 44, 3800, 'kg'),
(64, 72, 5700, '8 szeletes'),
(65, 49, 250, 'db'),
(66, 48, 350, 'db'),
(67, 14, 350, 'db'),
(68, 107, 12200, '24 szeletes'),
(69, 27, 15400, '24 szeletes'),
(70, 106, 12100, '24 szeletes'),
(71, 74, 7400, '16 szeletes'),
(72, 40, 5700, '8 szeletes'),
(73, 133, 450, 'db'),
(74, 77, 490, 'db'),
(75, 22, 13200, '24 szeletes'),
(76, 119, 9000, '16 szeletes'),
(77, 120, 3400, 'kg'),
(78, 105, 5700, '8 szeletes'),
(79, 119, 13200, '24 szeletes'),
(80, 99, 4600, 'kg'),
(81, 61, 12200, '24 szeletes'),
(82, 93, 4200, 'kg'),
(83, 59, 13200, '24 szeletes'),
(84, 82, 5700, '8 szeletes'),
(85, 56, 600, 'db'),
(86, 23, 550, 'db'),
(87, 81, 12100, '24 szeletes'),
(88, 67, 500, 'db'),
(89, 68, 6400, '8 szeletes'),
(90, 38, 8200, '16 szeletes'),
(91, 139, 4700, '8 szeletes'),
(92, 30, 530, 'db'),
(93, 95, 16200, '24 szeletes'),
(94, 101, 400, 'db'),
(95, 65, 400, 'db'),
(96, 10, 12100, '24 szeletes'),
(97, 59, 9000, '16 szeletes'),
(98, 119, 4700, '8 szeletes'),
(99, 82, 16200, '24 szeletes'),
(100, 3, 3300, 'kg'),
(101, 104, 4200, 'kg'),
(102, 110, 530, 'db'),
(103, 1, 300, 'db'),
(104, 25, 8200, '16 szeletes'),
(105, 40, 16200, '24 szeletes'),
(106, 36, 490, 'db'),
(107, 124, 3900, '8 szeletes'),
(108, 16, 530, 'db'),
(109, 29, 3500, 'koszorú'),
(110, 116, 10900, '16 szeletes'),
(111, 71, 3900, '8 szeletes'),
(112, 2, 500, 'db'),
(113, 71, 11400, '24 szeletes'),
(114, 10, 4300, '8 szeletes'),
(115, 108, 3900, '8 szeletes'),
(116, 69, 450, 'db'),
(117, 39, 9000, '16 szeletes'),
(118, 25, 4300, '8 szeletes'),
(119, 107, 8400, '16 szeletes'),
(120, 5, 9000, '12 szeletes'),
(121, 106, 8200, '16 szeletes'),
(122, 114, 450, 'db'),
(123, 26, 400, 'db'),
(124, 82, 10900, '16 szeletes'),
(125, 28, 8200, '16 szeletes'),
(126, 42, 10900, '16 szeletes'),
(127, 35, 13200, '24 szeletes'),
(128, 74, 3900, '8 szeletes'),
(129, 19, 450, 'db'),
(130, 25, 12100, '24 szeletes'),
(131, 125, 5700, '8 szeletes'),
(132, 95, 5700, '8 szeletes'),
(133, 34, 1700, 'rúd'),
(134, 121, 530, 'db'),
(135, 76, 16200, '24 szeletes'),
(136, 13, 400, 'db'),
(137, 60, 12100, '24 szeletes'),
(138, 33, 350, 'db'),
(139, 132, 530, 'db'),
(140, 117, 9900, '16 szeletes'),
(141, 27, 10400, '16 szeletes'),
(142, 18, 490, 'db'),
(143, 124, 7400, '16 szeletes'),
(144, 122, 5200, 'kg'),
(145, 59, 4700, '8 szeletes'),
(146, 124, 11400, '24 szeletes'),
(147, 134, 13200, '24 szeletes'),
(148, 45, 450, 'db'),
(149, 63, 350, 'db'),
(150, 6, 3900, '8 szeletes'),
(151, 28, 4300, '8 szeletes'),
(152, 37, 3900, '8 szeletes'),
(153, 52, 5000, 'kg'),
(154, 61, 4500, '8 szeletes'),
(155, 86, 600, 'db'),
(156, 6, 7400, '16 szeletes'),
(157, 37, 7400, '16 szeletes'),
(158, 11, 490, 'db'),
(159, 108, 7400, '16 szeletes'),
(160, 35, 9000, '16 szeletes'),
(161, 107, 4500, '8 szeletes'),
(162, 6, 11400, '24 szeletes'),
(163, 79, 4000, 'kg'),
(164, 60, 4300, '8 szeletes'),
(165, 21, 5700, '8 szeletes'),
(166, 28, 12100, '24 szeletes'),
(167, 15, 5000, 'kg'),
(168, 21, 5700, '8 szeletes'),
(169, 37, 11400, '24 szeletes'),
(170, 74, 11400, '24 szeletes'),
(171, 103, 650, 'db'),
(172, 43, 4200, 'kg'),
(173, 12, 3400, 'kg'),
(174, 27, 5400, '8 szeletes'),
(175, 7, 490, 'db'),
(176, 84, 5200, 'kg'),
(177, 115, 3600, 'kg'),
(178, 51, 4000, 'kg'),
(179, 118, 450, 'db'),
(180, 41, 530, 'db'),
(181, 135, 400, 'db'),
(182, 73, 5400, '8 szeletes'),
(183, 10, 8200, '16 szeletes'),
(184, 98, 5400, '8 szeletes'),
(185, 113, 850, 'db'),
(186, 130, 350, 'db'),
(187, 39, 4700, '8 szeletes'),
(188, 136, 3400, 'kg'),
(189, 83, 650, 'db'),
(190, 91, 800, '20 dkg'),
(191, 46, 5200, 'kg'),
(192, 102, 330, 'db'),
(193, 95, 10900, '16 szeletes'),
(194, 54, 580, 'db'),
(195, 57, 530, 'db'),
(196, 22, 4700, '8 szeletes'),
(197, 92, 450, 'db'),
(198, 68, 12400, '16 szeletes'),
(199, 42, 5700, '8 szeletes'),
(200, 40, 10900, '16 szeletes'),
(201, 9, 450, 'db'),
(202, 78, 4200, 'kg'),
(203, 85, 500, 'db'),
(204, 137, 600, 'db'),
(205, 50, 4900, '8 szeletes'),
(206, 38, 12100, '24 szeletes'),
(207, 53, 4200, 'kg'),
(208, 89, 4700, '8 szeletes');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(10) UNSIGNED NOT NULL,
  `csaladi_nev` varchar(45) NOT NULL DEFAULT '',
  `utonev` varchar(45) NOT NULL DEFAULT '',
  `bejelentkezes` varchar(12) NOT NULL DEFAULT '',
  `jelszo` varchar(40) NOT NULL DEFAULT '',
  `jogosultsag` varchar(3) NOT NULL DEFAULT '_1_'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `csaladi_nev`, `utonev`, `bejelentkezes`, `jelszo`, `jogosultsag`) VALUES
(1, 'Rendszer', 'Admin', 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '__1'),
(2, 'Családi_2', 'Utónév_2', 'Login2', '6cf8efacae19431476020c1e2ebd2d8acca8f5c0', '_1_'),
(3, 'Családi_3', 'Utónév_3', 'Login3', 'df4d8ad070f0d1585e172a2150038df5cc6c891a', '_1_'),
(4, 'Családi_4', 'Utónév_4', 'Login4', 'b020c308c155d6bbd7eb7d27bd30c0573acbba5b', '_1_'),
(5, 'Családi_5', 'Utónév_5', 'Login5', '9ab1a4743b30b5e9c037e6a645f0cfee80fb41d4', '_1_'),
(6, 'Családi_6', 'Utónév_6', 'Login6', '7ca01f28594b1a06239b1d96fc716477d198470b', '_1_'),
(7, 'Családi_7', 'Utónév_7', 'Login7', '41ad7e5406d8f1af2deef2ade4753009976328f8', '_1_'),
(8, 'Családi_8', 'Utónév_8', 'Login8', '3a340fe3599746234ef89591e372d4dd8b590053', '_1_'),
(9, 'Családi_9', 'Utónév_9', 'Login9', 'c0298f7d314ecbc5651da5679a0a240833a88238', '_1_'),
(10, 'Családi_10', 'Utónév_10', 'Login10', 'a477427c183664b57f977661ac3167b64823f366', '_1_'),
(19, 'proba', 'proba', 'proba', '9f47b814230f7481deb45506283214aa58e923f9', '_1_'),
(18, 'Kalocsai', 'Friderika', 'kfriderika', '342a99bbf4207993428b3bef6c4ba7f83fdce7da', '_1_'),
(20, 'Kisebbik', 'Pista', 'kpisti', '0a16eb64a6acdf6238c67f7f27c85796be90983a', '_1_');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `menu`
--

CREATE TABLE `menu` (
  `url` varchar(30) NOT NULL,
  `nev` varchar(30) NOT NULL,
  `szulo` varchar(30) NOT NULL,
  `jogosultsag` varchar(3) NOT NULL,
  `sorrend` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `menu`
--

INSERT INTO `menu` (`url`, `nev`, `szulo`, `jogosultsag`, `sorrend`) VALUES
('belepes', 'Belépés', '', '100', 70),
('hirek', 'Hírek', '', '011', 40),
('kilepes', 'Kilépés', '', '011', 80),
('mnb', 'MNB', '', '111', 30),
('nyitolap', 'Nyitólap', '', '111', 10),
('regisztracio', 'Regisztráció', '', '100', 90),
('velemenyek', 'Vélemények', '', '011', 50);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `posts`
--

CREATE TABLE `posts` (
  `postid` varchar(50) NOT NULL,
  `author` varchar(45) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `posts`
--

INSERT INTO `posts` (`postid`, `author`, `title`, `image`, `body`, `published`, `created_at`) VALUES
('1', 'admin', 'Cukrászdánk 10 éves!', 'hir1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat, sed. Ex, id autem cum assumenda, quisquam cupiditate amet dolorem atque ipsam pariatur sequi voluptatem est nesciunt eum, aspernatur, tenetur rem.</p>', 1, '2021-10-20 10:31:17'),
('2', 'admin', 'Ország Tortája 2010', 'hir2.jpg', '<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, '2021-11-06 10:25:10'),
('3', 'jamesbb', 'Új mentes finomságok!', 'hir3.jpg', '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.<br><br>Et harum quidem rerum facilis est et expedita distinctio.</p>', 1, '2021-11-09 16:38:53'),
('4', 'stevegr', 'Karácsonyi készülődés', 'hir4.jpg', '<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?</p>', 1, '2021-11-09 16:38:53');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `suti`
--

CREATE TABLE `suti` (
  `sutiid` int(40) NOT NULL,
  `nev` varchar(20) NOT NULL,
  `tipus` varchar(20) NOT NULL,
  `dijazott` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `suti`
--

INSERT INTO `suti` (`sutiid`, `nev`, `tipus`, `dijazott`) VALUES
(1, 'Süni', 'vegyes', 0),
(2, 'Gesztenyealagút', 'vegyes', 0),
(3, 'Sajtos pogácsa', 'sós teasütemény', 0),
(4, 'Diós-mákos', 'bejgli', 0),
(5, 'Sajttorta (málnás)', 'torta', 0),
(6, 'Citrom', 'torta', 0),
(7, 'Eszterházy', 'tortaszelet', 0),
(8, 'Rákóczi-túrós', 'pite', 0),
(9, 'Meggyes kocka', 'tejszínes sütemény', 0),
(10, 'Legényfogó', 'torta', -1),
(11, 'Alpesi karamell', 'tortaszelet', 0),
(12, 'Kókuszcsók', 'édes teasütemény', 0),
(13, 'Habos mákos', 'pite', 0),
(14, 'Szilvás', 'pite', 0),
(15, 'Juhtúrós párna', 'sós teasütemény', 0),
(16, 'Mákos guba', 'tortaszelet', 0),
(17, 'Néró', 'édes teasütemény', 0),
(18, 'Sacher', 'tortaszelet', 0),
(19, 'Citrom', 'tortaszelet', 0),
(20, 'Ribizlihabos-almás r', 'különleges torta', -1),
(21, 'Három kívánság', 'torta', -1),
(22, 'Dobos', 'torta', 0),
(23, 'Epres mascarpone', 'tortaszelet', 0),
(24, 'Csokoládémousse', 'torta', 0),
(25, 'Oroszkrém', 'torta', 0),
(26, 'Medvetalp', 'vegyes', 0),
(27, 'Trüffel', 'torta', 0),
(28, 'Tejszínes gyümölcsös', 'torta', 0),
(29, 'Mákos-szilvalekváros', 'bejgli', 0),
(30, 'Ribizlihabos-﻿almá﻿s', 'tortaszelet', 0),
(31, 'Marcipános vágott', 'édes teasütemény', 0),
(32, 'Indiáner', 'vegyes', 0),
(33, 'Meggyes', 'pite', 0),
(34, 'Mákos', 'bejgli', 0),
(35, 'Sós karamella', 'torta', 0),
(36, 'Legényfogó', 'tortaszelet', 0),
(37, 'Rigó Jancsi', 'torta', 0),
(38, 'Tejszínes gyümölcsös', 'torta', 0),
(39, 'Ez+Az (csokoládé és ', 'torta', 0),
(40, 'Málnás mascarpone', 'torta', 0),
(41, 'Dobos', 'tortaszelet', 0),
(42, 'Ferrero', 'torta', 0),
(43, 'Vegyes házi pite fal', 'pite', 0),
(44, 'Ökörszem', 'édes teasütemény', 0),
(45, 'Danubius kocka', 'tejszínes sütemény', 0),
(46, 'Sajtkrémmel töltött ', 'sós teasütemény', 0),
(47, 'Túrókrém gyümölccsel', 'tortaszelet', 0),
(48, 'Almás', 'pite', 0),
(49, 'Mignon', 'vegyes', 0),
(50, 'Csokoládémousse fény', 'torta', 0),
(51, 'Vágott sós (sós omló', 'sós teasütemény', 0),
(52, 'Nagyi sós', 'sós teasütemény', 0),
(53, 'Vegyes sós', 'sós teasütemény', 0),
(54, 'Somlói', 'tortaszelet', 0),
(55, 'Tiramisu', 'tortaszelet', 0),
(56, 'Hegyvidék', 'tortaszelet', 0),
(57, 'Szedres csokoládé', 'tortaszelet', 0),
(58, 'Pogácsák vegyesen', 'sós teasütemény', 0),
(59, 'Lúdláb', 'torta', 0),
(60, 'Sacher', 'torta', 0),
(61, 'Eszterházy', 'torta', 0),
(62, 'Zalavári gesztenye', 'tortaszelet', 0),
(63, 'Gesztenyegolyó', 'vegyes', 0),
(64, 'Pisztáciás-málnás ma', 'tortaszelet', 0),
(65, 'Habos mákos', 'vegyes', 0),
(66, 'Franciakrémes', 'krémes', 0),
(67, 'Gesztenye kocka', 'tejszínes sütemény', 0),
(68, 'Pisztáciás-málnás ma', 'torta', 0),
(69, 'Málnás kocka', 'tejszínes sütemény', 0),
(70, 'Sajttorta (málnás)', 'tortaszelet', 0),
(71, 'Túrókrém gyümölccsel', 'torta', 0),
(72, 'Csokis kaland', 'különleges torta', -1),
(73, 'Somlói', 'torta', 0),
(74, 'Palermo', 'torta', 0),
(75, 'Szilvalekváros', 'bejgli', 0),
(76, 'Ünnepi diótorta gril', 'torta', 0),
(77, 'Oroszkrém', 'tortaszelet', 0),
(78, 'Mini zserbó', 'édes teasütemény', 0),
(79, 'Sajtos masni', 'sós teasütemény', 0),
(80, 'Zserbó', 'pite', 0),
(81, 'Tejszínes gyümölcsös', 'torta', 0),
(82, 'Marcipános csokoládé', 'torta', 0),
(83, 'Csokis kaland', 'tortaszelet', 0),
(84, 'Marcipán tekercs', 'édes teasütemény', 0),
(85, 'Képviselőfánk', 'vegyes', 0),
(86, 'Epres omlett', 'vegyes', 0),
(87, 'Mini linzer', 'édes teasütemény', 0),
(88, 'Linzerkarika', 'vegyes', 0),
(89, 'Szedres csokoládé', 'torta', 0),
(90, 'Narancsív', 'édes teasütemény', 0),
(91, 'Gesztenyepüré', 'vegyes', 0),
(92, 'Palermo', 'tejszínes sütemény', 0),
(93, 'Csokis néró', 'édes teasütemény', 0),
(94, 'Flódni', 'pite', 0),
(95, 'Mézeskalács', 'torta', 0),
(96, 'Olívás pogácsa', 'sós teasütemény', 0),
(97, 'Florentin', 'édes teasütemény', 0),
(98, 'Tiramisu', 'torta', 0),
(99, 'Zoli kedvence (vágot', 'édes teasütemény', 0),
(100, 'Erdei gyümölcs kocka', 'tejszínes sütemény', 0),
(101, 'Rákóczi-túrós', 'tortaszelet', 0),
(102, 'Mézeskrémes', 'pite', 0),
(103, 'Trüffel', 'tortaszelet', 0),
(104, 'Szilvás papucs', 'édes teasütemény', 0),
(105, 'Zalavári gesztenye', 'torta', -1),
(106, 'Danubius', 'torta', 0),
(107, 'Alpesi karamell', 'torta', 0),
(108, 'Puncs', 'torta', 0),
(109, 'Gesztenye szív', 'vegyes', 0),
(110, 'Ez+Az (csokoládé és ', 'tortaszelet', 0),
(111, 'Tökmagos félhold', 'sós teasütemény', 0),
(112, 'Burgonyás pogácsa', 'sós teasütemény', 0),
(113, 'Somlói galuska', 'vegyes', 0),
(114, 'Puncs', 'tortaszelet', 0),
(115, 'Lekváros vágott', 'édes teasütemény', 0),
(116, 'Oreo', 'torta', 0),
(117, 'Vintage', 'torta', 0),
(118, 'Rigó Jancsi', 'tejszínes sütemény', 0),
(119, 'Feketeerdő', 'torta', 0),
(120, 'Kókuszos vágott', 'édes teasütemény', 0),
(121, 'Feketeerdő', 'tortaszelet', 0),
(122, 'Moscauer', 'édes teasütemény', 0),
(123, 'Diós', 'bejgli', 0),
(124, 'Rákóczi-túrós', 'torta', 0),
(125, 'Három kívánság', 'különleges torta', 0),
(126, 'Gesztenyés-karamellá', 'bejgli', 0),
(127, 'Gesztenyés szív', 'édes teasütemény', 0),
(128, 'Ropi', 'sós teasütemény', 0),
(129, 'Paleolit étcsokoládé', 'különleges torta', 0),
(130, 'Túrós', 'pite', 0),
(131, 'Ischler', 'vegyes', 0),
(132, 'Lúdláb', 'tortaszelet', 0),
(133, 'Csokoládémousse', 'tortaszelet', 0),
(134, 'Dió', 'torta', 0),
(135, 'Krémes', 'krémes', 0),
(136, 'Mini ischler', 'édes teasütemény', 0),
(137, 'Paleolit étcsokoládé', 'tortaszelet', 0),
(138, 'Tejfölös túrós hajto', 'sós teasütemény', 0),
(139, 'Mákos guba', 'torta', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `velemenyek`
--

CREATE TABLE `velemenyek` (
  `id` int(10) UNSIGNED NOT NULL,
  `tema` text NOT NULL,
  `velemeny` varchar(1000) NOT NULL,
  `userlastname` varchar(40) NOT NULL,
  `userfirstname` varchar(40) NOT NULL,
  `datum` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `velemenyek`
--

INSERT INTO `velemenyek` (`id`, `tema`, `velemeny`, `userlastname`, `userfirstname`, `datum`) VALUES
(13, 'EzEgyTema', 'Ez egy velemeny', 'proba', 'proba', '0000-00-00 00:00:00'),
(14, 'EzEgyTema', 'Ez egy velemeny', 'proba', 'proba', '0000-00-00 00:00:00'),
(15, 'tema123', 'velemeny 123', 'proba', 'proba', '0000-00-00 00:00:00'),
(16, 'EzEgyTema', 'Ez egy velemeny', 'proba', 'proba', '0000-00-00 00:00:00'),
(17, 'EzEgyTema', 'Ez egy vélemény', 'proba', 'proba', '0000-00-00 00:00:00');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ar`
--
ALTER TABLE `ar`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`url`);

--
-- A tábla indexei `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postid`);

--
-- A tábla indexei `suti`
--
ALTER TABLE `suti`
  ADD PRIMARY KEY (`sutiid`);

--
-- A tábla indexei `velemenyek`
--
ALTER TABLE `velemenyek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `velemenyek`
--
ALTER TABLE `velemenyek`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
