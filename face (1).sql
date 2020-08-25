-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Lun 18 Novembre 2019 à 21:38
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `face`
--

-- --------------------------------------------------------

--
-- Structure de la table `adhesions`
--

CREATE TABLE IF NOT EXISTS `adhesions` (
  `idInscription` int(11) NOT NULL AUTO_INCREMENT,
  `identifiantInscription` varchar(20) NOT NULL,
  `motDePasseInscription` varchar(20) NOT NULL,
  `photoProfil` varchar(100) NOT NULL,
  `dateInscription` date NOT NULL,
  `tempsInscription` time NOT NULL,
  `idSociete` int(11) NOT NULL,
  PRIMARY KEY (`idInscription`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `adhesions`
--

INSERT INTO `adhesions` (`idInscription`, `identifiantInscription`, `motDePasseInscription`, `photoProfil`, `dateInscription`, `tempsInscription`, `idSociete`) VALUES
(1, 'Nsiluanzambi', 'p', 'IMG_20190622_121247_621[1].jpg', '2019-06-23', '12:15:36', 2),
(2, 'Mambweni', 'mambweni', 'IMG_0764.JPG', '2019-06-25', '16:44:41', 3);

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
-- Structure de la table `agences`
--

CREATE TABLE IF NOT EXISTS `agences` (
  `idAgence` int(11) NOT NULL AUTO_INCREMENT,
  `nomAgence` varchar(50) NOT NULL,
  `communeAgence` varchar(50) NOT NULL,
  `rueAgence` varchar(50) NOT NULL,
  `quartierAgence` varchar(50) NOT NULL,
  `numeroAgence` varchar(50) NOT NULL,
  `dateAgence` date NOT NULL,
  `tempsAgence` time NOT NULL,
  `idSociete` int(11) NOT NULL,
  PRIMARY KEY (`idAgence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `agences`
--

INSERT INTO `agences` (`idAgence`, `nomAgence`, `communeAgence`, `rueAgence`, `quartierAgence`, `numeroAgence`, `dateAgence`, `tempsAgence`, `idSociete`) VALUES
(1, 'baboma', 'matete', 'baboma', 'mbomb''impoku', '12 B', '2019-07-13', '22:38:04', 1);

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
  `idSociete` int(11) NOT NULL,
  `identifiantAdministrateur` varchar(20) NOT NULL,
  PRIMARY KEY (`idAnnonce`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `annonces`
--

INSERT INTO `annonces` (`idAnnonce`, `titreAnnonce`, `descriptionAnnonce`, `imageAnnonce`, `dateAnnonce`, `tempsAnnonce`, `idSociete`, `identifiantAdministrateur`) VALUES
(1, 'Coupure D''Ã©lectricitÃ©', 'chers clients, nos services seront indisponibles ce dimanche 14 juillet 2019 dans toute la ville de kinshasa', 'ampoule.jpg', '2019-07-13', '22:33:49', 1, 'Ricardo');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(50) NOT NULL,
  `communeClient` varchar(50) NOT NULL,
  `quartierClient` varchar(50) NOT NULL,
  `rueClient` varchar(50) NOT NULL,
  `numeroClient` varchar(50) NOT NULL,
  `typeClient` varchar(50) NOT NULL,
  `dateClient` date NOT NULL,
  `tempsClient` time NOT NULL,
  `idAgence` int(11) NOT NULL,
  `idSociete` int(11) NOT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`idClient`, `nomClient`, `communeClient`, `quartierClient`, `rueClient`, `numeroClient`, `typeClient`, `dateClient`, `tempsClient`, `idAgence`, `idSociete`) VALUES
(1, 'Umba DI ndangi', 'Matete', 'mutoto', 'mutoto', '7 A/BIS', 'ordinaire', '2019-07-13', '22:39:22', 1, 1),
(2, 'cardozo', 'kintambo', 'oua', 'lisala', '2', 'ordinaire', '2019-07-16', '12:20:34', 1, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `commentaires`
--


-- --------------------------------------------------------

--
-- Structure de la table `factures`
--

CREATE TABLE IF NOT EXISTS `factures` (
  `idFacture` int(11) NOT NULL AUTO_INCREMENT,
  `nomFacture` varchar(50) NOT NULL,
  `moisFacture` varchar(50) NOT NULL,
  `pdfFacture` varchar(100) NOT NULL,
  `dateFacture` date NOT NULL,
  `tempsFacture` time NOT NULL,
  `idClient` int(11) NOT NULL,
  `idSociete` int(11) NOT NULL,
  `idAgence` int(11) NOT NULL,
  PRIMARY KEY (`idFacture`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `factures`
--

INSERT INTO `factures` (`idFacture`, `nomFacture`, `moisFacture`, `pdfFacture`, `dateFacture`, `tempsFacture`, `idClient`, `idSociete`, `idAgence`) VALUES
(1, 'Umba DI ndangi', 'Juillet 2019', 'facture.pdf', '2019-07-13', '22:40:44', 1, 1, 1),
(2, 'Umba DI ndangi', 'decembre', 'PuTTY.pdf', '2019-07-30', '20:07:15', 1, 1, 1);

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
  `idSociete` int(20) NOT NULL,
  PRIMARY KEY (`idInscription`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `inscriptions`
--

INSERT INTO `inscriptions` (`idInscription`, `identifiantInscription`, `motDePasseInscription`, `dateInscription`, `tempsInscription`, `idSociete`) VALUES
(1, 'Ricardo', 'snel', '2019-07-13', '22:27:51', 1),
(2, 'Regi', 'Regi', '2019-07-15', '15:10:31', 2),
(3, 'maswa', 'maswa', '2019-07-30', '20:02:00', 3);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `idMessage` int(11) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(50) NOT NULL,
  `nomAgence` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `dateMessage` date NOT NULL,
  `tempsMessage` time NOT NULL,
  `idClient` int(11) NOT NULL,
  `idSociete` int(11) NOT NULL,
  `idAgence` int(11) NOT NULL,
  PRIMARY KEY (`idMessage`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`idMessage`, `nomClient`, `nomAgence`, `message`, `dateMessage`, `tempsMessage`, `idClient`, `idSociete`, `idAgence`) VALUES
(1, '', 'baboma', 'bonjour', '2019-07-14', '21:37:37', 1, 1, 1),
(2, 'Umba DI ndangi', 'baboma', 'Salut', '2019-07-15', '10:46:18', 1, 1, 1),
(3, 'Umba DI ndangi', 'baboma', 'salut', '2019-07-15', '15:16:06', 1, 1, 1),
(4, 'Umba DI ndangi', 'baboma', 'salut', '2019-08-29', '17:10:03', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `societes`
--

CREATE TABLE IF NOT EXISTS `societes` (
  `idSociete` int(11) NOT NULL AUTO_INCREMENT,
  `nomSociete` varchar(100) NOT NULL,
  `descriptionSociete` text NOT NULL,
  `logoSociete` varchar(100) NOT NULL,
  `dateSociete` date NOT NULL,
  `tempsSociete` time NOT NULL,
  `identifiantAdministrateur` varchar(20) NOT NULL,
  PRIMARY KEY (`idSociete`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `societes`
--

INSERT INTO `societes` (`idSociete`, `nomSociete`, `descriptionSociete`, `logoSociete`, `dateSociete`, `tempsSociete`, `identifiantAdministrateur`) VALUES
(1, 'SNEL', 'SocietÃ© nationale d''Ã©lectricitÃ©', 'pp.jpg', '2019-07-13', '22:22:11', 'Ultra'),
(2, 'REGIDESO', 'RÃ©gie de distribution d''eau', 't.jpg', '2019-07-13', '22:23:30', 'Ultra'),
(3, 'DGRK', 'direction gÃ©nÃ©ral de recette de kinshasa', '1.jpg', '2019-07-30', '19:58:48', 'Ultra'),
(4, 'er', 'Er', 'IMG-20190808-WA0000.jpg', '2019-08-10', '10:11:32', 'Ultra');
