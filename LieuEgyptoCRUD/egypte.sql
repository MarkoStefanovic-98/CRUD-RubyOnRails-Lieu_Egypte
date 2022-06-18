-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 18 juin 2022 à 13:20
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `egypte`
--

DELIMITER $$
--
-- Procédures
--
DROP PROCEDURE IF EXISTS `afficher_dieu`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `afficher_dieu` ()  BEGIN

    SELECT *

    FROM DIEU;  --  le ; ne nous embêtera pas

END$$

DROP PROCEDURE IF EXISTS `afficher_epoque`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `afficher_epoque` (IN `nro` INT)  BEGIN

    select EPOQUE.NomEpoque

         from EPOQUE 
           
         WHERE EPOQUE.NroEpoque=nro ;

   

END$$

DROP PROCEDURE IF EXISTS `afficher_site`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `afficher_site` ()  READS SQL DATA
BEGIN

    SELECT *

    FROM site;  -- Cette fois, le ; ne nous embêtera pas

END$$

DROP PROCEDURE IF EXISTS `afficher_site1`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `afficher_site1` ()  BEGIN

    SELECT *

    FROM site;  --  le ; ne nous embêtera pas

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2022-06-15 23:48:29.846577', '2022-06-15 23:48:29.846577');

-- --------------------------------------------------------

--
-- Structure de la table `decouvrir`
--

