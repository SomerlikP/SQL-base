-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Wrz 2022, 11:34
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

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

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faktura`
--

CREATE TABLE `faktura` (
  `idFaktura` int(11) NOT NULL,
  `numer` varchar(45) DEFAULT NULL,
  `idZgloszenieSerwis` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `idklient` int(11) NOT NULL,
  `imie` varchar(45) DEFAULT NULL,
  `nazwisko` varchar(45) DEFAULT NULL,
  `telefon` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`idklient`, `imie`, `nazwisko`, `telefon`) VALUES
(1, 'Kacper', 'Buchta', '231231231'),
(2, 'Lukasz', 'Mankowski', '449922'),
(3, 'Wojciech', 'Matyszewski', '9838231'),
(4, 'Alan', 'Matysek', '8822313'),
(5, 'Aleksander', 'Calus', '878723');

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
(10, 'skaner Epson v3', 'fsdr4', NULL);

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
  MODIFY `idCzynnosciSerwisowe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `faktura`
--
ALTER TABLE `faktura`
  MODIFY `idFaktura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `idklient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `sprzet`
--
ALTER TABLE `sprzet`
  MODIFY `idSprzet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `wykonanieserwisu`
--
ALTER TABLE `wykonanieserwisu`
  MODIFY `idWykonanieSerwisu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `zgloszeniaserwis`
--
ALTER TABLE `zgloszeniaserwis`
  MODIFY `idZgloszeniaSerwis` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
