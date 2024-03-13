--32.1 Выбрать спонсора, у которого наибольшее количество договоров с одним и тем же игроком.
EXPLAIN  ANALYSE
SELECT
    S.Name AS Sponsor_Name
FROM Sponsor AS S
JOIN Contract AS C ON S.Sponsor_id = C.sponsor_id
GROUP BY S.Sponsor_id, S.Name
HAVING COUNT(DISTINCT C.Player_id) = (
    SELECT MAX(player_count)
    FROM (
        SELECT COUNT(DISTINCT Player_id) AS player_count
        FROM Contract
        GROUP BY sponsor_id
    ) AS MaxPlayers
)
LIMIT 1;



Limit  (cost=27.13..27.33 rows=1 width=36) (actual time=0.085..0.087 rows=1 loops=1)
  InitPlan 1 (returns $0)
    ->  Aggregate  (cost=1.48..1.49 rows=1 width=8) (actual time=0.023..0.024 rows=1 loops=1)
          ->  GroupAggregate  (cost=1.27..1.40 rows=6 width=12) (actual time=0.015..0.022 rows=6 loops=1)
                Group Key: contract.sponsor_id
                ->  Sort  (cost=1.27..1.29 rows=10 width=8) (actual time=0.007..0.008 rows=10 loops=1)
                      Sort Key: contract.sponsor_id
                      Sort Method: quicksort  Memory: 25kB
                      ->  Seq Scan on contract  (cost=0.00..1.10 rows=10 width=8) (actual time=0.003..0.005 rows=10 loops=1)
  ->  GroupAggregate  (cost=25.64..25.84 rows=1 width=36) (actual time=0.084..0.085 rows=1 loops=1)
        Group Key: s.sponsor_id
        Filter: (count(DISTINCT c.player_id) = $0)
        ->  Sort  (cost=25.64..25.66 rows=10 width=40) (actual time=0.048..0.049 rows=3 loops=1)
              Sort Key: s.sponsor_id
              Sort Method: quicksort  Memory: 25kB
              ->  Nested Loop  (cost=0.16..25.47 rows=10 width=40) (actual time=0.014..0.028 rows=10 loops=1)
                    ->  Seq Scan on contract c  (cost=0.00..1.10 rows=10 width=8) (actual time=0.005..0.006 rows=10 loops=1)
                    ->  Memoize  (cost=0.16..3.78 rows=1 width=36) (actual time=0.002..0.002 rows=1 loops=10)
                          Cache Key: c.sponsor_id
                          Cache Mode: logical
                          Hits: 4  Misses: 6  Evictions: 0  Overflows: 0  Memory Usage: 1kB
                          ->  Index Scan using sponsor_pkey on sponsor s  (cost=0.15..3.77 rows=1 width=36) (actual time=0.001..0.001 rows=1 loops=6)
                                Index Cond: (sponsor_id = c.sponsor_id)
Planning Time: 0.688 ms
Execution Time: 0.172 ms











--32.2
EXPLAIN  ANALYSE
WITH PlayerContractCounts AS (
    SELECT
        sponsor_id,
        Player_id,
        COUNT(*) AS contract_count
    FROM Contract
    GROUP BY sponsor_id, Player_id
)

SELECT
    S.Name AS Sponsor_Name
FROM PlayerContractCounts AS PCC
JOIN Sponsor AS S ON PCC.sponsor_id = S.Sponsor_id
GROUP BY S.Name
HAVING MAX(PCC.contract_count) = (
    SELECT MAX(contract_count)
    FROM PlayerContractCounts
);



GroupAggregate  (cost=29.18..29.30 rows=1 width=32) (actual time=0.096..0.099 rows=1 loops=1)
  Group Key: s.name
  Filter: (max(pcc.contract_count) = $1)
  Rows Removed by Filter: 5
  CTE playercontractcounts
    ->  HashAggregate  (cost=1.18..1.24 rows=6 width=16) (actual time=0.017..0.019 rows=9 loops=1)
"          Group Key: contract.sponsor_id, contract.player_id"
          Batches: 1  Memory Usage: 24kB
          ->  Seq Scan on contract  (cost=0.00..1.10 rows=10 width=8) (actual time=0.004..0.005 rows=10 loops=1)
  InitPlan 2 (returns $1)
    ->  Aggregate  (cost=0.14..0.15 rows=1 width=8) (actual time=0.003..0.004 rows=1 loops=1)
          ->  CTE Scan on playercontractcounts  (cost=0.00..0.12 rows=6 width=8) (actual time=0.000..0.001 rows=9 loops=1)
  ->  Sort  (cost=27.80..27.81 rows=6 width=40) (actual time=0.085..0.087 rows=9 loops=1)
        Sort Key: s.name
        Sort Method: quicksort  Memory: 25kB
        ->  Hash Join  (cost=0.20..27.72 rows=6 width=40) (actual time=0.059..0.063 rows=9 loops=1)
              Hash Cond: (s.sponsor_id = pcc.sponsor_id)
              ->  Seq Scan on sponsor s  (cost=0.00..22.70 rows=1270 width=36) (actual time=0.005..0.006 rows=6 loops=1)
              ->  Hash  (cost=0.12..0.12 rows=6 width=12) (actual time=0.047..0.048 rows=9 loops=1)
                    Buckets: 1024  Batches: 1  Memory Usage: 9kB
                    ->  CTE Scan on playercontractcounts pcc  (cost=0.00..0.12 rows=6 width=12) (actual time=0.019..0.024 rows=9 loops=1)
Planning Time: 0.240 ms
Execution Time: 0.165 ms
