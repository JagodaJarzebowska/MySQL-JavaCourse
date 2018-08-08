CREATE DATABASE j1b;

USE j1b;

CREATE TABLE firmy(id_firmy INT NOT NULL PRIMARY KEY, nazwa VARCHAR(50), ulica VARCHAR(50), numer_domu VARCHAR(5), numer_mieszkania VARCHAR(5), nip VARCHAR(10));

CREATE TABLE stanowiska(id_stanowiska INT NOT NULL PRIMARY KEY, nazwa VARCHAR(20));

CREATE TABLE pracownicy (id_pracownika int NOT NULL PRIMARY KEY, imie VARCHAR(20), nazwisko VARCHAR(20), kolor_oczu VARCHAR(15), wzrost SMALLINT, plec CHAR(1), telefon VARCHAR(12), email VARCHAR(30), PESEL VARCHAR(11), data_urodzin DATE, id_stanowiska INT, wynagrodzenie INT, id_firmy INT, FOREIGN KEY (id_stanowiska) REFERENCES stanowiska(id_stanowiska), FOREIGN KEY (id_firmy) REFERENCES firmy(id_firmy));

CREATE TABLE adresy (id_adresu int NOT NULL PRIMARY KEY, ulica VARCHAR(50), numer_domu VARCHAR(5), numer_mieszkania VARCHAR(5), kod_pocztowy VARCHAR(10), miasto VARCHAR(30), panstwo VARCHAR(20), wojewodztwo VARCHAR(30));

CREATE TABLE pracownicy_adresy(id_pracownika int NOT NULL, id_adresu int NOT NULL, FOREIGN KEY (id_pracownika) REFERENCES pracownicy(id_pracownika), od DATE, do DATE, FOREIGN KEY (id_adresu) REFERENCES adresy(id_adresu));



