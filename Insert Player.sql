

INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Антон', 'Шушков', 'Сергеевич', 12345, 82, 195, 105, '89204567687', '2004-08-16',
        1000000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'левый полузащитник'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Антон', 'Шушков', 'Сергеевич', 12345, 82, 195, 105, '89204567687', '2004-08-16',
        1000000,
        (SELECT Team_id FROM Team WHERE Team_name = 'ЦСКА'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'левый полузащитник'));

INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Игорь', 'Шушков', 'Сергеевич', 12345, 82, 195, 105, '89204567687', '2004-08-16',
        1000000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'левый полузащитник'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Марк', 'Макаренко', 'Игоревич', 12345, 69, 180, 66, '89204427887', '2002-10-01',
        1000000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'немец'),
        (SELECT Position_id FROM Position WHERE Name = 'капитан'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Илья', 'Шушков', 'Сергеевич', 12345, 81, 190, 90, '89204562343', '2002-09-09', 1200000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'француз'),
        (SELECT Position_id FROM Position WHERE Name = 'левый нападающий'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Дмитрий', 'Рощупкин', 'Юрьевич', 12345, 3, 186, 81, '89204567687', '2002-12-30',
        1200000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'защитник'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Евгений', 'Ковыршин', 'Витальевич', 12345, 1, 185, 66, '89204567687', '2003-03-09',
        2000000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'китаец'),
        (SELECT Position_id FROM Position WHERE Name = 'вратарь'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Давид', 'Майоров', 'Тимурович', 12345, 22, 170, 70, '89204567687', '1999-11-11', 100000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Факел'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'немец'),
        (SELECT Position_id FROM Position WHERE Name = 'нападающий'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Константин', 'Степанов', 'Глебович', 12345, 56, 170, 70, '89204567687', '1998-10-09',
        100000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Факел'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'канадец'),
        (SELECT Position_id FROM Position WHERE Name = 'защитник'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Артем', 'Быков', 'Артемович', 12345, 1, 170, 70, '89204567687', '1980-01-01', 100000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Факел'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'нападающий'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Артем', 'Кыко', 'Артемович', 12345, 13, 170, 70, '89204567687', '1980-01-01', 100000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Факел'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'араб'),
        (SELECT Position_id FROM Position WHERE Name = 'нападающий'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Артем', 'Мыко', 'Артемович', 12345, 11, 170, 70, '89204567687', '1980-01-01', 100000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Факел'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'итальянец'),
        (SELECT Position_id FROM Position WHERE Name = 'нападающий'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,  Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), '234uytfe324yt', 'Мыко', 'Артемович', 12345, 11, 170, 70, '89204567687', '1980-01-01', 1234567890,
        (SELECT Team_id FROM Team WHERE Team_name = 'Факел'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'испанец'),
        (SELECT Position_id FROM Position WHERE Name = 'нападающий'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Иван', 'Иванов', 'Иванович', 54321, 7, 180, 75, '89123456789', '1990-02-15', 90000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Динамо'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'защитник'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Петр', 'Петров', 'Петрович', 67890, 21, 175, 80, '89098765432', '1985-03-20', 85000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'), (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'нападающий'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Михаил', 'Сидоров', 'Александрович', 98765, 15, 188, 88, '89055512345', '1992-06-10', 95000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'), (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'вратарь'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Алексей', 'Александров', 'Алексеевич', 45678, 18, 175, 75, '89123456789', '1988-04-25', 88000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Авангард'), (SELECT Nationality_id FROM nationality WHERE Name = 'китаец'),
        (SELECT Position_id FROM Position WHERE Name = 'защитник'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Дмитрий', 'Смирнов', 'Сергеевич', 23456, 11, 182, 82, '89055554321', '1991-09-05', 92000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'), (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'нападающий'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Анна', 'Ковалева', 'Игоревна', 76543, 12, 175, 68, '89012345678', '1993-11-12', 86000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Локомотив'), (SELECT Nationality_id FROM nationality WHERE Name = 'немец'),
        (SELECT Position_id FROM Position WHERE Name = 'защитник'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Леонид', 'Павлов', 'Андреевич', 87654, 20, 183, 85, '89100099988', '1986-07-30', 94000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Локомотив'), (SELECT Nationality_id FROM nationality WHERE Name = 'испанец'),
        (SELECT Position_id FROM Position WHERE Name = 'нападающий'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Ольга', 'Григорьева', 'Андреевна', 98761, 9, 170, 65, '89098765432', '1989-12-18', 92000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Локомотив'), (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'защитник'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Карл', 'Шульц', 'Хайнц', 12349, 19, 184, 87, '89055512345', '1987-10-03', 93000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Динамо'), (SELECT Nationality_id FROM nationality WHERE Name = 'немец'),
        (SELECT Position_id FROM Position WHERE Name = 'нападающий'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Мария', 'Козлова', 'Ивановна', 13579, 14, 176, 70, '89123456789', '1994-05-22', 89000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Спартак'), (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'защитник'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Татар', '1', '1', 13579, 14, 176, 70, '89123456789', '1994-05-22', 89000,
        (SELECT Team_id FROM Team WHERE Team_name = 'ТАЛИБЫ'), (SELECT Nationality_id FROM nationality WHERE Name = 'талиб'),
        (SELECT Position_id FROM Position WHERE Name = 'защитник'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Татар', '2', '2', 13579, 14, 176, 70, '89123456789', '1994-05-22', 89000,
        (SELECT Team_id FROM Team WHERE Team_name = 'ТАЛИБЫ'), (SELECT Nationality_id FROM nationality WHERE Name = 'талиб'),
        (SELECT Position_id FROM Position WHERE Name = 'защитник'));

INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Test', 'Subj', '2', 13579, 14, 176, 70, '89123456789', '1994-05-22', 89000,
        (SELECT Team_id FROM Team WHERE Team_name = 'ТАЛИБЫ'), (SELECT Nationality_id FROM nationality WHERE Name = 'талиб'),
        (SELECT Position_id FROM Position WHERE Name = 'защитник'));










INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
SELECT
    nextval('player_seq'),
    'Сергей',
    'Опаль',
    'Андреев',
    98761,
    9,
    170,
    65,
    '89098765432',
    '1989-12-18',
    92000,
    (SELECT Team_id FROM Team WHERE Team_name = 'Локомотив'),
    (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
    (SELECT Position_id FROM Position WHERE Name = 'нападающий')
FROM generate_series(1, 100000);



INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
SELECT
    nextval('player_seq'),
    'Никита',
    'Буянов',
    'Кучерявов',
    98761,
    9,
    170,
    65,
    '89098765432',
    '1979-12-18',
    92000,
    (SELECT Team_id FROM Team WHERE Team_name = 'Буран'),
    (SELECT Nationality_id FROM nationality WHERE Name = 'немец'),
    (SELECT Position_id FROM Position WHERE Name = 'защитник')
FROM generate_series(1, 100000);





INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth, Salary, Team_id, Nationality_id, Position_id)
SELECT
    nextval('player_seq'),
    'Ольга',
    'Григорьева',
    'Андреевна',
    98761,
    9,
    170,
    65,
    '89098765432',
    '1999-12-18',
    92000,
    (SELECT Team_id FROM Team WHERE Team_name = 'Локомотив'),
    (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
    (SELECT Position_id FROM Position WHERE Name = 'защитник')
FROM generate_series(1, 100000);
