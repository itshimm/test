-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 05 2021 г., 09:08
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_NAME` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRODUCT_PRICE` int(11) NOT NULL,
  `PRODUCT_ARTICLE` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRODUCT_QUANTITY` int(11) NOT NULL,
  `DATE_CREATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`ID`, `PRODUCT_ID`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `PRODUCT_ARTICLE`, `PRODUCT_QUANTITY`, `DATE_CREATE`) VALUES
(1, 153, 'Молоко', 50, '800520', 29, '2021-01-15'),
(2, 259, 'Хлеб', 25, '551053', 73, '2021-01-29'),
(3, 675, 'Йогурт', 60, '559554', 47, '2021-02-04'),
(4, 245, 'Пельмени', 300, '788713', 55, '2021-01-22'),
(5, 457, 'Чипсы', 80, '701899', 20, '2021-01-26'),
(6, 670, 'Лимонад', 35, '565345', 57, '2021-01-14'),
(7, 434, 'Конфеты', 200, '607096', 36, '2021-02-04'),
(8, 662, 'Макароны', 30, '482257', 72, '2021-01-05'),
(9, 818, 'Подсолнечное масло', 90, '763781', 42, '2021-01-26'),
(10, 554, 'Сливочное масло', 120, '704347', 62, '2021-01-28'),
(11, 206, 'Колбаса', 400, '597933', 33, '2021-02-03'),
(12, 138, 'Кетчуп', 60, '553212', 93, '2021-01-12'),
(13, 555, 'Майонез', 65, '702713', 53, '2021-01-04');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
