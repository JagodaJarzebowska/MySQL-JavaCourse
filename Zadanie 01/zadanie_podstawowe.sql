select * from adresy; 
show tables from j1b; 
describe adresy;
describe firmy;
describe pracownicy;
describe pracownicy_adresy;
describe stanowiska;
select * from pracownicy;
select * from firmy;
select * from pracownicy;
select imie, nazwisko from pracownicy;
select count(imie) from pracownicy;
select nazwa from firmy;
select distinct nazwa from firmy;
select * from pracownicy where telefon is null; 
select * from pracownicy where kolor_oczu = 'niebieski';
select distinct kolor_oczu from pracownicy;
select *, max(wynagrodzenie) from pracownicy;
SELECT max(wynagrodzenie) from pracownicy;
select * from pracownicy where wynagrodzenie = (select max(wynagrodzenie) from pracownicy);
select * from pracownicy where wynagrodzenie = (select min(wynagrodzenie) from pracownicy);
select * from pracownicy where email like "%gmail%";
select avg(wynagrodzenie) from pracownicy;
select max(wynagrodzenie) from pracownicy;
select min(wynagrodzenie) from pracownicy;
select avg(wynagrodzenie), max(wynagrodzenie), min(wynagrodzenie) from pracownicy;
select avg(wynagrodzenie) as AVG, max(wynagrodzenie) AS MAX, min(wynagrodzenie) AS MIN from pracownicy;
select * from pracownicy where wynagrodzenie > (select avg(wynagrodzenie) from pracownicy);
select * from Pracownicy where (year(current_date()) - year(data_urodzin)) > 40 ;
select * from pracownicy where plec like "M";
select * from pracownicy where plec like "K" and kolor_oczu like "niebie%";
select * from pracownicy order by wzrost asc;
select * from pracownicy order by wzrost desc;
select * from pracownicy where (plec = "K" and  (wzrost between 170 and 180) and (kolor_oczu = 'zielony' or kolor_oczu = 'szary')); 
select * from pracownicy where imie like "ewa";
select * from pracownicy where (data_urodzin between '1980-01-01' and '1995-12-31'); 
select distinct kolor_oczu, count(kolor_oczu) as amount from pracownicy group by kolor_oczu;
select distinct plec, count(plec) as amount from pracownicy group by plec;
select distinct imie, count(imie) as amount from pracownicy group by imie;
select count(*) as ilosc, imie from Pracownicy pr group by pr.imie having (ilosc > 1);
-- 33
select *from (select count(*) as ilosc, imie from Pracownicy group by imie) as wynik where wynik.ilosc > 1 order by wynik.ilosc desc;
-- 34
select count(*) as ilosc, imie from pracownicy pr group by pr.imie having (ilosc > 1) order by ilosc desc;
-- 35
select count(*) as ilosc, kolor_oczu from pracownicy group by kolor_oczu having (ilosc > 15); 