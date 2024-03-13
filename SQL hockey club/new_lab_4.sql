--функция на запрет изменения паспортных данных
CREATE OR REPLACE FUNCTION prevent_passport_change()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.passport_info <> OLD.passport_info THEN
        RAISE EXCEPTION 'Изменение паспортных данных игрока не допускается.';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


--триггер на паспортные данные
CREATE TRIGGER prevent_passport_change
BEFORE UPDATE ON player
FOR EACH ROW
EXECUTE FUNCTION prevent_passport_change();

UPDATE player
SET passport_info = '9876543'
WHERE player_id = 286;


UPDATE player
SET name = 'Вася'
WHERE player_id = 286;

SELECT *
FROM player
ORDER BY player_id;


--функция подсчета возраста
CREATE OR REPLACE FUNCTION calculate_age(date_of_birth DATE)
RETURNS INTEGER AS $$
BEGIN
    RETURN EXTRACT(YEAR FROM AGE(CURRENT_DATE, date_of_birth));
END;
$$ LANGUAGE plpgsql;


--функция на ограничение добавления  игрока по возрасту (18-45)
CREATE OR REPLACE FUNCTION check_player_age()
RETURNS TRIGGER AS $$
BEGIN
    DECLARE
        player_age INTEGER;
    BEGIN
        player_age := calculate_age(NEW.date_of_birth);

        IF player_age < 18 THEN
            RAISE EXCEPTION 'Игрокам младше 18 лет запрещено быть включенными в сборную.';
        END IF;

        IF player_age > 45 THEN
            RAISE EXCEPTION 'Игрокам старше 45 лет разрешено быть только тренерами.';
        END IF;

        RETURN NEW;
    END;
END;
$$ LANGUAGE plpgsql;


--триггер на запрет добавления по возрасту
CREATE TRIGGER check_player_age_trigger
BEFORE INSERT ON player
FOR EACH ROW
EXECUTE FUNCTION check_player_age();




INSERT INTO Player (Player_id, Name, Surname, Second_name, number, Passport_info, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Антон', 'Шушков', 'Сергеевич', 10, 12345, 195, 105, '89204567687', '2020-08-16',
        1000000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'левый полузащитник'));



INSERT INTO Player (Player_id, Name, Surname, Second_name, number, Passport_info, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Антон', 'Шушков', 'Сергеевич', 10, 12345, 195, 105, '89204567687', '1800-08-16',
        1000000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'левый полузащитник'));



INSERT INTO Player (Player_id, Name, Surname, Second_name, number, Passport_info, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Антон', 'Шушков', 'Сергеевич', 10, 12345, 195, 105, '89204567687', '2001-08-16',
        1000000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'левый полузащитник'));



