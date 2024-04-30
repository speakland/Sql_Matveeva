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
    SELECT SponsorName, RANK() OVER (ORDER BY player_count DESC) AS rank
    FROM SponsorPlayerCounts
) RankedSponsors
WHERE rank = 1;





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
