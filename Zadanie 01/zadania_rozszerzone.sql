use j1b;
-- 1
select * from stanowiska;
-- 2
SELECT count(distinct nazwa) from stanowiska;
-- 3
select pracownicy.id_pracownika, imie, nazwisko, nazwa from pracownicy join stanowiska on pracownicy.id_stanowiska = stanowiska.id_stanowiska; 
-- 4
select pracownicy.id_pracownika, imie, nazwisko, email from pracownicy join stanowiska on pracownicy.id_stanowiska = stanowiska.id_stanowiska where imie = 'oliwia' or imie = 'arnold';
-- 5
SELECT pracownicy.id_pracownika, imie, nazwisko, nazwa, adresy.* from pracownicy JOIN stanowiska ON pracownicy.id_stanowiska = stanowiska.id_stanowiska JOIN pracownicy_adresy on pracownicy.id_pracownika = pracownicy_adresy.id_pracownika join adresy on adresy.id_adresu = pracownicy_adresy.id_adresu;
-- 6
select pracownicy.id_pracownika, imie, nazwisko, nazwa, numer_domu, numer_mieszkania, ulica from pracownicy JOIN stanowiska ON pracownicy.id_stanowiska = stanowiska.id_stanowiska JOIN pracownicy_adresy on pracownicy.id_pracownika = pracownicy_adresy.id_pracownika join adresy on adresy.id_adresu = pracownicy_adresy.id_adresu;
-- 7
select imie, nazwisko, nazwa from pracownicy JOIN stanowiska ON pracownicy.id_stanowiska = stanowiska.id_stanowiska JOIN pracownicy_adresy on pracownicy.id_pracownika = pracownicy_adresy.id_pracownika join adresy on adresy.id_adresu = pracownicy_adresy.id_adresu;
-- 8
select imie, nazwisko, wojewodztwo from pracownicy JOIN stanowiska ON pracownicy.id_stanowiska = stanowiska.id_stanowiska JOIN pracownicy_adresy on pracownicy.id_pracownika = pracownicy_adresy.id_pracownika join adresy on adresy.id_adresu = pracownicy_adresy.id_adresu where wojewodztwo = 'kujawsko-pomorskie';
-- 9
select pracownicy.*, stanowiska.*, adresy.*, firmy.* from pracownicy JOIN stanowiska ON pracownicy.id_stanowiska = stanowiska.id_stanowiska JOIN pracownicy_adresy on pracownicy.id_pracownika = pracownicy_adresy.id_pracownika join adresy on adresy.id_adresu = pracownicy_adresy.id_adresu join firmy on pracownicy.id_firmy = firmy.id_firmy where imie = 'Wiktor' and nazwisko = 'Wrobel';
-- 10
describe pracownicy;
insert into pracownicy values (null, 'Jagoda', 'Jarzebowska', 'brązowy', 176, 'K', '537460621', 'jagoda@op.pl', '94022865632', '1994-02-28',20, 25000, 11);
select * from pracownicy where imie = 'Jagoda';
insert into adresy value (101, 'Kopcia', 4,21,'43-502', 'Czechowice-Dziedzice', 'Polska' , 'Śląsk'); 
insert into pracownicy_adresy values (102, 101, '2000-02-02', '2001-05-05');
select * from pracownicy_adresy;
-- 11
alter table pracownicy add login varchar(20);
alter table pracownicy add haslo varchar(30);
-- 12
update pracownicy set login = 'qwerty', haslo = 'asdfg' where id_pracownika = 102;
-- 13
update pracownicy set wynagrodzenie = wynagrodzenie * 1.1;
use j1b;
update pracownicy set wynagrodzenie = wynagrodzenie * 1.1;
-- 14
delimiter $$ 
create function podwyzkaaa (x decimal, y decimal) 
returns decimal 
deterministic
begin
declare podwyzka decimal;
set podwyzka = x*(1 + y / 100);
return podwyzka;
end $$ delimiter ;

update pracownicy set pracownicy.wynagrodzenie = podwyzkaaa(pracownicy.wynagrodzenie,10) where pracownicy.id_pracownika >= 1;
-- 15
select * from pracownicy where imie = 'Aldona' and nazwisko = 'Przybyla';
update pracownicy set id_stanowiska = 8 where imie = 'Aldona' and nazwisko = 'Przybyla';
select * from pracownicy where imie = 'Aldona';
-- 16
delete from pracownicy where imie = 'Patryk' and nazwisko = 'Dudek';
select * from pracownicy where imie = 'patryk';
-- 17

