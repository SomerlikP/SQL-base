Logowanie do Shell'a:
```sql
mysql -u root
```

<br><br>

Utworzenie bazy danych:
```sql
CREATE DATABASE DATABASE_NAME;
```

<br><br>

Użycie bazy danych:
```sql
USE DATABASE_NAME;
```

<br><br>

Utworzenie tabeli:
```sql
CREATE TABLE TABLE_NAME(id int AUTO_INCREMENT PRIMARY KEY, WARTOŚĆ1 TYPDANYCH(45));
```

<br><br>

Wyświetlenie tabeli:
```sql
SHOW TABLES;
```

<br><br>

Wyświetlanie kolumn:
```sql
SHOW COLUMNS FROM TABLE_NAME;
```

<br><br>

Wprowadzenie danych do tabeli:
```sql
INSERT INTO TABLE_NAME VALUES(null, WARTOŚĆ1, WARTOŚĆ2, WARTOŚĆ3);
```
> Wprowadzanie danych według kolejnych wartości wprowadzonych w tabeli

LUB

```sql
INSERT INTO TABLE_NAME(WARTOŚĆ1, WARTOŚĆ2) VALUES ("dane1","dane2")
```
> Dzięki tej wersji nie trzeba wpisywać ID ponieważ jest `AUTO_INCREMENT`

<br><br>

Aktualizowanie danych:
```sql
UPDATE TABLE_NAME SET WARTOŚĆ1=X WHERE id=Y;
```
> X - wartość którą chcemy dodać, Y - wartość dla którego id chcemy zmienić

<br>

Wyszukiwanie danych:
```sql
SELECT * FROM TABLE_NAME WHERE WARTOŚĆ1 LIKE "X%";
```
> Przykład imienia: Gdy WARTOŚĆ1 jest imieniem, X zastąpić 1 literą imienia

<br><br>

Srednia sprzedaz:
```sql
SELECT AVG(rekord_z_tabeli) FROM tabela;
```

<br><br>

Usuwanie tabeli:
```sql
DROP TABLE TABLE_NAME;
```

<br><br>

Usuwanie bazy danych:
```sql
DROP DATABASE DATABASE_NAME;
```

<br><br>

Dodawanie tabeli:
```sql
ALTER TABLE TABLE_NAME ADD COLUMN_NAME DATA_TYPE;
```

<br><br>

Usuwanie tabeli:
```sql
ALTER TABLE TABLE_NAME DROP;
```

<br><br>

Reset ID:
---
```sql
1. ALTER TABLE nazwaTablei MODIFY COLUMN id INT NOT NULL;
2. SET @counter = 0; UPDATE nazwaTabeli SET id = (@counter:=@counter+1);
3. ALTER TABLE nazwaTablei MODIFY COLUMN id INT NOT NULL AUTO_INCREMENT;
```

<br><br>

1. SELECT DISTINCT - pozwala wyświetlić tylko unikalne wartości dla danej kolumny:
```sql
SELECT DISTINCT kraj FROM klienci;
Wyświetli unikalne wartości kolumny kraj z tabeli klienci.
```

<br>

2. UNION - pozwala połączyć wyniki z kilku zapytań w jedną tabelę:
```sql
SELECT nazwisko FROM pracownicy
UNION
SELECT nazwisko FROM klienci;
Wyświetli nazwiska pracowników i klientów w jednej kolumnie.
```

<br>

3. GROUP BY - pozwala grupować wyniki według wartości w danej kolumnie:
```sql
SELECT kraj, COUNT(*) FROM klienci GROUP BY kraj;
Wyświetli liczbę klientów dla każdego kraju w tabeli klienci.
```

<br>

4. HAVING - pozwala na filtrowanie wyników po wykonaniu grupowania za pomocą GROUP BY:
```sql
SELECT kraj, COUNT(*) FROM klienci GROUP BY kraj HAVING COUNT(*) > 100;
Wyświetli kraje, w których jest więcej niż 100 klientów w tabeli klienci.
```

<br>

5. CASE - pozwala na wykonanie warunkowego działania w zależności od wartości kolumny:
```sql
SELECT nazwa,
CASE
  WHEN cena < 10 THEN 'Tani'
  WHEN cena >= 10 AND cena < 50 THEN 'Średni'
  ELSE 'Drogi'
END AS 'Cena'
FROM produkty;
Wyświetli nazwy produktów z dodatkową kolumną Cena, która określa, czy produkt jest tani, średni czy drogi na podstawie wartości kolumny cena w tabeli produkty.
```

<br>

6. JOIN - pozwala na łączenie wyników z dwóch lub więcej tabel według warunków:
```sql
SELECT k.nazwa AS 'Kategoria', p.nazwa AS 'Produkt'
FROM kategorie k
JOIN produkty p ON k.id = p.kategoria_id;
Wyświetli nazwy kategorii i produktów, gdzie produkty należą do odpowiedniej kategorii, korzystając z kolumny id w tabeli kategorie i kolumny kategoria_id w tabeli produkty.
```

