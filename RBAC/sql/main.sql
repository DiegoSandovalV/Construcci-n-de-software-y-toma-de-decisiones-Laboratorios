-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8000
-- Generation Time: Mar 16, 2023 at 11:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carlosdiego`
--

-- --------------------------------------------------------

--
-- Table structure for table `comidaperro`
--

CREATE TABLE `comidaperro` (
  `idComidaPerro` int(11) NOT NULL,
  `cardTitle` varchar(100) DEFAULT NULL,
  `cardSubtitle` varchar(100) DEFAULT NULL,
  `cardSrc` varchar(255) DEFAULT NULL,
  `cardContent` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `comidaperro`
--

INSERT INTO `comidaperro` (`idComidaPerro`, `cardTitle`, `cardSubtitle`, `cardSrc`, `cardContent`) VALUES
(199, 'Royal Canin', 'Small Dog', 'https://cdn.shopify.com/s/files/1/1387/5411/products/packshot-puppy-maxi-shn17-high-res-print.png?v=1594401687', 'Complete nutrition for small dogs'),
(200, 'Pedigree', 'Small Dog', 'https://yourdogadvisor.com/wp-content/uploads/2020/08/Dog-Food-pic-2-768x1024.webp', 'Complete nutrition for small dogs'),
(201, 'Solid Gold', 'Barking at the Moon', 'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1622812343-1-HundNFlocken-Front.jpg', 'Everyday nutrition - lamb, brown rice & vegetables'),
(202, 'Hilis', 'Science Diet', 'https://cdn.apartmenttherapy.info/image/upload/v1592396549/k/802816-center-1.webp', 'Adult small breed dog food'),
(203, 'Pro Plan', 'Complete essential', 'https://specials-images.forbesimg.com/imageserve/61f97945a4068b7537688975/Best-dry-dog-food--Purina-Pro-Plan-Adult-Shredded-Blend-Dry-Dog-Food--35-Pounds-/960x0.jpg?cropX1=0&cropX2=500&cropY1=0&cropY2=464', 'Complete nutrition for small dogs'),
(204, 'HARRINGTONS', 'The Natural Choice', 'https://www.alphapaw.com/wp-content/uploads/2021/01/photo_2021-01-20_16-04-18.jpg', 'Turkey & Sweet Potato'),
(205, 'a', 'a', 'https://t1.ea.ltmcdn.com/es/posts/1/2/2/cual_es_la_mejor_alimentacion_para_perros_24221_600_square.jpg', 'a'),
(199, 'Royal Canin', 'Small Dog', 'https://cdn.shopify.com/s/files/1/1387/5411/products/packshot-puppy-maxi-shn17-high-res-print.png?v=1594401687', 'Complete nutrition for small dogs'),
(200, 'Pedigree', 'Small Dog', 'https://yourdogadvisor.com/wp-content/uploads/2020/08/Dog-Food-pic-2-768x1024.webp', 'Complete nutrition for small dogs'),
(201, 'Solid Gold', 'Barking at the Moon', 'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1622812343-1-HundNFlocken-Front.jpg', 'Everyday nutrition - lamb, brown rice & vegetables'),
(202, 'Hilis', 'Science Diet', 'https://cdn.apartmenttherapy.info/image/upload/v1592396549/k/802816-center-1.webp', 'Adult small breed dog food'),
(203, 'Pro Plan', 'Complete essential', 'https://specials-images.forbesimg.com/imageserve/61f97945a4068b7537688975/Best-dry-dog-food--Purina-Pro-Plan-Adult-Shredded-Blend-Dry-Dog-Food--35-Pounds-/960x0.jpg?cropX1=0&cropX2=500&cropY1=0&cropY2=464', 'Complete nutrition for small dogs'),
(204, 'HARRINGTONS', 'The Natural Choice', 'https://www.alphapaw.com/wp-content/uploads/2021/01/photo_2021-01-20_16-04-18.jpg', 'Turkey & Sweet Potato'),
(205, 'a', 'a', 'https://t1.ea.ltmcdn.com/es/posts/1/2/2/cual_es_la_mejor_alimentacion_para_perros_24221_600_square.jpg', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `michis`
--

CREATE TABLE `michis` (
  `idMichis` int(11) NOT NULL,
  `cardTitle` varchar(100) DEFAULT NULL,
  `cardSubtitle` varchar(100) DEFAULT NULL,
  `cardSrc` varchar(255) DEFAULT NULL,
  `cardContent` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `michis`
--

INSERT INTO `michis` (`idMichis`, `cardTitle`, `cardSubtitle`, `cardSrc`, `cardContent`) VALUES
(1, 'Data Scientist Jr. Cat', 'Cat meme that describes data scientist\'s pain', 'https://images3.memedroid.com/images/UPLOADED478/6163397ee2cb3.jpeg', 'The sixth image describes a meme.'),
(2, 'Cat fixing code', 'Cat fixing code in Windows 98', 'https://www.kidscodecs.com/wp-content/uploads/2020/02/History_TS_ProgrammingMemes_image3.png', 'The eighth image describes a cat fixing code.'),
(3, 'Orange cat eating pancakes', 'Cat eating a pancake', 'https://preview.redd.it/fcy75bgri5u41.jpg?width=640&crop=smart&auto=webp&s=1280ea808f275181b40d5b456f638b85c326fa43', 'The third image describes a cat eating pancakes.'),
(4, 'Cat reparing a computer', 'Cat inside a computer', 'https://i.pinimg.com/600x315/7b/a0/61/7ba06153e4360afcee03b853743e868f.jpg', 'The fourth image describes a cat inside a computer.'),
(5, 'Cat with a laptop', 'Cat with a laptop making code', 'http://www.quickmeme.com/img/99/9903c7c14add3fd0758b7b5b80c24d48101f296f13ce34736799a82c71f61bc2.jpg', 'The seventh image describes a cat with a laptop.'),
(6, 'Cat crying', 'Cat crying because of Linux', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyy0XsGiyfmQg33g80pJ5hhpVirf1cXn7OPg&usqp=CAU', 'The ninth image describes a cat crying.'),
(7, 'Michi eating pancakes', 'Black cat eating pancakes', 'https://media-cldnry.s-nbcnews.com/image/upload/newscms/2016_39/1162329/cat-eating-baby-pancakes-today-160929-tease.jpg', 'In this image we can see how a cat is looking at the pancakes'),
(8, 'Cat debugging code', 'Cat with a MacBook Pro laptop', 'https://i.pinimg.com/736x/76/3c/c5/763cc58e033253a31a32f050b471d335.jpg', 'The fifth image describes a cat debugging code.'),
(9, 'Michi looking at pancakes', 'Cat looking at pancakes', 'https://faqcats.com/wp-content/uploads/Can-Cats-Eat-Pancakes.jpg', 'The second image describes a cat looking at pancakes.'),
(1, 'Data Scientist Jr. Cat', 'Cat meme that describes data scientist\'s pain', 'https://images3.memedroid.com/images/UPLOADED478/6163397ee2cb3.jpeg', 'The sixth image describes a meme.'),
(2, 'Cat fixing code', 'Cat fixing code in Windows 98', 'https://www.kidscodecs.com/wp-content/uploads/2020/02/History_TS_ProgrammingMemes_image3.png', 'The eighth image describes a cat fixing code.'),
(3, 'Orange cat eating pancakes', 'Cat eating a pancake', 'https://preview.redd.it/fcy75bgri5u41.jpg?width=640&crop=smart&auto=webp&s=1280ea808f275181b40d5b456f638b85c326fa43', 'The third image describes a cat eating pancakes.'),
(4, 'Cat reparing a computer', 'Cat inside a computer', 'https://i.pinimg.com/600x315/7b/a0/61/7ba06153e4360afcee03b853743e868f.jpg', 'The fourth image describes a cat inside a computer.'),
(5, 'Cat with a laptop', 'Cat with a laptop making code', 'http://www.quickmeme.com/img/99/9903c7c14add3fd0758b7b5b80c24d48101f296f13ce34736799a82c71f61bc2.jpg', 'The seventh image describes a cat with a laptop.'),
(6, 'Cat crying', 'Cat crying because of Linux', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyy0XsGiyfmQg33g80pJ5hhpVirf1cXn7OPg&usqp=CAU', 'The ninth image describes a cat crying.'),
(7, 'Michi eating pancakes', 'Black cat eating pancakes', 'https://media-cldnry.s-nbcnews.com/image/upload/newscms/2016_39/1162329/cat-eating-baby-pancakes-today-160929-tease.jpg', 'In this image we can see how a cat is looking at the pancakes'),
(8, 'Cat debugging code', 'Cat with a MacBook Pro laptop', 'https://i.pinimg.com/736x/76/3c/c5/763cc58e033253a31a32f050b471d335.jpg', 'The fifth image describes a cat debugging code.'),
(9, 'Michi looking at pancakes', 'Cat looking at pancakes', 'https://faqcats.com/wp-content/uploads/Can-Cats-Eat-Pancakes.jpg', 'The second image describes a cat looking at pancakes.');

-- --------------------------------------------------------

--
-- Table structure for table `privilegio`
--

CREATE TABLE `privilegio` (
  `idPrivilegio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `privilegio`
