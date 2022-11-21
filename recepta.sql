-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Kwi 2022, 15:42
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `recepta`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekarz`
--

CREATE TABLE `lekarz` (
  `idlekarz` int(11) NOT NULL,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `lekarz`
--

INSERT INTO `lekarz` (`idlekarz`, `imie`, `nazwisko`) VALUES
(1, 'Artur', 'Nowak'),
(2, 'Piotr', 'Podolski'),
(3, 'Piotr', 'Kulak'),
(4, 'Rafał ', 'Lisiecki');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `leki`
--

CREATE TABLE `leki` (
  `idLeki` int(11) NOT NULL,
  `nazwa` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `leki`
--

INSERT INTO `leki` (`idLeki`, `nazwa`) VALUES
(1, 'biseptol'),
(2, 'abaktal'),
(3, 'aprokam'),
(4, 'zerbaxa'),
(5, 'renicin'),
(6, 'mupina');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pacjent`
--

CREATE TABLE `pacjent` (
  `idpacjent` int(11) NOT NULL,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL,
  `pesel` varchar(11) NOT NULL,
  `ulica` varchar(45) DEFAULT NULL,
  `kodPocztowy` varchar(45) DEFAULT NULL,
  `miejscowość` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pacjent`
--

INSERT INTO `pacjent` (`idpacjent`, `imie`, `nazwisko`, `pesel`, `ulica`, `kodPocztowy`, `miejscowość`) VALUES
(1, 'Grzegorz', 'Nowak', '11111111111', 'Wolna 12', '11-111', 'Dom'),
(2, 'Piotr', 'Grzegorzewski', '22222222222', 'Szybka 5', '22-222', 'Leśna');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `recepta`
--

CREATE TABLE `recepta` (
  `idrecepta` int(11) NOT NULL,
  `numer` varchar(45) NOT NULL,
  `kod` int(11) NOT NULL,
  `pacjent_idpacjent` int(11) NOT NULL,
  `lekarz_idlekarz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `recepta`
--

INSERT INTO `recepta` (`idrecepta`, `numer`, `kod`, `pacjent_idpacjent`, `lekarz_idlekarz`) VALUES
(1, '123', 4258, 1, 2),
(2, '345', 5847, 1, 4),
(3, '456', 8524, 2, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `receptaleki`
--

CREATE TABLE `receptaleki` (
  `recepta_idrecepta` int(11) NOT NULL,
  `Leki_idLeki` int(11) NOT NULL,
  `dawkowanie` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `receptaleki`
--

INSERT INTO `receptaleki` (`recepta_idrecepta`, `Leki_idLeki`, `dawkowanie`) VALUES
(1, 1, '1 raz dziennie'),
(1, 2, '2 razy dziennie'),
(1, 3, '2 razy dziennie'),
(2, 1, '2 raz dziennie'),
(2, 4, '1 raz dziennie'),
(2, 5, '3 razy dziennie'),
(3, 1, '2 razy dziennie'),
(3, 6, '1 raz dziennie');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `lekarz`
--
ALTER TABLE `lekarz`
  ADD PRIMARY KEY (`idlekarz`);

--
-- Indeksy dla tabeli `leki`
--
ALTER TABLE `leki`
  ADD PRIMARY KEY (`idLeki`);

--
-- Indeksy dla tabeli `pacjent`
--
ALTER TABLE `pacjent`
  ADD PRIMARY KEY (`idpacjent`);

--
-- Indeksy dla tabeli `recepta`
--
ALTER TABLE `recepta`
  ADD PRIMARY KEY (`idrecepta`,`pacjent_idpacjent`,`lekarz_idlekarz`),
  ADD KEY `fk_recepta_pacjent_idx` (`pacjent_idpacjent`),
  ADD KEY `fk_recepta_lekarz1_idx` (`lekarz_idlekarz`);

--
-- Indeksy dla tabeli `receptaleki`
--
ALTER TABLE `receptaleki`
  ADD PRIMARY KEY (`recepta_idrecepta`,`Leki_idLeki`),
  ADD KEY `fk_recepta_has_Leki_Leki1_idx` (`Leki_idLeki`),
  ADD KEY `fk_recepta_has_Leki_recepta1_idx` (`recepta_idrecepta`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `lekarz`
--
ALTER TABLE `lekarz`
  MODIFY `idlekarz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `leki`
--
ALTER TABLE `leki`
  MODIFY `idLeki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `pacjent`
--
ALTER TABLE `pacjent`
  MODIFY `idpacjent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `recepta`
--
ALTER TABLE `recepta`
  MODIFY `idrecepta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `recepta`
--
ALTER TABLE `recepta`
  ADD CONSTRAINT `fk_recepta_lekarz1` FOREIGN KEY (`lekarz_idlekarz`) REFERENCES `lekarz` (`idlekarz`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_recepta_pacjent` FOREIGN KEY (`pacjent_idpacjent`) REFERENCES `pacjent` (`idpacjent`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `receptaleki`
--
ALTER TABLE `receptaleki`
  ADD CONSTRAINT `fk_recepta_has_Leki_Leki1` FOREIGN KEY (`Leki_idLeki`) REFERENCES `leki` (`idLeki`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_recepta_has_Leki_recepta1` FOREIGN KEY (`recepta_idrecepta`) REFERENCES `recepta` (`idrecepta`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
