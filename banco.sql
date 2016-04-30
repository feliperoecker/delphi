-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01-Abr-2016 às 16:57
-- Versão do servidor: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banco`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_aluno`
--

CREATE TABLE `tb_aluno` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `cpf` varchar(200) NOT NULL,
  `rg` varchar(200) NOT NULL,
  `telefone` varchar(200) NOT NULL,
  `nascimento` varchar(200) NOT NULL,
  `curso` varchar(200) NOT NULL,
  `periodo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_aluno`
--

INSERT INTO `tb_aluno` (`codigo`, `nome`, `endereco`, `cpf`, `rg`, `telefone`, `nascimento`, `curso`, `periodo`) VALUES
(2, 'Luiz Felipe Roecker', 'Barreiro Grande', '094.051.229-75', '12.529.838-9', '4299597213', '19/02/1994', 'GestÃ£o da Tecnologia da InformaÃ§Ã£o', '5Âº'),
(3, 'Lucas Dziubate Ferreira', 'Rua dos carrochos, Dalmatas, 101', '098.765.432.11', '10.298.376.45', '4299890000', '31/02/1999', 'GestÃ£o da Tecnologia da InformaÃ§Ã£o', '5Âº');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `Codigo` int(11) NOT NULL,
  `Nome` varchar(200) NOT NULL,
  `Endereco` varchar(200) NOT NULL,
  `CPF` varchar(20) NOT NULL,
  `RG` varchar(20) NOT NULL,
  `Telefone` varchar(12) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Nascimento` varchar(10) NOT NULL,
  `nomepai` varchar(200) NOT NULL,
  `nomemae` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_clientes`
--

INSERT INTO `tb_clientes` (`Codigo`, `Nome`, `Endereco`, `CPF`, `RG`, `Telefone`, `Email`, `Nascimento`, `nomepai`, `nomemae`) VALUES
(11, 'Luiz Felipe Roecker', 'Barreiro Grande', '094.051.229-75', '12.529.838-9', '4299597213', 'feliperoecker@hotmail.com', '19/02/1994', 'Lino Roecker', 'Albertina F. Roecker'),
(12, 'fhdf', 'df', 'df', 'dfh', 'dfh', 'dfh', 'dfh', 'd', 'hdh'),
(13, 'dfdfd', 'dfdfd', 'df', 'dfdfd', 'dfdf', '', 'dfdfd', '', ''),
(14, 'dfdfd', 'dfdfd', 'df', 'dfdfd', 'dfdf', '', 'dfdfd', '', ''),
(15, 'dfdfd', 'dfdfd', 'df', 'dfdfd', 'dfdf', '', 'dfdfd', '', ''),
(16, 'dfdfd', 'dfdfd', 'df', 'dfdfd', 'dfdf', '', 'dfdfd', '', ''),
(17, 'sfdsf', 'df', 'd', 'df', 'df', '', 'dfd', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produtos`
--

CREATE TABLE `tb_produtos` (
  `codigo` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `valor` int(10) NOT NULL,
  `qtde` int(10) NOT NULL,
  `fornecedor` varchar(200) NOT NULL,
  `datafabricacao` varchar(10) NOT NULL,
  `datavalidade` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`codigo`, `descricao`, `valor`, `qtde`, `fornecedor`, `datafabricacao`, `datavalidade`) VALUES
(1, 'CafÃ©', 3, 2, 'VÃ³ maria', '10/10/2015', '10/10/2016'),
(2, 'Arroz', 8, 3, 'dellaroz', '12/2/2016', '12/12/2016');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_professor`
--

CREATE TABLE `tb_professor` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `rg` varchar(200) NOT NULL,
  `cpf` varchar(200) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `nascimento` varchar(200) NOT NULL,
  `telefone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `disciplina` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_professor`
--

INSERT INTO `tb_professor` (`codigo`, `nome`, `rg`, `cpf`, `endereco`, `nascimento`, `telefone`, `email`, `cidade`, `disciplina`) VALUES
(3, 'Danilo', '12.345.678.890.0', '123.456.789.10', 'Rua das Flores, esquina com Jardim, 100', '01/04/2016', '4298896666', 'Aurelio.danilo@hotmail.com', 'Palmital', 'Topicos especiais em Informatica'),
(4, 'JoÃ£o Luiz Junior Scaramal', '123.123.123.45', '987.098.987.10', 'Rua dos gatos, garfield, 222', '01/01/1901', '4298765432', 'junior.scaramal@hotmal.com', 'Pitanga', 'Redes 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_aluno`
--
ALTER TABLE `tb_aluno`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `tb_professor`
--
ALTER TABLE `tb_professor`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_aluno`
--
ALTER TABLE `tb_aluno`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tb_produtos`
--
ALTER TABLE `tb_produtos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_professor`
--
ALTER TABLE `tb_professor`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
