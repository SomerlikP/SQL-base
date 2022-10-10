-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Paź 2022, 13:31
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `serwiskomputerow`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czesciserwis`
--

CREATE TABLE `czesciserwis` (
  `id` int(11) NOT NULL,
  `idZgloszenia` int(11) DEFAULT NULL,
  `idczesci` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `czesciserwis`
--

INSERT INTO `czesciserwis` (`id`, `idZgloszenia`, `idczesci`) VALUES
(1, 4, 1);

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
(1, 'formatowanie dysku', 40),
(2, 'instalacja Windows', 100),
(3, 'sprawdzenie wirusow', 40),
(4, 'zmiana pamieci ram', 50),
(5, 'czyszczenie wnetrza komputera', 50),
(6, 'instalacja progrmau', 50),
(7, 'sprawdzenie kondensatorow', 50),
(8, 'zlozenie komputera', 150),
(9, 'wymiania zasilacza', 20),
(10, 'testowanie napedow', 20),
(11, 'lutowanie portu zasilania', 70),
(12, 'sprawdzanie komputera', 50),
(13, 'rozlozenie obudoway i ponowny montaz', 100),
(14, 'ogledziny sprzetu', 25),
(15, 'Defragmentacja Dysku', 25),
(17, 'czyszczenie rejestru i usuniecie niepotrzebny', 50),
(18, 'dezinstalacja niepotrzebnych programow', 40),
(19, 'Dodawanie Pamieci RAM', 25),
(20, 'czyszczenie podzespolow komputera', 70),
(21, 'przeglad systemu operacyjnego', 30),
(22, 'wymiana Matrycy', 90),
(23, 'usuniecie niepozadane oprogramowanie', 90);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faktura`
--

CREATE TABLE `faktura` (
  `idFaktura` int(11) NOT NULL,
  `numer` varchar(45) DEFAULT NULL,
  `idZgloszenieSerwis` int(11) DEFAULT NULL,
  `koszt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `faktura`
--

INSERT INTO `faktura` (`idFaktura`, `numer`, `idZgloszenieSerwis`, `koszt`) VALUES
(1, '748/02/2021', 1, NULL),
(2, '749/02/2021', 2, NULL),
(3, '750/02/2021', 3, NULL),
(4, '751/02/2021', 4, NULL),
(5, '753/02/2021', 6, NULL),
(6, '754/02/2021', 7, NULL);

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
(1, 'Tomasz', 'Nowak', '323231', ''),
(2, 'Piotr', 'Leski', '43423', ''),
(3, 'Rafal', 'Polak', '4234235', ''),
(4, 'Artur', 'Truskawa', '876856', ''),
(5, 'Radoslaw', 'Nowaczek', '634534', ''),
(6, 'Przemyslaw', 'Gembarczyk', '111111111', ''),
(7, 'Tomasz', 'Nowak', '113111411', ''),
(8, 'Pawel', 'Kowalski', '111111111', ''),
(9, 'Rafal', 'Kwolek', '131111411', '');

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
(1, 'laptop Dell E4343', '3123123', NULL),
(2, 'laptop Dell g3423', '45esf3', NULL),
(3, 'Hp re3523', 'gdgd342sdas', NULL),
(4, 'Drukarka Epson43', '52334fs', NULL),
(5, 'Drukarka Konica B88', '534fw34', NULL),
(6, 'Komputer stacjonaerny', 'das3asd', NULL),
(7, 'Komputer stacjonarny', '423fsd3', NULL),
(8, 'Monitor  LG43', 'fsdf34fsd', NULL),
(9, 'Monitor Samsung 2432', 'fs4csd4', NULL),
(10, 'Laptop Lenovo 542', 'fsr4fsd', NULL),
(11, 'Laptop DELL Inspiron 5712', '14589ER24', NULL),
(12, 'Router Linksys FG-587', '1f/54/terR24', NULL),
(13, 'laptop DELL Inspiron 5812', '1454579ER24', NULL),
(14, 'RAM', '', 'NULL'),
(15, 'Laptop DELL Inspiron 5712', '14589EG24', 'NULL');

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
(1, 1, 11, 1, 'wlutowanie portu zasilania'),
(2, 1, 12, 1, 'sprawdzanie dzialania laptopa po lutowaniu'),
(3, 1, 13, 1, 'czynnosci konieczne do rozpoczenia lutowania'),
(4, 2, 14, 1, NULL),
(5, 3, 15, 1, 'Defragmentacja Dysku'),
(6, 3, 17, 1, 'czyszczenie rejestru i usuniecie niepotrzebnych plikow'),
(7, 3, 18, 1, 'dezinstalacja niepotrzebnych programow'),
(8, 6, 22, 1, 'wymiana Matrycy'),
(9, 7, 20, 1, 'czyszczenie podzespolow'),
(10, 7, 21, 1, 'przeglad systemu'),
(11, 7, 23, 1, 'usuniecie niepozadanie opgrogramowanie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zakupczesci`
--

CREATE TABLE `zakupczesci` (
  `idZakupczesci` int(11) NOT NULL,
  `Nazwa` varchar(45) DEFAULT NULL,
  `Ilosc` int(11) DEFAULT NULL,
  `Koszt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zakupczesci`
--

INSERT INTO `zakupczesci` (`idZakupczesci`, `Nazwa`, `Ilosc`, `Koszt`) VALUES
(1, 'Pamiec DDR4 HyperX fury 8GB', 1, 200),
(2, 'Matryca', 1, 300);

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
(1, '1/200', 6, 11, 'laptop sie nie uruchamia, nie swieci dioda', NULL),
(2, '2/200', 7, 12, 'rutore sie zawiesza', 'koszt naprawy przewyzsza wartosc sprzetu'),
(3, '3/200', 6, 13, 'Laptop bardzo wolno dziala', NULL),
(4, '4/200', 8, 14, 'Dodawanie pamieci RAM', 'NULL'),
(5, '5/200', 9, 15, 'przeczyszczenie Laptopa', 'NULL'),
(6, '6/200', 6, 11, 'wymiana matrycy', 'wymieniono matryca'),
(7, '7/200', 9, 11, 'posiada wirusy', 'usunieto wirusa');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `czesciserwis`
--
ALTER TABLE `czesciserwis`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`idZakupczesci`);

--
-- Indeksy dla tabeli `zgloszeniaserwis`
--
ALTER TABLE `zgloszeniaserwis`
  ADD PRIMARY KEY (`idZgloszeniaSerwis`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `czesciserwis`
--
ALTER TABLE `czesciserwis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `czynnosciserwisowe`
--
ALTER TABLE `czynnosciserwisowe`
  MODIFY `idCzynnosciSerwisowe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT dla tabeli `faktura`
--
ALTER TABLE `faktura`
  MODIFY `idFaktura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `idZakupczesci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `zgloszeniaserwis`
--
ALTER TABLE `zgloszeniaserwis`
  MODIFY `idZgloszeniaSerwis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
