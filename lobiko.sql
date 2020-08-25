-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 03 Octobre 2019 à 12:53
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `lobiko`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `idArticle` int(11) NOT NULL AUTO_INCREMENT,
  `nomArticle` varchar(100) NOT NULL,
  `quantiteArticle` varchar(100) NOT NULL,
  `typeArticle` varchar(100) NOT NULL,
  `seuilArticle` varchar(100) NOT NULL,
  `logoArticle` varchar(100) NOT NULL,
  `dateArticle` date NOT NULL,
  `tempsArticle` time NOT NULL,
  `identifiantAdministrateur` varchar(100) NOT NULL,
  PRIMARY KEY (`idArticle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`idArticle`, `nomArticle`, `quantiteArticle`, `typeArticle`, `seuilArticle`, `logoArticle`, `dateArticle`, `tempsArticle`, `identifiantAdministrateur`) VALUES
(3, 'anaflam', '200', '1500', '12 decembre 2020', '7-anaflam.jpg', '2019-09-28', '14:00:41', 'Lobiko'),
(4, 'IBUCAP', '200', '2000', '12 decembre 2020', '3.-ibucap-group-600-x-318px.jpg', '2019-09-28', '14:24:35', 'Lobiko'),
(5, 'tretra', '200', '1200', '12 decembre 2020', '6.jpg', '2019-09-28', '14:29:53', 'Lobiko');
