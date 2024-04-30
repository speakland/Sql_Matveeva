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


Limit  (cost=103.28..133.73 rows=1 width=36) (actual time=0.071..0.073 rows=1 loops=1)
  InitPlan 1 (returns $0)
    ->  Aggregate  (cost=56.24..56.25 rows=1 width=8) (actual time=0.028..0.028 rows=1 loops=1)
          ->  GroupAggregate  (cost=46.87..53.74 rows=200 width=12) (actual time=0.021..0.027 rows=6 loops=1)
                Group Key: contract.sponsor_id
                ->  Sort  (cost=46.87..48.49 rows=650 width=8) (actual time=0.006..0.007 rows=8 loops=1)
                      Sort Key: contract.sponsor_id
                      Sort Method: quicksort  Memory: 25kB
                      ->  Seq Scan on contract  (cost=0.00..16.50 rows=650 width=8) (actual time=0.003..0.004 rows=8 loops=1)
  ->  GroupAggregate  (cost=47.02..138.37 rows=3 width=36) (actual time=0.070..0.071 rows=1 loops=1)
        Group Key: s.sponsor_id
        Filter: (count(DISTINCT c.player_id) = $0)
        ->  Merge Join  (cost=47.02..127.00 rows=650 width=40) (actual time=0.021..0.023 rows=4 loops=1)
              Merge Cond: (s.sponsor_id = c.sponsor_id)
              ->  Index Scan using sponsor_pkey on sponsor s  (cost=0.15..67.20 rows=1270 width=36) (actual time=0.005..0.005 rows=2 loops=1)
              ->  Sort  (cost=46.87..48.49 rows=650 width=8) (actual time=0.013..0.013 rows=4 loops=1)
                    Sort Key: c.sponsor_id
                    Sort Method: quicksort  Memory: 25kB
                    ->  Seq Scan on contract c  (cost=0.00..16.50 rows=650 width=8) (actual time=0.006..0.008 rows=8 loops=1)
Planning Time: 0.283 ms
Execution Time: 0.157 ms











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



HashAggregate  (cost=71.98..74.48 rows=1 width=32) (actual time=0.058..0.061 rows=1 loops=1)
  Group Key: s.name
  Filter: (max(pcc.contract_count) = $1)
  Batches: 1  Memory Usage: 40kB
  Rows Removed by Filter: 5
  CTE playercontractcounts
    ->  HashAggregate  (cost=21.38..23.38 rows=200 width=16) (actual time=0.018..0.021 rows=6 loops=1)
"          Group Key: contract.sponsor_id, contract.player_id"
          Batches: 1  Memory Usage: 40kB
          ->  Seq Scan on contract  (cost=0.00..16.50 rows=650 width=8) (actual time=0.006..0.008 rows=8 loops=1)
  InitPlan 2 (returns $1)
    ->  Aggregate  (cost=4.50..4.51 rows=1 width=8) (actual time=0.004..0.004 rows=1 loops=1)
          ->  CTE Scan on playercontractcounts  (cost=0.00..4.00 rows=200 width=8) (actual time=0.000..0.001 rows=6 loops=1)
  ->  Hash Join  (cost=38.58..43.10 rows=200 width=40) (actual time=0.042..0.049 rows=6 loops=1)
        Hash Cond: (pcc.sponsor_id = s.sponsor_id)
        ->  CTE Scan on playercontractcounts pcc  (cost=0.00..4.00 rows=200 width=12) (actual time=0.019..0.023 rows=6 loops=1)
        ->  Hash  (cost=22.70..22.70 rows=1270 width=36) (actual time=0.013..0.013 rows=6 loops=1)
              Buckets: 2048  Batches: 1  Memory Usage: 17kB
              ->  Seq Scan on sponsor s  (cost=0.00..22.70 rows=1270 width=36) (actual time=0.003..0.004 rows=6 loops=1)
Planning Time: 0.252 ms
Execution Time: 0.162 ms
