-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Lun 18 Novembre 2019 à 21:41
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `retraite`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `idCat` varchar(30) NOT NULL,
  `libelle` varchar(30) NOT NULL,
  PRIMARY KEY (`idCat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`idCat`, `libelle`) VALUES
('CAT01', 'LICENCIÉ'),
('CAT02', 'GRADUÉ');

-- --------------------------------------------------------

--
-- Structure de la table `consultation`
--

CREATE TABLE IF NOT EXISTS `consultation` (
  `idR` int(11) NOT NULL,
  `idE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `consultation`
--


-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

CREATE TABLE IF NOT EXISTS `contrat` (
  `idContrat` int(11) NOT NULL,
  `libelle` varchar(30) NOT NULL,
  `idE` int(11) NOT NULL,
  PRIMARY KEY (`idContrat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `contrat`
--


-- --------------------------------------------------------

--
-- Structure de la table `drh`
--

CREATE TABLE IF NOT EXISTS `drh` (
  `idR` varchar(30) NOT NULL,
  `nomResp` text NOT NULL,
  PRIMARY KEY (`idR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `drh`
--

INSERT INTO `drh` (`idR`, `nomResp`) VALUES
('D001', 'KABEYA'),
('D002', 'SHOPO'),
('D003', 'LOMATA'),
('D004', 'PUBLISHER');

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `idE` varchar(30) NOT NULL,
  `nom` text NOT NULL,
  `postnom` text NOT NULL,
  `prenom` text NOT NULL,
  `age` int(11) NOT NULL,
  `adresse` text NOT NULL,
  `fonction` varchar(30) DEFAULT NULL,
  `Categorie` varchar(12) DEFAULT NULL,
  `exper` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idE`),
  UNIQUE KEY `fonction` (`fonction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`idE`, `nom`, `postnom`, `prenom`, `age`, `adresse`, `fonction`, `Categorie`, `exper`) VALUES
('1', 'shopo', 'mambuya', 'dan', 51, 'MATETE', 'chef de bureau', 'd6', '45 An(s)');

-- --------------------------------------------------------

--
-- Structure de la table `experience`
--

CREATE TABLE IF NOT EXISTS `experience` (
  `idExp` varchar(30) NOT NULL,
  `nbre_annee` varchar(30) NOT NULL,
  PRIMARY KEY (`idExp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `experience`
--

INSERT INTO `experience` (`idExp`, `nbre_annee`) VALUES
('EXP01', '6 An(s)'),
('EXP02', '30 An(s)');

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

CREATE TABLE IF NOT EXISTS `fonction` (
  `idFonc` varchar(30) NOT NULL,
  `libelle` varchar(30) NOT NULL,
  PRIMARY KEY (`idFonc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fonction`
--


-- --------------------------------------------------------

--
-- Structure de la table `possession`
--

CREATE TABLE IF NOT EXISTS `possession` (
  `idExp` int(11) NOT NULL,
  `idE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `possession`
--


-- --------------------------------------------------------

--
-- Structure de la table `retraite_em`
--

CREATE TABLE IF NOT EXISTS `retraite_em` (
  `idRetraite` varchar(30) NOT NULL,
  `libelle` varchar(30) NOT NULL,
  `idE` varchar(30) NOT NULL,
  `montant` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `retraite_em`
--

INSERT INTO `retraite_em` (`idRetraite`, `libelle`, `idE`, `montant`) VALUES
('1', 'PENSION', 'E001', ''),
('2', 'DECOMPTE', '2', ''),
('3', 'DECOMPTE', 'MAKENGO', '1500000 Fc'),
('4', 'pension', 'katembo', '12450985 Fc');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `idS` int(11) NOT NULL,
  `nom_resp` text NOT NULL,
  `idE` int(11) NOT NULL,
  `idP` int(11) NOT NULL,
  PRIMARY KEY (`idS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`idS`, `nom_resp`, `idE`, `idP`) VALUES
(1, 'POPOL', 3, 8),
(2, 'M', 6, 1),
(3, 'KABUYA', 1, 9);
