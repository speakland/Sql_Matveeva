
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