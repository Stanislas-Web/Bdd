-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Lun 18 Novembre 2019 à 21:37
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `encyclopeki`
--

-- --------------------------------------------------------

--
-- Structure de la table `adhesions`
--

CREATE TABLE IF NOT EXISTS `adhesions` (
  `idInscription` int(11) NOT NULL AUTO_INCREMENT,
  `identifiantInscription` varchar(50) NOT NULL,
  `motDePasseInscription` varchar(50) NOT NULL,
  `photoProfil` varchar(100) NOT NULL,
  `dateInscription` date NOT NULL,
  `tempsInscription` time NOT NULL,
  `idParti` int(11) NOT NULL,
  PRIMARY KEY (`idInscription`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `adhesions`
--

INSERT INTO `adhesions` (`idInscription`, `identifiantInscription`, `motDePasseInscription`, `photoProfil`, `dateInscription`, `tempsInscription`, `idParti`) VALUES
(1, 'Nsiluanzambi', 'p', 'IMG_20190622_121247_621[1].jpg', '2019-06-23', '12:15:36', 2),
(2, 'Mambweni', 'mambweni', 'IMG_0764.JPG', '2019-06-25', '16:44:41', 3),
(3, 'f', 'f', '1.jpg', '2019-08-02', '17:33:57', 3);

-- --------------------------------------------------------

--
-- Structure de la table `administrateurs`
--

CREATE TABLE IF NOT EXISTS `administrateurs` (
  `idAdministrateur` int(11) NOT NULL AUTO_INCREMENT,
  `identifiantConnexion` varchar(20) NOT NULL,
  `motDePasseConnexion` varchar(20) NOT NULL,
  `dateAdministrateur` date NOT NULL,
  `tempsAdministrateur` time NOT NULL,
  `identifiantAdministrateur` varchar(20) NOT NULL,
  PRIMARY KEY (`idAdministrateur`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `administrateurs`
--

INSERT INTO `administrateurs` (`idAdministrateur`, `identifiantConnexion`, `motDePasseConnexion`, `dateAdministrateur`, `tempsAdministrateur`, `identifiantAdministrateur`) VALUES
(1, 'Mister E', 'Mister E', '2019-06-16', '10:05:09', 'Admin'),
(2, 'Nsiluanzambi', 'nsiluanzambi', '2019-06-16', '18:46:15', 'Mister E'),
(3, 'Moise', 'moise', '2019-06-16', '18:58:26', 'Nsiluanzambi'),
(4, 'Makengo Pembele', 'mp', '2019-06-17', '18:43:38', 'Mister E');

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

CREATE TABLE IF NOT EXISTS `annonces` (
  `idAnnonce` int(11) NOT NULL AUTO_INCREMENT,
  `titreAnnonce` varchar(100) NOT NULL,
  `descriptionAnnonce` text NOT NULL,
  `imageAnnonce` varchar(100) NOT NULL,
  `dateAnnonce` date NOT NULL,
  `tempsAnnonce` time NOT NULL,
  `idParti` int(11) NOT NULL,
  `identifiantAdministrateur` varchar(20) NOT NULL,
  PRIMARY KEY (`idAnnonce`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `annonces`
--

INSERT INTO `annonces` (`idAnnonce`, `titreAnnonce`, `descriptionAnnonce`, `imageAnnonce`, `dateAnnonce`, `tempsAnnonce`, `idParti`, `identifiantAdministrateur`) VALUES
(2, 'Novelas !', 'Novelas doit etre fermÃ©...\r\n\r\nDixit le Directeur de Cabinet du PrÃ©sident de la RÃ©publique', 'IMG_20190623_091424_687.jpg', '2019-06-23', '10:42:38', 2, 'Mister E'),
(3, 'LÃ©opards', 'Les lÃ©opards ont fait honte...', 'IMG_4757.JPG', '2019-06-25', '16:42:45', 3, 'mlc');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE IF NOT EXISTS `commentaires` (
  `idCommentaire` int(11) NOT NULL AUTO_INCREMENT,
  `contenuCommentaire` text NOT NULL,
  `dateCommentaire` date NOT NULL,
  `tempsCommentaire` time NOT NULL,
  `idAnnonce` int(11) NOT NULL,
  `identifiantUtilisateur` varchar(20) NOT NULL,
  PRIMARY KEY (`idCommentaire`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `commentaires`
--

INSERT INTO `commentaires` (`idCommentaire`, `contenuCommentaire`, `dateCommentaire`, `tempsCommentaire`, `idAnnonce`, `identifiantUtilisateur`) VALUES
(7, 'Ba bololÃ©', '2019-06-25', '16:46:53', 3, 'Mambweni');

-- --------------------------------------------------------

--
-- Structure de la table `inscriptions`
--

CREATE TABLE IF NOT EXISTS `inscriptions` (
  `idInscription` int(11) NOT NULL AUTO_INCREMENT,
  `identifiantInscription` varchar(20) NOT NULL,
  `motDePasseInscription` varchar(20) NOT NULL,
  `dateInscription` date NOT NULL,
  `tempsInscription` time NOT NULL,
  `idParti` int(20) NOT NULL,
  PRIMARY KEY (`idInscription`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `inscriptions`
--

INSERT INTO `inscriptions` (`idInscription`, `identifiantInscription`, `motDePasseInscription`, `dateInscription`, `tempsInscription`, `idParti`) VALUES
(1, 'Mister E', 'mistere', '2019-06-23', '08:47:39', 2),
(2, 'mlc', 'mlc', '2019-06-25', '16:32:21', 3);

-- --------------------------------------------------------

--
-- Structure de la table `partis`
--

CREATE TABLE IF NOT EXISTS `partis` (
  `idParti` int(11) NOT NULL AUTO_INCREMENT,
  `nomParti` varchar(100) NOT NULL,
  `descriptionParti` text NOT NULL,
  `logoParti` varchar(100) NOT NULL,
  `dateParti` date NOT NULL,
  `tempsParti` time NOT NULL,
  `identifiantAdministrateur` varchar(20) NOT NULL,
  PRIMARY KEY (`idParti`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `partis`
--

INSERT INTO `partis` (`idParti`, `nomParti`, `descriptionParti`, `logoParti`, `dateParti`, `tempsParti`, `identifiantAdministrateur`) VALUES
(1, 'Union pour la Democratie et le Progres Social', 'Fatshi', 'IMG_20190623_010118_865.jpg', '2019-06-23', '01:52:52', 'Admin'),
(2, 'Union pour la Nation Congolaise', 'Parti cher Ã  Vital Kamerhe', 'IMG_20190623_010142_669.jpg', '2019-06-23', '01:55:25', 'Admin'),
(3, 'Mouvement de LibÃ©ration du Congo', 'Parti cher Ã  Jean Pierre Bemba', 'b.JPG', '2019-06-25', '16:29:33', 'Admin'),
(4, '<marquee>juge</marquee>', 'fret', '3.jpg', '2019-07-04', '17:51:32', 'Admin');
