#### Logowanie do Shell'a

```sql
mysql -u root
```


Utworzenie bazy danych

```sql
create database DATABASE_NAME;
```


Użycie bazy danych
```sql
use DATABASE_NAME;
```


Utworzenie tabeli
```sql
create table TABLE_NAME(id int AUTO_INCREMENT PRIMARY KEY, WARTOŚĆ1 TYPDANYCH(45), WARTOŚĆ2 TYPDANYCH(45), WARTOŚĆ3 TYPDANYCH(45));
```


Wyświetlenie tabeli
```sql
show tables;
```

Wyświetlanie kolumn
```sql
show columns from TABLE_NAME;
```

Wprowadzenie danych do tabeli
```sql
insert into TABLE_NAME values(1, WARTOŚĆ1, WARTOŚĆ2, WARTOŚĆ3);
```
> Wprowadzanie danych według kolejnych wartości wprowadzonych w tabeli

LUB

```sql
insert into TABLE_NAME(WARTOŚĆ1, WARTOŚĆ2) values ("dane1","dane2")
```
> Dzięki tej wersji nie trzeba wpisywać ID ponieważ jest `AUTO_INCREMENT`

Aktualizowanie danych
```sql
update TABLE_NAME set WARTOŚĆ1=X where id=Y;
```
> X - wartość którą chcemy dodać, Y - wartość dla którego id chcemy zmienić

Wyszukiwanie danych
```sql
select * from TABLE_NAME where WARTOŚĆ1 LIKE "X%";
```
> Przykład imienia: Gdy WARTOŚĆ1 jest imieniem, X zastąpić 1 literą imienia

Usuwanie tabeli
```sql
drop table TABLE_NAME;
```

Usuwanie bazy danych
```sql
drop database DATABASE_NAME;
```

Zmienianie tabeli
```sql
alter table TABLE_NAME add COLUMN_NAME DATA_TYPE;
```


 



## ZADANIA

```
create table produkty(id int auto_increment primary key, nazwa varchar(45), jednostka varchar(15),cena float, opis TEXT);
create table zamowienie(id int auto_increment primary key, idProdukt varchar(25), ilosc float, idKlient varchar(10));
create database zamowienie(ID int auto_increment primary key, idklient INT, ilosc FLOAT, idproudkt INT);
insert into omatko  values(1, "twoja", "stara", "2115");


create table samochod(ID INT AUTO_INCREMENT PRIAMRY KEY, marka varchar(20), model varchar(20), rok varchar(4), kolor varchar(20), pojemnosc varchar (20));


select * from samochod where pojemnosc>1000;
select * from samochod where kolor like "czarny";
insert into samochod values(4, "mercedes", "baleron", "1993", "czarny", "5000");



ALTER TABLE osoby ADD samochod INT;
ALTER TABLE osoby ADD samochod INT;

select imie,nazwisko,marka,model from osoby INNER JOIN samochod ON osoby.samochod=samochod.id;
select imie,nazwisko,marka,model from osoby, samochod where osoby.samochod=samochod.id;
```
