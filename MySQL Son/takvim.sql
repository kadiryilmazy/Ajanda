-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 17 Haz 2021, 18:20:07
-- Sunucu sürümü: 5.7.31
-- PHP Sürümü: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `takvim`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `takvim`
--

DROP TABLE IF EXISTS `takvim`;
CREATE TABLE IF NOT EXISTS `takvim` (
  `hatno` int(11) NOT NULL,
  `hatzaman` datetime NOT NULL,
  `hatgecmismi` tinyint(1) NOT NULL,
  `hatnot` text NOT NULL,
  PRIMARY KEY (`hatno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `takvim`
--

INSERT INTO `takvim` (`hatno`, `hatzaman`, `hatgecmismi`, `hatnot`) VALUES
(0, '2021-06-09 13:00:00', 1, ' Matematik Ara Sinav '),
(1, '2021-06-12 13:00:00', 1, ' Kalite Guvencesi Final       '),
(2, '2021-06-13 10:00:00', 1, ' Turk Dili Final   '),
(3, '2021-06-14 13:00:00', 1, ' Nesne Tabanli Programlama Final '),
(4, '2021-06-15 15:00:00', 1, ' Ingilizce Final    '),
(5, '2021-06-18 16:00:00', 0, ' Matematik Final '),
(6, '2021-06-20 16:00:00', 0, ' Inkilap Final '),
(7, '2021-06-21 13:00:00', 0, ' Yazilim Mimarileri Final                        '),
(8, '2021-06-22 13:00:00', 0, ' Veri Tabani Final  '),
(9, '2021-06-23 11:00:00', 0, ' Gorsel Programlama Final                               '),
(10, '2021-07-09 00:00:01', 0, ' Staj Basvuru Son ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
