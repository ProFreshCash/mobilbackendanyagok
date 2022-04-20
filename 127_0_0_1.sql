-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Ápr 20. 23:25
-- Kiszolgáló verziója: 10.4.14-MariaDB
-- PHP verzió: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `anyag_fajtaja` int(11) NOT NULL,
  `anyag_merete` text COLLATE utf8_hungarian_ci NOT NULL,
  `anyag_ar` int(11) NOT NULL,
  `anyag_kep` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `anyag`
--

INSERT INTO `anyag` (`anyag_id`, `anyag_neve`, `anyag_leiras`, `anyag_fajtaja`, `anyag_merete`, `anyag_ar`, `anyag_kep`) VALUES
(1, 'Gerenda', '\r\n- Lucfenyőből\r\n- Fűrészelt\r\n- Nedvességtartalma 18% +/-2% PEFC-tanúsítvány\r\n\r\nA gerenda széles körű felhasználást tesz lehetővé minden olyan munkához, ami minőségi, stabil faanyagot igényel. Natúr felületű, amelynek kezelése a felhasználást követően ajánlott.\r\n\r\nEttől eltérő hosszméretek külön megállapodás szerint. ', 1, '10x15x500 cm', 15000, 'gerenda.jpg'),
(2, 'Léc', 'Szlovák importból származó légszáraz, egyenes vágású, méretpontos Bramac léc hibátlan minőségben.\r\n\r\nSzármazása: \r\n\r\n•Északi termőhely (Komi, Ural régió) \r\n•Közép-európai termőhely (Magyarország, Szlovákia, Románia, Ukrajna)\r\n\r\nElőnyök:\r\n\r\n•Természetes alapanyag, felhasználása környezetkímélő \r\n•Dekoratív, esztétikus, környezetének kellemes hangulatot ad \r\n•Könnyen megmunkálható \r\n•Kemény \r\n•Víznek kitett helyen is jól felhasználható \r\n•Káros anyag kibocsátás mentes\r\n•Északi eredet esetén kiemelkedően kedvező struktúra, kedvező mechanikai - fizikai jellemzők', 1, '5x5x400 cm', 2400, 'léc.jpg'),
(3, 'Deszka', '  A gyalult deszka olyan faanyag, ami négy oldalán meg van gyalulva (még az élek is). A gyalult deszka kiválóan alkalmas paraszt mennyezetnek, párkánynak, kerítésnek, homlokzatokhoz, de akár asztalokhoz, vagy székekhez is. A gyalult deszka kültéren való felhasználásakor érdemes a felületet favédőszerrel kezelni, a fa megóvása érdekében. A nálunk kapható gyalult deszka termékeket minden esetben válogatott faanyagból készülnek.  Erős, szép szálú és univerzális felhasználású fenyő deszka.', 1, '2,5x15x600 cm', 4500, 'deszka.jpg'),
(4, 'Putnoki kisméretű tömör tégla', ' Nagyszilárdságú, kisméretű tömör tégla.\r\n\r\nAlkalmazási előnyök: \r\n\r\n•Kiváló nyomószilárdság, 40 N/mm2 \r\n\r\n•Ideális kifejezetten nagy teherigénybevételű oszlopokhoz, falakhoz\r\n\r\n•Hagyományos falazási technológia\r\n\r\n•Ideális kiegészítő szerkezetekhez\r\n\r\n•Nem éghető (A1)\r\n\r\nAlkalmazható kötőanyag: hagyományos falazóhabarcs.\r\nKiegészítő falszerkezetek építésére, vakolva időjárásálló, kerámia tömör tégla\r\n', 4, '6,5x12x25 cm', 150, 'kistomtegla.jpg'),
(5, 'B 30-as blokktégla', ' Fokozott hőtechnikai követelmények nélküli hagyományos falazótégla. Külső és belső teherhordó falak építésére, 30 cm-es falvastagsággal építve alkalmazható.\r\n\r\nNyomószilárdság (átlag érték): 14 N/mm2\r\n\r\nCsomagolás: 168 db/raklap\r\n\r\nAnyagszükséglet: 35 db/m2, 116 db/m3', 4, '30x17,5x14 cm', 250, 'b30.jpg'),
(6, 'Pápateszéri Bakonytherm Kettősméretű-soklyukú falazóblokk ', '\r\n\r\nSúly: 3,7 kg/db \r\n\r\nKiszerelés: 252 db/raklap', 4, '25x12x14 cm', 135, 'papa.jpg'),
(7, 'Zalakerámia Marmit falicsempe', '\r\n\r\nMegnevezés: falicsempe\r\n\r\nSzíne: bézs\r\n\r\nFelülete: fényes\r\n\r\nAlkalmazható: beltér\r\n\r\nDobozolás: \r\n-30 db/doboz\r\n-1,5 m2/doboz\r\n-17,3 kg/doboz', 2, '20x25 cm', 2700, 'marmitcsempe.jpg'),
(8, 'Cersanit Indira dekorcsempe', '\r\n\r\nKiszerelés:\r\n1,08m2/cs ', 2, '20x60 cm', 4320, 'cersanit.jpg'),
(9, 'Lépcsőlap KRONOS GRES, matt,\r\nfagyálló, kültéri, K300\r\n', '\r\n\r\nSzín és mintázat: bézs,gránitőrleményes mintával\r\n\r\nTulajdonságok:\r\n- kültéri \r\n- matt \r\n- fagyálló \r\n \r\nKiszerelés:\r\n1,62m2/csomag\r\n5680ft/m2', 2, '30x30x0,7 cm', 5860, 'kronos.jpg'),
(10, 'C16/20-X0v(H)-24-F2 mixer beton', '\r\n\r\nTulajdonságok: \r\n\r\nNincs korróziós vagy kimaródási kockázat.\r\nA korróziónak vagy rozsdásodásnak nincs kockázata.\r\nKáros környezeti hatás nem éri a szilárdsági szempontból alárendelt betont.\r\nKáros környezeti hatás nem éri a betont. Karbonátosodáson kívül egyéb káros környezeti hatás nem éri a vasalt betont. ', 3, 'Adott rendelt mennyiség', 24000, 'noimage.jpg'),
(11, 'C20/25-XC1-24-F2 mixer beton', '\r\n\r\nTulajdonságok:\r\n\r\nKarbonátosodás okozta korrózió.\r\n\r\nSzáraz vagy tartósan nedves.\r\nNedves, ritkán száraz.\r\nMérséklten nedves.\r\nVáltakozva nedves és száraz.', 3, 'Adott rendelt mennyiség', 25000, 'noimage.jpg'),
(12, 'C30/37-XC2-24-F2 mixer beton', '\r\n\r\nTulajdonságok:\r\n\r\nKarbonátosodás okozta korrózió.\r\n\r\nSzáraz vagy tartósan nedves.\r\nNedves, ritkán száraz.\r\nMérséklten nedves.\r\nVáltakozva nedves és száraz.', 3, 'Adott rendelt mennyiség', 27000, 'noimage.jpg');

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
  `rendelt_termek_fajtaja` int(11) NOT NULL,
  `rendelt_termek_neve` text COLLATE utf8_hungarian_ci NOT NULL,
  `rendeles_mennyisege` int(11) NOT NULL,
  `allapot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rendeles`