--

INSERT INTO `privilegio` (`idPrivilegio`, `nombre`, `created_at`) VALUES
(1, 'ver_comida_perro', '2023-03-16 21:22:33'),
(2, 'crear_comida_perro', '2023-03-16 21:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`idRol`, `nombre`, `descripcion`, `created_at`) VALUES
(1, 'Administrador', 'Administrador del sitio', '2023-03-16 21:22:33'),
(2, 'Usuario', 'Usuario del sitio', '2023-03-16 21:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `rolprivilegio`
--

CREATE TABLE `rolprivilegio` (
  `idRol` int(11) NOT NULL,
  `idPrivilegio` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rolprivilegio`
--

INSERT INTO `rolprivilegio` (`idRol`, `idPrivilegio`, `created_at`) VALUES
(1, 1, '2023-03-16 21:22:33'),
(1, 2, '2023-03-16 21:22:33'),
(2, 1, '2023-03-16 21:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `usuariorol`
--

CREATE TABLE `usuariorol` (
  `idUsuario` int(11) NOT NULL,
  `idRol` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuariorol`
--

INSERT INTO `usuariorol` (`idUsuario`, `idRol`, `created_at`) VALUES
(1, 1, '2023-03-16 21:22:33'),
(2, 2, '2023-03-16 21:22:33'),
(3, 1, '2023-03-16 21:33:10'),
(3, 2, '2023-03-16 22:10:25'),
(4, 1, '2023-03-16 22:17:39'),
(4, 2, '2023-03-16 22:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `username`, `password`) VALUES
(1, 'Carlos', '1234'),
(2, 'Diego', '1234'),
(3, 'CARLOS', '$2a$12$xKAdmuFIFokT4ffRJr3VwuBhMnpFibDFUCSJfjsIb4yzyqc/K.eUC'),
(4, 'admin', '$2a$12$P7yrXvLsev86UG.zZa2gMe8UhH44GiQ22GVdQwvgDz4i79m5jLYBy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `privilegio`
--
ALTER TABLE `privilegio`
  ADD PRIMARY KEY (`idPrivilegio`);

--
-- Indexes for table `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idRol`);

--
-- Indexes for table `rolprivilegio`
--
ALTER TABLE `rolprivilegio`
  ADD PRIMARY KEY (`idRol`,`idPrivilegio`),
  ADD KEY `idPrivilegio` (`idPrivilegio`);

--
-- Indexes for table `usuariorol`
--
ALTER TABLE `usuariorol`
  ADD PRIMARY KEY (`idUsuario`,`idRol`),
  ADD KEY `idRol` (`idRol`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `privilegio`
--
ALTER TABLE `privilegio`
  MODIFY `idPrivilegio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rol`
--
ALTER TABLE `rol`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rolprivilegio`
--
ALTER TABLE `rolprivilegio`
  ADD CONSTRAINT `rolprivilegio_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`),
  ADD CONSTRAINT `rolprivilegio_ibfk_2` FOREIGN KEY (`idPrivilegio`) REFERENCES `privilegio` (`idPrivilegio`);

--
-- Constraints for table `usuariorol`
--
ALTER TABLE `usuariorol`
  ADD CONSTRAINT `usuariorol_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `usuariorol_ibfk_2` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
