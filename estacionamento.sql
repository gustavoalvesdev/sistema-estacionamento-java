-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/04/2024 às 03:56
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientedia`
--

CREATE TABLE `clientedia` (
  `cod` int(11) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `cliente` varchar(200) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `porte` varchar(1) NOT NULL,
  `dataentrada` varchar(11) NOT NULL,
  `datasaida` varchar(11) NOT NULL,
  `horaentrada` varchar(6) NOT NULL,
  `horasaida` varchar(6) NOT NULL,
  `valorreceber` double(11,2) NOT NULL,
  `presenca` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientemen`
--

CREATE TABLE `clientemen` (
  `cod` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `fone` varchar(20) NOT NULL,
  `rg` varchar(30) NOT NULL,
  `cpf` varchar(16) NOT NULL,
  `rua` varchar(200) NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `port` varchar(1) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `cor` varchar(100) NOT NULL,
  `datacadastro` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contasareceber`
--

CREATE TABLE `contasareceber` (
  `cod` int(11) NOT NULL,
  `cliente` varchar(200) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `mes` varchar(2) NOT NULL,
  `ano` int(11) NOT NULL,
  `porte` varchar(1) NOT NULL,
  `valor` double(11,2) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `preco`
--

CREATE TABLE `preco` (
  `cod` int(11) NOT NULL,
  `vhoravgrande` double(11,2) NOT NULL,
  `vhoravmedio` double(11,2) NOT NULL,
  `vhoravpequeno` double(11,2) NOT NULL,
  `valormesvgrande` double(11,2) NOT NULL,
  `valormesvmedio` double(11,2) NOT NULL,
  `valormesvpequeno` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `preco`
--

INSERT INTO `preco` (`cod`, `vhoravgrande`, `vhoravmedio`, `vhoravpequeno`, `valormesvgrande`, `valormesvmedio`, `valormesvpequeno`) VALUES
(1, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vagas`
--

CREATE TABLE `vagas` (
  `cod` int(11) NOT NULL,
  `vagasvgrande` int(11) NOT NULL,
  `vagasvmedio` int(11) NOT NULL,
  `vagsvpequeno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vagas`
--

INSERT INTO `vagas` (`cod`, `vagasvgrande`, `vagasvmedio`, `vagsvpequeno`) VALUES
(1, 100, 100, 100);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientedia`
--
ALTER TABLE `clientedia`
  ADD PRIMARY KEY (`cod`);

--
-- Índices de tabela `clientemen`
--
ALTER TABLE `clientemen`
  ADD PRIMARY KEY (`cod`);

--
-- Índices de tabela `contasareceber`
--
ALTER TABLE `contasareceber`
  ADD PRIMARY KEY (`cod`);

--
-- Índices de tabela `preco`
--
ALTER TABLE `preco`
  ADD PRIMARY KEY (`cod`);

--
-- Índices de tabela `vagas`
--
ALTER TABLE `vagas`
  ADD PRIMARY KEY (`cod`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientedia`
--
ALTER TABLE `clientedia`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientemen`
--
ALTER TABLE `clientemen`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contasareceber`
--
ALTER TABLE `contasareceber`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `preco`
--
ALTER TABLE `preco`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vagas`
--
ALTER TABLE `vagas`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
