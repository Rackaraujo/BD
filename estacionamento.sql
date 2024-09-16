-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Set-2024 às 14:08
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

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
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `codlugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codlugar`, `capacidade`, `andar`) VALUES
(1, 5, 'Térreo'),
(2, 3, '1º Andar'),
(3, 4, '2º Andar'),
(4, 2, 'Térreo'),
(5, 5, '1º Andar'),
(6, 4, '2º Andar'),
(7, 3, 'Térreo'),
(8, 5, '1º Andar'),
(9, 2, '2º Andar'),
(10, 3, 'Térreo'),
(11, 4, '1º Andar'),
(12, 5, '2º Andar'),
(13, 2, 'Térreo'),
(14, 3, '1º Andar'),
(15, 4, '2º Andar'),
(16, 5, 'Térreo'),
(17, 2, '1º Andar'),
(18, 3, '2º Andar'),
(19, 4, 'Térreo'),
(20, 5, '1º Andar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `nome` varchar(100) DEFAULT NULL,
  `dtnasc` datetime DEFAULT NULL,
  `cpf` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`nome`, `dtnasc`, `cpf`) VALUES
('Vanessa Oliveira Campos', '1993-08-29 20:00:00', '000.111.222-99'),
('Juliana Rodrigues Freitas', '1994-10-03 12:00:00', '012.345.678-99'),
('Kátia Souza Carvalho', '1989-11-28 03:00:00', '111.222.333-00'),
('Ana Beatriz Silva', '1990-01-15 07:08:00', '123.456.789-00'),
('Lucas Fernando Cardoso', '1996-12-15 23:00:00', '222.333.444-11'),
('Bruno Santos Oliveira', '1985-02-20 09:00:00', '234.567.890-11'),
('Mariana Costa Almeida', '1990-01-22 10:00:00', '333.444.555-22'),
('Carlos Eduardo Costa', '1992-03-10 10:00:00', '345.678.901-22'),
('Natália Ribeiro Santos', '1985-02-13 00:20:00', '444.555.666-33'),
('Daniela Pereira Lima', '1988-04-25 06:45:00', '456.789.012-33'),
('Otávio Mendes Lima', '1992-03-30 10:00:00', '555.666.777-44'),
('Eduardo Almeida Rocha', '1995-05-30 04:00:00', '567.890.123-44'),
('Paula Regina Silva', '1988-04-05 17:00:00', '666.777.888-55'),
('Fernanda Gomes Martins', '1991-06-14 09:05:00', '678.901.234-55'),
('Rafael Campos Andrade', '1995-05-17 10:30:00', '777.888.999-66'),
('Gabriel Oliveira Sousa', '1987-07-22 00:45:00', '789.012.345-66'),
('Sabrina Martins Azevedo', '1991-06-25 00:30:00', '888.999.000-77'),
('Helena Castro Nascimento', '1993-08-18 07:00:00', '890.123.456-77'),
('Igor Almeida Pereira', '1986-09-09 11:00:00', '901.234.567-88'),
('Tiago Souza Lima', '1987-07-10 00:00:00', '999.000.111-88');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `cod` int(11) NOT NULL,
  `horsaida` datetime DEFAULT NULL,
  `dtsaida` datetime DEFAULT NULL,
  `dtentrada` datetime DEFAULT NULL,
  `horentrada` datetime DEFAULT NULL,
  `placa` varchar(7) DEFAULT NULL,
  `codlugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`cod`, `horsaida`, `dtsaida`, `dtentrada`, `horentrada`, `placa`, `codlugar`) VALUES
(1, '0000-00-00 00:00:00', '2024-09-10 00:00:00', '2024-09-10 00:00:00', '0000-00-00 00:00:00', 'AAA-000', 1),
(2, '0000-00-00 00:00:00', '2024-09-11 00:00:00', '2024-09-11 00:00:00', '0000-00-00 00:00:00', 'BBB-000', 2),
(3, '0000-00-00 00:00:00', '2024-09-12 00:00:00', '2024-09-12 00:00:00', '0000-00-00 00:00:00', 'CCC-000', 3),
(4, '0000-00-00 00:00:00', '2024-09-13 00:00:00', '2024-09-13 00:00:00', '0000-00-00 00:00:00', 'DDD-000', 4),
(5, '0000-00-00 00:00:00', '2024-09-14 00:00:00', '2024-09-14 00:00:00', '0000-00-00 00:00:00', 'EEE-000', 5),
(6, '0000-00-00 00:00:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', 'FFF-000', 6),
(7, '0000-00-00 00:00:00', '2024-09-16 00:00:00', '2024-09-16 00:00:00', '0000-00-00 00:00:00', 'GGG-000', 7),
(8, '0000-00-00 00:00:00', '2024-09-17 00:00:00', '2024-09-17 00:00:00', '0000-00-00 00:00:00', 'HHH-000', 8),
(9, '0000-00-00 00:00:00', '2024-09-18 00:00:00', '2024-09-18 00:00:00', '0000-00-00 00:00:00', 'III-000', 9),
(10, '0000-00-00 00:00:00', '2024-09-19 00:00:00', '2024-09-19 00:00:00', '0000-00-00 00:00:00', 'JJJ-001', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`) VALUES
(1, 'Fusca 2024'),
(2, 'Civic EX 2023'),
(3, 'Corolla XEI 2024'),
(4, 'Onix LTZ 2023'),
(5, 'Gol GTS 2024'),
(6, 'Jetta GLI 2023'),
(7, 'Taurus SEL 2024'),
(8, 'Astra Advantage 2023'),
(9, 'Focus Titanium 2024'),
(10, 'Kicks SL 2023'),
(11, 'Santa Fe 2024'),
(12, 'Tracker Premier 2023'),
(13, 'HR-V EXL 2024'),
(14, 'X1 xDrive 2023'),
(15, 'Compass Longitude 2024'),
(16, 'Chery Tiggo 8 2023'),
(17, 'Renegade Trailhawk 2024'),
(18, 'Model 3 Standard 2023'),
(19, 'Mustang GT 2024'),
(20, 'Camaro SS 2023');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veículo`
--

CREATE TABLE `veículo` (
  `placa` varchar(7) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `codmodelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `veículo`
