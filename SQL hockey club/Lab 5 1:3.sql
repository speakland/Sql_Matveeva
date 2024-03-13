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


Limit  (cost=6.68..6.68 rows=1 width=40) (actual time=0.373..0.375 rows=1 loops=1)
  ->  Sort  (cost=6.68..6.68 rows=1 width=40) (actual time=0.373..0.374  rows=1 loops=1)
        Sort Key: (count(*)) DESC
        Sort Method: top-N heapsort  Memory: 25kB
        ->  GroupAggregate  (cost=6.65..6.67 rows=1 width=40) (actual time=0.116..0.119 rows=4 loops=1)
              Group Key: s.name
              ->  Sort  (cost=6.65..6.65 rows=1 width=32) (actual time=0.112..0.113 rows=4 loops=1)
                    Sort Key: s.name
                    Sort Method: quicksort  Memory: 25kB
                    ->  Nested Loop  (cost=2.05..6.64 rows=1 width=32) (actual time=0.076..0.094 rows=4 loops=1)
                          ->  Nested Loop  (cost=1.90..2.86 rows=1 width=4) (actual time=0.051..0.065 rows=4 loops=1)
                                ->  Merge Join  (cost=1.74..2.29 rows=10 width=8) (actual time=0.030..0.038 rows=10 loops=1)
                                      Merge Cond: (p.player_id = c.player_id)
                                      ->  Index Scan using player_pkey on player p  (cost=0.42..12722.77 rows=300023 width=8) (actual time=0.010..0.012 rows=10 loops=1)
                                      ->  Sort  (cost=1.27..1.29 rows=10 width=8) (actual time=0.017..0.018 rows=10 loops=1)
                                            Sort Key: c.player_id
                                            Sort Method: quicksort  Memory: 25kB
                                            ->  Seq Scan on contract c  (cost=0.00..1.10 rows=10 width=8) (actual time=0.008..0.010 rows=10 loops=1)
                                ->  Memoize  (cost=0.16..0.18 rows=1 width=4) (actual time=0.002..0.002 rows=0 loops=10)
                                      Cache Key: p.nationality_id
                                      Cache Mode: logical
                                      Hits: 5  Misses: 5  Evictions: 0  Overflows: 0  Memory Usage: 1kB
                                      ->  Index Scan using nationality_pkey on nationality n  (cost=0.15..0.17 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=5)
                                            Index Cond: (nationality_id = p.nationality_id)
                                            Filter: (name = 'немец'::text)
                                            Rows Removed by Filter: 1
                          ->  Index Scan using sponsor_pkey on sponsor s  (cost=0.15..3.77 rows=1 width=36) (actual time=0.007..0.007 rows=1 loops=4)
                                Index Cond: (sponsor_id = c.sponsor_id)
Planning Time: 5.773 ms
Execution Time: 0.545 ms














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
WHERE row_num = 1;k

Subquery Scan on rankedsponsors  (cost=6.69..6.72 rows=1 width=32) (actual time=0.129..0.134 rows=1 loops=1)
  Filter: (rankedsponsors.row_num = 1)
  Rows Removed by Filter: 3
  ->  WindowAgg  (cost=6.69..6.71 rows=1 width=48) (actual time=0.128..0.132 rows=4 loops=1)
        ->  Sort  (cost=6.69..6.69 rows=1 width=40) (actual time=0.121..0.123 rows=4 loops=1)
              Sort Key: sponsorplayercounts.player_count DESC
              Sort Method: quicksort  Memory: 25kB
              ->  Subquery Scan on sponsorplayercounts  (cost=6.65..6.68 rows=1 width=40) (actual time=0.113..0.117 rows=4 loops=1)
                    ->  GroupAggregate  (cost=6.65..6.67 rows=1 width=40) (actual time=0.113..0.116 rows=4 loops=1)
                          Group Key: s.name
                          ->  Sort  (cost=6.65..6.65 rows=1 width=36) (actual time=0.106..0.108 rows=4 loops=1)
                                Sort Key: s.name
                                Sort Method: quicksort  Memory: 25kB
                                ->  Nested Loop  (cost=2.05..6.64 rows=1 width=36) (actual time=0.081..0.100 rows=4 loops=1)
                                      ->  Nested Loop  (cost=1.90..2.86 rows=1 width=8) (actual time=0.077..0.092 rows=4 loops=1)
                                            ->  Merge Join  (cost=1.74..2.29 rows=10 width=12) (actual time=0.058..0.066 rows=10 loops=1)
                                                  Merge Cond: (p.player_id = c.player_id)
                                                  ->  Index Scan using player_pkey on player p  (cost=0.42..12722.77 rows=300023 width=8) (actual time=0.022..0.025 rows=10 loops=1)
                                                  ->  Sort  (cost=1.27..1.29 rows=10 width=8) (actual time=0.031..0.032 rows=10 loops=1)
                                                        Sort Key: c.player_id
                                                        Sort Method: quicksort  Memory: 25kB
                                                        ->  Seq Scan on contract c  (cost=0.00..1.10 rows=10 width=8) (actual time=0.021..0.023 rows=10 loops=1)
                                            ->  Memoize  (cost=0.16..0.18 rows=1 width=4) (actual time=0.002..0.002 rows=0 loops=10)
                                                  Cache Key: p.nationality_id
                                                  Cache Mode: logical
                                                  Hits: 5  Misses: 5  Evictions: 0  Overflows: 0  Memory Usage: 1kB
                                                  ->  Index Scan using nationality_pkey on nationality n  (cost=0.15..0.17 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=5)
                                                        Index Cond: (nationality_id = p.nationality_id)
                                                        Filter: (name = 'немец'::text)
                                                        Rows Removed by Filter: 1
                                      ->  Index Scan using sponsor_pkey on sponsor s  (cost=0.15..3.77 rows=1 width=36) (actual time=0.001..0.001 rows=1 loops=4)
                                            Index Cond: (sponsor_id = c.sponsor_id)
Planning Time: 1.000 ms
Execution Time: 11.263 ms








