-- 45 46 47 48 49 50 51
--45.Выбрать ФИО игрока, который заключал контракты со всеми спонсорами, имеющимися в БД. +
SELECT
    P.Name,
    P.Surname
FROM
    Player P
WHERE NOT EXISTS (
    SELECT
        S.Sponsor_id
    FROM
        Sponsor S
    WHERE NOT EXISTS (
        SELECT
            C.Contract_id
        FROM
            Contract C
        WHERE
            C.Sponsor_id = S.Sponsor_id
            AND C.Player_id = P.Player_id
    )
);

--46.Выбрать название спонсора, который последние три года не заключал новых контрактов с игроками, и имеет наибольший ежегодный платеж среди всех спонсоров,
-- не заключавших контрактов последние три года. +
SELECT
    S.Name AS Sponsor_Name,
    SUM(C.Salary) AS Total_Payment
FROM
    Sponsor S
JOIN
    Contract C ON S.Sponsor_id = C.Sponsor_id
WHERE
    EXTRACT(YEAR FROM C.End_date) <= EXTRACT(YEAR FROM CURRENT_DATE) - 3
GROUP BY
    S.Sponsor_id, S.Name
HAVING
    MAX(EXTRACT(YEAR FROM C.End_date)) <= EXTRACT(YEAR FROM CURRENT_DATE) - 3
ORDER BY
    Total_Payment DESC
LIMIT 1;


--47.Выбрать ФИО игроков, играющих в наиболее успешном составе.+
SELECT
    P.Name || ' ' || P.Surname AS Player_Name,
    T.Team_name,
    C.Wins_count
FROM
    Player P
JOIN
    Team T ON P.Team_id = T.Team_id
JOIN
    Competition C ON T.Team_name = C.Team_name
WHERE
    C.Wins_count = (SELECT MAX(Wins_count) FROM Competition);




--48.Выбрать название национальности, игроки которой играю в составе, включающем игроков только одной национальности.+
SELECT DISTINCT T.Team_name, N.Name AS Nationality
FROM Team AS T
JOIN (
    SELECT Team_id, COUNT(DISTINCT Nationality_id) AS NationalityCount
    FROM Player
    GROUP BY Team_id
    HAVING COUNT(DISTINCT Nationality_id) = 1
) AS TeamNationalityCounts ON T.Team_id = TeamNationalityCounts.Team_id
JOIN Player AS P ON T.Team_id = P.Team_id
JOIN Nationality AS N ON P.Nationality_id = N.Nationality_id;


--49.Выбрать ФИО, дату рождения и телефон тренеров, которые тренируют межнациональные команды.+
SELECT
    T.Name AS Trainer_Name,
    T.Surname AS Trainer_Surname,
    T.Date_of_birth AS Trainer_Date_of_Birth,
    T.Phone AS Trainer_Phone
FROM
    Trainer AS T
JOIN
    Trainer_team_date AS TT ON T.Trainer_id = TT.Trainer_id
JOIN
    Team AS TM ON TT.Team_id = TM.Team_id
JOIN
    Player AS P ON TM.Team_id = P.Team_id
JOIN
    Nationality AS N ON P.Nationality_id = N.Nationality_id
GROUP BY
    T.Name, T.Surname, T.Date_of_birth, T.Phone
HAVING
    COUNT(DISTINCT N.Nationality_id) > 1;


--50.Выбрать самого дорогого игрока, играющего в составе, тренируемым Ивановым Иваном Ивановичем+
SELECT
    P.Name AS Player_Name,
    P.Surname AS Player_Surname,
    P.Second_name AS Player_Second_Name,
    P.Salary AS Player_Salary
FROM
    Player AS P
JOIN
    Trainer_team_date AS TTD ON P.Team_id = TTD.Team_id
JOIN
    Trainer AS T ON TTD.Trainer_id = T.Trainer_id
WHERE
    T.Name = 'Иван' AND
    T.Surname = 'Иванов' AND
    T.Second_name = 'Иванович'
ORDER BY
    P.Salary DESC
LIMIT 1;

--51.Выбрать ФИО игроков, которые имели перерывы более года в своей карьере (учитывать даты контрактов).+
SELECT DISTINCT Name, Surname,
       CASE WHEN EXTRACT(YEAR FROM PreviousContractStartDate) + 1 <>
                 EXTRACT(YEAR FROM Start_date) THEN True ELSE False END AS HasYearGap
FROM (
    SELECT *,
           LAG(Start_date) OVER (PARTITION BY Player_id ORDER BY Start_date) AS PreviousContractStartDate
    FROM Contract c
) as contracts;
-----

