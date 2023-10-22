-- phpMyAdmin SQL Dump
-- version 3.5.1

-- Время создания: Май 25 2021 г., 15:59
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `temp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dicserv`
--

CREATE TABLE IF NOT EXISTS `dicserv` (
  `ServId` int(11) NOT NULL,
  `ServN` varchar(50) NOT NULL,
  PRIMARY KEY (`ServId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dicserv`
--

INSERT INTO `dicserv` (`ServId`, `ServN`) VALUES
(1, 'Кресло'),
(2, 'Телефон'),
(3, 'Телевизор'),
(4, 'Видеомагнитофон'),
(5, 'Душ'),
(6, 'Холодильник'),
(7, 'Кондиционер');

-- --------------------------------------------------------

--
-- Структура таблицы `klient`
--

CREATE TABLE IF NOT EXISTS `klient` (
  `ClientID` int(11) NOT NULL,
  `Fam` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Otch` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ClientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `klient`
--

INSERT INTO `klient` (`ClientID`, `Fam`, `Name`, `Otch`) VALUES
(1, 'Громов', 'Сергей', 'Иванович'),
(2, 'Боков', 'Эдуард', 'Самойлович'),
(3, 'Астахов', 'Пётр', 'Ильич'),
(4, 'Смирнов', 'Андрей', 'Кузьмич'),
(5, 'Печкин', 'Иван', 'Львович'),
(6, 'Свистунов', 'Виктор', 'Фёдорович'),
(7, 'Кларк', 'Алекс', ''),
(8, 'Панин', 'Александр', 'Павлович'),
(9, 'Войнов', 'Виктор', 'Семёнович'),
(10, 'Громов', 'Сергей', 'Иванович'),
(11, 'Пересветова', 'Алла', 'Матвеевна'),
(12, 'Котомина', 'Галина', 'Викторовна'),
(13, 'Савицкая', 'Нелли', 'Михайловна'),
(14, 'Крапивин', 'Николай', 'Петрович'),
(15, 'Карпин', 'Фёдор', 'Иванович'),
(16, 'Прилуков', 'Максим', 'Дмитриевич'),
(17, 'Переверзева', 'Ольга', 'Павловна'),
(18, 'Шейхаметов', 'Даулет', 'Даудович');

-- --------------------------------------------------------

--
-- Структура таблицы `nomers`
--

CREATE TABLE IF NOT EXISTS `nomers` (
  `Nomer` int(11) NOT NULL,
  `NumType` int(11) NOT NULL,
  `Floor` smallint(6) NOT NULL,
  PRIMARY KEY (`Nomer`),
  KEY `fknom` (`NumType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `nomers`
--

INSERT INTO `nomers` (`Nomer`, `NumType`, `Floor`) VALUES
(102, 3, 1),
(103, 7, 1),
(104, 5, 1),
(106, 1, 1),
(116, 8, 1),
(117, 8, 1),
(201, 7, 2),
(202, 1, 2),
(203, 6, 2),
(206, 1, 2),
(215, 7, 2),
(301, 8, 3),
(305, 3, 3),
(306, 3, 3),
(308, 10, 3),
(312, 2, 3),
(401, 7, 4),
(402, 2, 4),
(403, 3, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `nomserv`
--

CREATE TABLE IF NOT EXISTS `nomserv` (
  `NumType` int(11) NOT NULL,
  `ServID` int(11) NOT NULL,
  `ServK` int(11) NOT NULL,
  PRIMARY KEY (`NumType`,`ServID`),
  KEY `fkn2` (`ServID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `nomserv`
--

INSERT INTO `nomserv` (`NumType`, `ServID`, `ServK`) VALUES
(1, 1, 3),
(1, 2, 1),
(1, 4, 2),
(1, 5, 1),
(1, 6, 1),
(1, 7, 3),
(2, 1, 3),
(2, 2, 2),
(2, 3, 1),
(2, 4, 1),
(2, 5, 1),
(2, 6, 1),
(3, 1, 1),
(3, 2, 1),
(3, 3, 3),
(3, 4, 1),
(3, 5, 1),
(3, 7, 2),
(5, 1, 2),
(5, 2, 3),
(5, 3, 1),
(5, 5, 1),
(5, 7, 1),
(6, 3, 1),
(6, 4, 2),
(6, 5, 1),
(7, 2, 2),
(7, 4, 3),
(7, 5, 3),
(7, 6, 2),
(8, 1, 3),
(8, 4, 2),
(8, 6, 3),
(8, 7, 1),
(9, 4, 1),
(9, 6, 2),
(9, 7, 2),
(10, 1, 1),
(10, 4, 3),
(11, 2, 3),
(11, 3, 2),
(11, 4, 2),
(11, 5, 2),
(11, 6, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `typnum`
--

CREATE TABLE IF NOT EXISTS `typnum` (
  `NumType` int(11) NOT NULL,
  `NumNam` varchar(50) NOT NULL,
  `Rooms` smallint(6) NOT NULL,
  `Place` smallint(6) NOT NULL,
  `cen` decimal(8,2) NOT NULL,
  PRIMARY KEY (`NumType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `typnum`
--

INSERT INTO `typnum` (`NumType`, `NumNam`, `Rooms`, `Place`, `cen`) VALUES
(1, 'Стандарт Одноместный', 1, 1, '3100.00'),
(2, 'Президент', 2, 1, '12500.00'),
(3, 'Полулюкс Одноместный 2-комн.', 2, 1, '4200.00'),
(5, 'СОВОК Одноместный', 1, 1, '1250.00'),
(6, 'ПАРА Двухместный', 1, 2, '1200.00'),
(7, 'ГАНТЕЛЬ Двухместный 2-комн.', 2, 2, '1500.30'),
(8, 'КОЛХОЗ Трехместный Однокомнатный', 1, 3, '800.00'),
(9, 'СУПЕР Все включено', 3, 1, '5600.00'),
(10, 'МАРЬЯЖ 2-комн.,душ,холодильник', 2, 3, '1100.00'),
(11, 'ГАЛАНТ', 3, 2, '15000.00');

-- --------------------------------------------------------

--
-- Структура таблицы `visit`
--

CREATE TABLE IF NOT EXISTS `visit` (
  `Nomer` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `DArrive` date NOT NULL,
  `DLeave` date NOT NULL,
  PRIMARY KEY (`Nomer`,`DArrive`,`ClientID`),
  KEY `fk1` (`ClientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `visit`
--

INSERT INTO `visit` (`Nomer`, `ClientID`, `DArrive`, `DLeave`) VALUES
(104, 1, '2013-11-10', '2013-11-16'),
(116, 3, '2013-05-12', '2013-05-29'),
(116, 5, '2013-05-24', '2013-05-25'),
(116, 5, '2013-11-02', '2013-11-22'),
(116, 3, '2015-10-12', '2015-10-17'),
(116, 7, '2015-10-14', '2015-10-22'),
(117, 18, '2016-11-08', '2016-11-22'),
(117, 16, '2016-11-12', '2016-11-30'),
(117, 17, '2017-01-12', '2017-01-21'),
(201, 1, '2013-05-12', '2013-05-22'),
(201, 1, '2013-12-24', '2014-01-11'),
(201, 2, '2016-11-14', '2016-11-21'),
(201, 3, '2016-11-15', '2016-11-16'),
(203, 4, '2014-11-14', '2014-11-21'),
(203, 2, '2017-02-12', '2017-02-25'),
(203, 6, '2017-02-20', '2017-02-28'),
(215, 1, '2015-11-20', '2015-11-24'),
(215, 4, '2016-10-17', '2016-10-21'),
(215, 1, '2016-10-18', '2016-10-28'),
(215, 11, '2016-12-30', '2017-01-09'),
(301, 4, '2013-11-03', '2013-11-23'),
(301, 2, '2015-10-18', '2015-10-28'),
(301, 3, '2016-11-02', '2016-11-23'),
(301, 6, '2016-11-04', '2016-11-23'),
(305, 1, '2012-12-25', '2013-01-03'),
(305, 1, '2015-12-22', '2016-01-03'),
(305, 11, '2016-10-11', '2016-10-19'),
(305, 7, '2016-11-09', '2016-11-16'),
(306, 11, '2013-11-14', '2013-11-16'),
(306, 14, '2013-11-16', '2013-11-20'),
(306, 9, '2013-11-20', '2013-11-28'),
(308, 17, '2016-11-15', '2016-11-29'),
(312, 1, '2014-12-23', '2015-01-04'),
(312, 7, '2015-04-03', '2015-04-08'),
(312, 9, '2015-11-03', '2015-11-12'),
(312, 4, '2015-11-10', '2015-11-22'),
(312, 7, '2016-12-12', '2016-12-14'),
(401, 7, '2014-10-02', '2014-10-14'),
(401, 12, '2015-11-12', '2015-11-17'),
(401, 5, '2016-11-15', '2016-11-20'),
(401, 12, '2016-12-29', '2017-01-09'),
(401, 18, '2017-02-12', '2017-05-22'),
(402, 1, '2016-11-01', '2016-11-04'),
(402, 7, '2016-11-06', '2016-11-09'),
(402, 8, '2016-11-14', '2016-11-16'),
(403, 11, '2016-11-13', '2016-11-22');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `nomers`
--
ALTER TABLE `nomers`
  ADD CONSTRAINT `fknom` FOREIGN KEY (`NumType`) REFERENCES `typnum` (`NumType`);

--
-- Ограничения внешнего ключа таблицы `nomserv`
--
ALTER TABLE `nomserv`
  ADD CONSTRAINT `fkn1` FOREIGN KEY (`NumType`) REFERENCES `typnum` (`NumType`),
  ADD CONSTRAINT `fkn2` FOREIGN KEY (`ServID`) REFERENCES `dicserv` (`ServId`);

--
-- Ограничения внешнего ключа таблицы `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`ClientID`) REFERENCES `klient` (`ClientID`),
  ADD CONSTRAINT `fk2` FOREIGN KEY (`Nomer`) REFERENCES `nomers` (`Nomer`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


/*29*/
SELECT visit.Nomer, typnum.NumNam, 
sum(datediff(visit.DLeave, visit.DArrive)) as Total from visit
inner join nomers on visit.Nomer = nomers.Nomer
inner join typnum on typnum.NumType = nomers.NumType
group by visit.Nomer
order by Total desc
limit 1;

/*43*/
SELECT visit.Nomer, typnum.NumNam, visit.DArrive, visit.DLeave, 
klient.Fam, klient.Name, klient.Otch from visit
inner join nomers on visit.Nomer = nomers.Nomer
inner join typnum on typnum.NumType = nomers.NumType
inner join klient on visit.ClientID = klient.ClientID
where MONTH(visit.DLeave) BETWEEN 6 AND 8
AND visit.Nomer = '312';