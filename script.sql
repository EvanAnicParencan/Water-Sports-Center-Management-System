create database test;
use test;

CREATE TABLE klijenti (
    id_klijent INT PRIMARY KEY,
    ime VARCHAR(50) NOT NULL,
    prezime VARCHAR(50) NOT NULL,
    godine int NOT NULL,
    broj_telefona varchar(10),
    dozvola varchar(10) NOT NULL

);

CREATE TABLE placanje (
    id_placanje INT PRIMARY KEY,
    datum_placanja TIMESTAMP,
    iznos INT,
    nacin_placanja VARCHAR(15) NOT NULL,
    id_klijent INT
);

INSERT INTO klijenti (id_klijent, ime, prezime, godine, broj_telefona, dozvola) VALUES
(1, 'Ivan', 'Horvat', 30, '0911234567', 'A'),
(2, 'Ana', 'Kovačić', 25, '0927654321', 'B'),
(3, 'Petra', 'Novak', 40, '0931122334', 'C'),
(4, 'Marko', 'Marić', 35, '0959988776', 'B'),
(5, 'Lucija', 'Rendić', 28, '0974433221', 'A');

select * from klijenti;


INSERT INTO placanje (id_placanje, datum_placanja, iznos, nacin_placanja, id_klijent) VALUES
(1, '2024-05-01 10:15:30', 500, 'Kartica', 1),
(2, '2024-05-03 14:20:00', 300, 'Gotovina', 2),
(3, '2024-05-05 09:45:00', 450, 'Kartica', 3),
(4, '2024-05-07 16:00:00', 700, 'Gotovina', 4),
(5, '2024-05-10 11:30:00', 600, 'Kartica', 5);

select * from placanje;