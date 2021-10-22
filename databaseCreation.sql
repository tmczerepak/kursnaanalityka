--DROP TABLE zamowienie;
--DROP TABLE klient;


CREATE table klient (

    id serial PRIMARY KEY,
    imie text,
    nazwisko text,
    miasto text,
    mail varchar DEFAULT 'test@towy.pl'

);

INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Jan','Kowalski','Warszawa','tt@gmail.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Janusz','Kowalski','Warszawa','janusz@gmail.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Ryszard','Kompas','Warszawa','rysio@gmail.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Marcin','Kompas','Warszawa','marcinek@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Maria','Koll','Warszawa','maryja@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Wiesława','King','Warszawa','wiesia@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Ania','Patison','Warszawa','anka@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Ania','Kawa','Wrocław','akawa@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Ania','Klawa','Wrocław','aklawa@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Weronika','Kum','Wrocław','werka@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Weronika','Kicz','Wrocław','kicz@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Weronika','Kicz','Wrocław','kicz@gmail.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Jacek','Kleszcz','Wrocław','kleszcz@gmail.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Roman','Pucek','Wrocław','pucek@gmail.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Roman','Kret','Wrocław','kret@gmail.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Roman','Lasso','Wrocław','lasso@gmail.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Marek','Koło','Warszawa','kolo@gmail.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Marek','Ociek','Warszawa','Ociek@gmail.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Joanna','Grabowska','Warszawa','jgrabowska@gmail.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Elżbieta','Grabowska','Warszawa','egrabowska@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Adam','Grabowski','Warszawa','agrabowski@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Adam','Parówka','Opole','aparówka@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Marcin','Bóbr','Opole','bobr@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Jacek','Kiszka','Opole','kiszka@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Anna','Cebula','Opole','cebula@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Elżbieta','Grzyb','Opole','grzyb@outlook.com');
INSERT INTO klient (imie, nazwisko, miasto, mail) VALUES ('Joanna','Paszka','Opole','Pacha@outlook.com');


CREATE table produkt (
    id serial PRIMARY KEY,
    nazwa text,
    cena numeric,
    kategoria text,
    kraj_pochodzenia text
);

insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Kalosz',212.12,'Buty','Polska');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Kalosz dzieciecy',111.11,'Buty','Polska');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Kalosz damski',310.10,'Buty','Polska');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Trampek czerwony',110.99,'Buty','Chiny');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Trampek rożowy',110.99,'Buty','Chiny');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Trampek czarny',110.99,'Buty','Chiny');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Trampek biały',110.99,'Buty','Chiny');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Trampek na rzepy biały',220.99,'Buty','Chiny');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Trampek na rzepy czarny',220.99,'Buty','Chiny');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Jeansy',325.76,'Spodnie','Niemcy');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Sztruksy',256.16,'Spodnie','Polska');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('khaki',128.32,'Spodnie','USA');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Chinosy',422.32,'Spodnie','Japonia');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Slim Jeans',228.32,'Spodnie','USA');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Loose fit Jeans',728.32,'Spodnie','USA');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Loose fit Sztruksy',328.32,'Spodnie','Polska');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Loose fit Chinosy',432.08,'Spodnie','Japonia');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Drop crotch Chinosy',418.16,'Spodnie','Japonia');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Drop crotch Jeansy',256.99,'Spodnie','Polska');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Drop crotch Sztruksy',111.99,'Spodnie','Polska');
insert into produkt(nazwa, cena, kategoria, kraj_pochodzenia) VALUES ('Slim Sztruksy',299.99,'Spodnie','Niemcy');
--koment

CREATE table zamowienie (
    id serial PRIMARY KEY,
    data timestamp DEFAULT now(),
    id_klient int  REFERENCES klient(id)
);

CREATE table koszyk (
    id serial PRIMARY KEY,
    id_zamowienie int REFERENCES zamowienie(id),
    id_produkt int  REFERENCES produkt(id)
);

INSERT INTO zamowienie(id_klient) SELECT klient.id  FROM klient,produkt ORDER BY random() LIMIT 30;

INSERT INTO koszyk (id_zamowienie, id_produkt) SELECT zamowienie.id,produkt.id FROM zamowienie,produkt order by random() limit 50;
INSERT INTO koszyk (id_zamowienie, id_produkt) SELECT zamowienie.id,produkt.id FROM zamowienie,produkt order by random() limit 50;
INSERT INTO koszyk (id_zamowienie, id_produkt) SELECT zamowienie.id,produkt.id FROM zamowienie,produkt order by random() limit 50;




