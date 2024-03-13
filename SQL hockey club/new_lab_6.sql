ALTER SYSTEM SET log_statement = none; -- настройка журнала
ALTER SYSTEM SET log_min_duration_statement = 10;
ALTER SYSTEM SET log_checkpoints = on;
ALTER SYSTEM SET application_name = on;
ALTER SYSTEM SET log_connections = on;
ALTER SYSTEM SET log_line_prefix = '%a %t [%p] ';
ALTER ROLE test SET log_min_duration_statement = 500;


ALTER SYSTEM SET track_io_timing = off;
ALTER SYSTEM SET track_activities = off;
ALTER SYSTEM SET track_counts = off;
SELECT pg_reload_conf();

SELECT pg_stat_reset();

WITH RECURSIVE MonthSequence AS (
    SELECT DATE '2000-01-01'::timestamp AS month
    UNION ALL
    SELECT month + INTERVAL '1 month'
    FROM MonthSequence
    WHERE month < DATE '2023-12-01'::timestamp
)

SELECT TO_CHAR(month, 'Month') AS Месяц,
       COUNT(W.player_id)       AS Количество_игроков
FROM MonthSequence
         LEFT JOIN
     Player W ON EXTRACT(MONTH FROM W.date_of_birth) = EXTRACT(MONTH FROM month)
GROUP BY Месяц
ORDER BY EXTRACT(MONTH FROM MIN(month));

UPDATE player
SET date_of_birth = '1983-08-17'
WHERE player_id = 7219593;

ANALYZE;

VACUUM player;

SELECT *
FROM pg_stat_database;

SELECT *
FROM pg_stat_all_tables
WHERE relname = 'player';

SELECT *
FROM pg_stat_all_indexes
WHERE relname = 'player';

SELECT *
FROM pg_stat_bgwriter;

CHECKPOINT;

SELECT *
FROM pg_statio_all_tables
WHERE relname = 'player';

SELECT *
FROM pg_statio_all_indexes
WHERE relname = 'player';


--shell
BEGIN;

UPDATE player
SET date_of_birth = '1983-12-17'
WHERE player_id = 900421;
--upadte вы каждом shell

SELECT locktype, pid, mode, granted
FROM pg_locks
WHERE locktype = 'transactionid';
--показывает блокировки тут длеать

SELECT pid, query, state, wait_event, wait_event_type, pg_blocking_pids(pid)
FROM pg_stat_activity
WHERE backend_type = 'client backend';
--показывает заблокированный

SELECT pid AS blocked_pid
FROM pg_stat_activity
WHERE backend_type = 'client backend'
  AND cardinality(pg_blocking_pids(pid)) > 0;
--показывает заблокированный

SELECT pg_terminate_backend(b.pid)
FROM unnest(pg_blocking_pids(2661)) AS b(pid);
--вставляем сюда заблокированный и снимется блокировка

SELECT pid, query, state, wait_event, wait_event_type
FROM pg_stat_activity
WHERE backend_type = 'client backend';

SELECT pg_cancel_backend(2661);
--также подставить



-- 3 часть - показать журнал
SELECT sum(random())
FROM generate_series(0, 1500)
         CROSS JOIN player;



-- 4 часть
ALTER SYSTEM SET shared_preload_libraries = 'pg_stat_statements';
CREATE EXTENSION IF NOT EXISTS pg_stat_statements;



--34.Выбрать тройку игроков, с которыми заключены последниме контракты.
SELECT P.Name, P.Surname, P.Second_name
FROM Player AS P
JOIN (
    SELECT Player_id, MAX(Start_date) AS MaxStartDate
    FROM Contract
    GROUP BY Player_id
) AS LatestContracts
ON P.Player_id = LatestContracts.Player_id
ORDER BY LatestContracts.MaxStartDate DESC
LIMIT 3;


--36.Выбрать данные обо всех игроках и для тех, у кого истекает контракт в этом году в отдельном столбце указать сообщение 'продлить контракт'
SELECT
    Player.Player_id,
    Player.Name,
    Player.Surname,
    Player.Second_name,
    Player.Passport_info,
    Player.Number AS Player_Number,
    Player.Height,
    Player.Weight,
    Player.Phone,
    Player.Date_of_birth,
    Player.Nationality_id,
    Player.Position_id,
    Player.Salary,
    Player.Team_id,
    CASE
        WHEN EXTRACT(YEAR FROM Contract.End_date) = EXTRACT(YEAR FROM CURRENT_DATE) THEN 'продлить контракт'
        ELSE NULL
    END AS Contract_Status
FROM Player
LEFT JOIN Contract ON Player.Player_id = Contract.Player_id;


SELECT *
FROM pg_stat_statements
ORDER BY total_exec_time DESC;

DROP EXTENSION IF EXISTS pg_stat_statements;




SHOW config_file;