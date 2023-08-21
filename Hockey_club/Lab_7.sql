INSERT INTO Sponsor (Sponsor_id, Name)
SELECT nextval('sponsor_seq'), 'Coca cola'
FROM generate_series(1, 100);

INSERT INTO Sponsor (Sponsor_id, Name)
SELECT nextval('sponsor_seq'), NULL
FROM generate_series(1, 100000);

INSERT INTO Sponsor (Sponsor_id, Name)
SELECT nextval('sponsor_seq'), 'Jack'
FROM generate_series(1, 100000);

-------------------------------------
SELECT COUNT(*)
FROM sponsor
WHERE Name IS NOT NULL;

DROP MATERIALIZED VIEW mv_sponsor;

CREATE MATERIALIZED VIEW mv_sponsor
AS
SELECT sponsor_id
FROM sponsor
WHERE name IS NOT NULL;

SELECT COUNT(*)
FROM mv_sponsor;


REFRESH MATERIALIZED VIEW mv_sponsor;


-------------------------------------------------------

CREATE VIEW v_sponsor(sponsor_id, name)
AS
SELECT sponsor_id, name
FROM sponsor
WHERE name IS NOT NULL;

DROP VIEW v_sponsor;

INSERT INTO v_sponsor
VALUES (nextval('sponsor_seq'),  'wqre');

SELECT COUNT(*)
FROM v_sponsor;

INSERT INTO v_sponsor
VALUES (nextval('sponsor_seq'), NULL);

-------------------------------------------------------

CREATE VIEW v_sponsor_n_mod
AS
SELECT name, COUNT(*)
FROM sponsor
WHERE name IS NOT NULL
GROUP BY name;

DROP VIEW v_sponsor_n_mod;

SELECT *
FROM v_sponsor_n_mod;

INSERT INTO v_sponsor_n_mod
VALUES (nextval('sponsor_seq'), 10);