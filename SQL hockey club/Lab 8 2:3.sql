-- 38 39 40 41 42 43 44




--38.Выбрать однофамильцев тезок среди тренеров и игроков.
SELECT
    Trainer.Name AS Trainer_Name,
    Trainer.Surname AS Trainer_Surname,
    Player.Name AS Player_Name,
    Player.Surname AS Player_Surname
FROM Trainer
INNER JOIN Player ON Trainer.Surname = Player.Surname
WHERE Trainer.trainer_id <> Player.Player_id;



--39.Выбрать всех однофамильцев по всей базе данных.
SELECT
    Surname,
    COUNT(*) AS CountOfPeopleWithSameSurname
FROM
    (
        SELECT Surname FROM Player
        UNION ALL
        SELECT Surname FROM Trainer
        UNION ALL
        SELECT Surname FROM Management
    ) AS AllPeople
GROUP BY
    Surname
HAVING
    COUNT(*) > 1;




--40.Выбрать общее количество однофамильцев по всей БД.
WITH AllNames AS (
    SELECT Name, Surname
    FROM Trainer
    UNION
    SELECT Name, Surname
    FROM Player
    UNION
    SELECT Name, Surname
    FROM Management
)

SELECT COUNT(*) AS TotalCount
FROM (
    SELECT Surname
    FROM AllNames
    GROUP BY Surname
    HAVING COUNT(*) > 1
) AS SharedSurnames;


--41.Выбрать id и ФИО тренеров, которые тренировали 2 и более состава, у которых не было пропущенных шайб.
WITH TeamsWithoutMissedGoals AS (
    SELECT DISTINCT t1.Team_id
    FROM Match t1
    WHERE NOT EXISTS (
        SELECT 1
        FROM Match t2
        WHERE t2.Team_id = t1.Team_id
          AND t2.Missed_count > 0
    )
)
--42.Выбрать в одном столбце названия спонсоров и фамилии и инициалы руководителей. Результат отсортировать в лексикографическом порядке.
SELECT Name AS Sponsor_or_Manager
FROM (
    SELECT Name
    FROM Sponsor

    UNION

    SELECT CONCAT(Name, ' (', Surname, ' ', LEFT(Second_name, 1), ')') AS Name
    FROM Management
) AS CombinedData
ORDER BY Sponsor_or_Manager;



--43.Вывести сообщение 'есть игроки с просроченным контрактом', если есть игроки, у которых действие контракта закончилось, и новый контракт не заключен.
SELECT
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM Contract AS C
            WHERE C.End_date < CURRENT_DATE
                AND NOT EXISTS (
                    SELECT 1
                    FROM Contract AS NewContract
                    WHERE NewContract.Player_id = C.Player_id
                        AND NewContract.Start_date > CURRENT_DATE
                )
        )
        THEN 'есть игроки с просроченным контрактом'
        ELSE 'нет игроков с просроченным контрактом'
    END AS Message;




--44.Для каждого спонсора выбрать всех игроков.
SELECT
    S.Sponsor_id,
    S.Name AS SponsorName,
    P.Player_id,
    P.Name AS PlayerName
FROM
    Sponsor AS S
JOIN
    Contract AS C ON S.Sponsor_id = C.Sponsor_id
JOIN
    Player AS P ON C.Player_id = P.Player_id;




