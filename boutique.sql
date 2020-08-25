-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Lun 18 Novembre 2019 à 21:36
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `boutique`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `idArticle` int(11) NOT NULL AUTO_INCREMENT,
  `nomArticle` varchar(100) NOT NULL,
  `quantiteArticle` int(11) NOT NULL,
  `prixArticle` int(20) NOT NULL,
  `dateArticle` date NOT NULL,
  `tempsArticle` time NOT NULL,
  `identifiantAdministrateur` varchar(20) NOT NULL,
  PRIMARY KEY (`idArticle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`idArticle`, `nomArticle`, `quantiteArticle`, `prixArticle`, `dateArticle`, `tempsArticle`, `identifiantAdministrateur`) VALUES
(2, 'Spaghetti Roni Petit', 67, 850, '2019-08-07', '14:19:54', 'Admin'),
(3, 'Momo Petit Sachet', 10, 100, '2019-08-07', '15:27:36', 'Admin'),
(4, 'Blue band', 28, 400, '2019-08-07', '18:03:17', 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `ravitaillements`
--

CREATE TABLE IF NOT EXISTS `ravitaillements` (
  `idRavitaillement` int(11) NOT NULL AUTO_INCREMENT,
  `nomArticle` varchar(100) NOT NULL,
  `quantiteArticle` int(11) NOT NULL,
  `prixArticle` int(11) NOT NULL,
  `dateRavitaillement` date NOT NULL,
  `tempsRavitaillement` time NOT NULL,
  `idArticle` int(11) NOT NULL,
  `identifiantAdministrateur` varchar(20) NOT NULL,
  PRIMARY KEY (`idRavitaillement`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Contenu de la table `ravitaillements`
--

INSERT INTO `ravitaillements` (`idRavitaillement`, `nomArticle`, `quantiteArticle`, `prixArticle`, `dateRavitaillement`, `tempsRavitaillement`, `idArticle`, `identifiantAdministrateur`) VALUES
(3, 'NescafÃ©', 12, 300, '2019-08-12', '09:20:38', 1, 'Admin'),
(34, 'Momo Petit Sachet', 0, 500, '2019-08-12', '14:55:03', 3, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `ventes`
--

CREATE TABLE IF NOT EXISTS `ventes` (
  `idVente` int(11) NOT NULL AUTO_INCREMENT,
  `nomArticle` varchar(100) NOT NULL,
  `quantiteArticle` int(20) NOT NULL,
  `prixArticle` int(20) NOT NULL,
  `totalArticle` int(20) NOT NULL,
  `dateVente` date NOT NULL,
  `tempsVente` time NOT NULL,
  `idArticle` int(11) NOT NULL,
  `identifiantAdministrateur` varchar(20) NOT NULL,
  PRIMARY KEY (`idVente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `ventes`
--

INSERT INTO `ventes` (`idVente`, `nomArticle`, `quantiteArticle`, `prixArticle`, `totalArticle`, `dateVente`, `tempsVente`, `idArticle`, `identifiantAdministrateur`) VALUES
(1, 'Momo Petit Sachet', 2, 500, 1000, '2019-08-12', '14:55:10', 3, 'Admin'),
(2, 'Momo Petit Sachet', 1, 500, 500, '2019-08-12', '15:02:56', 3, 'Admin'),
(3, 'Momo Petit Sachet', 2, 500, 1000, '2019-08-12', '15:03:50', 3, 'Admin'),
(4, 'NescafÃ©', 18, 300, 5400, '2019-08-12', '18:22:30', 1, 'Admin');
