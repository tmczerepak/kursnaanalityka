Create DATABASE kursanalityk encoding 'utf-8';

CREATE table klient (

    id serial PRIMARY KEY,
    imie varchar,
    nazwisko varchar,
    miasto varchar,
    mail varchar DEFAULT 'test@towy.pl'

)
