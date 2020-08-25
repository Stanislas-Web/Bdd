-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 23 Janvier 2020 à 04:24
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `node`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id`, `content`, `created_at`) VALUES
(1, 'salut', '2019-11-12 16:41:40'),
(2, 'COMMENT TU VAS', '2019-11-12 17:01:31'),
(3, 'KIBALA BONARD', '2019-11-12 17:02:18'),
(4, 'stanislas', '2019-11-12 17:02:52'),
(7, 'ret\r\n', '2019-11-12 17:34:03'),
(8, 'dido', '2019-11-15 14:31:51'),
(9, 'salut', '2019-11-18 17:15:50'),
(10, 'kjn', '2019-11-18 17:17:12'),
(11, 'd', '2019-12-03 10:36:47'),
(12, 'gfd', '2019-12-10 11:08:03'),
(13, 'salut tout le monde', '2019-12-10 11:11:04'),
(14, 'salut', '2019-12-11 13:20:19'),
(15, 'fghj', '2019-12-11 17:12:36'),
(16, 'salut', '2019-12-11 17:17:06'),
(17, 'salut le monde', '2019-12-11 17:17:49'),
(18, 'fghjkl;', '2020-01-11 12:33:57');
