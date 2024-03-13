CREATE TABLE PLayer_partition
(
   Player_id      serial NOT NULL,
    Team_id        serial NOT NULL,
    Name           text    NOT NULL,
    Surname        text    NOT NULL,
    Second_name    text,
    Passport_info  text NOT NULL,
    Number         text NOT NULL,
    Height         integer NOT NULL,
    Weight         integer NOT NULL,
    Phone          text,
    Date_of_birth date NOT NULL,
    Nationality_id serial NOT NULL,
    Position_id    serial NOT NULL,
    Salary         integer NOT NULL
) PARTITION BY RANGE (date_of_birth);




-- Создание партиции для игроков возрастом с 70 по 80
CREATE TABLE Player_Partitioned_18_28 PARTITION OF Player_partition FOR VALUES FROM ('1970-01-01') TO ('1980-01-01');

-- Создание партиции для игроков возрастом от 80 по 90
CREATE TABLE Player_Partitioned_28_38 PARTITION OF Player_partition FOR VALUES FROM ('1980-01-01') TO ('1990-01-01');

-- Создание партиции для игроков возрастом от 90 по 00
CREATE TABLE Player_Partitioned_38_48 PARTITION OF Player_partition FOR VALUES FROM ('1990-01-01') TO ('2000-01-01');

CREATE TABLE Player_Partitioned_48_58 PARTITION OF Player_partition FOR VALUES FROM ('2000-01-01') TO ('2010-01-01');


 DROP  TABLE  Player_partition;

DROP TABLE Player_Partitioned_18_28;
DROP TABLE Player_Partitioned_28_38;
DROP TABLE Player_Partitioned_38_48;
DROP TABLE Player_Partitioned_48_58;


INSERT INTO Player_partition (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
SELECT Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id
FROM Player;



-- Сравнение производительности двух запросов -- обращение к одной секции.
EXPLAIN ANALYZE
SELECT * FROM Player WHERE Date_of_birth BETWEEN ('1970-01-01') AND ('1979-01-01');

EXPLAIN ANALYZE
SELECT * FROM PLayer_partition WHERE Date_of_birth BETWEEN ('1970-01-01') AND ('1979-01-01');

-- Сравнение производительности двух запросов -- обращение к двум секциям.
EXPLAIN ANALYZE
SELECT * FROM Player WHERE Date_of_birth BETWEEN ('1970-01-01') AND ('1989-01-01');

EXPLAIN ANALYZE
SELECT * FROM PLayer_partition WHERE Date_of_birth BETWEEN ('1970-01-01') AND ('1989-01-01');

-- Сравнение производительности двух запросов -- обращение ко всем данным.
EXPLAIN ANALYZE
SELECT * FROM Player;

EXPLAIN ANALYZE
SELECT * FROM PLayer_partition;


