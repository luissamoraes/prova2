-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26-Ago-2020 às 21:35
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banco_estrutura`
--

--
-- Extraindo dados da tabela `funcao`
--

INSERT INTO `funcao` (`id`, `nome`) VALUES
(1, 'Chevrolet'),
(2, 'Volwsvagen');

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`id`, `funcao_id`, `data_cadastro`, `nome`) VALUES
(1, 1, '2020-08-03', 'Maria'),
(2, 2, '2020-08-05', 'Denildo'),
(3, 2, '2020-06-10', 'Dani'),
(4, 2, '2020-08-06', 'Ceci');

--
-- Extraindo dados da tabela `rastreamento`
--

INSERT INTO `rastreamento` (`data_ocorrencia`, `id`, `funcionario_id`, `latitude`, `longitude`, `veiculo_id`, `velocidade`, `diferenca`) VALUES
('2020-06-01', 1, 1, 1234, 234, 1, 60, 40),
('2020-06-08', 2, 1, 1232, 567, 2, 76, 30);

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`id`, `nome`, `placa`, `data_cadastro`, `vel_maxima`) VALUES
(1, 'Gol', 'QAZ2123', '2020-08-04', 110),
(2, 'Fusca', 'SAQ3212', '2020-08-06', 80),
(3, 'Spacefox', 'QER9080', '2020-06-15', 80);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
