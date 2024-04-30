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


GroupAggregate  (cost=22.39..18746.35 rows=300025 width=74) (actual time=0.040..152.983 rows=300025 loops=1)
  Group Key: p.player_id
  ->  Merge Left Join  (cost=22.39..13495.91 rows=300025 width=62) (actual time=0.032..72.669 rows=300025 loops=1)
        Merge Cond: (p.player_id = c.player_id)
        ->  Index Scan using player_pkey on player p  (cost=0.42..12722.80 rows=300025 width=58) (actual time=0.010..34.647 rows=300025 loops=1)
        ->  Sort  (cost=21.97..22.15 rows=72 width=8) (actual time=0.020..0.020 rows=0 loops=1)
              Sort Key: c.player_id
              Sort Method: quicksort  Memory: 25kB
              ->  Seq Scan on contract c  (cost=0.00..19.75 rows=72 width=8) (actual time=0.008..0.008 rows=0 loops=1)
                    Filter: ((start_date <= '2019-04-12'::date) AND (end_date >= '2019-04-12'::date))
                    Rows Removed by Filter: 8
Planning Time: 0.232 ms
Execution Time: 161.713 ms






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


GroupAggregate  (cost=47.29..21030.10 rows=300025 width=66) (actual time=0.051..152.143 rows=300025 loops=1)
  Group Key: p.player_id
  ->  Merge Left Join  (cost=47.29..13529.48 rows=300025 width=70) (actual time=0.040..65.357 rows=300032 loops=1)
        Merge Cond: (p.player_id = c.player_id)
        ->  Index Scan using player_pkey on player p  (cost=0.42..12722.80 rows=300025 width=58) (actual time=0.011..25.566 rows=300025 loops=1)
        ->  Sort  (cost=46.87..48.49 rows=650 width=16) (actual time=0.025..0.026 rows=8 loops=1)
              Sort Key: c.player_id
              Sort Method: quicksort  Memory: 25kB
              ->  Seq Scan on contract c  (cost=0.00..16.50 rows=650 width=16) (actual time=0.007..0.008 rows=8 loops=1)
Planning Time: 0.211 ms
Execution Time: 159.423 ms
