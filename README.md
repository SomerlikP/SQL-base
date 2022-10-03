Logowanie do Shell'a:
```sql
mysql -u root
```


Utworzenie bazy danych:
```sql
create database DATABASE_NAME;
```


Użycie bazy danych:
```sql
use DATABASE_NAME;
```


Utworzenie tabeli:
```sql
create table TABLE_NAME(id int AUTO_INCREMENT PRIMARY KEY, WARTOŚĆ1 TYPDANYCH(45), WARTOŚĆ2 TYPDANYCH(45), WARTOŚĆ3 TYPDANYCH(45));
```


Wyświetlenie tabeli:
```sql
show tables;
```

Wyświetlanie kolumn:
```sql
show columns from TABLE_NAME;
```

Wprowadzenie danych do tabeli:
```sql
insert into TABLE_NAME values(1, WARTOŚĆ1, WARTOŚĆ2, WARTOŚĆ3);
```
> Wprowadzanie danych według kolejnych wartości wprowadzonych w tabeli

LUB

```sql
insert into TABLE_NAME(WARTOŚĆ1, WARTOŚĆ2) values ("dane1","dane2")
```
> Dzięki tej wersji nie trzeba wpisywać ID ponieważ jest `AUTO_INCREMENT`

Aktualizowanie danych:
```sql
update TABLE_NAME set WARTOŚĆ1=X where id=Y;
```
> X - wartość którą chcemy dodać, Y - wartość dla którego id chcemy zmienić

Wyszukiwanie danych:
```sql
select * from TABLE_NAME where WARTOŚĆ1 LIKE "X%";
```
> Przykład imienia: Gdy WARTOŚĆ1 jest imieniem, X zastąpić 1 literą imienia

Srednia sprzedaz:
```sql
select avg(rekord_z_tabeli) from tabela;
```

Usuwanie tabeli:
```sql
drop table TABLE_NAME;
```

Usuwanie bazy danych:
```sql
drop database DATABASE_NAME;
```

Dodawanie tabeli:
```sql
alter table TABLE_NAME add COLUMN_NAME DATA_TYPE;
```

usuwanie tabeli:
```sql
???
```



LINK - http://www.galaxy.agh.edu.pl/~pamalino/programowanie/mysql/index.php
