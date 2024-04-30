--31.1 Выбрать название спонсора, который заключил договора с наибольшим количеством игроков из Германии.
EXPLAIN  ANALYSE
SELECT S.Name AS SponsorName
FROM Sponsor AS S
JOIN Contract AS C ON S.Sponsor_id = C.sponsor_id
JOIN Player AS P ON C.Player_id = P.Player_id
JOIN Nationality AS N ON P.Nationality_id = N.Nationality_id
WHERE N.Name = 'немец'
GROUP BY S.Name
ORDER BY COUNT(*) DESC
LIMIT 1;


Limit  (cost=4683.12..4683.12 rows=1 width=40) (actual time=0.110..0.111 rows=1 loops=1)
  ->  Sort  (cost=4683.12..4683.12 rows=1 width=40) (actual time=0.109..0.110 rows=1 loops=1)
        Sort Key: (count(*)) DESC
        Sort Method: top-N heapsort  Memory: 25kB
        ->  GroupAggregate  (cost=4683.09..4683.11 rows=1 width=40) (actual time=0.098..0.102 rows=6 loops=1)
              Group Key: s.name
              ->  Sort  (cost=4683.09..4683.09 rows=1 width=32) (actual time=0.092..0.094 rows=8 loops=1)
                    Sort Key: s.name
                    Sort Method: quicksort  Memory: 25kB
                    ->  Nested Loop  (cost=0.42..4683.08 rows=1 width=32) (actual time=0.040..0.073 rows=8 loops=1)
                          Join Filter: (c.sponsor_id = s.sponsor_id)
                          Rows Removed by Join Filter: 15
                          ->  Nested Loop  (cost=0.42..4644.50 rows=1 width=4) (actual time=0.036..0.056 rows=8 loops=1)
                                Join Filter: (p.nationality_id = n.nationality_id)
                                ->  Seq Scan on nationality n  (cost=0.00..25.88 rows=1 width=4) (actual time=0.010..0.012 rows=1 loops=1)
                                      Filter: (name = 'немец'::text)
                                      Rows Removed by Filter: 9
                                ->  Nested Loop  (cost=0.42..4610.50 rows=650 width=8) (actual time=0.024..0.041 rows=8 loops=1)
                                      ->  Seq Scan on contract c  (cost=0.00..16.50 rows=650 width=8) (actual time=0.004..0.005 rows=8 loops=1)
                                      ->  Index Scan using player_pkey on player p  (cost=0.42..7.07 rows=1 width=8) (actual time=0.004..0.004 rows=1 loops=8)
                                            Index Cond: (player_id = c.player_id)
                          ->  Seq Scan on sponsor s  (cost=0.00..22.70 rows=1270 width=36) (actual time=0.001..0.001 rows=3 loops=8)
Planning Time: 0.325 ms
Execution Time: 0.160 ms







--31.2
EXPLAIN  ANALYSE
WITH SponsorPlayerCounts AS (
    SELECT
        S.Name AS SponsorName,
        COUNT(P.Player_id) AS player_count
    FROM Sponsor AS S
    JOIN Contract AS C ON S.Sponsor_id = C.sponsor_id
    JOIN Player AS P ON C.Player_id = P.Player_id
    JOIN Nationality AS N ON P.Nationality_id = N.Nationality_id
    WHERE N.Name = 'немец'
    GROUP BY S.Name
)
SELECT SponsorName
FROM (
    SELECT SponsorName, ROW_NUMBER() OVER (ORDER BY player_count DESC) AS row_num
    FROM SponsorPlayerCounts
) RankedSponsors
WHERE row_num = 1;


Subquery Scan on rankedsponsors  (cost=4665.42..4665.45 rows=1 width=32) (actual time=0.129..0.134 rows=1 loops=1)
  Filter: (rankedsponsors.row_num = 1)
  Rows Removed by Filter: 5
  ->  WindowAgg  (cost=4665.42..4665.44 rows=1 width=48) (actual time=0.128..0.132 rows=6 loops=1)
        ->  Sort  (cost=4665.42..4665.43 rows=1 width=40) (actual time=0.119..0.121 rows=6 loops=1)
              Sort Key: sponsorplayercounts.player_count DESC
              Sort Method: quicksort  Memory: 25kB
              ->  Subquery Scan on sponsorplayercounts  (cost=4665.38..4665.41 rows=1 width=40) (actual time=0.110..0.116 rows=6 loops=1)
                    ->  GroupAggregate  (cost=4665.38..4665.40 rows=1 width=40) (actual time=0.110..0.115 rows=6 loops=1)
                          Group Key: s.name
                          ->  Sort  (cost=4665.38..4665.39 rows=1 width=36) (actual time=0.104..0.105 rows=8 loops=1)
                                Sort Key: s.name
                                Sort Method: quicksort  Memory: 25kB
                                ->  Nested Loop  (cost=0.57..4665.37 rows=1 width=36) (actual time=0.058..0.091 rows=8 loops=1)
                                      Join Filter: (c.sponsor_id = s.sponsor_id)
                                      Rows Removed by Join Filter: 15
                                      ->  Nested Loop  (cost=0.57..4626.80 rows=1 width=8) (actual time=0.054..0.073 rows=8 loops=1)
                                            Join Filter: (p.nationality_id = n.nationality_id)
                                            ->  Index Scan using unique_nation on nationality n  (cost=0.15..8.17 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
                                                  Index Cond: (name = 'немец'::text)
                                            ->  Nested Loop  (cost=0.42..4610.50 rows=650 width=12) (actual time=0.029..0.046 rows=8 loops=1)
                                                  ->  Seq Scan on contract c  (cost=0.00..16.50 rows=650 width=8) (actual time=0.007..0.008 rows=8 loops=1)
                                                  ->  Index Scan using player_pkey on player p  (cost=0.42..7.07 rows=1 width=8) (actual time=0.004..0.004 rows=1 loops=8)
                                                        Index Cond: (player_id = c.player_id)
                                      ->  Seq Scan on sponsor s  (cost=0.00..22.70 rows=1270 width=36) (actual time=0.001..0.001 rows=3 loops=8)
Planning Time: 0.360 ms
Execution Time: 0.219 ms









