-- 38 39 40 41 42 43 44




--38.Выбрать однофамильцев тезок среди тренеров и игроков. +
SELECT
    Trainer.Name AS Trainer_Name,
    Trainer.Surname AS Trainer_Surname,
    Player.Name AS Player_Name,
    Player.Surname AS Player_Surname
FROM Trainer
INNER JOIN Player ON Trainer.Surname = Player.Surname
WHERE Trainer.trainer_id <> Player.Player_id;



--39.Выбрать всех однофамильцев по всей базе данных. +
SELECT surname, COUNT(*) AS total_count
FROM (
    SELECT surname FROM player
    UNION ALL
    SELECT surname FROM trainer
    UNION ALL
    SELECT surname FROM management
    UNION ALL
    SELECT surname FROM Contract
) AS all_surnames
GROUP BY surname
HAVING COUNT(*) > 1;




--40.Выбрать общее количество однофамильцев по всей БД. +
SELECT 'Total', SUM(cnt) AS total_count
FROM (
    SELECT COUNT(*) AS cnt
    FROM (
        SELECT surname FROM player
        UNION ALL
        SELECT surname FROM trainer
        UNION ALL
        SELECT surname FROM management
        UNION ALL
        SELECT surname FROM Contract
    ) AS all_surnames
    GROUP BY surname
    HAVING COUNT(*) > 1
) AS counts;



--41.Выбрать id и ФИО тренеров, которые тренировали 2 и более состава, у которых не было пропущенных шайб.

    SELECT Trainer.Trainer_id, Trainer.Name, Trainer.Surname
FROM Trainer
JOIN Trainer_team_date ON Trainer.Trainer_id = Trainer_team_date.Trainer_id
JOIN Contract ON Trainer_team_date.Team_id = Contract.Team_id
LEFT JOIN Match ON Contract.Team_id = Match.Team_id
GROUP BY Trainer.Trainer_id, Trainer.Name, Trainer.Surname
HAVING COUNT(DISTINCT Contract.Team_id) >= 2
AND SUM(Match.Missed_count) = 0 OR SUM(Match.Missed_count) IS NULL;

--42.Выбрать в одном столбце названия спонсоров и фамилии и инициалы руководителей. Результат отсортировать в лексикографическом порядке. +
SELECT Name AS Sponsor_or_Manager
FROM (
    SELECT Name
    FROM Sponsor

    UNION

    SELECT CONCAT(Name, ' (', Surname, ' ', LEFT(Name, 1),' ' , LEFT(Second_name, 1), ')') AS Name
    FROM Management
) AS CombinedData
ORDER BY Sponsor_or_Manager;



--43.Вывести сообщение 'есть игроки с просроченным контрактом', если есть игроки, у которых действие контракта закончилось, и новый контракт не заключен. +
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




--44. Для каждого спонсора выбрать всех руководителей и если были контракты с игроками, то количество игроков.+

SELECT
    s.Sponsor_id,
    s.name,
    c.name,
    c.surname,
    COUNT(c.Player_id) AS Player_count
FROM
    public.Contract c
INNER JOIN
    Sponsor s ON c.Sponsor_id = s.Sponsor_id

GROUP BY
    s.Sponsor_id,
    s.name,
    c.name,
    c.surname;

