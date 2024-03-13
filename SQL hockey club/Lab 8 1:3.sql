--31 32 33 34 35 36 37



--31.Выбрать название спонсора, который заключил договора с наибольшим количеством игроков из Германии.
SELECT S.Name AS Sponsor_Name
FROM Sponsor AS S
JOIN Contract AS C ON S.Sponsor_id = C.sponsor_id
JOIN Player AS P ON C.Player_id = P.Player_id
JOIN Nationality AS N ON P.Nationality_id = N.Nationality_id
WHERE N.Name = 'немец'
GROUP BY S.Name
ORDER BY COUNT(*) DESC
LIMIT 1;

--32.Выбрать спонсора, у которого наибольшее количество договоров с одним и тем же игроком.
SELECT
    S.Name AS Sponsor_Name
FROM Sponsor AS S
JOIN Contract AS C ON S.Sponsor_id = C.sponsor_id
GROUP BY S.Sponsor_id, S.Name
HAVING COUNT(DISTINCT C.Player_id) = (
    SELECT MAX(player_count)
    FROM (
        SELECT sponsor_id, COUNT(DISTINCT Player_id) AS player_count
        FROM Contract
        GROUP BY sponsor_id
    ) AS MaxPlayers
)
LIMIT 1;



--33.Выбрать фамилию и инициалы руководителей, в чьем составе есть игроки, дата завершения контракта с которыми истекает в текущем месяце.
SELECT DISTINCT
    M.Surname,
    M.Name,
    M.Second_name
FROM Management AS M
JOIN Team AS T ON M.Team_id = T.Team_id
JOIN Contract AS C ON T.Team_id = C.Team_id
WHERE EXTRACT(MONTH FROM C.End_date) = EXTRACT(MONTH FROM CURRENT_DATE)
  AND EXTRACT(YEAR FROM C.End_date) = EXTRACT(YEAR FROM CURRENT_DATE);


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

--35.Выбрать названия спонсоров, которые не заключали контракты последние пол года.
SELECT DISTINCT S.Name AS Sponsor_Name
FROM Sponsor AS S
WHERE S.Sponsor_id NOT IN (
    SELECT DISTINCT C.sponsor_id
    FROM Contract AS C
    WHERE C.Start_date >= '2023-03-01' AND C.Start_date <= '2023-08-31'
);
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


--37.Выбрать для каждого игрока прибыль по контракту актуальному на 12 апреля 2019 года.
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
