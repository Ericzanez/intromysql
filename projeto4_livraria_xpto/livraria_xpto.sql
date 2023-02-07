-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Fev-2023 às 18:13
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `livraria_xpto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores`
--

CREATE TABLE `autores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autores`
--

INSERT INTO `autores` (`id`, `nome`, `email`) VALUES
(1, 'joaozinho', 'joaozinhoeditora@gmail.com'),
(2, 'dom joao', 'domjoaoeditora@gmail.com'),
(3, 'joaozito', 'joaozitoeditora@gmail.com'),
(4, 'joao zaco', 'joaozacoeditora@gmail.com'),
(5, 'joao', 'joaoeditora@gmail.com'),
(6, 'joaozao', 'joaozaoeditora@gmail.com'),
(7, 'joao miguel', 'joaomigueleditora@gmail.com'),
(8, 'joao evangelista', 'joaoevangelistaeditora@gmail.com'),
(9, 'joao pessoa', 'joaopessoaeditora@gmail.com'),
(10, 'joao ribeiro', 'joaoribeiroeditora@gmail.com'),
(21, 'roberto', 'joão@joão.com'),
(22, 'Pedro', 'pedro@pedro.com'),
(23, 'Marcos', 'marcos@marcos.com'),
(24, 'Aurélio', 'aurélio@aurélio.com'),
(25, 'Rick', 'rick@rick.com'),
(26, 'Paulo', 'paulo@paulo.com'),
(27, 'Matias', 'matias@matias.com'),
(28, 'Vinicius', 'vinicius@vinicius.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cpf` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `cpf`) VALUES
(1, 'rodolfo', 'rodolfo.fas003@gmail.com', '13923987706'),
(2, 'rodolfo2', 'rodolfo.fas2@gmail.com', '12123'),
(3, 'rodolfo3', 'rodolfo.fas3@gmail.com', '121541654112'),
(4, 'rodolfo4', 'rodolfo.fas4@gmail.com', '1.6126584189'),
(7, 'eric1', 'eric.z1@gmail.com', '121356582156'),
(8, 'eric2', 'eric.z2@gmail.com', '1212783'),
(9, 'eric3', 'eric.z3@gmail.com', '121278941883'),
(10, 'eric4', 'eric.z4@gmail.com', '12127');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cnpj` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`id`, `nome`, `email`, `cnpj`) VALUES
(1, 'senac', 'senaceditora@gmail.com', '46970164'),
(2, 'adevair', 'adevaireditora@gmail.com', '55535940'),
(3, 'erika', 'erikaeditora@gmail.com', '44495034');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `id` int(11) NOT NULL,
  `id_livro` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`id`, `id_livro`, `quantidade`) VALUES
(1, 1, 4321),
(2, 2, 231),
(3, 3, 123),
(4, 4, 23),
(5, 5, 43),
(6, 6, 7),
(7, 7, 33),
(8, 8, 21),
(9, 9, 2534),
(10, 10, 65),
(11, 11, 324),
(12, 12, 324),
(13, 13, 32),
(14, 14, 54),
(15, 15, 13),
(16, 16, 7654),
(17, 17, 223),
(18, 18, 423),
(19, 19, 274),
(20, 20, 24),
(21, 21, 652),
(22, 22, 3425),
(23, 23, 231),
(24, 24, 56),
(25, 25, 13254),
(26, 26, 645),
(27, 27, 43),
(28, 28, 4),
(29, 29, 23),
(30, 30, 87),
(31, 31, 354),
(32, 32, 724),
(33, 33, 2543),
(34, 34, 12543),
(35, 35, 132),
(36, 36, 3),
(37, 37, 12),
(38, 38, 2),
(39, 39, 73645),
(40, 40, 154);

-- --------------------------------------------------------

--
-- Estrutura da tabela `forma_de_pagamento`
--

CREATE TABLE `forma_de_pagamento` (
  `id` int(11) NOT NULL,
  `forma` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `forma_de_pagamento`
--

INSERT INTO `forma_de_pagamento` (`id`, `forma`) VALUES
(1, 'avista'),
(2, 'cartão de credito'),
(3, 'pix');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcao`
--

CREATE TABLE `funcao` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `salario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcao`
--

INSERT INTO `funcao` (`id`, `descricao`, `salario`) VALUES
(1, 'vendedor', 2000),
(2, 'gerente', 4000),
(3, 'estoquista', 1000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `id_funcao` int(11) DEFAULT NULL,
  `matricula` int(11) DEFAULT NULL,
  `status_funcionario` int(11) DEFAULT NULL,
  `id_turno` int(11) DEFAULT NULL,
  `data_de_cadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `id_funcao`, `matricula`, `status_funcionario`, `id_turno`, `data_de_cadastro`) VALUES
(1, 'Pedro  da silva', 1, 123456, 1, 2, '2022-01-20'),
(2, 'Marcos Silveira', 1, 321654, 1, 2, '2022-10-21'),
(3, 'João Silvestre', 1, 147852, 1, 2, '2021-01-22'),
(4, 'Augusto Pereira', 2, 369852, 1, 2, '2023-01-23'),
(5, 'Adevair Vitório', 1, 1596327, 1, 1, '1998-01-24'),
(6, 'Ezequiel Barcellos', 1, 3461987, 0, 2, '2022-01-25'),
(7, 'Thiago Andreão', 1, 19555642, 1, 2, '0000-00-00'),
(8, 'Junior Silva', 2, 333214, 1, 2, '2022-01-27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`id`, `tipo`) VALUES
(1, 'religioso'),
(2, 'conto'),
(3, 'romance'),
(4, 'didatico'),
(5, 'infantil'),
(6, 'gibi'),
(7, 'poesia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `id_genero` int(11) DEFAULT NULL,
  `id_autor` int(11) DEFAULT NULL,
  `id_editora` int(11) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `codigo_de_barras` varchar(50) DEFAULT NULL,
  `preco` int(11) DEFAULT NULL,
  `data_de_cadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id`, `titulo`, `id_genero`, `id_autor`, `id_editora`, `isbn`, `codigo_de_barras`, `preco`, `data_de_cadastro`) VALUES
(1, 'HARRY POTTER 1', 1, 7, 2, '3717502934', '59308158066', 48, '2022-05-20'),
(2, 'HARRY POTTER 2', 3, 8, 2, '6037103689', '99895704364', 39, '2022-01-21'),
(3, 'HARRY POTTER 3', 4, 5, 2, '7997100562', '40745635495', 27, '2022-06-22'),
(4, 'HARRY POTTER 4', 5, 3, 3, '9624849758', '84837016126', 53, '2022-05-23'),
(5, 'HARRY POTTER 5', 5, 4, 3, '9472899286', '92250388426', 60, '2022-01-24'),
(6, 'HARRY POTTER 6', 2, 7, 3, '8528600203', '12539927956', 56, '2022-01-25'),
(7, 'HARRY POTTER 7', 3, 5, 3, '6014655524', '57174752904', 30, '2022-01-26'),
(8, 'SENHOR DOS ANÉIS 1', 2, 8, 2, '9621192921', '84782979020', 67, '2022-09-27'),
(9, 'SENHOR DOS ANÉIS 2', 4, 1, 2, '3752986104', '56562969981', 66, '2022-10-28'),
(10, 'SENHOR DOS ANÉIS 3', 4, 5, 3, '2321211855', '83235742401', 21, '2022-01-29'),
(11, 'SENHOR DOS ANÉIS 4', 4, 3, 3, '933426280', '73978948413', 70, '2022-01-30'),
(12, 'PATATI PATATA EM FAMÍLIA', 1, 6, 2, '6409233573', '38567242352', 4, '2022-01-31'),
(13, 'INTROÇÃO AO MYSQL', 1, 7, 2, '4133810231', '42059427634', 45, '2022-01-30'),
(14, 'JAVA 8', 2, 3, 1, '9239997621', '32637019714', 78, '2022-01-21'),
(15, 'HEROI POR UM DIA', 2, 4, 2, '4525767108', '93111460475', 36, '2022-01-28'),
(16, 'MÃE GANHEI A COPA', 3, 3, 2, '1376648637', '44656438062', 69, '2022-01-01'),
(17, 'MENTE MILIONÁRIA', 2, 4, 1, '554379976', '10151259801', 61, '2022-01-16'),
(18, '1 MILHÃO EM 60 DIAS', 1, 2, 1, '4862801448', '33629646444', 62, '2022-01-27'),
(19, 'PAI RICO FILHO POBRE', 1, 3, 2, '6040861313', '92408908319', 33, '2022-02-28'),
(20, 'DIÁRIO DE UM BANANA', 4, 8, 2, '8713309107', '98549016009', 40, '2022-01-29'),
(21, 'ANABELE A HISTÓRIA NÃO CONTADA', 5, 3, 1, '3433283880', '41375702770', 37, '2022-01-30'),
(22, 'VONTADE DE VENCER', 2, 6, 1, '3484100484', '33919957628', 70, '2022-01-21'),
(23, 'ROCK ESTILO DE VIDA', 2, 3, 2, '516010772', '54370307170', 20, '2022-01-12'),
(24, 'CÁCLULO 1 - SW', 1, 7, 1, '3715766542', '51564962337', 81, '2022-01-13'),
(25, 'CÁLCULO 2 -JWL', 3, 3, 1, '256205462', '94961813528', 10, '2022-01-14'),
(26, 'GEOMETRIA', 3, 5, 1, '3025013731', '57837178375', 35, '2022-01-25'),
(27, 'INTRODUÇÃO A LÓGICA', 1, 5, 1, '9406304542', '83574001258', 29, '2022-01-26'),
(28, 'ABC DA PROGRAMAÇÃO V1', 1, 2, 1, '2945847474', '87781256511', 17, '2022-01-17'),
(29, 'ABC DA PROGRAMAÇÃO V2', 4, 3, 1, '9558040266', '46061764365', 58, '2022-01-28'),
(30, 'ABC DA PROGRAMAÇÃO V3', 1, 4, 3, '5035122051', '18222623621', 34, '2022-01-29'),
(31, 'ABC DA PROGRAMAÇÃO V4', 4, 4, 3, '1889235348', '5909368764', 30, '2022-01-20'),
(32, 'ABC DA PROGRAMAÇÃO V5', 5, 2, 2, '9240713393', '35250086127', 89, '2022-01-11'),
(33, 'ABC DA PROGRAMAÇÃO V6', 5, 6, 1, '5212665304', '95136212603', 48, '2022-01-22'),
(34, 'HELLO WORD EM 50 LINGUAGENS', 2, 5, 3, '5492188378', '47659916266', 30, '2022-01-13'),
(35, 'ODEIO BANCO DE DADOS V1', 4, 7, 2, '2990418436', '77440868731', 61, '2022-01-14'),
(36, 'ODEIO BANCO DE DADOS V2', 2, 1, 2, '4361942761', '28145386053', 66, '2022-01-25'),
(37, 'A VIDA ALÉM DO BANCO DE DADOS', 3, 1, 1, '9276322316', '49126484831', 42, '2022-06-26'),
(38, '123 RUA - LAYOFF BRASIL', 1, 5, 2, '1927241582', '72051394852', 73, '2022-03-17'),
(39, 'BRASIL UM PAÍS DE DEV\'S', 3, 4, 2, '1218001174', '12070357853', 72, '2022-12-18'),
(40, 'SEM PACIÊNCIA PARA NOME', 2, 8, 3, '1759947864', '46632949184', 76, '2022-11-19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turno`
--

CREATE TABLE `turno` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `carga_horaria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turno`
--

INSERT INTO `turno` (`id`, `descricao`, `carga_horaria`) VALUES
(1, 'matutino', 8),
(2, 'vespertino', 9),
(3, 'noturno', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_forma_de_pagamento` int(11) DEFAULT NULL,
  `id_vendedor` int(11) DEFAULT NULL,
  `id_livro` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `id_cliente`, `id_forma_de_pagamento`, `id_vendedor`, `id_livro`, `quantidade`, `data`) VALUES
(2, 9, 1, 7, 7, 100, '2023-02-03 00:00:00'),
(3, 8, 1, 4, 40, 1, '2023-02-03 00:00:00'),
(4, 7, 2, 1, 30, 5, '2023-02-03 00:00:00'),
(6, 3, 3, 8, 8, 3, '2023-02-03 00:00:00'),
(7, 4, 2, 2, 8, 8, '2023-02-03 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices para tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cnpj` (`cnpj`);

--
-- Índices para tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_livro` (`id_livro`);

--
-- Índices para tabela `forma_de_pagamento`
--
ALTER TABLE `forma_de_pagamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcao`
--
ALTER TABLE `funcao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matricula` (`matricula`),
  ADD KEY `id_funcao` (`id_funcao`),
  ADD KEY `id_turno` (`id_turno`);

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD UNIQUE KEY `codigo_de_barras` (`codigo_de_barras`),
  ADD KEY `id_genero` (`id_genero`),
  ADD KEY `id_autor` (`id_autor`),
  ADD KEY `id_editora` (`id_editora`);

--
-- Índices para tabela `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_livro` (`id_livro`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_forma_de_pagamento` (`id_forma_de_pagamento`),
  ADD KEY `id_vendedor` (`id_vendedor`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autores`
--
ALTER TABLE `autores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `editora`
--
ALTER TABLE `editora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `forma_de_pagamento`
--
ALTER TABLE `forma_de_pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `funcao`
--
ALTER TABLE `funcao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `turno`
--
ALTER TABLE `turno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estoque`
--
ALTER TABLE `estoque`
  ADD CONSTRAINT `estoque_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id`);

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`id_funcao`) REFERENCES `funcao` (`id`),
  ADD CONSTRAINT `funcionarios_ibfk_2` FOREIGN KEY (`id_turno`) REFERENCES `turno` (`id`);

--
-- Limitadores para a tabela `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`),
  ADD CONSTRAINT `livros_ibfk_2` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id`),
  ADD CONSTRAINT `livros_ibfk_3` FOREIGN KEY (`id_editora`) REFERENCES `editora` (`id`);

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`id_forma_de_pagamento`) REFERENCES `forma_de_pagamento` (`id`),
  ADD CONSTRAINT `vendas_ibfk_4` FOREIGN KEY (`id_vendedor`) REFERENCES `funcionarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