--

INSERT INTO `veículo` (`placa`, `cor`, `cpf`, `codmodelo`) VALUES
('AAA-000', 'Preto', '123.456.789-00', 1),
('AAA-002', 'Branco', '789.012.345-66', 7),
('BBB-000', 'Branco', '234.567.890-11', 2),
('BBB-002', 'Azul', '890.123.456-77', 8),
('CCC-000', 'Prata', '345.678.901-22', 3),
('CCC-002', 'Vermelho', '901.234.567-88', 9),
('DDD-000', 'Azul', '456.789.012-33', 4),
('DDD-003', 'Verde', '012.345.678-99', 10),
('EEE-000', 'Vermelho', '567.890.123-44', 5),
('FFF-000', 'Verde', '678.901.234-55', 6),
('GGG-000', 'Amarelo', '789.012.345-66', 7),
('HHH-000', 'Cinza', '890.123.456-77', 8),
('III-000', 'Laranja', '901.234.567-88', 9),
('JJJ-001', 'Roxo', '012.345.678-99', 10),
('UUU-002', 'Roxo', '123.456.789-00', 1),
('VVV-002', 'Marrom', '234.567.890-11', 2),
('WWW-002', 'Bege', '345.678.901-22', 3),
('XXX-002', 'Dourado', '456.789.012-33', 4),
('YYY-002', 'Prata', '567.890.123-44', 5),
('ZZZ-002', 'Preto', '678.901.234-55', 6);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codlugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codlugar` (`codlugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`);

--
-- Índices para tabela `veículo`
--
ALTER TABLE `veículo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veículo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codlugar`) REFERENCES `andar` (`codlugar`);

--
-- Limitadores para a tabela `veículo`
--
ALTER TABLE `veículo`
  ADD CONSTRAINT `veículo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veículo_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
