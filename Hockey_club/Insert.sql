--CREATE SEQUENCE competition_seq;
--CREATE SEQUENCE trainer_seq;
--CREATE SEQUENCE contract_seq;
--CREATE SEQUENCE management_seq;
--CREATE SEQUENCE match_seq;
--CREATE SEQUENCE player_seq;
--CREATE SEQUENCE sponsor_seq;
--CREATE SEQUENCE team_seq;
--CREATE SEQUENCE results_seq;
--CREATE SEQUENCE trainer_team_seq;
--CREATE SEQUENCE rival_seq;
--CREATE SEQUENCE nationality_seq;
--CREATE SEQUENCE position_seq;
--CREATE SEQUENCE trainer_team_date_seq;

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

INSERT INTO Nationality (Nationality_id, Name)
VALUES (nextval('nationality_seq'), 'русский');


INSERT INTO Nationality (Nationality_id, Name)
VALUES (nextval('nationality_seq'), 'немец');


INSERT INTO Nationality (Nationality_id, Name)
VALUES (nextval('nationality_seq'), 'китаец');


INSERT INTO Nationality (Nationality_id, Name)
VALUES (nextval('nationality_seq'), 'араб');


INSERT INTO Team (Team_id, Team_name)
VALUES (nextval('team_seq'), 'Факел');


INSERT INTO Team (Team_id, Team_name)
VALUES (nextval('team_seq'), 'Зенит');


INSERT INTO Team (Team_id, Team_name)
VALUES (nextval('team_seq'), 'Буран');


INSERT INTO Trainer (Trainer_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Licence)
VALUES (nextval('trainer_seq'), 'Юрий', 'Ух', 'Сергеевич', 123, '2000-10-10', '89201234567', 'УРС');


INSERT INTO Results (Results_id, Team_name, League_placement, Prize)
VALUES (nextval('Results_seq'), 'Буран', 2, 1000);


INSERT INTO Sponsor (Sponsor_id, Name)
VALUES (nextval('sponsor_seq'), 'Coca cola');


INSERT INTO Management (Management_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Team_id)
VALUES (nextval('management_seq'), 'Виталий', 'Быков', 'Витальевич', 345, '19700303', '89205437234',
        (SELECT Team_id FROM Team WHERE Team_name = 'Факел'));





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
VALUES (nextval('player_seq'), 'Марк', 'Макаренко', 'Игоревич', 12345, 69, 180, 66, '89204427887', '2002-10-01',
        1000000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'капитан'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Илья', 'Шушков', 'Сергеевич', 12345, 81, 190, 90, '89204562343', '2002-09-09', 1200000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
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
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'вратарь'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Давид', 'Майоров', 'Тимурович', 12345, 22, 170, 70, '89204567687', '1999-11-11', 100000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Факел'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'нападающий'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Константин', 'Степанов', 'Глебович', 12345, 56, 170, 70, '89204567687', '1998-10-09',
        100000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Факел'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
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
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'нападающий'));



INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), 'Артем', 'Мыко', 'Артемович', 12345, 11, 170, 70, '89204567687', '1980-01-01', 100000,
        (SELECT Team_id FROM Team WHERE Team_name = 'Факел'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'нападающий'));


INSERT INTO Player (Player_id, Name, Surname, Second_name, Passport_info, Number, Height, Weight, Phone, date_of_birth,
                    Salary,
                    Team_id, Nationality_id, Position_id)
VALUES (nextval('player_seq'), '234uytfe324yt', 'Мыко', 'Артемович', 12345, 11, 170, 70, '89204567687', '1980-01-01', 1234567890,
        (SELECT Team_id FROM Team WHERE Team_name = 'Факел'),
        (SELECT Nationality_id FROM nationality WHERE Name = 'русский'),
        (SELECT Position_id FROM Position WHERE Name = 'нападающий'));




INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13465, '20230101', '20250101', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Coca cola'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'));



INSERT INTO Trainer_team (Trainer_team_id, Management_surname, Team_id)
VALUES (nextval('trainer_team_seq'), 'Власов',
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'));


INSERT INTO Trainer_team_date (Start_date, End_date, Trainer_id, Trainer_team_id)
VALUES ('20220101', NULL,
        (SELECT Trainer_id FROM Trainer WHERE Surname = 'Ух'),
        (SELECT Trainer_team_id FROM Trainer_team WHERE Management_surname = 'Власов'));


INSERT INTO Competition (Competition_id, Wins_count, Team_name, Results_id)
VALUES (nextval('competition_seq'), '5',
        (Select team_name FROM team WHERE team_name = 'Буран'),
        (SELECT Results_id FROM Results WHERE Team_name = 'Буран'));


INSERT INTO Match (Match_id, Goals_count, Missed_count,
                   Tickets_sold, Strategy, Tactic, Competition_id, Team_id,
                   Rival_id)
VALUES (nextval('match_seq'), 3, 2, 1500, 'N1', 'N2',
        (SELECT Competition_id FROM Competition WHERE Team_name = 'Буран'),
        (SELECT Team_id FROM Team WHERE Team_name = 'Буран'),
        (SELECT Team_id FROM Team WHERE Team_Name = 'Зенит'));