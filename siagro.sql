-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2018 at 12:03 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siagro`
--

-- --------------------------------------------------------

--
-- Table structure for table `actividade`
--

CREATE TABLE `actividade` (
  `id` int(11) NOT NULL,
  `descricao` varchar(250) NOT NULL,
  `actividade_categoria_id` int(11) NOT NULL,
  `lote_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `lavra_id` int(11) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `criado_em` date NOT NULL,
  `criado_por` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `custo` float NOT NULL,
  `comentario` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actividade`
--

INSERT INTO `actividade` (`id`, `descricao`, `actividade_categoria_id`, `lote_id`, `area_id`, `lavra_id`, `data_inicio`, `data_fim`, `criado_em`, `criado_por`, `estado`, `custo`, `comentario`) VALUES
(1, 'Actividade Teste', 1, 2, 1, 1, '2018-11-08', '2018-11-15', '2018-11-21', 0, 0, 0, ''),
(2, 'Actividade Teste', 1, 1, 1, 1, '2018-11-08', '2018-11-15', '2018-11-21', 2, 1, 21, 'brrg'),
(3, 'Actividade Teste', 1, 1, 1, 1, '2018-11-08', '2018-11-15', '2018-11-21', 2, 1, 21, 'brrg'),
(4, 'Actividade Teste', 1, 1, 1, 1, '2018-11-08', '2018-11-15', '2018-11-21', 2, 1, 21, 'brrg');

-- --------------------------------------------------------

--
-- Table structure for table `actividade_categoria`
--

CREATE TABLE `actividade_categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `actividade_tipo`
--

CREATE TABLE `actividade_tipo` (
  `id` int(11) NOT NULL,
  `actividade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `endereco` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `equipamento`
--

CREATE TABLE `equipamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` varchar(250) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `numero_id` varchar(30) NOT NULL,
  `comentario` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `insumo`
--

CREATE TABLE `insumo` (
  `id` int(11) NOT NULL,
  `tipo_insumo_id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` varchar(250) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `unidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `insumo_tipo`
--

CREATE TABLE `insumo_tipo` (
  `id` int(11) NOT NULL,
  `insumo_tipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lavra`
--

CREATE TABLE `lavra` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` varchar(250) NOT NULL,
  `tamanho` decimal(10,0) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `criado_por` int(11) NOT NULL,
  `criado_em` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lavra_produtos`
--

CREATE TABLE `lavra_produtos` (
  `id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `lavra_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lote`
--

CREATE TABLE `lote` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` varchar(250) NOT NULL,
  `area_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movimentacao_tipo`
--

CREATE TABLE `movimentacao_tipo` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movimento`
--

CREATE TABLE `movimento` (
  `id` int(11) NOT NULL,
  `descricao` varchar(250) DEFAULT NULL,
  `movimento_tipo_id` int(11) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `quantidade` tinyint(1) NOT NULL,
  `unidade` int(11) NOT NULL,
  `data` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `criado_em` date NOT NULL,
  `criaddo_por` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movimento`
--

INSERT INTO `movimento` (`id`, `descricao`, `movimento_tipo_id`, `categoria`, `quantidade`, `unidade`, `data`, `estado`, `criado_em`, `criaddo_por`) VALUES
(1, 'teste movimento', 1, '1', 33, 2, 23, 1, '2018-10-24', 2),
(2, 'teste movimento', 1, '1', 33, 2, 23, 1, '2018-10-24', 2),
(3, 'teste movimento', 1, '1', 33, 2, 23, 1, '2018-10-24', 2),
(4, 'teste movimento', 1, '1', 33, 2, 23, 1, '2018-10-24', 2),
(5, 'tefgtr', 4, '44', 4, 4, 3, 3, '2018-11-07', 2),
(6, 'tefgtr', 4, '44', 4, 4, 3, 3, '2018-11-07', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pessoa`
--

CREATE TABLE `pessoa` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `sobre_nome` varchar(30) NOT NULL,
  `numero_bi` varchar(20) NOT NULL,
  `data_nascimento` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` varchar(250) NOT NULL,
  `unidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `sobre_nome` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `categoria` int(1) NOT NULL,
  `estado` varchar(11) NOT NULL,
  `telefone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `sobre_nome`, `email`, `senha`, `categoria`, `estado`, `telefone`) VALUES
(12, 'Armando', '', 'armanduel24@hotmail.com', '$2y$10$mGcZ3bI3ONmLoPANxr3tGO.Kns.AaDcKqDWT8jZyKZPDSBtewh9Ni', 1, '', '9219999999'),
(13, 'hionia', 'Manuel', 'arman@hotmail.com', '$2y$10$25NM/Rz326Rd5YI0FYsAtO62ubr66a9HhZ9E0n0lGNMIjZWh06OGe', 1, '1', '9219999999'),
(16, 'jairo', 'besa', '', '', 0, '', ''),
(20, 'teste 1', 'besa', 'teste@email.com', '', 0, '', ''),
(23, 'Armando', 'besa', 'armYTYUDTado@gmail.com', 'fF', 0, '', ''),
(24, 'Armando', '', 'armado@gmail.com', '$2y$10$ewytYph/A4DxaOt8HkIb5e2lDk6ydrO.bsiRqIMf.h8XJQI61RGlG', 1, '1', '55555'),
(25, 'Armando', 'besa', 'armado@gmail.com', 'REGEARG', 0, '', '55555'),
(26, 'Armando', 'besa', 'armado@gmail.com', '', 0, '', ''),
(28, 'AJM AJM', 'zxzxzxz', 'armanduel24@hotmail.com', '$2y$10$K5U/Od2i5JG8ZqUGvJJipuaVEjotYkZypRoMpmcQGYH70Gli2OYMO', 1, '1', '9219999999'),
(29, 'Armando', 'Manuel', 'armanduel24@hotmail.com', '$2y$10$jkMFfxGlrbM93oyU6YlNBOF0hX32ORK11Qd.XN7w1PlIwnZqkplKq', 0, '1', '9219999999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actividade`
--
ALTER TABLE `actividade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actividade_categoria`
--
ALTER TABLE `actividade_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actividade_tipo`
--
ALTER TABLE `actividade_tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipamento`
--
ALTER TABLE `equipamento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insumo`
--
ALTER TABLE `insumo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insumo_tipo`
--
ALTER TABLE `insumo_tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lavra`
--
ALTER TABLE `lavra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lavra_produtos`
--
ALTER TABLE `lavra_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lote`
--
ALTER TABLE `lote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movimentacao_tipo`
--
ALTER TABLE `movimentacao_tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movimento`
--
ALTER TABLE `movimento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actividade`
--
ALTER TABLE `actividade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `actividade_categoria`
--
ALTER TABLE `actividade_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `actividade_tipo`
--
ALTER TABLE `actividade_tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipamento`
--
ALTER TABLE `equipamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insumo`
--
ALTER TABLE `insumo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insumo_tipo`
--
ALTER TABLE `insumo_tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lavra`
--
ALTER TABLE `lavra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lavra_produtos`
--
ALTER TABLE `lavra_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lote`
--
ALTER TABLE `lote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movimentacao_tipo`
--
ALTER TABLE `movimentacao_tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movimento`
--
ALTER TABLE `movimento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
