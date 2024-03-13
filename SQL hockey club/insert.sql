CREATE  SEQUENCE IF NOT EXISTS competition_seq;
CREATE SEQUENCE IF NOT EXISTS trainer_seq;
CREATE SEQUENCE IF NOT EXISTS contract_seq;
CREATE SEQUENCE IF NOT EXISTS management_seq;
CREATE SEQUENCE IF NOT EXISTS match_seq;
CREATE SEQUENCE IF NOT EXISTS player_seq;
CREATE SEQUENCE IF NOT EXISTS playerTest_seq;
CREATE SEQUENCE IF NOT EXISTS sponsor_seq;
CREATE SEQUENCE IF NOT EXISTS team_seq;
CREATE SEQUENCE IF NOT EXISTS results_seq;
CREATE SEQUENCE IF NOT EXISTS trainer_team_seq;
CREATE SEQUENCE IF NOT EXISTS rival_seq;
CREATE SEQUENCE IF NOT EXISTS nationality_seq;
CREATE SEQUENCE IF NOT EXISTS position_seq;
CREATE SEQUENCE IF NOT EXISTS trainer_team_date_seq;
CREATE SEQUENCE IF NOT EXISTS team_seq;

INSERT INTO Position (Position_id, Name)
VALUES (nextval('position_seq'), 'нападающий');


INSERT INTO Position (Position_id, Name)
VALUES (nextval('position_seq'), 'защитник');


INSERT INTO Position (Position_id, Name)
VALUES (nextval('position_seq'), 'вратарь');


INSERT INTO Position (Position_id, Name)
VALUES (nextval('position_seq'), 'полузащитник');


INSERT INTO Position (Position_id, Name)
VALUES (nextval('position_seq'), 'правый полузащитник');


INSERT INTO Position (Position_id, Name)
VALUES (nextval('position_seq'), 'левый полузащитник');


INSERT INTO Position (Position_id, Name)
VALUES (nextval('position_seq'), 'левый нападающий');


INSERT INTO Position (Position_id, Name)
VALUES (nextval('position_seq'), 'правый нападающий');


INSERT INTO Position (Position_id, Name)
VALUES (nextval('position_seq'), 'капитан');





INSERT INTO Team (Team_id, Team_name)
VALUES (nextval('team_seq'), 'Факел');


INSERT INTO Team (Team_id, Team_name)
VALUES (nextval('team_seq'), 'Зенит');


INSERT INTO Team (Team_id, Team_name)
VALUES (nextval('team_seq'), 'Буран');


INSERT INTO Team (Team_id, Team_name)
VALUES (nextval('team_seq'), 'Авангард');


INSERT INTO Team (Team_id, Team_name)
VALUES (nextval('team_seq'), 'Локомотив');


INSERT INTO Team (Team_id, Team_name)
VALUES (nextval('team_seq'), 'Динамо');


INSERT INTO Team (Team_id, Team_name)
VALUES (nextval('team_seq'), 'Спартак');


INSERT INTO Team (Team_id, Team_name)
VALUES (nextval('team_seq'), 'ЦСКА');

INSERT INTO Team (Team_id, Team_name)
VALUES (nextval('team_seq'), 'ТАЛИБЫ');





INSERT INTO Nationality (Nationality_id, Name)
VALUES (nextval('nationality_seq'), 'русский');


INSERT INTO Nationality (Nationality_id, Name)
VALUES (nextval('nationality_seq'), 'немец');


INSERT INTO Nationality (Nationality_id, Name)
VALUES (nextval('nationality_seq'), 'китаец');


INSERT INTO Nationality (Nationality_id, Name)
VALUES (nextval('nationality_seq'), 'араб');


INSERT INTO Nationality (Nationality_id, Name)
VALUES (nextval('nationality_seq'), 'американец');


INSERT INTO Nationality (Nationality_id, Name)
VALUES (nextval('nationality_seq'), 'француз');


INSERT INTO Nationality (Nationality_id, Name)
VALUES (nextval('nationality_seq'), 'канадец');


INSERT INTO Nationality (Nationality_id, Name)
VALUES (nextval('nationality_seq'), 'итальянец');


INSERT INTO Nationality (Nationality_id, Name)
VALUES (nextval('nationality_seq'), 'испанец');

INSERT INTO Nationality (Nationality_id, Name)
VALUES (nextval('nationality_seq'), 'талиб');








INSERT INTO Trainer (Trainer_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Licence)
VALUES (nextval('trainer_seq'), 'Юрий', 'Ух', 'Сергеевич', 123, '2000-10-10', '89201234567', 'УРС');


