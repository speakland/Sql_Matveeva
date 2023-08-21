--влияние статистики
DROP table Player_check;

--1
CREATE TABLE Player_check
(
    LIKE Player
)
    WITH (autovacuum_enabled = false);

--2
INSERT INTO Player_check
SELECT *
FROM Player;

--3
SELECT DISTINCT tablename
FROM pg_stats
WHERE schemaname = 'public';

--4
SELECT reltuples, relpages, relallvisible --число строк, размер отношения в страницах, кол-во страниц в карте видимости
FROM pg_class
WHERE relname = 'player_check';

--5
EXPLAIN ANALYZE
SELECT *
FROM Player_check
WHERE salary > 1000000;

--6
ANALYZE Player_check;

--8
SELECT attname,
       inherited,
       n_distinct,
       array_to_string(most_common_vals, E'\n') as most_common_vals
FROM pg_stats
WHERE tablename = 'player_check';

