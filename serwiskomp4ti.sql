-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Paź 2022, 07:52
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `serwiskomp4ti`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czynnosciserwisowe`
--

CREATE TABLE `czynnosciserwisowe` (
  `idCzynnosciSerwisowe` int(11) NOT NULL,
  `nazwa` varchar(45) DEFAULT NULL,
  `koszt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `czynnosciserwisowe`
--

INSERT INTO `czynnosciserwisowe` (`idCzynnosciSerwisowe`, `nazwa`, `koszt`) VALUES
(1, 'odkurzanie komputera', 40),
(2, 'instalacja Windows', 70),
(3, 'formatowanie dysku', 60),
(4, 'testowanie napedow', 30),
(5, 'wymiania zasilacza', 60),
(6, 'instalacja oprogramowania', 80),
(7, 'naprawa kondensatora', 80),
(8, 'wymiana RAM', 50),
(9, 'czyszczenie dysz drukarki', 40),
(10, 'testowanie wydajnosci', 65),
(11, 'lutowanie portu ladowania', 70),
(12, 'sprawdzanie komputera', 50),
(13, 'rozlozenie obudowy i ponowny montaz', 100),
(14, 'ogledziny sprzetu', 25),
(15, 'defragmentacja dysku', 25),
(16, 'czyszczenie rejestru i usuniecie niepotrzebny', 50),
(17, 'deinstalacja programow', 40),
(18, 'dodanie pamieci RAM', 25),
(19, 'czyszczenie podzespolow', 70),
(20, 'przeglad systemu', 30);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faktura`
--

CREATE TABLE `faktura` (
  `idFaktura` int(11) NOT NULL,
  `numer` varchar(45) DEFAULT NULL,
  `idZgloszenieSerwis` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `faktura`
--

INSERT INTO `faktura` (`idFaktura`, `numer`, `idZgloszenieSerwis`) VALUES
(1, '748/02/2021', 1),
(2, '749/02/2021', 2),
(3, '750/02/2021', 3),
(4, '751/02/2021', 4),
(5, '752/02/2021', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `idklient` int(11) NOT NULL,
  `imie` varchar(45) DEFAULT NULL,
  `nazwisko` varchar(45) DEFAULT NULL,
  `telefon` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`idklient`, `imie`, `nazwisko`, `telefon`, `email`) VALUES
(1, 'Kacper', 'Buchta', '231231231', ''),
(2, 'Lukasz', 'Mankowski', '449922', ''),
(3, 'Wojciech', 'Matyszewski', '9838231', ''),
(4, 'Alan', 'Matysek', '8822313', ''),
(5, 'Aleksander', 'Calus', '878723', ''),
(6, 'Przemyslaw', 'Gembalczyk', '111111111111', ''),
(7, 'Tomasz', 'Nowak', '113111411', ''),
(8, 'Pawel', 'Kowalski', '111f11111', ' '),
(9, 'Rafal', 'Kwolek', '1131111411', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sprzet`
--

