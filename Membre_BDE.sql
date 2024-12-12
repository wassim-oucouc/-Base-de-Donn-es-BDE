-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mer. 11 déc. 2024 à 17:04
-- Version du serveur : 8.0.40
-- Version de PHP : 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `youcode`
--

-- --------------------------------------------------------

--
-- Structure de la table `Membre_BDE`
--

CREATE TABLE `Membre_BDE` (
  `id_member` int NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `role` varchar(40) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Membre_BDE`
--

INSERT INTO `Membre_BDE` (`id_member`, `nom`, `prenom`, `email`, `role`, `date`) VALUES
(1, 'wassim', 'oucouc', 'wassimoucouc2@gmail.com', 'ceo', '30/09/2024'),
(2, 'Adrienne', 'McCullough', 'Adrienne_McCullough7@gmail.com', 'Orchestrator', '30/04/2024'),
(3, 'Jerry', 'Gutmann', 'Jerry.Gutmann@gmail.com', 'Specialist', '27/01/2024'),
(4, 'lambo', 'dormand', 'Jetmann@gmail.com', 'devlopper', '15/08/2023'),
(5, 'Jey', 'Gutmn', 'Jerry.Gn@gmail.com', 'Speist', '30/01/2024');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Membre_BDE`
--
ALTER TABLE `Membre_BDE`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `date` (`date`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
