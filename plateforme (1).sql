-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Lun 18 Novembre 2019 à 21:40
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `plateforme`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `nomadmin` varchar(50) NOT NULL,
  `motdepasseadmin` varchar(20) NOT NULL,
  PRIMARY KEY (`idadmin`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`idadmin`, `nomadmin`, `motdepasseadmin`) VALUES
(1, 'makengo', '123456789'),
(2, 'manoka', 'mano'),
(3, 'polisi', 'polisi'),
(4, 'kalala', 'lolo'),
(5, 'makol', 'jik'),
(6, 'admin', 'koko'),
(7, 'nanikafuako', '1234567890'),
(8, 'wewe', '12345'),
(9, 'kij', 'g');

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

CREATE TABLE IF NOT EXISTS `ecole` (
  `idecole` int(11) NOT NULL AUTO_INCREMENT,
  `nomecole` varchar(50) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `nomadmin` varchar(20) NOT NULL,
  PRIMARY KEY (`idecole`),
  UNIQUE KEY `idadmin` (`nomadmin`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `ecole`
--

INSERT INTO `ecole` (`idecole`, `nomecole`, `categorie`, `nomadmin`) VALUES
(1, 'collÃ¨ge saint thÃ©ophile', 'conventionnÃ©e catholique', 'nanikafuako'),
(3, 'collÃ¨ge Boboto', 'conventionnÃ©e catholique', 'makengo');