CREATE TABLE `sprzet` (
  `idSprzet` int(11) NOT NULL,
  `nazwa` varchar(45) DEFAULT NULL,
  `numerSeryjny` varchar(45) DEFAULT NULL,
  `uwagi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `sprzet`
--

INSERT INTO `sprzet` (`idSprzet`, `nazwa`, `numerSeryjny`, `uwagi`) VALUES
(1, 'laptop Dell E4343', '423432', NULL),
(2, 'laptop t33 lenovo', 'dfsdfsdf', NULL),
(3, 'drukarka hp 4342', 'gqerg45sfd', NULL),
(4, 'Drukarka Konica B88', 'fsdfsd3', NULL),
(5, 'Laptop Lenovo 542', 'gdfgd4534f', NULL),
(6, 'Monitor Samsung 2432', 'tegdfe43', NULL),
(7, 'Monitor  LG43', 'gdfvdfs4', NULL),
(8, 'Hp re3523', 'tfsa4t3', NULL),
(9, 'Drukarka Epson43', 'gerg3423f', NULL),
(10, 'skaner Epson v3', 'fsdr4', NULL),
(11, 'laptop Dell Inspiron 5712', '14589ER24', NULL),
(12, ' router Linksys FG-587', '1f/54/ter/R24', NULL),
(13, 'laptop Dell Inspiron 5812', '1454579ER24', NULL),
(14, 'komputer stacjonarny', NULL, NULL),
(15, 'laptop DELL inspiron 5712', '14589EG24', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wykonanieserwisu`
--

CREATE TABLE `wykonanieserwisu` (
  `idWykonanieSerwisu` int(11) NOT NULL,
  `idZgloszeniaSerwis` int(11) DEFAULT NULL,
  `idCZynnosciSerwisowe` int(11) DEFAULT NULL,
  `czasIlosc` int(11) DEFAULT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wykonanieserwisu`
--

INSERT INTO `wykonanieserwisu` (`idWykonanieSerwisu`, `idZgloszeniaSerwis`, `idCZynnosciSerwisowe`, `czasIlosc`, `opis`) VALUES
(1, 1, 11, 1, NULL),
(2, 1, 12, 1, NULL),
(3, 1, 13, 1, NULL),
(5, 2, 14, 1, NULL),
(6, 3, 15, 1, NULL),
(7, 3, 16, 1, NULL),
(8, 3, 17, 1, NULL),
(9, 4, 18, 1, NULL),
(10, 5, 19, 1, NULL),
(11, 5, 20, 1, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zakupczesci`
--

CREATE TABLE `zakupczesci` (
  `idZakupCzesci` int(11) NOT NULL,
  `nazwa` varchar(45) DEFAULT NULL,
  `ilosc` int(11) DEFAULT NULL,
  `koszt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zakupczesci`
--

INSERT INTO `zakupczesci` (`idZakupCzesci`, `nazwa`, `ilosc`, `koszt`) VALUES
(1, 'Pamiec DDR4 HyperX Fury 8GB', 1, 200);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zgloszeniaserwis`
--

CREATE TABLE `zgloszeniaserwis` (
  `idZgloszeniaSerwis` int(11) NOT NULL,
  `numerZgloszenia` varchar(45) DEFAULT NULL,
  `idKlient` int(11) DEFAULT NULL,
  `idSprzet` int(11) DEFAULT NULL,
  `opisUsterki` text DEFAULT NULL,
  `opisRozwiazania` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zgloszeniaserwis`
--

INSERT INTO `zgloszeniaserwis` (`idZgloszeniaSerwis`, `numerZgloszenia`, `idKlient`, `idSprzet`, `opisUsterki`, `opisRozwiazania`) VALUES
(1, '1/2022', 6, 11, 'nie uruchamia si?, nie ?wieci dioda ?adowania', 'lutowanie portu zasilania'),
(2, '2/2022', 7, 12, 'zawiesza sie router', 'koszt naprawy przewyzsza wartosc sprzetu'),
(3, '3/2022', 6, 13, 'bardzo wolno dziala', 'wykonano czyszczenie'),
(4, '4/2022', 8, 14, 'Dolozenie pamieci ram', NULL),
(5, '5/2022', 9, 15, 'Czyszczenie laptopa', 'Laptop przeczyszczony');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `czynnosciserwisowe`
--
ALTER TABLE `czynnosciserwisowe`
  ADD PRIMARY KEY (`idCzynnosciSerwisowe`);

--
-- Indeksy dla tabeli `faktura`
--
ALTER TABLE `faktura`
  ADD PRIMARY KEY (`idFaktura`);

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`idklient`);

--
-- Indeksy dla tabeli `sprzet`
--
ALTER TABLE `sprzet`
  ADD PRIMARY KEY (`idSprzet`);

--
-- Indeksy dla tabeli `wykonanieserwisu`
--
ALTER TABLE `wykonanieserwisu`
  ADD PRIMARY KEY (`idWykonanieSerwisu`);

--
-- Indeksy dla tabeli `zakupczesci`
--
ALTER TABLE `zakupczesci`
  ADD PRIMARY KEY (`idZakupCzesci`);

--
-- Indeksy dla tabeli `zgloszeniaserwis`
--
ALTER TABLE `zgloszeniaserwis`
  ADD PRIMARY KEY (`idZgloszeniaSerwis`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `czynnosciserwisowe`
--
ALTER TABLE `czynnosciserwisowe`
  MODIFY `idCzynnosciSerwisowe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `faktura`
--
ALTER TABLE `faktura`
  MODIFY `idFaktura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `idklient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `sprzet`
--
ALTER TABLE `sprzet`
  MODIFY `idSprzet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `wykonanieserwisu`
--
ALTER TABLE `wykonanieserwisu`
  MODIFY `idWykonanieSerwisu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `zakupczesci`
--
ALTER TABLE `zakupczesci`
  MODIFY `idZakupCzesci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `zgloszeniaserwis`
--
ALTER TABLE `zgloszeniaserwis`
  MODIFY `idZgloszeniaSerwis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
