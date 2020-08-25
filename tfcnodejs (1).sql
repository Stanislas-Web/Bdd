-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 23 Novembre 2019 à 22:03
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `tfcnodejs`
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
  PRIMARY KEY (`idEcole`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `ecoles`
--

INSERT INTO `ecoles` (`idEcole`, `nomEcole`, `categorieEcole`, `communeEcole`, `quartierEcole`, `avenueEcole`, `numeroEcole`, `logoEcole`) VALUES
(1, 'Institut Diasiwa', 'Conventionnée Kimbanguiste', 'Matete', 'Ngilima', 'Ngilima', '12', 'logoEcole-1574524669675.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