--

INSERT INTO `rendeles` (`rendeles_id`, `rendelo_neve`, `rendelt_termek_fajtaja`, `rendelt_termek_neve`, `rendeles_mennyisege`, `allapot`) VALUES
(1, 'Sprint Elek', 1, 'Deszka', 15, 1),
(2, 'Igen Nem', 1, 'Léc', 25, 2),
(3, 'Matuka', 4, 'Tégla', 206, 1),
(14, 'Isten', 2, 'Cersanit Indira dekorcsempe', 20, 0),
(15, 'Istenes Bence', 1, 'Deszka', 20, 0),
(16, 'Sanyi', 1, 'Deszka', 25, 0),
(17, 'Peti', 2, 'Lépcsőlap KRONOS GRES, matt,\r\nfagyálló, kültéri, K300\r\n', 150, 2),
(18, 'FATJESUS', 1, 'Deszka', 15, 1),
(19, 'FATASS', 1, 'Léc', 12, 0),
(20, 'sda', 1, 'Deszka', 65, 0);

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
  ADD PRIMARY KEY (`anyag_id`),
  ADD KEY `anyag_fajtaja` (`anyag_fajtaja`);

--
-- A tábla indexei `anyag_fajtak`
--
ALTER TABLE `anyag_fajtak`
  ADD PRIMARY KEY (`anyag_fajta_id`);

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`rendeles_id`),
  ADD KEY `rendelt_termek_fajtaja` (`rendelt_termek_fajtaja`);

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
  MODIFY `anyag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT a táblához `anyag_fajtak`
--
ALTER TABLE `anyag_fajtak`
  MODIFY `anyag_fajta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `rendeles`
--
ALTER TABLE `rendeles`
  MODIFY `rendeles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `anyag_fajtak`
--
ALTER TABLE `anyag_fajtak`
  ADD CONSTRAINT `anyag_fajtak_ibfk_1` FOREIGN KEY (`anyag_fajta_id`) REFERENCES `anyag` (`anyag_fajtaja`);

--
-- Megkötések a táblához `rendeles`
--
ALTER TABLE `rendeles`
  ADD CONSTRAINT `rendeles_ibfk_1` FOREIGN KEY (`rendelt_termek_fajtaja`) REFERENCES `anyag_fajtak` (`anyag_fajta_id`);

--
-- Megkötések a táblához `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
