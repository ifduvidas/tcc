-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Ago-2018 às 04:51
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ifduvidas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_comenta`
--

CREATE TABLE `aluno_comenta` (
  `id_pergunta` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `data_comentario` date DEFAULT NULL,
  `texto_comentario` varchar(150) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `id_comentario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno_comenta`
--

INSERT INTO `aluno_comenta` (`id_pergunta`, `id_usuario`, `data_comentario`, `texto_comentario`, `status`, `id_comentario`) VALUES
(47, 31, '2018-07-21', 'tambem quero saber', NULL, 1),
(47, 31, '2018-07-21', 'aaaa', NULL, 3),
(47, 32, '2018-07-21', 'procura no Youtube!', NULL, 4),
(49, 32, '2018-07-21', 'genetica', NULL, 5),
(47, 31, '2018-08-08', '...', NULL, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curtida`
--

CREATE TABLE `curtida` (
  `id_usuario` int(11) DEFAULT NULL,
  `id_pergunta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curtida`
--

INSERT INTO `curtida` (`id_usuario`, `id_pergunta`) VALUES
(47, 5),
(31, 47),
(31, 47),
(31, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 50),
(0, 50),
(0, 50),
(0, 50),
(0, 50),
(0, 50),
(0, 50),
(0, 50),
(0, 50),
(0, 50),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 50),
(0, 50),
(0, 50),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47),
(0, 47);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perguntas`
--

CREATE TABLE `perguntas` (
  `hora` time DEFAULT NULL,
  `data` date DEFAULT NULL,
  `descricao_pergunta` varchar(150) DEFAULT NULL,
  `titulo` varchar(30) DEFAULT NULL,
  `materia` varchar(30) DEFAULT NULL,
  `id_pergunta` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `curso` varchar(30) NOT NULL,
  `curtidas` varchar(30) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `perguntas`
--

INSERT INTO `perguntas` (`hora`, `data`, `descricao_pergunta`, `titulo`, `materia`, `id_pergunta`, `id_usuario`, `curso`, `curtidas`, `status`) VALUES
('03:48:03', '2018-07-21', 'Uma pessoa viajou de A atÃ© C passando por B. De A atÃ© B percorreu 25km e de B atÃ© C, 42km. Os percursos AB e BC formam entre si um Ã¢ngulo de 150Â°', 'ajuda com angulos!', 'matematica', 47, 31, '', '44', 1),
('03:52:00', '2018-07-21', 'Qual Ã© a definiÃ§Ã£o de Iluminismo de acordo com o filÃ³sofo alemÃ£o Immanuel Kant?', 'Iluminismo!', 'filosofia', 48, 31, '', '', NULL),
('03:57:40', '2018-07-21', 'Qual a probabilidade de um filho do casal 5Ã—6 ter sangue tipos O/RH+ ou A/Rh-', 'genetica', 'geografia', 49, 31, '', '', NULL),
('23:10:56', '2018-08-08', 'viajou', 'teste', 'matematica', 50, 32, '', '13', 1),
('23:12:48', '2018-08-08', 'viajou ate algum lugar', 'teste do teste ', 'matematica', 51, 32, '', '', 1),
('23:22:58', '2018-08-08', 'Uma pessoa viajou de A atÃ© C passando por B. De A atÃ© B percorreu 25km e de B atÃ© C, 42km. Os percursos AB e BC formam entre si um Ã¢ngulo de 150Â°', 'testee', 'matematica', 52, 32, '', '', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `prof_resposta`
--

CREATE TABLE `prof_resposta` (
  `id_pergunta` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `data_resposta` date DEFAULT NULL,
  `texto_resposta` varchar(150) DEFAULT NULL,
  `id_resposta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `prof_resposta`
--

INSERT INTO `prof_resposta` (`id_pergunta`, `id_usuario`, `data_resposta`, `texto_resposta`, `id_resposta`) VALUES
(47, 34, '2018-08-08', 'kkk', 1),
(50, 34, '2018-08-09', 'kkkk', 2),
(50, 34, '2018-08-09', 'kkkk', 3),
(51, 34, '2018-08-09', 'oi', 4),
(50, 34, '2018-08-09', 'kkkk', 5),
(47, 34, '2018-08-09', 'facil', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tip_user`
--

CREATE TABLE `tip_user` (
  `cod_tip` int(11) NOT NULL,
  `desc_tip_user` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tip_user`
--

INSERT INTO `tip_user` (`cod_tip`, `desc_tip_user`) VALUES
(3, 'admin'),
(4, 'professor'),
(5, 'aluno');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `Nome` varchar(30) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `num_matricula` int(10) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `turma` varchar(30) DEFAULT NULL,
  `RG` varchar(30) DEFAULT NULL,
  `foto_perf` varchar(160) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `valido` tinyint(1) DEFAULT NULL,
  `cod_tip` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno_comenta`
--
ALTER TABLE `aluno_comenta`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_pergunta` (`id_pergunta`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`id_pergunta`),
  ADD KEY `id_usuario` (`id_usuario`);
ALTER TABLE `perguntas` ADD FULLTEXT KEY `titulo` (`titulo`,`descricao_pergunta`);

--
-- Indexes for table `prof_resposta`
--
ALTER TABLE `prof_resposta`
  ADD PRIMARY KEY (`id_resposta`),
  ADD KEY `id_pergunta` (`id_pergunta`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `tip_user`
--
ALTER TABLE `tip_user`
  ADD PRIMARY KEY (`cod_tip`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `cod_tip` (`cod_tip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno_comenta`
--
ALTER TABLE `aluno_comenta`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `perguntas`
--
ALTER TABLE `perguntas`
  MODIFY `id_pergunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `prof_resposta`
--
ALTER TABLE `prof_resposta`
  MODIFY `id_resposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluno_comenta`
--
ALTER TABLE `aluno_comenta`
  ADD CONSTRAINT `aluno_comenta_ibfk_1` FOREIGN KEY (`id_pergunta`) REFERENCES `perguntas` (`id_pergunta`),
  ADD CONSTRAINT `aluno_comenta_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Limitadores para a tabela `perguntas`
--
ALTER TABLE `perguntas`
  ADD CONSTRAINT `perguntas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Limitadores para a tabela `prof_resposta`
--
ALTER TABLE `prof_resposta`
  ADD CONSTRAINT `prof_resposta_ibfk_1` FOREIGN KEY (`id_pergunta`) REFERENCES `perguntas` (`id_pergunta`),
  ADD CONSTRAINT `prof_resposta_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`cod_tip`) REFERENCES `tip_user` (`cod_tip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
