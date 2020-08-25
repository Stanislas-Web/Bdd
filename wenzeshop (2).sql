-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 23 Janvier 2020 à 04:16
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `wenzeshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `nomAdmin` varchar(100) NOT NULL,
  `motdepasseAdmin` varchar(100) NOT NULL,
  PRIMARY KEY (`idadmin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `admins`
--


-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(100) NOT NULL,
  `motdepasseClient` varchar(100) NOT NULL,
  `numerotelClient` varchar(100) NOT NULL,
  `communeClient` varchar(100) NOT NULL,
  `quartierClient` varchar(100) NOT NULL,
  `avenueClient` varchar(100) NOT NULL,
  `numeroClient` varchar(100) NOT NULL,
  `logoEcole` varchar(100) NOT NULL,
  `dateClient` date NOT NULL,
  `tempsEcole` time NOT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`idClient`, `nomClient`, `motdepasseClient`, `numerotelClient`, `communeClient`, `quartierClient`, `avenueClient`, `numeroClient`, `logoEcole`, `dateClient`, `tempsEcole`) VALUES
(1, 'Umba DI ndangi', 'aze', 'aze', 'aze', 'aze', 'aze', 'aze', '16-ibucap.jpg', '2019-12-18', '21:30:28'),
(2, 'Umba ', 'az', 'az', 'az', 'az', 'az', 'az', '4.jpg', '2019-12-18', '21:51:45'),
(3, 'stanis', 'stanis', 'qqq', 'nbjn', 'DFG', 'qq', '12', '3.-ibucap-group-600-x-318px.jpg', '2019-12-18', '23:20:45'),
(4, 'Makengo', '123', '0826016607', 'Matete', 'Mutoto', 'Mutoto', '7 ', 'IMG_20191219_141516_798.jpg', '2019-12-19', '16:40:17'),
(5, 'Makenga', '123', '0826016607', 'Matete', 'Mutoto', 'Mutoto', '7 ', 'Screenshot_2019-12-19-14-08-41.png', '2019-12-19', '16:41:16'),
(6, 'Benie', '1234', '1234567', 'Matete', 'mutoto', 'mutoto', '12', 'Snapchat-2070125004.jpg', '2019-12-20', '14:56:01'),
(7, 'styno', '1234567', '0826016607', 'Matete', 'mutoto', 'mutoto', '21', 'CARTE.jpeg', '2019-12-23', '13:21:24'),
(8, 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'CARTE.jpeg', '2019-12-23', '13:25:12'),
(9, 'Obed', '123', '123', '123', '123', '123', '123', 'CARTE.jpeg', '2019-12-23', '14:29:09'),
(10, 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'CARTE.jpeg', '2019-12-23', '14:49:40'),
(11, 'dido', 'dido', 'dido', 'dido', 'dido', 'dido', '12', 'CARTE.jpeg', '2019-12-30', '17:40:53');

-- --------------------------------------------------------

--
-- Structure de la table `commandeclients`
--

CREATE TABLE IF NOT EXISTS `commandeclients` (
  `idCommande` int(11) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(50) NOT NULL,
  `telephoneClient` varchar(50) NOT NULL,
  `communeClient` varchar(50) NOT NULL,
  `quartierClient` varchar(50) NOT NULL,
  `avenueClient` varchar(50) NOT NULL,
  `numeroClient` varchar(50) NOT NULL,
  `nomProduit` varchar(50) NOT NULL,
  `quantiteProduit` int(11) NOT NULL,
  `prixProduit` int(11) NOT NULL,
  `prixTotal` int(11) NOT NULL,
  `dateCommande` date NOT NULL,
  `tempsCommande` time NOT NULL,
  PRIMARY KEY (`idCommande`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `commandeclients`
--


-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `idCommande` int(11) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(50) NOT NULL,
  `telephoneClient` varchar(50) NOT NULL,
  `communeClient` varchar(50) NOT NULL,
  `quartierClient` varchar(50) NOT NULL,
  `avenueClient` varchar(50) NOT NULL,
  `numeroClient` varchar(50) NOT NULL,
  `nomProduit` varchar(50) NOT NULL,
  `quantiteProduit` int(11) NOT NULL,
  `prixProduit` int(20) NOT NULL,
  `prixTotal` int(15) NOT NULL,
  `dateCommande` date NOT NULL,
  `tempsCommande` time NOT NULL,
  PRIMARY KEY (`idCommande`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`idCommande`, `nomClient`, `telephoneClient`, `communeClient`, `quartierClient`, `avenueClient`, `numeroClient`, `nomProduit`, `quantiteProduit`, `prixProduit`, `prixTotal`, `dateCommande`, `tempsCommande`) VALUES
(1, 'Dido', '0825947168', 'mont ngafula', 'Mbundi', 'Songoli', '18 ', 'Matembele', 2, 1000, 5000, '2019-08-20', '11:44:38'),
(2, 'Dido', '0825947168', 'mont ngafula', 'Mbundi', 'Songoli', '18 ', 'Choux', 1, 2000, 5000, '2019-08-20', '11:44:38'),
(3, 'Dido', '0825947168', 'mont ngafula', 'Mbundi', 'Songoli', '18 ', 'Ndunda', 1, 1000, 5000, '2019-08-20', '11:44:38'),
(4, 'Miyalu LUMBWA DieudonnÃ© ', '0825937168', 'Mont-Ngafula', 'Cpa', 'Songoli', '18', 'Choux', 1, 2000, 2000, '2019-12-17', '15:39:29'),
(5, 'Judah', '0818379907', 'Kintambo', 'Salongo', 'Madimba', '32', 'Choux', 1, 2000, 2000, '2019-12-17', '15:43:08'),
(6, 'Styno', '082', 'Matete', 'Mutoto', 'Mutoto', '18', 'Choux', 1, 2000, 2000, '2019-12-17', '20:28:45'),
(7, 'deh', 'gdr', 'hh', 'hff', 'fhh', 'hfgh', 'Choux', 1, 2000, 2000, '2019-12-18', '13:11:11'),
(8, '', '', '', '', '', '', 'Ndunda', 1, 1000, 1000, '2019-12-20', '14:57:52');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `idProduit` int(11) NOT NULL AUTO_INCREMENT,
  `nomProduit` varchar(20) NOT NULL,
  `categorieProduit` varchar(20) NOT NULL,
  `prixProduit` varchar(10) NOT NULL,
  `logoProduit` varchar(100) NOT NULL,
  `dateProduit` date NOT NULL,
  `tempsProduit` time NOT NULL,
  `identifiantAdministrateur` varchar(20) NOT NULL,
  PRIMARY KEY (`idProduit`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`idProduit`, `nomProduit`, `categorieProduit`, `prixProduit`, `logoProduit`, `dateProduit`, `tempsProduit`, `identifiantAdministrateur`) VALUES
(1, 'Pondu', 'legume', '1500', 'pondu.jpg', '2019-08-02', '23:29:21', 'Aspic'),
(2, 'Matembele', 'legume', '1000', 'MATEMBELE-NA-MBISI-YA-KOKAWUKA-620x400.png', '2019-08-02', '23:30:12', 'Aspic'),
(3, 'Choux', 'legume', '2000', 'choux.jpg', '2019-08-02', '23:31:06', 'Aspic'),
(4, 'Ndunda', 'legume', '1000', 'ndunda.jpeg', '2019-08-02', '23:55:14', 'Aspic'),
(7, 'poisson', 'vivres frais', '2000', 'banner3.jpg', '2019-08-03', '17:04:04', 'Aspic');
