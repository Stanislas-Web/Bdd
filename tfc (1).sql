-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mer 16 Octobre 2019 à 13:19
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `tfc`
--

-- --------------------------------------------------------

--
-- Structure de la table `ecoles`
--

CREATE TABLE IF NOT EXISTS `ecoles` (
  `idEcole` int(11) NOT NULL AUTO_INCREMENT,
  `nomEcole` varchar(100) NOT NULL,
  `categorieEcole` varchar(100) NOT NULL,
  `communeEcole` varchar(100) NOT NULL,
  `quartierEcole` varchar(100) NOT NULL,
  `avenueEcole` varchar(100) NOT NULL,
  `numeroEcole` varchar(100) NOT NULL,
  `logoEcole` varchar(100) NOT NULL,
  `dateEcole` date NOT NULL,
  `tempsEcole` time NOT NULL,
  `identifiantAdministrateur` varchar(100) NOT NULL,
  PRIMARY KEY (`idEcole`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `ecoles`
--

INSERT INTO `ecoles` (`idEcole`, `nomEcole`, `categorieEcole`, `communeEcole`, `quartierEcole`, `avenueEcole`, `numeroEcole`, `logoEcole`, `dateEcole`, `tempsEcole`, `identifiantAdministrateur`) VALUES
(1, 'Shafak', 'PrivÃ©e AgrÃ©e', 'Gombe', 'blvrd', 'bvrd', '34 b', '10505561_723633961006829_7534681518873654256_n.jpg', '2019-10-03', '16:50:25', 'Stanislas'),
(2, 'Institut Diasiwa', 'ConventionnÃ©e Kimbanguiste', 'Matete', 'Ngilima', 'Ngilima', '34 b', '1334804376_logo_unesco.jpg', '2019-10-03', '22:27:37', 'Stanislas');

-- --------------------------------------------------------

--
-- Structure de la table `eleves`
--

CREATE TABLE IF NOT EXISTS `eleves` (
  `idEleve` int(11) NOT NULL AUTO_INCREMENT,
  `nomEleve` varchar(100) NOT NULL,
  `postnomEleve` varchar(100) NOT NULL,
  `prenomEleve` varchar(100) NOT NULL,
  `classeEleve` varchar(100) NOT NULL,
  `optionEleve` varchar(100) NOT NULL,
  `sectionEleve` varchar(100) NOT NULL,
  `communeEleve` varchar(100) NOT NULL,
  `quartierEleve` varchar(100) NOT NULL,
  `avenueEleve` varchar(100) NOT NULL,
  `numeroEleve` varchar(100) NOT NULL,
  `dateEleve` date NOT NULL,
  `tempsEleve` time NOT NULL,
  `idEcole` int(11) NOT NULL,
  `idTuteur` int(11) NOT NULL,
  PRIMARY KEY (`idEleve`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `eleves`
--