-- 18
create view dane2 as select imie, nazwisko, plec, kolor_oczu, wzrost, telefon from pracownicy where wzrost > 200 and kolor_oczu = 'niebieski';
select * from dane2;
-- 19
show full tables in j1b where table_type like 'view';
-- 20
insert into pracownicy values (null,'Anna', 'Ann', 'niebieski', 205, 'K', '537458625', 'annna@op.pl', '95022865665', '1995-02-28',20, 2000, 11, 'absad', 'asdfs');
select * from dane2;
-- 21
select imie, nazwisko, wojewodztwo from pracownicy 
JOIN stanowiska ON pracownicy.id_stanowiska = stanowiska.id_stanowiska 
JOIN pracownicy_adresy on pracownicy.id_pracownika = pracownicy_adresy.id_pracownika 
join adresy on adresy.id_adresu = pracownicy_adresy.id_adresu 
where wojewodztwo = 'kujawsko-pomorskie'  and (wynagrodzenie > (select avg(wynagrodzenie) from pracownicy));
-- 22
select count(*) as ilosc, nazwa from pracownicy join firmy on pracownicy.id_firmy = firmy.id_firmy group by firmy.id_firmy order by ilosc;

select * from  (select count(*) as ilosc, nazwa from pracownicy natural join firmy group by id_firmy order by ilosc DESC)as p where ilosc = (select max(ilosc) from (select count(*) as ilosc, nazwa, id_firmy from pracownicy natural join firmy group by id_firmy) as t);

-- 23
SELECT wojewodztwo, avg(wzrost) from pracownicy JOIN stanowiska ON pracownicy.id_stanowiska = stanowiska.id_stanowiska JOIN pracownicy_adresy on pracownicy.id_pracownika = pracownicy_adresy.id_pracownika join adresy on adresy.id_adresu = pracownicy_adresy.id_adresu group by wojewodztwo;
SELECT round(avg(wzrost),2), wojewodztwo from pracownicy JOIN pracownicy_adresy on pracownicy.id_pracownika = pracownicy_adresy.id_pracownika join adresy on adresy.id_adresu = pracownicy_adresy.id_adresu group by wojewodztwo;
-- 24
select wojewodztwo, min(wzrost), max(wzrost) from pracownicy JOIN pracownicy_adresy on pracownicy.id_pracownika = pracownicy_adresy.id_pracownika join adresy on adresy.id_adresu = pracownicy_adresy.id_adresu group by wojewodztwo;

(SELECT 
    *
FROM
    (SELECT 
        wojewodztwo AS 'Nazwa wojewodztwa', MIN(wzrost) AS minimum
    FROM
        pracownicy
    NATURAL JOIN pracownicy_adresy
    NATURAL JOIN adresy
    GROUP BY wojewodztwo) AS m
ORDER BY minimum
LIMIT 1) UNION ALL (SELECT 
    *
FROM
    (SELECT 
        wojewodztwo AS 'Nazwa wojewodztwa', MAX(wzrost) AS maximum
    FROM
        pracownicy
    NATURAL JOIN pracownicy_adresy
    NATURAL JOIN adresy
    GROUP BY wojewodztwo) AS m
ORDER BY maximum DESC
LIMIT 1);

-- 25
select avg(year(current_date()) - year(data_urodzin)) as sredni_wiek_pracownikow from pracownicy JOIN pracownicy_adresy on pracownicy.id_pracownika = pracownicy_adresy.id_pracownika join adresy on adresy.id_adresu = pracownicy_adresy.id_adresu;

-- inny wynik 
select avg(year(current_date()) - year(data_urodzin)) as sredni_wiek_pracownikow from pracownicy; 

-- 26
select * from pracownicy where (year(current_date()) - year(data_urodzin))> (SELECT avg(year(current_date()) - year(data_urodzin))  from pracownicy);
-- 27
use j1b;
-- 28
-- wyswietlenie wszystkich wojewodztw i minmalnego wieku
select wojewodztwo, min(year(current_date()) - year(data_urodzin)) from pracownicy JOIN pracownicy_adresy on pracownicy.id_pracownika = pracownicy_adresy.id_pracownika join adresy on adresy.id_adresu = pracownicy_adresy.id_adresu group by wojewodztwo;

-- wyswietlenie wojewozdtwa z min wiekiem
select min(year(current_date()) - year(data_urodzin)) as minwiek, wojewodztwo from pracownicy JOIN pracownicy_adresy on pracownicy.id_pracownika = pracownicy_adresy.id_pracownika join adresy on adresy.id_adresu = pracownicy_adresy.id_adresu group by data_urodzin DESC limit 1;
-- 29
select (max(year(current_date()) - year(data_urodzin)) - min(year(current_date()) - year(data_urodzin))) as roznicaWieku, wojewodztwo from pracownicy JOIN pracownicy_adresy on pracownicy.id_pracownika = pracownicy_adresy.id_pracownika join adresy on adresy.id_adresu = pracownicy_adresy.id_adresu group by wojewodztwo;
-- 30
select imie, nazwisko, od, wojewodztwo from pracownicy JOIN pracownicy_adresy on pracownicy.id_pracownika = pracownicy_adresy.id_pracownika join adresy on adresy.id_adresu = pracownicy_adresy.id_adresu where od like '2000%' group by wojewodztwo;
-- 31 




