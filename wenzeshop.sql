-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 22 Août 2019 à 14:07
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`idCommande`, `nomClient`, `telephoneClient`, `communeClient`, `quartierClient`, `avenueClient`, `numeroClient`, `nomProduit`, `quantiteProduit`, `prixProduit`, `prixTotal`, `dateCommande`, `tempsCommande`) VALUES
(1, 'Dido', '0825947168', 'mont ngafula', 'Mbundi', 'Songoli', '18 ', 'Matembele', 2, 1000, 5000, '2019-08-20', '11:44:38'),
(2, 'Dido', '0825947168', 'mont ngafula', 'Mbundi', 'Songoli', '18 ', 'Choux', 1, 2000, 5000, '2019-08-20', '11:44:38'),
(3, 'Dido', '0825947168', 'mont ngafula', 'Mbundi', 'Songoli', '18 ', 'Ndunda', 1, 1000, 5000, '2019-08-20', '11:44:38');

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
