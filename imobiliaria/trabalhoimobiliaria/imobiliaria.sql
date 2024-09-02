-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Set-2024 às 13:52
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
-- Banco de dados: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `codaluguel` int(11) NOT NULL,
  `datafim` date NOT NULL,
  `valor` decimal(15,2) DEFAULT NULL,
  `datainicio` date NOT NULL,
  `datapagamento` date DEFAULT NULL,
  `condicoes` varchar(155) DEFAULT NULL,
  `datacadastro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `datavencimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contrata`
--

CREATE TABLE `contrata` (
  `idinquilino` int(11) DEFAULT NULL,
  `idcorretor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `idcorretor` int(11) NOT NULL,
  `datanasc` date NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(155) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(155) NOT NULL,
  `cidade` varchar(155) NOT NULL,
  `bairro` varchar(155) NOT NULL,
  `rua` varchar(155) NOT NULL,
  `complemento` varchar(155) NOT NULL,
  `contrato` varchar(255) NOT NULL,
  `codaluguel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiador`
--

CREATE TABLE `fiador` (
  `idfiador` int(11) NOT NULL,
  `nome` varchar(155) NOT NULL,
  `datanasc` date DEFAULT NULL,
  `cpf` varchar(11) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `email` varchar(155) NOT NULL,
  `rua` varchar(155) NOT NULL,
  `cidade` varchar(155) NOT NULL,
  `estado` varchar(155) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `idimovel` int(11) NOT NULL,
  `estado` varchar(155) NOT NULL,
  `num` varchar(10) NOT NULL,
  `cidade` varchar(155) NOT NULL,
  `bairro` varchar(155) NOT NULL,
  `rua` varchar(155) NOT NULL,
  `complemento` varchar(155) DEFAULT NULL,
  `cep` varchar(10) NOT NULL,
  `codaluguel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `info`
--

CREATE TABLE `info` (
  `idinfo` int(11) NOT NULL,
  `quintal` bit(1) DEFAULT NULL,
  `quarto` bit(1) DEFAULT NULL,
  `cozinha` bit(1) DEFAULT NULL,
  `lavanderia` bit(1) DEFAULT NULL,
  `garagem` bit(1) DEFAULT NULL,
  `suite` bit(1) DEFAULT NULL,
  `areaconstruida` decimal(4,2) NOT NULL,
  `condicoes` varchar(155) DEFAULT NULL,
  `piscina` bit(1) DEFAULT NULL,
  `idimovel` int(11) DEFAULT NULL,
  `qtcomodos` int(11) NOT NULL,
  `qtbanheiros` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `info`
--

INSERT INTO `info` (`idinfo`, `quintal`, `quarto`, `cozinha`, `lavanderia`, `garagem`, `suite`, `areaconstruida`, `condicoes`, `piscina`, `idimovel`, `qtcomodos`, `qtbanheiros`) VALUES
(1, b'1', b'1', b'1', b'1', b'1', b'1', '5.00', 'bom', b'1', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `idinquilino` int(11) NOT NULL,
  `nome` varchar(155) NOT NULL,
  `datanasc` date DEFAULT NULL,
  `rg` varchar(20) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(155) NOT NULL,
  `estado` varchar(155) NOT NULL,
  `cidade` varchar(155) NOT NULL,
  `rua` varchar(155) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `agencia` varchar(155) NOT NULL,
  `numconta` varchar(155) NOT NULL,
  `pix` varchar(155) NOT NULL,
  `idfiador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `midia`
--

CREATE TABLE `midia` (
  `idmidia` int(11) NOT NULL,
  `videos` varchar(255) DEFAULT NULL,
  `fotos` varchar(255) DEFAULT NULL,
  `idimovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `idproprietario` int(11) NOT NULL,
  `datanasc` date DEFAULT NULL,
  `cpf` varchar(11) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `nome` varchar(155) NOT NULL,
  `email` varchar(155) NOT NULL,
  `agencia` varchar(100) NOT NULL,
  `numconta` varchar(100) NOT NULL,
  `banco` varchar(50) NOT NULL,
  `pix` varchar(100) NOT NULL,
  `qimovel` int(11) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`idproprietario`, `datanasc`, `cpf`, `rg`, `telefone`, `nome`, `email`, `agencia`, `numconta`, `banco`, `pix`, `qimovel`, `rua`, `bairro`, `cidade`) VALUES
(1, '1945-07-08', '123.456.789', '12 345 678-9', '+55 (11) 95598-5097', 'Arnaldo Sacomani', 'arnaldinho@gmail.com', '1456', '78690435-9', 'Banco do Brasil', '16987361837', 5, 'rua h', 'parque sâo vicente', 'Mauá'),
(2, '1982-01-15', '111.222.333', '11 222 333-4', '+55 (11) 91234-5678', 'Marcos Lima', 'marcos.lima@gmail.com', '0012', '34567890-1', 'Banco do Brasil', '12345678901', 3, 'rua noemia', 'bela vista', 'são paulo'),
(3, '1978-06-20', '222.333.444', '22 333 444-5', '+55 (21) 92345-6789', 'Beatriz Silva', 'beatriz.silva@gmail.com', '0023', '45678901-2', 'Itaú', '23456789012', 2, 'avenida q', 'pinheiros', 'são paulo'),
(4, '1990-11-30', '333.444.555', '33 444 555-6', '+55 (31) 93456-7890', 'Lucas Oliveira', 'lucas.oliveira@gmail.com', '0034', '56789012-3', 'Bradesco', '34567890123', 4, 'rua boa vista', 'quarta dimensão', 'ribeirão pires'),
(5, '1985-04-10', '444.555.666', '44 555 666-7', '+55 (41) 94567-8901', 'Juliana Costa', 'juliana.costa@gmail.com', '0045', '67890123-4', 'Santander', '45678901234', 1, 'rua yoslani', 'maracaxi', 'são paulo'),
(6, '1992-08-25', '555.666.777', '55 666 777-8', '+55 (51) 95678-9012', 'Rafael Santos', 'rafael.santos@gmail.com', '0056', '78901234-5', 'Caixa Econômica', '56789012345', 3, 'rua arthur aguiar', 'alphaville', 'são paulo'),
(7, '1980-12-05', '666.777.888', '66 777 888-9', '+55 (61) 96789-0123', 'Claudia Pereira', 'claudia.pereira@gmail.com', '0067', '89012345-6', 'Banco do Brasil', '67890123456', 2, 'rua humberto', 'pilar velho', 'ribeirão pires'),
(8, '1995-07-18', '777.888.999', '77 888 999-0', '+55 (71) 97890-1234', 'Fernando Almeida', 'fernando.almeida@gmail.com', '0078', '90123456-7', 'Itaú', '78901234567', 4, 'rua nakamura', 'liberdade', 'são paulo'),
(9, '1983-03-30', '888.999.000', '88 999 000-1', '+55 (81) 98901-2345', 'Patrícia Santos', 'patricia.santos@gmail.com', '0089', '01234567-8', 'Bradesco', '89012345678', 1, 'rua claudia raia', 'santa lidia', 'mauá'),
(10, '1998-05-12', '999.000.111', '99 000 111-2', '+55 (91) 99012-3456', 'Eduardo Lima', 'eduardo.lima@gmail.com', '0090', '12345678-9', 'Santander', '90123456789', 2, 'rua nardini', 'magine', 'mauá');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`codaluguel`);

--
-- Índices para tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`idcorretor`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices para tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`idfiador`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`idimovel`);

--
-- Índices para tabela `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`idinfo`);

--
-- Índices para tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`idinquilino`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `midia`
--
ALTER TABLE `midia`
  ADD PRIMARY KEY (`idmidia`);

--
-- Índices para tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`idproprietario`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `codaluguel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `idcorretor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `idfiador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `idimovel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `info`
--
ALTER TABLE `info`
  MODIFY `idinfo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `idinquilino` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `midia`
--
ALTER TABLE `midia`
  MODIFY `idmidia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `idproprietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