<br>

7. EXISTS - pozwala na sprawdzenie, czy podzapytanie zwraca wynik, a następnie wykonanie akcji:
```sql
SELECT nazwa FROM produkty WHERE EXISTS (SELECT * FROM zamowienia WHERE produkty.id = zamowienia.produkt_id);
Wyświetli nazwy produktów, które występują w tabeli zamowienia na podstawie wartości kolumny produkt_id i są dostępne w tabeli produkty.
```

<br>

8. COALESCE - pozwala na wybór pierwszej wartości nie będącej NULL wśród kilku wartości:
```sql
SELECT COALESCE(nazwa, 'Brak nazwy') AS 'Nazwa' FROM produkty;
Wyświetli nazwy produktów z tabeli produkty, a jeśli nazwa produktu jest NULL, wyświetli tekst "Brak nazwy".
```

<br>

9. DATE - pozwala na formatowanie i konwertowanie dat:
```sql
SELECT DATE_FORMAT(data, '%d-%m-%Y') AS 'Data' FROM zamowienia;
Wyświetli daty w tabeli zamowienia sformatowane jako dzień-miesiąc-rok.
```
<br>

10. TRUNCATE - pozwala na usuwanie wszystkich rekordów z tabeli, ale zachowując strukturę tabeli:
```sql
STRUNCATE TABLE zamowienia;
Usunie wszystkie rekordy z tabeli zamowienia, ale zachowa strukturę tabeli. Uwaga: to polecenie nie może zostać wycofane.
```

11. OVER - pozwala na wykonanie obliczeń na grupach wyników, takich jak sumy, średnie, minima, maksima itp:
```sql
SELECT kraj, miasto, ilosc, SUM(ilosc) OVER (PARTITION BY kraj) AS 'Suma krajowa'
FROM klienci;
Wyświetli dane klientów z tabeli klienci, w tym liczbę klientów w danym mieście, a także sumę klientów w tym samym kraju w dodatkowej kolumnie Suma krajowa.
```

<br>

12. PIVOT - pozwala na przekształcenie wyników w poziomy układ tabeli:
```sql
SELECT * FROM (SELECT kraj, miasto, ilosc FROM klienci) AS t PIVOT (SUM(ilosc) FOR kraj IN ('Polska', 'Niemcy', 'Francja')) AS p;
Wyświetli dane klientów z tabeli klienci jako poziomą tabelę, gdzie wiersze reprezentują miasta, kolumny reprezentują kraje, a komórki zawierają sumę klientów z danego miasta i kraju.
```

<br>

13. FULL OUTER JOIN - pozwala na wykonanie łączenia typu FULL OUTER JOIN, które zwraca wyniki z obu tabel, nawet jeśli nie ma żadnych dopasowań:
```sql
SELECT p.nazwa, k.nazwa FROM produkty p FULL OUTER JOIN kategorie k ON p.kategoria_id = k.id;
Wyświetli nazwy produktów i kategorii z tabel produkty i kategorie. Jeśli produkt nie ma przypisanej kategorii, kolumna k.nazwa będzie miała wartość NULL, a jeśli kategoria nie ma żadnych produktów, kolumna p.nazwa będzie miała wartość NULL.
```

<br>

14. WINDOW FUNCTION - pozwala na wykonanie funkcji okna, które wykonują obliczenia na określonym zakresie wyników:
```sql
SELECT nazwa, cena, AVG(cena) OVER (PARTITION BY kategoria_id ORDER BY cena ASC ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS 'Srednia cena'
FROM produkty;
Wyświetli nazwy produktów, ceny i średnią cenę dla każdej kategorii produktów z tabeli produkty, w której średnia cena jest obliczana na podstawie ceny produktów w tej samej kategorii, uwzględniając tylko poprzedni i następny wiersz.
```

<br>

15. TRANSACTION - pozwala na kontrolowanie i zarządzanie transakcjami w bazie danych:
```sql
BEGIN TRANSACTION;
UPDATE konta SET saldo = saldo - 100 WHERE id = 1;
INSERT INTO transakcje (konto_id, kwota, typ) VALUES (1, 100, 'WYPLATA');
COMMIT TRANSACTION;
Wykonuje transakcję, w której najpierw zmniejsza saldo na koncie o 100, a następnie dodaje wpis do tabeli transakcje, reprezentujący wypłatę z konta. Wszystkie operacje są wykonywane razem jako jedna transakcja, a COMMIT TRANSACTION zatwierdza transakcję, wykonując wszystkie zmiany w bazie danych. Jeśli w trakcie transakcji wystąpi błąd lub wyjątek, można ją wycofać za pomocą ROLLBACK TRANSACTION, przywracając bazę danych do stanu przed rozpoczęciem transakcji.
```