INSERT INTO Trainer (Trainer_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Licence)
VALUES (nextval('trainer_seq'), 'Анна', 'Петрова', 'Игоревна', 456, '1980-05-15', '89209876543', 'ТРФ');


INSERT INTO Trainer (Trainer_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Licence)
VALUES (nextval('trainer_seq'), 'Максим', 'Смирнов', 'Алексеевич', 789, '1975-08-20', '89051234567', 'СТР');


INSERT INTO Trainer (Trainer_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Licence)
VALUES (nextval('trainer_seq'), 'Елена', 'Иванова', 'Михайловна', 123, '1982-04-10', '89011223344', 'УФР');


INSERT INTO Trainer (Trainer_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Licence)
VALUES (nextval('trainer_seq'), 'Алексей', 'Семенов', 'Васильевич', 567, '1978-07-25', '89105559999', 'ЛФР');


INSERT INTO Trainer (Trainer_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Licence)
VALUES (nextval('trainer_seq'), 'Мария', 'Ковалева', 'Игоревна', 789, '1985-03-30', '89014445566', 'СУФ');

INSERT INTO Trainer (Trainer_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Licence)
VALUES (nextval('trainer_seq'), 'Иван', 'Иванов', 'Иванович', 123, '2000-10-10', '89201234567', 'УРС');





INSERT INTO Results (Results_id, Team_name, League_placement, Prize)
VALUES (nextval('Results_seq'), 'Буран', 2, 1000);


INSERT INTO Results (Results_id, Team_name, League_placement, Prize)
VALUES (nextval('Results_seq'), 'Авангард', 1, 2000);


INSERT INTO Results (Results_id, Team_name, League_placement, Prize)
VALUES (nextval('Results_seq'), 'Локомотив', 3, 800);


INSERT INTO Results (Results_id, Team_name, League_placement, Prize)
VALUES (nextval('Results_seq'), 'Динамо', 4, 600);


INSERT INTO Results (Results_id, Team_name, League_placement, Prize)
VALUES (nextval('Results_seq'), 'Спартак', 2, 1000);


INSERT INTO Results (Results_id, Team_name, League_placement, Prize)
VALUES (nextval('Results_seq'), 'ЦСКА', 5, 400);



INSERT INTO Sponsor (Sponsor_id, Name)
VALUES (nextval('sponsor_seq'), 'Coca cola');


INSERT INTO Sponsor (Sponsor_id, Name)
VALUES (nextval('sponsor_seq'), 'PepsiCo');


INSERT INTO Sponsor (Sponsor_id, Name)
VALUES (nextval('sponsor_seq'), 'McDonalds');


INSERT INTO Sponsor (Sponsor_id, Name)
VALUES (nextval('sponsor_seq'), 'Nike');


INSERT INTO Sponsor (Sponsor_id, Name)
VALUES (nextval('sponsor_seq'), 'Adidas');


INSERT INTO Sponsor (Sponsor_id, Name)
VALUES (nextval('sponsor_seq'), 'Samsung');




INSERT INTO Management (Management_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Team_id)
VALUES (nextval('management_seq'), 'Виталий', 'Быков', 'Витальевич', 345, '19700303', '89205437234',
        (SELECT Team_id FROM Team WHERE Team_name = 'Факел'));


INSERT INTO Management (Management_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Team_id)
VALUES (nextval('management_seq'), 'Ирина', 'Петрова', 'Александровна', 456, '19850415', '89203124567',
        (SELECT Team_id FROM Team WHERE Team_name = 'Зенит'));


INSERT INTO Management (Management_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Team_id)
VALUES (nextval('management_seq'), 'Алексей', 'Сидоров', 'Михайлович', 789, '19790220', '89055551234',
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'));


INSERT INTO Management (Management_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Team_id)
VALUES (nextval('management_seq'), 'Марина', 'Иванова', 'Сергеевна', 123, '19860810', '89098765432',
        (SELECT Team_id FROM Team WHERE Team_name = 'Авангард'));


INSERT INTO Management (Management_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Team_id)
VALUES (nextval('management_seq'), 'Андрей', 'Семенов', 'Петрович', 567, '19801005', '89205432100',
        (SELECT Team_id FROM Team WHERE Team_name = 'Локомотив'));


INSERT INTO Management (Management_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Team_id)
VALUES (nextval('management_seq'), 'Елена', 'Ковалева', 'Игоревна', 789, '19770330', '89012349876',
        (SELECT Team_id FROM Team WHERE Team_name = 'Динамо'));




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
    '1989-12-18',
    92000,
    (SELECT Team_id FROM Team WHERE Team_name = 'Локомотив'),
    (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
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
    '1979-12-18',
    92000,
    (SELECT Team_id FROM Team WHERE Team_name = 'Локомотив'),
    (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
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






INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13465, '20230101', '20240202', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Coca cola'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'));


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13465, '20230101', '20240302', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Coca cola'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'));

INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13465, '20230101', '20240302', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'PepsiCo'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'));

INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13465, '20230101', '20240302', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'McDonalds'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'));

INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13465, '20230101', '20240302', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Nike'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'));



INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13465, '20230101', '20240302', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Adidas'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'));


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13465, '20230101', '20240302', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Samsung'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'));

INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13465, '20230101', '20230910', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Coca cola'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'));


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13465, '20230101', '20230910', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Coca cola'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'));



INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13465, '20190401', '20200910', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Adidas'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'));


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13465, '20230101', '20230910', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Samsung'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'));


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13465, '20230101', '20230910', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'PepsiCo'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'));


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13466, '20230115', '20241231', 160000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Coca cola'),
        (SELECT Player_id FROM Player WHERE (Surname = 'Шушков' AND Name = 'Илья')),
        (SELECT Team_id FROM Player WHERE (Surname = 'Шушков' AND Name = 'Илья')));

INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13467, '20230110', '20241231', 155000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'McDonalds'),
        (SELECT Player_id FROM Player WHERE (Surname = 'Шушков' AND Name = 'Антон')),
        (SELECT Team_id FROM Player  WHERE (Surname = 'Шушков' AND Name = 'Антон')));


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13467, '20250110', '20261231', 155000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'McDonalds'),
        (SELECT Player_id FROM Player WHERE (Surname = 'Шушков' AND Name = 'Антон')),
        (SELECT Team_id FROM Player  WHERE (Surname = 'Шушков' AND Name = 'Антон')));


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13468, '20230105', '20241231', 170000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Nike'),
        (SELECT Player_id FROM Player WHERE Surname = 'Рощупкин'),
        (SELECT Team_id FROM Player WHERE Surname = 'Рощупкин'));


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13469, '20230120', '20231231', 175000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Adidas'),
        (SELECT Player_id FROM Player WHERE Surname = 'Ковыршин'),
        (SELECT Team_id FROM Player WHERE Surname = 'Ковыршин'));


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13470, '20230125', '20231231', 180000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Samsung'),
        (SELECT Player_id FROM Player WHERE Surname = 'Кыко'),
        (SELECT Team_id FROM Player WHERE Surname = 'Кыко'));



INSERT INTO Trainer_team_date (Start_date, End_date, Trainer_id, Team_id)
VALUES ('20220101', NULL,
        (SELECT Trainer_id FROM Trainer WHERE Surname = 'Петрова'),
        (SELECT Team_id FROM Team WHERE Team_name = 'Факел'));


INSERT INTO Trainer_team_date (Start_date, End_date, Trainer_id, Team_id)
VALUES ('20220101', NULL,
        (SELECT Trainer_id FROM Trainer WHERE Surname = 'Ух'),
        (SELECT Team_id FROM Team WHERE Team_name = 'Зенит'));


