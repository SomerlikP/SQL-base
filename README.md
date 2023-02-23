Logowanie do Shell'a:
```sql
mysql -u root
```

<br><br>

Utworzenie bazy danych:
```sql
create database DATABASE_NAME;
```

<br><br>

Użycie bazy danych:
```sql
use DATABASE_NAME;
```

<br><br>

Utworzenie tabeli:
```sql
create table TABLE_NAME(id int AUTO_INCREMENT PRIMARY KEY, WARTOŚĆ1 TYPDANYCH(45));
```

<br><br>

Wyświetlenie tabeli:
```sql
show tables;
```

<br><br>

Wyświetlanie kolumn:
```sql
show columns from TABLE_NAME;
```

<br><br>

Wprowadzenie danych do tabeli:
```sql
insert into TABLE_NAME values(null, WARTOŚĆ1, WARTOŚĆ2, WARTOŚĆ3);
```
> Wprowadzanie danych według kolejnych wartości wprowadzonych w tabeli

LUB

```sql
insert into TABLE_NAME(WARTOŚĆ1, WARTOŚĆ2) values ("dane1","dane2")
```
> Dzięki tej wersji nie trzeba wpisywać ID ponieważ jest `AUTO_INCREMENT`

<br><br>

Aktualizowanie danych:
```sql
update TABLE_NAME set WARTOŚĆ1=X where id=Y;
```
> X - wartość którą chcemy dodać, Y - wartość dla którego id chcemy zmienić

<br>

Wyszukiwanie danych:
```sql
select * from TABLE_NAME where WARTOŚĆ1 LIKE "X%";
```
> Przykład imienia: Gdy WARTOŚĆ1 jest imieniem, X zastąpić 1 literą imienia

<br><br>

Srednia sprzedaz:
```sql
select avg(rekord_z_tabeli) from tabela;
```

<br><br>

Usuwanie tabeli:
```sql
drop table TABLE_NAME;
```

<br><br>

Usuwanie bazy danych:
```sql
drop database DATABASE_NAME;
```

<br><br>

Dodawanie tabeli:
```sql
alter table TABLE_NAME add COLUMN_NAME DATA_TYPE;
```

<br><br>

Usuwanie tabeli:
```sql
alter table TABLE_NAME drop;
```

<br><br>

Reset ID:
```sql
1. ALTER TABLE nazwaTablei MODIFY COLUMN id INT NOT NULL;
2. SET @counter = 0; UPDATE nazwaTabeli SET id = (@counter:=@counter+1);
3. ALTER TABLE nazwaTablei MODIFY COLUMN id INT NOT NULL AUTO_INCREMENT;
```
