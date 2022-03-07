-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Feb 24. 13:41
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `anyagok`
--
CREATE DATABASE IF NOT EXISTS `anyagok` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `anyagok`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `anyag`
--

CREATE TABLE `anyag` (
  `anyag_id` int(11) NOT NULL,
  `anyag_neve` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `anyag_leiras` text COLLATE utf8_hungarian_ci NOT NULL,
  `anyag_fajtaja` text COLLATE utf8_hungarian_ci NOT NULL,
  `anyag_merete` text COLLATE utf8_hungarian_ci NOT NULL,
  `anyag_ar` int(11) NOT NULL,
  `anyag_kep` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `anyag`
--

INSERT INTO `anyag` (`anyag_id`, `anyag_neve`, `anyag_leiras`, `anyag_fajtaja`, `anyag_merete`, `anyag_ar`, `anyag_kep`) VALUES
(1, 'Gerenda', '      Lucfenyőből     Fűrészelt     Nedvességtartalma 18% +/-2%     PEFC-tanúsítvány  A gerenda széles körű felhasználást tesz lehetővé minden olyan munkához, ami minőségi, stabil faanyagot igényel. Natúr felületű, amelynek kezelése a felhasználást követően ajánlott.', 'Fa', '9,8x9,8x200 cm', 9380, 'gerenda.jpg'),
(2, 'Léc', 'Szlovák importból származó légszáraz, egyenes vágású, méretpontos Bramac léc hibátlan minőségben. ', '1', '4,5x6,8x360 cm', 3990, 'léc.jpg'),
(3, 'Deszka', 'A gyalult deszka olyan faanyag, ami négy oldalán meg van gyalulva (még az élek is). A gyalult deszka kiválóan alkalmas paraszt mennyezetnek, párkánynak, kerítésnek, homlokzatokhoz, de akár asztalokhoz, vagy székekhez is. A gyalult deszka kültéren való felhasználásakor érdemes a felületet favédőszerrel kezelni, a fa megóvása érdekében (webáruházunkban ez is elérhető). A nálunk kapható gyalult deszka termékeket minden esetben válogatott faanyagból készülnek.  Erős, szép szálú és univerzális felhasználású fenyő deszka.', '1', '1,9x1,9x400 cm', 12990, 'deszka.jpg'),
(4, 'Kisméretű tömör tégla', 'Nagyszilárdságú, kisméretű tömör tégla. Alkalmazási előnyök: • Kiváló nyomószilárdság, 40 N/mm2 • Ideális kifejezetten nagy teherigénybevételű oszlopokhoz, falakhoz • Hagyományos falazási technológia • Ideális kiegészítő szerkezetekhez • Nem éghető (A1) Alkalmazható kötőanyag: hagyományos falazóhabarcs. ', '4', '6,5x12x25 cm', 180, 'kistomtegla.jpg'),
(5, 'B 30-as blokktégla', 'Fokozott hőtechnikai követelmények nélküli hagyományos falazótégla. Külső és belső teherhordó falak építésére, 30 cm-es falvastagsággal építve alkalmazható.', '4', '30x17,5x14 cm', 235, 'b30.jpg'),
(6, 'Kettősméretű kevéslyukú tégla', '', '4', '', 0, ''),
(7, 'Marmit falicsempe', '', '2', '', 0, ''),
(8, 'Indira dekorcsempe', '', '2', '', 0, ''),
(9, 'Kronos gres lépcsőlap', '', '2', '', 0, ''),
(10, 'C16/20-X0v(H)-24-F2 mixer beton', '', '3', '', 0, ''),
(11, 'C20/25-XC1-24-F2 mixer beton', '', '3', '', 0, ''),
(12, 'C30/37-XC2-24-F2 mixer beton', 'leírás', '3', 'méret', 0, 'kép'),
(22, 'Tégal', 'Ez egy tégla', 'tégla', '20x20x135 cm', 354, 'tegla.jpg'),
(23, '*8', '260+62+', '598494', '5894949849', 2569089, 'tegla.jpg'),
(24, 'alma', '1111', '111111', '11111111111', 111111111, 'tegla.jpg'),
(25, 'körte', '111111', '1111', '111', 1111, 'tegla.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `anyag_fajtak`
--

CREATE TABLE `anyag_fajtak` (
  `anyag_fajta_id` int(11) NOT NULL,
  `anyag_fajtaja` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `anyag_fajtak`
--

INSERT INTO `anyag_fajtak` (`anyag_fajta_id`, `anyag_fajtaja`) VALUES
(1, 'Fa'),
(2, 'Csempe'),
(3, 'Mixer beton'),
(4, 'Tégla');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendeles`
--

CREATE TABLE `rendeles` (
  `rendeles_id` int(11) NOT NULL,
  `rendelo_neve` text COLLATE utf8_hungarian_ci NOT NULL,
  `rendelt_termek_fajtaja` text COLLATE utf8_hungarian_ci NOT NULL,
  `rendelt_termek_neve` text COLLATE utf8_hungarian_ci NOT NULL,
  `rendeles_mennyisege` int(11) NOT NULL,
  `allapot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rendeles`
--

INSERT INTO `rendeles` (`rendeles_id`, `rendelo_neve`, `rendelt_termek_fajtaja`, `rendelt_termek_neve`, `rendeles_mennyisege`, `allapot`) VALUES
(1, 'Sprint Elek', 'Fa', 'Deszka', 15, 1),
(2, 'Igen Nem', 'Fa', 'Léc', 25, 0),
(3, 'Matuka', 'Tégla', 'Tégla', 206, 0),
(4, 'Mecqueen', 'Csempe', 'szilánkos darabos törött csempe', 56, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `anyag`
--
ALTER TABLE `anyag`
  ADD PRIMARY KEY (`anyag_id`);

--
-- A tábla indexei `anyag_fajtak`
--
ALTER TABLE `anyag_fajtak`
  ADD PRIMARY KEY (`anyag_fajta_id`);

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`rendeles_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `anyag`
--
ALTER TABLE `anyag`
  MODIFY `anyag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT a táblához `anyag_fajtak`
--
ALTER TABLE `anyag_fajtak`
  MODIFY `anyag_fajta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `rendeles`
--
ALTER TABLE `rendeles`
  MODIFY `rendeles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