INSERT INTO Trainer_team_date (Start_date, End_date, Trainer_id, Team_id)
VALUES ('20220101', NULL,
        (SELECT Trainer_id FROM Trainer WHERE Surname = 'Смирнов'),
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'));


INSERT INTO Trainer_team_date (Start_date, End_date, Trainer_id, Team_id)
VALUES ('20220101', NULL,
        (SELECT Trainer_id FROM Trainer WHERE Surname = 'Иванов'),
        (SELECT Team_id FROM Team WHERE Team_name = 'Авангард'));


INSERT INTO Trainer_team_date (Start_date, End_date, Trainer_id, Team_id)
VALUES ('20220101', NULL,
        (SELECT Trainer_id FROM Trainer WHERE Surname = 'Ковалева'),
        (SELECT Team_id FROM Team WHERE Team_name = 'Локомотив'));


INSERT INTO Trainer_team_date (Start_date, End_date, Trainer_id, Team_id)
VALUES ('20220101', NULL,
        (SELECT Trainer_id FROM Trainer WHERE Surname = 'Петрова'),
        (SELECT Team_id FROM Team WHERE Team_name = 'ТАЛИБЫ'));




INSERT INTO Competition (Competition_id, Wins_count, Team_name, Results_id)
VALUES (nextval('competition_seq'), '5',
        (Select team_name FROM team WHERE team_name = 'Буран'),
        (SELECT Results_id FROM Results WHERE Team_name = 'Буран'));


INSERT INTO Competition (Competition_id, Wins_count, Team_name, Results_id)
VALUES (nextval('competition_seq'), '6',
        (SELECT team_name FROM Team WHERE team_name = 'Авангард'),
        (SELECT Results_id FROM Results WHERE Team_name = 'Авангард'));


INSERT INTO Competition (Competition_id, Wins_count, Team_name, Results_id)
VALUES (nextval('competition_seq'), '4',
        (SELECT team_name FROM Team WHERE team_name = 'Локомотив'),
        (SELECT Results_id FROM Results WHERE Team_name = 'Локомотив'));


INSERT INTO Competition (Competition_id, Wins_count, Team_name, Results_id)
VALUES (nextval('competition_seq'), '3',
        (SELECT team_name FROM Team WHERE team_name = 'Динамо'),
        (SELECT Results_id FROM Results WHERE Team_name = 'Динамо'));


INSERT INTO Competition (Competition_id, Wins_count, Team_name, Results_id)
VALUES (nextval('competition_seq'), '7',
        (SELECT team_name FROM Team WHERE team_name = 'Спартак'),
        (SELECT Results_id FROM Results WHERE Team_name = 'Спартак'));


INSERT INTO Competition (Competition_id, Wins_count, Team_name, Results_id)
VALUES (nextval('competition_seq'), '8',
        (SELECT team_name FROM Team WHERE team_name = 'ЦСКА'),
        (SELECT Results_id FROM Results WHERE Team_name = 'ЦСКА'));




INSERT INTO Match (Match_id, Goals_count, Missed_count,
                   Tickets_sold, Strategy, Tactic, Competition_id, Team_id,
                   Rival_id)
VALUES (nextval('match_seq'), 3, 2, 1500, 'N1', 'N2',
        (SELECT Competition_id FROM Competition WHERE Team_name = 'Буран'),
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'),
        (SELECT Team_id FROM Team WHERE Team_Name = 'Зенит'));


INSERT INTO Match (Match_id, Goals_count, Missed_count, Tickets_sold, Strategy, Tactic, Competition_id, Team_id, Rival_id)
VALUES (nextval('match_seq'), 2, 4, 1200, 'N3', 'N4',
        (SELECT Competition_id FROM Competition WHERE Team_name = 'Авангард'),
        (SELECT Team_id FROM Team WHERE Team_name = 'Авангард'),
        (SELECT Team_id FROM Team WHERE Team_Name = 'Локомотив'));


INSERT INTO Match (Match_id, Goals_count, Missed_count, Tickets_sold, Strategy, Tactic, Competition_id, Team_id, Rival_id)
VALUES (nextval('match_seq'), 1, 3, 1000, 'N5', 'N6',
        (SELECT Competition_id FROM Competition WHERE Team_name = 'Локомотив'),
        (SELECT Team_id FROM Team WHERE Team_name = 'Локомотив'),
        (SELECT Team_id FROM Team WHERE Team_Name = 'Авангард'));


INSERT INTO Match (Match_id, Goals_count, Missed_count, Tickets_sold, Strategy, Tactic, Competition_id, Team_id, Rival_id)
VALUES (nextval('match_seq'), 2, 2, 1100, 'N7', 'N8',
        (SELECT Competition_id FROM Competition WHERE Team_name = 'Динамо'),
        (SELECT Team_id FROM Team WHERE Team_name = 'Динамо'),
        (SELECT Team_id FROM Team WHERE Team_Name = 'Спартак'));


INSERT INTO Match (Match_id, Goals_count, Missed_count, Tickets_sold, Strategy, Tactic, Competition_id, Team_id, Rival_id)
VALUES (nextval('match_seq'), 3, 1, 1300, 'N9', 'N10',
        (SELECT Competition_id FROM Competition WHERE Team_name = 'Спартак'),
        (SELECT Team_id FROM Team WHERE Team_name = 'Спартак'),
        (SELECT Team_id FROM Team WHERE Team_Name = 'Динамо'));


INSERT INTO Match (Match_id, Goals_count, Missed_count, Tickets_sold, Strategy, Tactic, Competition_id, Team_id, Rival_id)
VALUES (nextval('match_seq'), 2, 2, 1250, 'N11', 'N12',
        (SELECT Competition_id FROM Competition WHERE Team_name = 'ЦСКА'),
        (SELECT Team_id FROM Team WHERE Team_name = 'ЦСКА'),
        (SELECT Team_id FROM Team WHERE Team_Name = 'Зенит'));