DROP TABLE IF EXISTS `decouvrir`;
CREATE TABLE IF NOT EXISTS `decouvrir` (
  `NroSite` int(255) NOT NULL DEFAULT '0',
  `NroDynastie` int(255) NOT NULL DEFAULT '0',
  `NroOrdre` int(255) NOT NULL DEFAULT '0',
  `Decouverte` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NroSite`,`NroDynastie`,`NroOrdre`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `decouvrir`
--

INSERT INTO `decouvrir` (`NroSite`, `NroDynastie`, `NroOrdre`, `Decouverte`) VALUES
(1, 21, 3, 'Tombeau du pharaon: le masque funéraire en or et le sarcophage en argent et de nombreux objets en or'),
(1, 21, 4, 'tombeau inachevé'),
(1, 22, 3, 'Dans un sarcophage en argent orné d\'une tête de faucon, bijoux, scandales en or paraient la momie du défunt'),
(1, 22, 5, 'Tombeau profané'),
(1, 22, 6, 'Son sarcophage a été découvert dans le tombeau d\'Osorkon II'),
(1, 22, 7, 'tombeau inachevé'),
(2, 4, 2, 'Tombeau du pharaon'),
(3, 4, 4, 'Tombeau du pharaon'),
(4, 4, 6, 'Tombeau du pharaon'),
(5, 4, 4, 'Sculpté à l\'époque de Chéphren et probablement à son image'),
(5, 18, 8, 'le pharaon entreprend la restauration du sphinx à l\'abandon depuis 5 siècles'),
(6, 3, 2, 'Complexe funéraire edifié à partir d\'un mastaba surelevé par une série de mastabas superposés'),
(7, 5, 8, 'tombeau du pharaon'),
(8, 3, 6, 'Il fit construire la pyramide à degré sur le modèle de celle de Saqqara'),
(8, 4, 1, '1ère tentative de pyramide lisse: fit recouvrir la pyramide de dalle, lui donnant une apparence lisse'),
(9, 4, 1, '2ème tentative de pyramide lisse'),
(10, 4, 1, '3ème tentative de pyramide lisse réussie: pyramide parfaite'),
(11, 19, 3, 'une colossale statue du pharaon, couchée mais avec un visage superbe'),
(15, 33, 12, 'Cléopâtre y est représentée sur la face arrière du temple en compagnie de son fils Césarion'),
(17, 19, 2, 'Le temple funéraire est dédié au souverain, vénéré comme un dieu'),
(17, 19, 3, 'acheva la décoration du temple de son père'),
(18, 19, 3, 'édifia le temple en son honneur'),
(19, 33, 11, 'Pharaon apparaît sur le pylone monumental dans une scène de massacres des prisonniers'),
(21, 19, 3, 'les 4 colosses assis sont à son effigie. Les scènes de bataille de Qadesh le représentent victorieux'),
(22, 19, 3, '4 des six statues monumentales (8m) le représentent. Les 2 autres sont à l\'effigie de Néfertari'),
(23, 18, 9, 'entreprit la construction du temple sur un ancien monument religieux  de l\'époque d\'Hatchepsout: il subsiste la salle hypostyle et la cour à portique qui la précède'),
(23, 19, 3, 'fit construire le 1er pylone précédé de 2 obélisques de plus de 20 m (l\'un est à Paris sur la place de la Concorde ), la 1ère cour (74 colonnes et 16 statues pharaoniques)'),
(23, 30, 1, 'sous son règne a été aménagé l\'actuelle allée des sphinx (dromos), voie sacrée qui relie le temple à celui de Karnak'),
(24, 12, 2, 'sous son règne débuta la construction de Karnak'),
(24, 18, 3, 'sous son règne furent construit le 4ème et 5ème pylone'),
(24, 18, 5, 'fit élever dans la cour de Thoutmosis Ier, deux obélisques en granit dont l\'un de près de 30 m est encore debout'),
(24, 18, 6, 'fit bâtir le 6ème pylone et 7ème pylone.'),
(24, 18, 9, 'sous son règne, fut édifié le 3ème pylone qui clôt la salle hypostyle et salle des fêtes. La cour d\'aménophis III conserve un des quatre obélisques qui la décoraient primitivement'),
(24, 18, 14, 'ordonna la construction du 2ème et du 9ème  pylone'),
(24, 19, 2, 'commença la construction de la grande salle hypostyle (aile nord)'),
(24, 19, 3, 'Continua la construction de la salle hypostyle (aile sud), deux immenses statues à son effigie (seule celle de droite subsiste) encadrent le 2ème pylone'),
(24, 20, 2, 'Erigea une chapelle dans la 1ère cour pour accueillir la barque sacrée d\'Amon'),
(24, 30, 1, 'Fit construire l\'énorme 1er pylone et placer les sphinx à tête de béliers le long du dromos qui mène actuellement au temple'),
(25, 18, 6, 'Tombe n° 34'),
(25, 18, 7, 'Tombe n° 35'),
(25, 18, 8, 'Tombe n° 43 découver par Howard Carter'),
(25, 18, 12, 'Tombe n° 62 découverte intacte avec toute ses richesses en 1923 par Howard Carter. La momie du défunt y est toujours dans le 1er sarcophage'),
(25, 18, 13, 'Tombe n° 23'),
(25, 18, 14, 'Tombe n° 57'),
(25, 19, 1, 'Tombe n° 16'),
(25, 19, 2, 'Tombe n° 17, la plus belle et la plus grande sépulture de la vallée découverte par Belzoni en 1917'),
(25, 19, 3, 'Tombe n° 7'),
(25, 20, 2, 'Tombe n° 11'),
(25, 20, 3, 'Tombe n° 2'),
(25, 20, 5, 'Tombe n° 9, contient un ensemble exceptionnel de peintures'),
(25, 20, 6, 'Tombe n° 1'),
(25, 20, 8, 'Tombe n° 6'),
(26, 19, 3, 'Tombe n° 66, Tombe de Néfertari (\"La plus belle aimée de Mout\") épouse du Pharaon:  découverte en 1904 par Schiaparelli, elle est considérée comme la plus belle tombe d\'Egypte'),
(26, 20, 2, 'Tombe n° 44: Tombe de Khaemouaset fils du Pharaon, découverte en 1904 par Schiaparelli'),
(27, 19, 3, 'Temple funéraire voué au culte de pharaon (de son vivant!) associé à Amon'),
(28, 18, 9, 'Son temple funéraire fut le plus grand temple de thèbes ouest'),
(29, 19, 1, 'Séthi fit construire une chapelle vouée au culte de son père'),
(29, 19, 2, 'temple voué à son culte'),
(29, 19, 3, 'Il acheva la construction du  temple de son père'),
(30, 20, 2, 'Temple voué à son culte'),
(31, 18, 5, 'Construit par la reine et voué à son culte'),
(31, 18, 6, 'fit marteler la plupart des effigie d\'Hatchepsout'),
(31, 18, 10, 'fit détruire beaucoup d\'images et gravures, n\'épargnant que celles associées au globe solaire');

-- --------------------------------------------------------

--
-- Structure de la table `dieu`
--

DROP TABLE IF EXISTS `dieu`;
CREATE TABLE IF NOT EXISTS `dieu` (
  `NomDieu` varchar(255) NOT NULL DEFAULT '',
  `Forme` varchar(255) DEFAULT NULL,
  `Représentation` varchar(255) DEFAULT NULL,
  `Fonction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NomDieu`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `dieu`
--

INSERT INTO `dieu` (`NomDieu`, `Forme`, `Représentation`, `Fonction`) VALUES
('Amon', 'dieu', 'Coiffé d\'une couronne rehaussé de 2  plumes', 'Roi des dieux, associé à Rê et à Ptah qui en deviennent des manifestations. animal emblématique, le bélier'),
('Anubis', 'dieu', 'à tête de chacal', 'il préside la momification dont il est l\'inventeur'),
('Bastet', 'déesse', 'à tête de chatte', 'Déesse de la joie et de la musique'),
('Chou', 'dieu', 'L\'air', 'engendré par  Rê et père d\'Isis, Osiris, de Seth et de Nephtys'),
('Geb', 'dieu', 'La terre', 'fils de chou et Tefnou'),
('Hathor', 'déesse', 'femme au oreilles de vache', 'déesse de la danse et de l\'amour'),
('Horus', 'dieu', 'Homme à tête de faucon', 'fils d\'Isis et d\'Osiris, dieu du ciel et protecteur de Pharaon'),
('Isis', 'déesse', 'Femme evc une coiffure en forme de siège', 'femme et sœur  d\'Osiris et grande magicienne'),
('Khnoum', 'dieu', 'homme à tête de bélier', 'potier universervel qui façonnent les être vivants'),
('Maât', 'déesse', 'Belle femme coiffée d\'une plume d\'autruche', 'déesse de l\'ordre et de l\'équilibre'),
('Meretseger', 'déesse', '', 'Déesse cobra'),
('Mout', 'déesse', '', 'épouse d\'Amon'),
('Nephtys', 'déesse', '', 'épouse et sœur de Seth'),
('Noum', 'dieu', 'L\'océan', 'L\'océan ou le chaos initial'),
('Nout', 'déesse', 'femme au corps courbé touchant terre', 'déesse du ciel, épouse de geb'),
('Osiris', 'dieu', 'homme enveloppé dans un linceul et coiffé d\'un haut bonnet paré de deux plumes', 'dieu de l\'agriculture et souverain des morts'),
('Ptah', 'dieu', 'Homme momifié, un scptre à la main', 'Dieu tutélaire de Memphis et protecteur de a monarchie'),
('Rê', 'dieu', 'le disque solaire', 'ou Râ: a emergé du Noum'),
('Sekhmet', 'déesse', 'lionne', 'fille de Rê et l\'œil de son père'),
('Seth', 'dieu', 'homme à tête d\'animal mi-lévrier, mi-âne', 'frère et assasin d\'Osiris,  dieu du désert et des ténèbres'),
('Sobek', 'dieu', 'à tête de crocodile', 'dieu des crocodiles et du Nil'),
('Tefnout', 'déesse', 'l\'eau', 'engendré par Rê'),
('Thot', 'dieu', 'à tête de babouin ou d\'Ibis', 'patron des scribes');

-- --------------------------------------------------------

--
-- Structure de la table `dieu_log`
--

DROP TABLE IF EXISTS `dieu_log`;
CREATE TABLE IF NOT EXISTS `dieu_log` (
  `NomDieu` varchar(255) NOT NULL DEFAULT '',
  `NewForme` varchar(255) DEFAULT NULL,
  `OldForme` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NomDieu`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `dieu_log`
--

INSERT INTO `dieu_log` (`NomDieu`, `NewForme`, `OldForme`) VALUES
('Amon', NULL, NULL),
('Anubis', NULL, NULL),
('Bastet', NULL, NULL),
('Chou', NULL, NULL),
('Geb', NULL, NULL),
('Hathor', NULL, NULL),
('Horus', NULL, NULL),
('Isis', NULL, NULL),
('Khnoum', NULL, NULL),
('Maât', NULL, NULL),
('Meretseger', NULL, NULL),
('Mout', NULL, NULL),
('Nephtys', NULL, NULL),
('Noum', NULL, NULL),
('Nout', NULL, NULL),
('Osiris', NULL, NULL),
('Ptah', NULL, NULL),
('Rê', NULL, NULL),
('Sekhmet', NULL, NULL),
('Seth', NULL, NULL),
('Sobek', NULL, NULL),
('Tefnout', NULL, NULL),
('Thot', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `dynastie`
--

DROP TABLE IF EXISTS `dynastie`;
CREATE TABLE IF NOT EXISTS `dynastie` (
  `NroDynastie` int(255) NOT NULL DEFAULT '0',
  `NomDynastie` varchar(255) DEFAULT NULL,
  `DebDynastie` int(11) DEFAULT NULL,
  `FinDynastie` int(11) DEFAULT NULL,
  `NroEpoque` int(11) DEFAULT NULL,
  PRIMARY KEY (`NroDynastie`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `dynastie`
--

INSERT INTO `dynastie` (`NroDynastie`, `NomDynastie`, `DebDynastie`, `FinDynastie`, `NroEpoque`) VALUES
(0, 'Prédynastie', 3300, 2920, 1),
(1, 'Ière dynastie', 2920, 2770, 2),
(2, 'IIe dynastie', 2770, 2650, 2),
(3, 'IIIe dynastie', 2650, 2570, 3),
(4, 'IVe dynastie', 2570, 2450, 3),
(5, 'Ve dynastie', 2450, 2300, 3),
(6, 'VIe dynastie', 2300, 2150, 3),
(7, 'VIIe dynastie', 2150, NULL, 4),
(8, 'VIIIe dynastie', NULL, 2100, 4),
(9, 'IXe dynastie', 2100, NULL, 5),
(10, 'Xe dynastie', NULL, NULL, 5),
(11, 'XIe dynastie', NULL, NULL, 5),
(12, 'XIIe dynastie', 1955, 1750, 5),
(13, 'XIIIe dynastie', 1640, NULL, 7),
(14, 'XIVe dynastie', NULL, NULL, 7),
(15, 'XVe dynastie Hyksôs', NULL, NULL, 7),
(16, 'XVIe dynastie Hyksôs', NULL, NULL, 7),
(17, 'XVIIe dynastie', 0, 1550, 7),
(18, 'XVIIIe dynastie', 1550, 1295, 8),
(19, 'XIXe dynastie', 1295, 1188, 8),
(20, 'XXe dynastie', 1188, 1076, 8),
(21, 'XXIe dynastie ( de Tanis)', 1076, 945, 9),
(22, 'XXIIe dynastie (de bubasti)', 945, 712, 9),
(23, 'XXIIIe dynastie (de Tanis)', 828, 712, 9),
(24, 'XXIVe dynastie (de Saïs)', 724, 712, 9),
(25, 'XXVe dynastie (nubiennes ou Kouchites)', 712, 657, 10),
(26, 'XXVIe dynastie (De Saïs)', 664, 525, 10),
(27, 'XXVIIe dynastie Perse', 525, 405, 10),
(28, 'XXVIIIe dynastie (locale)', 405, 399, 10),
(29, 'XXIXe dynastie (locale)', 399, 380, 10),
(30, 'XXXe dynastie (locale)', 380, 343, 10),
(31, '2e domination perse', 343, 332, 10),
(32, 'Dynastie macédonienne', 332, 304, 11),
(33, 'Dynastie ptolémaïque(ou des Lagides)', 304, 30, 11);

-- --------------------------------------------------------

--
-- Structure de la table `epoque`
--

DROP TABLE IF EXISTS `epoque`;
CREATE TABLE IF NOT EXISTS `epoque` (
  `NroEpoque` int(11) NOT NULL DEFAULT '0',
  `NomEpoque` varchar(255) DEFAULT NULL,
  `CommentEp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NroEpoque`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `epoque`
--

INSERT INTO `epoque` (`NroEpoque`, `NomEpoque`, `CommentEp`) VALUES
(1, 'Epoque prédynastique', 'Unification de la basse et de la haute Egypte, capitale: Hiérakonpolis (Haute Egypte)'),
(2, 'Epoque protodynastique', 'Fondation de la deuxième capitale, Memphis'),
(3, 'Ancien empire', 'Construction des pyramides de Saqqara et de Giza'),
(4, 'Première période intermédiaire', 'Déclin du pouvoir central, les souverains s\'établissent à Héracléopolis'),
(5, 'Moyen empire', 'Période de grande prospérité avec une nouvelle capitale Thèbes, construction des pyramides Dachchoûr'),
(6, 'Deuxième période intermédiaire', 'Période d\'instabilité  et de déclin'),
(7, 'Domination des Hyksôs', 'Indépendance de la Nubie. Les Hyksôs envahissent le pays et introduisent le char tiré par des chevaux. Thèbes est abandonnée pour une nouvelle capitale dans le delta.'),
(8, 'Nouvel empire', 'Retour de la capitale à Thèbes, période de domination de l\'Egypte: conquête de la Nubie et de la Syrie. Les pharaons choisissent la vallée des rois pour leur demeure d\'éternité.'),
(9, 'Troisième période intermédiaire', 'Tanis, nouvelle capitale dans le delta. Indépendance de la Nubie et perte de contrôle de la Palestine. Morcellement du pays: des monarques éthyopiens gouvernent la haute egypte et plusieurs dynasties règnent en même temps.'),
(10, 'Basse époque', 'En dépit des guerres, période d\'épanouissement culturel et commercial. Après la domination des assyriens, l\'unité de l\'Egypte est restaurée'),
(11, 'Période Gréco-romaine', 'Occupation du pays par Alexandre le grand. Domination des souverains grecs Lagides (nom du général d\'Alexandre fondateur de la dynastie des Ptolémée) jusqu\'à l\'invasion des romains. L\'Egypte devient alors une province romaine');

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

DROP TABLE IF EXISTS `lieu`;
CREATE TABLE IF NOT EXISTS `lieu` (
  `NomLieu` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `situation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NomLieu`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `lieu`
--

INSERT INTO `lieu` (`NomLieu`, `description`, `situation`) VALUES
('Abou Simbel', 'Le temple caché sous le sable', 'à 290 km au sud d\'Assouan, site déplacés et sauvés des eaux après la mise en eau du haut barrage'),
('Abydos', 'La cité d\'siris', 'à 150 km au nord de Louxor'),
('Assouan', 'le haut barrage y a inondé la nubie, formant le Lac Nasser', 'située à la 1ère cataracte du nil aux portes de la  Nubie'),
('Dahchoûr', 'lieu de la 1ère pyramide réussie', 'à quelques km au sud de Saqqara'),
('Dendera', 'Le domaine d\'Hathor', 'à 75 km au nord de Louxor'),
('Edfou', 'Royaume du dieu faucon', '100 km au sud de Louxor'),
('Esna', 'Ancienne Iounit', '50 km au sud de Louxor'),
('Giza', 'Plateau de Gizeh', 'surplombe Le Caire'),
('Kom Ombo', 'Ville de l\'or', '170 km au sud de louxor'),
('Le Caire', 'capitale actuelle de l\'Egypte', 'au pied des pyramides de Gizeh'),
('Meïdoum', 'lieu de la 1ère tentative de pyramide lisse', 'au sud de saqqara'),
('Memphis', 'capitale d\'Egypte sous l\'ancien empire', '30 km au sud du Caire'),
('Nubie', 'Les temples sauvés des eaux', 'au dela de la 1ère cataracte sur le lac nasser'),
('Saqqara', 'Nécropole de Memphis qui compte plus de quinze pyramides', 'à coté de memphis'),
('Tanis', 'ancienne capitale du delta , actuelle San El Hagar', '130 Km au NE du Caire, 30 km de la méditerranée'),
('Tell El Amarna', 'Capitale du pharaon hérétique', 'à mi-chemin entre Memphis et Thèbes'),
('Thèbes Est', 'Grande capitale du moyen empire: le domaine d\'Amon', 'L\'actuel Louxor, en moyen Egypte'),
('Thèbes Ouest', 'nécropole de thèbes: le royaume d\'Osiris', 'Face à Louxor sur l\'autre rive du nil dans le désert et la montagne');

-- --------------------------------------------------------

--
-- Structure de la table `lieus`
--

DROP TABLE IF EXISTS `lieus`;
CREATE TABLE IF NOT EXISTS `lieus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `NomLieu` varchar(255) DEFAULT NULL,
  `description` text,
  `situation` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lieus`
--

INSERT INTO `lieus` (`id`, `NomLieu`, `description`, `situation`, `created_at`, `updated_at`) VALUES
(14, 'La nécropole de Gizeh', 'A vingt cinq kilomètres au sud du Caire, la ville de Gizeh abrite une nécropole avec des monuments parmi les plus emblématiques de l’Égypte antique.', 'Egypte au 41 rue du sphinx', '2022-06-16 20:51:28.335925', '2022-06-16 21:43:04.097164'),
(15, 'Le Caire', 'Les ruelles étroites du vieux Caire islamique, le quartier Copte, le souk Fustat, le Colosse de Ramsès II ou encore la Cité des Morts.', 'au 67 rue loa', '2022-06-16 21:03:08.554029', '2022-06-16 21:47:03.251341'),
(13, 'Louxor, au cœur de l’Égypte antique', 'En effet, cette ville de taille moyenne a la particularité d’avoir été construite sur l’ancienne cité de Thèbes.', 'laba très loin ', '2022-06-16 18:39:09.609674', '2022-06-16 21:46:04.303341'),
(19, 'La vallée des rois, ultime demeure des pharaons', 'Située à proximité de Louxor, la Vallée des Rois est un endroit unique en Égypte. Cette immense nécropole abrite en effet des dizaines de tombeaux de pharaons. Le plus célèbre d’entre eux est vraisemblablement Toutânkhamon.', '45 rue diverta', '2022-06-16 21:44:18.362678', '2022-06-16 21:44:18.362678'),
(21, 'Alexandrie, ville-phare de l\'Orient', 'Entre modernité et histoire, Alexandrie est une ville portuaire attachante. Fondée il y a plus de 2000 ans par Alexandre le Grand, elle devient rapidement un lieu de culture. C’est également une cité à l’architecture grandiose et aux règles d’urbanisme déjà bien établies.', '103 rue des gestion', '2022-06-16 21:46:21.884286', '2022-06-16 21:46:21.884286'),
(20, 'Une croisière sur le Nil', 'La Vallée des Rois et Louxor sont des étapes incontournables pour embarquer pour une croisière sur le Nil. Une expérience unique qui permet d’avoir un point de vue sur de nombreux vestiges antiques, mais également sur les villes et sur le désert.', '103 rue sebastien ', '2022-06-16 21:44:37.394414', '2022-06-16 21:44:37.394414'),
(23, 'L’oasis de Dakhla, une perle au milieu du désert', 'L’Égypte, c’est également le désert et pas moins de sept oasis. L’oasis d’Al-Dakhla est probablement la plus belle de toutes. Elle compte de nombreux sites archéologiques ou historiques comme Balat ou encore Aïn Asil.', '16544 rue cesar', '2022-06-16 21:47:49.237346', '2022-06-16 21:47:49.237346');

-- --------------------------------------------------------

--
-- Structure de la table `pharaon`
--

DROP TABLE IF EXISTS `pharaon`;
CREATE TABLE IF NOT EXISTS `pharaon` (
  `NroDynastie` int(255) NOT NULL DEFAULT '0',
  `NroOrdre` int(11) NOT NULL DEFAULT '0',
  `NomPh` varchar(255) DEFAULT NULL,
  `NomUsuel` varchar(255) DEFAULT NULL,
  `commentPh` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NroDynastie`,`NroOrdre`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `pharaon`
--

INSERT INTO `pharaon` (`NroDynastie`, `NroOrdre`, `NomPh`, `NomUsuel`, `commentPh`) VALUES
(0, 1, 'Narmer', '', 'Monarque du sud impliqué également dans la réunification de l\'Egypte'),
(1, 1, 'Aha', '', ''),
(1, 2, 'Djer', '', ''),
(1, 3, 'Ouadji', '', ''),
(1, 4, 'Den', '', ''),
(1, 5, 'Adjib', '', ''),
(1, 6, 'Semerkhet', '', ''),
(1, 7, 'Kaâ', '', ''),
(2, 1, 'Hotepsekhernoui', '', ''),
(2, 2, 'Nebrê', '', ''),
(2, 3, 'Nineter', '', ''),
(2, 4, 'Ouneg', '', ''),
(2, 5, 'Senedj', '', ''),
(2, 6, 'Peribsen', '', ''),
(2, 7, 'Sekhemib', '', ''),
(2, 8, 'Khâsekhem', '', ''),
(3, 1, 'Senakht', '', ''),
(3, 2, 'Djéser', '', 'Il fit construire par Imhotep, la première pyramide à Saqqara: la pyramide à degré'),
(3, 3, 'Sekhemket', '', ''),
(3, 4, 'Khâba', '', ''),
(3, 5, 'Néferkarê', '', ''),
(3, 6, 'Houny', '', ''),
(4, 1, 'Snéfrou', '', 'expérimente une pyramide lisse (meïdoum), puis à Daschour, un second essai (pyramide rhomboïdal) et enfin, la pyramide parfaite de Daschour'),
(4, 2, 'Khoufou', 'Chéops', 'fils de snéfrou, c\'est à lui qu\'on doit la plus grande pyramide jamais réalisée'),
(4, 3, 'Djedefrê', '', ''),
(4, 4, 'Kafrê', 'Chephren', 'Il edifie une pyramide plus petite coté de celle de son père Chéops sur le plateau  de gizeh. Le sphinx est probablement à son effigie'),
(4, 5, 'Baefrê', '', ''),
(4, 6, 'Menkaourê', 'Mikérynos', 'édifie la troisième pyramide de gizeh aux dimensions plus modestes'),
(4, 7, 'Chepseskaf', '', ''),
(5, 1, 'Ouserkaf', '', ''),
(5, 2, 'Sahourê', '', ''),
(5, 3, 'Neferirkarê', '', ''),
(5, 4, 'Chepseskarê', '', ''),
(5, 5, 'Neferefrê', '', ''),
(5, 6, 'Niouserrê', '', ''),
(5, 7, 'Djedkarê', '', ''),
(5, 8, 'Ounas', '', ''),
(6, 1, 'Téti', '', ''),
(6, 2, 'Ouserkarê', '', ''),
(6, 3, 'Pépi I', '', ''),
(6, 4, 'Mérenhê I', '', ''),
(6, 5, 'Pépi II', '', ''),
(6, 6, 'Mérenhê II', '', ''),
(6, 7, 'Nitokris', '', 'Reine'),
(11, 1, 'Menhoutep I', '', ''),
(11, 2, 'Antef I', '', ''),
(11, 3, 'Antef II', '', ''),
(11, 4, 'Antef III', '', ''),
(11, 5, 'Menhoutep II', '', ''),
(11, 6, 'Menhoutep III', '', ''),
(11, 7, 'Menhoutep IV', '', ''),
(12, 1, 'Amenemhat I', 'Ammenemès', ''),
(12, 2, 'Senousret I', 'Sésostris I', ''),
(12, 3, 'Amenemhat II', '', ''),
(12, 4, 'Senousret II', '', ''),
(12, 5, 'Senousret III', '', ''),
(12, 6, 'Amenemhat III', '', ''),
(12, 7, 'Amenemhat IV', '', ''),
(12, 8, 'Neferoursobek', '', ''),
(18, 1, 'Ahmès', 'Ahmosis', ''),
(18, 2, 'Amenhotep I', 'Aménophis I', ''),
(18, 3, 'Thoutmès I', 'Thoutmôsis I', 'premier pharaon a choisir la vallée des rois pour son tombeau'),
(18, 4, 'Thoutmès II', 'Thoutmôsis II', ''),
(18, 5, 'Hatshepsout', '', 'A la mort de son frère,  elle assure la régence de son neveu Thoutmôsis III. Dès l\'an 2 de son règne, elle se proclame pharaon et régna pendant 20 ans'),
(18, 6, 'Thoutmès III', 'Thoutmôsis III', 'Spolié du trône par sa tante, ce grand pharaon, conquiert la syrie et étend son influence jusqu\'en orient'),
(18, 7, 'Amenhotep II', 'Aménophis II', ''),
(18, 8, 'Thoutmès IV', 'Thoutmôsis IV', 'dégage le sphinx de Gizeh du sable qui le recouvre'),
(18, 9, 'Amenhotep III', 'Aménophis III', 'mena l\'Egypte à l\'apogée de sa puissance'),
(18, 10, 'Amenhotep IV', 'Aménophis IV', 'Le pharaon hérétique Akhénaton (\"serviteur du disque solaire\")  engage l\'Egypte dans la voie du monothéisme'),
(18, 11, 'Semenkharê', '', 'Mystérieux pharaon, peut-être Néfertiti épouse d\'Akhénaton ?'),
(18, 12, 'Toutankhamon', '', 'Toutankhaton devient Toutankhamon au début de son règne et abolit le culte d\'Aton. Célèbre surtout par la richesse des trésors trouvés dans sa tombe'),
(18, 13, 'Aÿ', '', 'beau-père d\'Aménophis IV'),
(18, 14, 'Horemheb', '', ''),
(19, 1, 'Ramsès Ier', '', ''),
(19, 2, 'Séthi Ier', '', ''),
(19, 3, 'Ramsès II', '', 'Grand bâtisseur (Abou Simbel, salle hypostyle de Karnak) et homme de guerre (victoire contre les hittites), il règne plus de quarante années'),
(19, 4, 'Merenptah', '', 'L\'un des nombreux fils de Ramsès II'),
(19, 5, 'Amenmes', '', ''),
(19, 6, 'Séthi II', '', ''),
(19, 7, 'Siptah', '', ''),
(19, 8, 'Taousert', '', 'reine'),
(20, 1, 'Sethnakht', '', ''),
(20, 2, 'Ramsès III', '', 'Il edifie son temple funéraire à Medinet Habou. Dernier des grands pharaon, il poursuit l\'œuvre de Ramsès II'),
(20, 3, 'Ramsès IV', '', 'début d\'une période d\'anarchie'),
(20, 4, 'Ramsès V', '', ''),
(20, 5, 'Ramsès VI', '', ''),
(20, 6, 'Ramsès VII', '', ''),
(20, 7, 'Ramsès VIII', '', ''),
(20, 8, 'Ramsès IX', '', ''),
(20, 9, 'Ramsès X', '', ''),
(20, 10, 'Ramsès XI', '', ''),
(21, 1, 'Smendès', '', ''),
(21, 2, 'Amenemnesout', '', ''),
(21, 3, 'Psousennès Ier', '', ''),
(21, 4, 'Aménémopé', '', ''),
(21, 5, 'Osorkon l\'ancien', '', ''),
(21, 6, 'Siamon', '', ''),
(21, 7, 'Psousennès II', '', ''),
(22, 1, 'Chechonq Ier', '', ''),
(22, 2, 'Osorkon  Ier', '', ''),
(22, 3, 'Chechonq II', '', ''),
(22, 4, 'Takélot', '', ''),
(22, 5, 'Osorkon II', '', ''),
(22, 6, 'Takélot II', '', ''),
(22, 7, 'Chechonq III', '', ''),
(22, 8, 'Pimay', '', ''),
(22, 9, 'Chechonq IV', '', ''),
(23, 1, 'Pédoubastis', '', ''),
(23, 2, 'Ioupout I', '', ''),
(23, 3, 'Chechonq V', '', ''),
(23, 4, 'Osorkon III', '', ''),
(23, 5, 'Takélot III', '', ''),
(23, 6, 'Roudamon', '', ''),
(23, 7, 'Ioupout II', '', ''),
(23, 8, 'Shepenoupet', '', ''),
(23, 9, 'Osorkon IV', '', ''),
(24, 1, 'Tefnakht', '', ''),
(24, 2, 'Bekenranef', 'Bocchoris', ''),
(25, 1, 'Alara', '', ''),
(25, 2, 'Kashta', '', ''),
(25, 3, 'Piankhi', '', ''),
(25, 4, 'Shabaka', '', ''),
(25, 5, 'Shabataka', '', ''),
(25, 6, 'Taharqua', '', ''),
(25, 7, 'Tanoutamon', 'Tantamani', ''),
(26, 1, 'Nékao I', '', ''),
(26, 2, 'Psammétique I', '', ''),
(26, 3, 'Nékao II', '', ''),
(26, 4, 'Psammétique II', '', ''),
(26, 5, 'Apriès', '', ''),
(26, 6, 'Amasis', '', ''),
(27, 1, 'Cambyse II', '', ''),
(27, 2, 'Darius I', '', ''),
(27, 3, 'Xerxès I', '', ''),
(27, 4, 'Artaxerxès I', '', ''),
(27, 5, 'Darius II', '', ''),
(28, 1, 'Amyrtée', '', ''),
(29, 1, 'Néphéritès', '', ''),
(29, 2, 'Psammouthis', '', ''),
(29, 3, 'Achôris', '', ''),
(29, 4, 'Néphéritès', '', ''),
(30, 1, 'Nectanébo I', '', ''),
(30, 2, 'Tachos', '', ''),
(30, 3, 'Nectanébo II', '', ''),
(31, 1, 'Artaxerxès III', '', ''),
(31, 2, 'Arsès', '', ''),
(31, 3, 'Darius III', '', ''),
(32, 1, 'Alexandre III Le Grand', '', 'assure la fondation de la nouvelle capitale, Alexandrie'),
(32, 2, 'Philippe Arrhidée', '', ''),
(32, 3, 'Alexandre IV', '', ''),
(33, 1, 'Ptolémée I', 'Soter', ''),
(33, 2, 'Ptolémée II', 'Philadelphe', ''),
(33, 3, 'Ptolémée III', 'Evergète I', ''),
(33, 4, 'Ptolémée IV', 'Philopator', ''),
(33, 5, 'Ptolémée V', 'Epiphane', ''),
(33, 6, 'Ptolémée VI', 'Philometor', ''),
(33, 7, 'Ptolémée VII', 'Néos Philopator', ''),
(33, 8, 'Ptolémée VIII', 'Evergète II', ''),
(33, 9, 'Ptolémée IX', 'Alexandre I', ''),
(33, 10, 'Ptolémée XI', 'Alexandre II', ''),
(33, 11, 'Ptolémée XII', 'Aulète', 'père de la célèbre Cléopâtre'),
(33, 12, 'Cléopâtre VII', '', 'Dernier pharaon  avant l\'occupation romaine en 30 av JC. Son fils Césarion, fils de jules césar, ne régna pas et fut assassiné');

-- --------------------------------------------------------

--
-- Structure de la table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20220615233013');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE IF NOT EXISTS `site` (
  `NroSite` int(255) NOT NULL DEFAULT '0',
  `NomSite` varchar(255) DEFAULT NULL,
  `NomLieu` varchar(255) DEFAULT NULL,
  `Détails` varchar(255) DEFAULT NULL,
  `NomDieu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NroSite`) USING BTREE,
  KEY `index_nomsite` (`NomSite`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `site`
--

INSERT INTO `site` (`NroSite`, `NomSite`, `NomLieu`, `Détails`, `NomDieu`) VALUES
(1, 'Nécropole royale', 'Tanis', 'On y a découvert le trésor de tanis: objets funéraires en or et en argent', ''),
(2, 'Pyramide de Khéops', 'Giza', '140 m de haut, 7 millions de tonnes de pierre sur une surface au sol de 5 hectares, seule des \"sept merveilles du monde antique\" qui soit restée', ''),
(3, 'Pyramide de Khéphren', 'Giza', 'conserve au sommet une partie significative de son revêtement calcaire', ''),
(4, 'Pyramide de Mykérinos', 'Giza', 'La plus petite des trois pyramides de gizeh', ''),
(5, 'Sphinx', 'Giza', 'gardien de la nécropole, 60 m de long et 20 m de haut', ''),
(6, 'Pyramide à degré', 'Saqqara', 'Pyramide à degré construite par l\'architecte Imhotep, c\'est la toute première pyramide égyptienne,', ''),
(7, 'Pyramide d\'Ounas', 'Saqqara', 'chambre funéraire ornée de textes rituels', ''),
(8, 'Pyramide', 'Meïdoum', 'étrange pyramide à degré auquelle deux étages ont été ajouté , puis recouverte d\'un parement pour la rendre lisse', ''),
(9, 'Pyramide rhomboïdale', 'Dahchoûr', 'pyramide à flanc lisse dont l\'angle trop grand dut être modifié en cours de construction', ''),
(10, 'Pyramide lisse', 'Dahchoûr', 'la 1ère pyramide lisse', ''),
(11, 'Périmètre archéologique', 'Memphis', 'rares vestiges: un beau sphinx en albâtre datant de 1200 av. JC', 'Ptah'),
(12, 'Temple', 'Esna', 'temple d\'époque gréco-romaine, dédié au culte de Neith, déesse guerrière, associée à Khnoum, le dieu potier', 'Khnoum'),
(13, 'Temple', 'Edfou', 'construit à l\'époque ptolémaïque, temple dédié au culte d\'Horus, le dieu faucon', 'Horus'),
(14, 'Temple', 'Kom Ombo', 'Au détour d\'une courbe du nil, surgit ce temple dressé sur une éminence. Il est dédié au culte de d\'Horus et de Sobek, le dieu crocodile', 'Sobek'),
(15, 'Temple', 'Dendera', 'sanctuaire de l\'époque ptolémaïque dédié au culte d\'Hathor, belle déesse aux oreilles de vache symbolisant l\'amour', 'Hathor'),
(16, 'Tombeau d\'osiris', 'Abydos', 'Lieu de pélérinage où la tradition situe la sépulture de la tête d\'Osiris', 'Osiris'),
(17, 'temple de Séthi', 'Abydos', 'Edifié par Séthi  1er, ce temple contient sept chapelles dédiées aux pricipales divinités', ''),
(18, 'Temple de Ramsès', 'Abydos', 'plus petit et moins bien conservé que celui de son père Séthi', ''),
(19, 'temple de Philae', 'Assouan', 'Sanctuaire d\'Isis edifié à l\'époque ptolémaïque sur une ile. Submergé en partie dès la mise en eau du 1er barrage en 1902, le temple a été déplacé a quelques centaines de mètres et sauvé en 1972', 'Isis'),
(20, 'temple de Kalabsha', 'Assouan', 'rescapé du haut barrage, le site contient un temple et deux santuaires provenant de trois sites différents à 40 km plus au sud', ''),
(21, 'le grand temple', 'Abou Simbel', 'grotte taillée et richement décorée, flanquée d\'un façade monumentale avec quatre statues colossales (20 m de haut)', ''),
(22, 'Le temple de Néfertari', 'Abou Simbel', 'temple dédiée à l\'épouse de Ramsès II. Elle est représentée sous l\'effigie de la déeese Hathor.', 'Hathor'),
(23, 'Temple de Louxor', 'Thèbes Est', 'demeure de Mout, l\'épouse du dieu Amon qui venait lui rendre visite chaque année au cours de la fête d\'Opet', 'Mout'),
(24, 'Temples de Karnak', 'Thèbes Est', 'Dédié à Amon-Rê, ce site est le plus grandiose et le plus complexe d\'Egypte (30 hectares, 10 pylones) : pendant plus de 2000 ans, chaque pharaon construisant de nouveaux bâtiments en réutilisant parfois les matériaux des constructions précédentes', 'Amon'),
(25, 'Vallée des rois', 'Thèbes Ouest', 'Au pied d\'une montagne dont la cime triangulaire évoque une pyramide, c\'est le lieu d\'inhumation des pharaons de Thoutmôsis Ier à Ramsès IX: 62 tombes découvertes à ce jour, classées et numérotées par les archéologue', 'Meretseger'),
(26, 'Vallée des reines', 'Thèbes Ouest', 'Ce site compte une centaine de tombes et de monuments. C\'est le lieu de sépulture des grandes épouses, des princes et des princesses royaux', ''),
(27, 'Ramesseum', 'Thèbes Ouest', 'Appelé par les anciens égyptiens, \"Le château des millions d\'années du roi Ouser-Maât-Rê, choisi par Rê qui s\'unit à Thèbes sur la terre d\'Amon, à l\'occident de Thèbes\"', 'Amon'),
(28, 'Temple d\'Aménophis III', 'Thèbes Ouest', 'Il ne reste plus que deux gigantesque statues, les colosses de Memnon (16,5 m de haut)', 'Amon'),
(29, 'Temple de Sethi Ier', 'Thèbes Ouest', 'Château des millions d\'années construit à Médinet Habou', 'Amon'),
(30, 'Temple de Ramsès III', 'Thèbes Ouest', 'Château des millions d\'années construit à Médinet Habou', 'Amon'),
(31, 'Temple d\'Hatchepsout', 'Thèbes Ouest', 'Construit à Deïr el Bahari, c\'est l\'exemple le plus grandiose de Château des millions d\'années du site de thèbes', 'Amon'),
(99, 'Musée archéologique', 'Le Caire', 'Beaucoup trop petit pour contenir tous les trésors trouvés en Egypte', '');

-- --------------------------------------------------------

--
-- Structure de la table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE IF NOT EXISTS `sites` (
  `NroSite` int(255) NOT NULL DEFAULT '0',
  `NomSite` varchar(255) DEFAULT NULL,
  `NomLieu` varchar(255) DEFAULT NULL,
  `Détails` varchar(255) DEFAULT NULL,
  `NomDieu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NroSite`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `sites`
--

INSERT INTO `sites` (`NroSite`, `NomSite`, `NomLieu`, `Détails`, `NomDieu`) VALUES
(1, 'Nécropole royale', 'Tanis', 'On y a découvert le trésor de tanis: objets funéraires en or et en argent', ''),
(2, 'Pyramide de Khéops', 'Giza', '140 m de haut, 7 millions de tonnes de pierre sur une surface au sol de 5 hectares, seule des \"sept merveilles du monde antique\" qui soit restée', ''),
(3, 'Pyramide de Khéphren', 'Giza', 'conserve au sommet une partie significative de son revêtement calcaire', ''),
(4, 'Pyramide de Mykérinos', 'Giza', 'La plus petite des trois pyramides de gizeh', ''),
(5, 'Sphinx', 'Giza', 'gardien de la nécropole, 60 m de long et 20 m de haut', ''),
(6, 'Pyramide à degré', 'Saqqara', 'Pyramide à degré construite par l\'architecte Imhotep, c\'est la toute première pyramide égyptienne,', ''),
(7, 'Pyramide d\'Ounas', 'Saqqara', 'chambre funéraire ornée de textes rituels', ''),
(8, 'Pyramide', 'Meïdoum', 'étrange pyramide à degré auquelle deux étages ont été ajouté , puis recouverte d\'un parement pour la rendre lisse', ''),
(9, 'Pyramide rhomboïdale', 'Dahchoûr', 'pyramide à flanc lisse dont l\'angle trop grand dut être modifié en cours de construction', ''),
(10, 'Pyramide lisse', 'Dahchoûr', 'la 1ère pyramide lisse', ''),
(11, 'Périmètre archéologique', 'Memphis', 'rares vestiges: un beau sphinx en albâtre datant de 1200 av. JC', 'Ptah'),
(12, 'Temple', 'Esna', 'temple d\'époque gréco-romaine, dédié au culte de Neith, déesse guerrière, associée à Khnoum, le dieu potier', 'Khnoum'),
(13, 'Temple', 'Edfou', 'construit à l\'époque ptolémaïque, temple dédié au culte d\'Horus, le dieu faucon', 'Horus'),
(14, 'Temple', 'Kom Ombo', 'Au détour d\'une courbe du nil, surgit ce temple dressé sur une éminence. Il est dédié au culte de d\'Horus et de Sobek, le dieu crocodile', 'Sobek'),
(15, 'Temple', 'Dendera', 'sanctuaire de l\'époque ptolémaïque dédié au culte d\'Hathor, belle déesse aux oreilles de vache symbolisant l\'amour', 'Hathor'),
(16, 'Tombeau d\'osiris', 'Abydos', 'Lieu de pélérinage où la tradition situe la sépulture de la tête d\'Osiris', 'Osiris'),
(17, 'temple de Séthi', 'Abydos', 'Edifié par Séthi  1er, ce temple contient sept chapelles dédiées aux pricipales divinités', ''),
(18, 'Temple de Ramsès', 'Abydos', 'plus petit et moins bien conservé que celui de son père Séthi', ''),
(19, 'temple de Philae', 'Assouan', 'Sanctuaire d\'Isis edifié à l\'époque ptolémaïque sur une ile. Submergé en partie dès la mise en eau du 1er barrage en 1902, le temple a été déplacé a quelques centaines de mètres et sauvé en 1972', 'Isis'),
(20, 'temple de Kalabsha', 'Assouan', 'rescapé du haut barrage, le site contient un temple et deux santuaires provenant de trois sites différents à 40 km plus au sud', ''),
(21, 'le grand temple', 'Abou Simbel', 'grotte taillée et richement décorée, flanquée d\'un façade monumentale avec quatre statues colossales (20 m de haut)', ''),
(22, 'Le temple de Néfertari', 'Abou Simbel', 'temple dédiée à l\'épouse de Ramsès II. Elle est représentée sous l\'effigie de la déeese Hathor.', 'Hathor'),
(23, 'Temple de Louxor', 'Thèbes Est', 'demeure de Mout, l\'épouse du dieu Amon qui venait lui rendre visite chaque année au cours de la fête d\'Opet', 'Mout'),
(24, 'Temples de Karnak', 'Thèbes Est', 'Dédié à Amon-Rê, ce site est le plus grandiose et le plus complexe d\'Egypte (30 hectares, 10 pylones) : pendant plus de 2000 ans, chaque pharaon construisant de nouveaux bâtiments en réutilisant parfois les matériaux des constructions précédentes', 'Amon'),
(25, 'Vallée des rois', 'Thèbes Ouest', 'Au pied d\'une montagne dont la cime triangulaire évoque une pyramide, c\'est le lieu d\'inhumation des pharaons de Thoutmôsis Ier à Ramsès IX: 62 tombes découvertes à ce jour, classées et numérotées par les archéologue', 'Meretseger'),
(26, 'Vallée des reines', 'Thèbes Ouest', 'Ce site compte une centaine de tombes et de monuments. C\'est le lieu de sépulture des grandes épouses, des princes et des princesses royaux', ''),
(27, 'Ramesseum', 'Thèbes Ouest', 'Appelé par les anciens égyptiens, \"Le château des millions d\'années du roi Ouser-Maât-Rê, choisi par Rê qui s\'unit à Thèbes sur la terre d\'Amon, à l\'occident de Thèbes\"', 'Amon'),
(28, 'Temple d\'Aménophis III', 'Thèbes Ouest', 'Il ne reste plus que deux gigantesque statues, les colosses de Memnon (16,5 m de haut)', 'Amon'),
(29, 'Temple de Sethi Ier', 'Thèbes Ouest', 'Château des millions d\'années construit à Médinet Habou', 'Amon'),
(30, 'Temple de Ramsès III', 'Thèbes Ouest', 'Château des millions d\'années construit à Médinet Habou', 'Amon'),
(31, 'Temple d\'Hatchepsout', 'Thèbes Ouest', 'Construit à Deïr el Bahari, c\'est l\'exemple le plus grandiose de Château des millions d\'années du site de thèbes', 'Amon'),
(99, 'Musée archéologique', 'Le Caire', 'Beaucoup trop petit pour contenir tous les trésors trouvés en Egypte', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
