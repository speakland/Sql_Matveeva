--37.1 Выбрать для каждого игрока прибыль по контракту актуальному на 12 апреля 2019 года.
EXPLAIN  ANALYSE
SELECT
    P.Player_id,
    P.Name,
    P.Surname,
    P.Second_name,
    COALESCE(SUM(C.Salary), 0) AS ContractMoney,
    COALESCE(SUM(P.Salary), 0) AS PlayerSalary
FROM Player AS P
LEFT JOIN Contract AS C ON P.Player_id = C.Player_id
    AND C.Start_date <= '2019-04-12'
    AND (C.End_date >= '2019-04-12')
GROUP BY P.Player_id, P.Name, P.Surname, P.Second_name, P.Salary;




GroupAggregate  (cost=1.59..18724.41 rows=300023 width=72) (actual time=0.042..141.914 rows=300023 loops=1)
  Group Key: p.player_id
  ->  Merge Left Join  (cost=1.59..13474.00 rows=300023 width=60) (actual time=0.033..63.506 rows=300023 loops=1)
        Merge Cond: (p.player_id = c.player_id)
        ->  Index Scan using player_pkey on player p  (cost=0.42..12722.77 rows=300023 width=56) (actual time=0.008..27.454 rows=300023 loops=1)
        ->  Sort  (cost=1.16..1.16 rows=1 width=8) (actual time=0.022..0.022 rows=1 loops=1)
              Sort Key: c.player_id
              Sort Method: quicksort  Memory: 25kB
              ->  Seq Scan on contract c  (cost=0.00..1.15 rows=1 width=8) (actual time=0.008..0.009 rows=1 loops=1)
                    Filter: ((start_date <= '2019-04-12'::date) AND (end_date >= '2019-04-12'::date))
                    Rows Removed by Filter: 9
Planning Time: 0.887 ms
Execution Time: 150.251 ms





--37.2
EXPLAIN  ANALYSE
SELECT
    P.Player_id,
    P.Name,
    P.Surname,
    P.Second_name,
    COALESCE(SUM(CASE
        WHEN (C.Start_date <= '2019-04-12' AND (C.End_date IS NULL OR C.End_date >= '2019-04-12')) AND (P.Salary + C.Salary > 0)
        THEN C.Salary
        ELSE 0
    END), 0) AS ContractMoney,
    P.Salary AS PlayerSalary
FROM Player AS P
LEFT JOIN Contract AS C ON P.Player_id = C.Player_id
GROUP BY P.Player_id, P.Name, P.Surname, P.Second_name, P.Salary;


GroupAggregate  (cost=1.74..20974.82 rows=300023 width=64) (actual time=0.039..136.121 rows=300023 loops=1)
  Group Key: p.player_id
  ->  Merge Left Join  (cost=1.74..13474.24 rows=300023 width=68) (actual time=0.029..57.676 rows=300027 loops=1)
        Merge Cond: (p.player_id = c.player_id)
        ->  Index Scan using player_pkey on player p  (cost=0.42..12722.77 rows=300023 width=56) (actual time=0.007..21.631 rows=300023 loops=1)
        ->  Sort  (cost=1.27..1.29 rows=10 width=16) (actual time=0.018..0.018 rows=10 loops=1)
              Sort Key: c.player_id
              Sort Method: quicksort  Memory: 25kB
              ->  Seq Scan on contract c  (cost=0.00..1.10 rows=10 width=16) (actual time=0.006..0.007 rows=10 loops=1)
Planning Time: 0.230 ms
Execution Time: 142.752 ms
