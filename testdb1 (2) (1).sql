SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE IF NOT EXISTS `o` (
  `ONum` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `ODate` date NOT NULL,
  `CNum` int(255) NOT NULL,
  `Summa` double NOT NULL,
  PRIMARY KEY (`ONum`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=512 ;


INSERT INTO `o` (`ONum`, `ODate`, `CNum`, `Summa`) VALUES
(501, '2011-03-03', 201, 300.00),
(502, '2011-03-03', 206, 1200.00),
(503, '2011-03-03', 207, 25.50),
(504, '2012-03-03', 204, 550.00),
(505, '2012-03-03', 203, 56.50),
(506, '2014-03-03', 202, 600.00),
(507, '2014-03-03', 201, 3500.00),
(508, '2014-03-03', 207, 23.50),
(509, '2014-03-03', 207, 24.00),
(510, '2015-03-03', 204, 68.25),
(511, '2015-03-03', 212, 995.00);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `s` (
  `SNum` int(128) NOT NULL,
  `SName` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Age` int(86) NOT NULL,
  `Comm` double NOT NULL,
  PRIMARY KEY (`SNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `s` (`SNum`, `SName`, `City`, `Age`, `Comm`) VALUES
(101, 'Петр', 'Харьков', 28, 0.12),
(102, 'Саша', 'Киев', 24, 0.13),
(103, 'Андрей', 'Киев', 25, 0.1),
(104, 'Михаил', 'Харьков', 20, 0.11),
(107, 'Роман', 'Москва', 25, 0.15),
(108, 'Михаил', 'Харьков', 22, 0.14),
(109, 'Саша', 'Бабаи', 20, 0.14),
(111, 'Сергей', 'Киев', 20, 0.11),
(112, 'Андрей', 'Минск', 25, 0.11);


CREATE TABLE IF NOT EXISTS `c` (
  `CNum` int(255) NOT NULL,
  `CName` varchar(64) NOT NULL,
  `City` varchar(64) NOT NULL,
  `Rating` bigint(255) NOT NULL,
  `SNum` int(128) NOT NULL,
  PRIMARY KEY (`CNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `c` (`CNum`, `CName`, `City`, `Rating`, `SNum`) VALUES
(201, 'Наталья', 'Харьков', 100, 101),
(202, 'Георгий', 'Осло', 200, 108),
(203, 'Роман', 'Париж', 150, 111),
(204, 'Роман', 'Харьков', 200, 102),
(206, 'Михаил', 'Киев', 250, 101),
(207, 'Клим', 'Харьков', 200, 103),
(208, 'Саша', 'Рим', 300, 103),
(211, 'Рим', 'Киев', 300, 101),
(212, 'Иван', 'Харьков', 200, 109);
