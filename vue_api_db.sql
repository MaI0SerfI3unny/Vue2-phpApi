-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Чрв 30 2021 р., 14:21
-- Версія сервера: 10.4.18-MariaDB
-- Версія PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `vue_api_db`
--

-- --------------------------------------------------------

--
-- Структура таблиці `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `date` date NOT NULL,
  `text` text NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `date`, `text`, `path`) VALUES
(1, '45 Cool Bag Illustrations', '2021-06-30', 'Nullam nec purus ut sem hendrerit scelerisque a non magna. Curabitur porttitor turpis vehicula dignissim tempus. Praesent hendrerit suscipit magna, a venenatis dui placerat nec. Suspendisse potenti. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio sed, quia at error minus, praesentium qui tempora beatae libero provident.', 'assets/images/img_1.jpg'),
(2, '45 Cool Bag Illustrations', '2021-06-29', 'Nullam nec purus ut sem hendrerit scelerisque a non magna. Curabitur porttitor turpis vehicula dignissim tempus. Praesent hendrerit suscipit magna, a venenatis dui placerat nec. Suspendisse potenti. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio sed, quia at error minus, praesentium qui tempora beatae libero provident.', 'assets/images/img_4.jpg'),
(3, '45 Cool Bag Illustrations', '2021-06-30', 'Nullam nec purus ut sem hendrerit scelerisque a non magna. Curabitur porttitor turpis vehicula dignissim tempus. Praesent hendrerit suscipit magna, a venenatis dui placerat nec. Suspendisse potenti. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio sed, quia at error minus, praesentium qui tempora beatae libero provident.', 'assets/images/img_5.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `website` text NOT NULL,
  `message` text NOT NULL,
  `date` text NOT NULL,
  `id_blog` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `website`, `message`, `date`, `id_blog`) VALUES
(1, 'Graison', 'graison@gmail.com', '--', 'That is awesome', '2021-06-29', 1),
(2, 'Danil Edkin', 'daniledkin@gmail.com', 'http://localhost:8080/page=2', 'dasdasdasdasdsdad', '06-30-2021', 2),
(3, 'Danil Edkin', 'daniledkin@gmail.com', 'http://localhost:8080/page=2', 'sdaadsadsads', '06-30-2021', 2);

-- --------------------------------------------------------

--
-- Структура таблиці `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `timezone` text NOT NULL,
  `budget` text NOT NULL,
  `type` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблиці `workdo`
--

CREATE TABLE `workdo` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `workdo`
--

INSERT INTO `workdo` (`id`, `title`, `description`) VALUES
(1, 'Web Development', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.'),
(2, 'Brand identity', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.'),
(3, 'Copywriting', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.'),
(4, 'eCommerce', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.');

-- --------------------------------------------------------

--
-- Структура таблиці `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `date` date NOT NULL,
  `text` text NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `works`
--

INSERT INTO `works` (`id`, `title`, `date`, `text`, `path`) VALUES
(1, '45 Cool Bag Illustrations', '2021-06-29', 'Nullam nec purus ut sem hendrerit scelerisque a non magna. Curabitur porttitor turpis vehicula dignissim tempus. Praesent hendrerit suscipit magna, a venenatis dui placerat nec. Suspendisse potenti. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio sed, quia at error minus, praesentium qui tempora beatae libero provident.', 'assets/images/img_1.jpg'),
(2, '45 Cool Bag Illustrations', '2021-06-30', 'Nullam nec purus ut sem hendrerit scelerisque a non magna. Curabitur porttitor turpis vehicula dignissim tempus. Praesent hendrerit suscipit magna, a venenatis dui placerat nec. Suspendisse potenti. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio sed, quia at error minus, praesentium qui tempora beatae libero provident.', 'assets/images/img_2.jpg'),
(3, '45 Cool Bag Illustrations', '2021-06-30', 'Nullam nec purus ut sem hendrerit scelerisque a non magna. Curabitur porttitor turpis vehicula dignissim tempus. Praesent hendrerit suscipit magna, a venenatis dui placerat nec. Suspendisse potenti. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio sed, quia at error minus, praesentium qui tempora beatae libero provident.', 'assets/images/img_3.jpg');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Індекси таблиці `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_blog` (`id_blog`);

--
-- Індекси таблиці `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `workdo`
--
ALTER TABLE `workdo`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблиці `workdo`
--
ALTER TABLE `workdo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_blog`) REFERENCES `blogs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
