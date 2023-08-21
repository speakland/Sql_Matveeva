--select *
--from player join team on player.team_id = team.team_id
--where team_name = 'Буран';


--4 выбрать фио дату рождения с фамилией с К и М и из 4 букв
SELECT surname, date_of_birth
FROM player
WHERE ((surname LIKE 'М%' OR surname LIKE 'К%') AND LENGTH(surname) = 4)
ORDER BY date_of_birth DESC, surname;


DO
$$
    DECLARE
        i INTEGER := 1;
    BEGIN
        WHILE i <= 1500000
            LOOP
                PERFORM surname, date_of_birth
                FROM player
                WHERE ((surname LIKE 'М%' OR surname LIKE 'К%') AND length(surname) = 4)
                ORDER BY date_of_birth DESC, surname;
            i := i+1;

            END LOOP;

    END
$$;


DO
$$
    DECLARE
        i INTEGER := 1;
    BEGIN
        WHILE i <= 1500000
            LOOP
                PERFORM surname, date_of_birth
                FROM player
                WHERE (surname LIKE 'М%' AND LENGTH (surname) = 4)
                INTERSECT
                SELECT surname, date_of_birth
                FROM player
                WHERE (surname LIKE 'К%' AND LENGTH (surname) = 4)
                ORDER BY date_of_birth DESC, surname;
                i := i +1;
            END LOOP;

    END
$$;


--3 выбрать игроков старше 30 и отсорт по фамилии в лекс
SELECT *
FROM player
WHERE DATE_PART('year', date_of_birth) > 30;


DO
$$
    DECLARE
        i INTEGER := 1;
    BEGIN
        WHILE i <= 1500000
            LOOP
                PERFORM *
                FROM player
                WHERE DATE_PART ('year', date_of_birth) > 30
                ORDER BY surname;
                i := i + 1;
            END LOOP;
    END
$$;

DO
$$
    DECLARE
        i INTEGER := 1;
    BEGIN
        WHILE i <= 1500000
            LOOP
                PERFORM *
                FROM player
                WHERE date_part('year', date_of_birth) BETWEEN 30 and 100;
                i := i + 1;
            END LOOP;
    END
$$;
----------------------------------------------------------
--6 выбрать фио от 18 до 21

DO
$$
    DECLARE
        i INTEGER := 1;
    BEGIN
        WHILE i <= 1500000
            LOOP
                PERFORM surname
                FROM player
                WHERE date_part('year', date_of_birth) >= 18
                  AND date_part('year', date_of_birth) <= 21;
                i := i + 1;
            END LOOP;

    END
$$;


DO
$$
    DECLARE
        i INTEGER := 1;
    BEGIN
        WHILE i <= 1500000
            LOOP
                PERFORM surname
                FROM player
                WHERE date_part('year', date_of_birth) = 18
                   OR date_part('year', date_of_birth) = 19
                   OR date_part('year', date_of_birth) = 20
                   OR date_part('year', date_of_birth) = 21;
                i := i + 1;
            END LOOP;

    END
$$;

----------------------------------------------

--7 все данные о тренерах с id 1,3,4,7,10

DO
$$
    DECLARE
        i INTEGER := 1;
    BEGIN
        WHILE i <= 1500000
            LOOP
                PERFORM *
                FROM trainer
                WHERE trainer_id = 1
                   OR trainer_id = 3
                   OR trainer_id = 4
                   OR trainer_id = 7
                   OR trainer_id = 10;
                i := i + 1;
            END LOOP;
    END
$$;


DO
$$
    DECLARE
        i integer := 1;
    BEGIN
        WHILE i <= 1500000
            LOOP
                PERFORM *
                FROM trainer
                WHERE trainer_id IN (1, 3, 4, 7, 10);
                i := i + 1;
            END LOOP;
    END
$$;