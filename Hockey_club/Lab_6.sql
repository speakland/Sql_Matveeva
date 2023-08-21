--влияние индексов
DROP INDEX idx_player_name;
DROP INDEX idx_player_salary;

EXPLAIN ANALYZE
SELECT player_id, name
FROM Player
WHERE name = '234uytfe324yt';

CREATE INDEX idx_player_name ON Player USING btree (name);

EXPLAIN ANALYZE
SELECT player_id, name
FROM Player
WHERE name = '234uytfe324yt';

EXPLAIN ANALYZE
SELECT player_id, salary
FROM Player
WHERE salary = 1234567890;

CREATE INDEX idx_player_salary ON Player USING hash (salary);

EXPLAIN ANALYZE
SELECT player_id, salary
FROM Player
WHERE salary = 1234567890;