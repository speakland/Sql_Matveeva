



-----------------------------------

INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13465, '20300101', '20350429', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Coca cola'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'), 'Илья', 'Витальев');

INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13465, '20270101', '20280429', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Coca cola'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'), 'Марк', 'Макаренко');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13465, '20230101', '20240302', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Coca cola'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'), 'Александр', 'Иванов');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13465, '20230101', '20240302', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'PepsiCo'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'), 'Дмитрий', 'Петров');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13465, '20230101', '20240302', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'McDonalds'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'), 'Михаил', 'Сидоров');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13465, '20230101', '20240302', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Nike'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'), 'Елена', 'Смирнова');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13465, '20230101', '20240302', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Adidas'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'), 'Ольга', 'Кузнецова');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13465, '20180101', '20190302', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Samsung'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'), 'Сергей', 'Лебедев');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13465, '20230101', '20230910', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Coca cola'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'), 'Иван', 'Козлов');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13465, '20180101', '20190910', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Coca cola'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'), 'Иван', 'Козлов');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13465, '20230101', '20230910', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Coca cola'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'), 'Мария', 'Андреева');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13465, '20190401', '20221231', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Samsung'),
        (SELECT Player_id FROM Player WHERE Surname = 'Иванов'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Иванов'), 'Алексей', 'Петров');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13465, '20230101', '20230910', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Samsung'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'), 'Алексей', 'Петров');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13465, '20230101', '20230910', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'PepsiCo'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'), 'Мария', 'Андреева');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13466, '20230115', '20241231', 160000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Coca cola'),
        (SELECT Player_id FROM Player WHERE (Surname = 'Шушков' AND Name = 'Илья')),
        (SELECT Team_id FROM Player WHERE (Surname = 'Шушков' AND Name = 'Илья')), 'Иван', 'Козлов');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13468, '20240105', '20251231', 170000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Nike'),
        (SELECT Player_id FROM Player WHERE Surname = 'Рощупкин'),
        (SELECT Team_id FROM Player WHERE Surname = 'Рощупкин'), 'Сергей', 'Лебедев');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13469, '20231120', '20242230', 175000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Adidas'),
        (SELECT Player_id FROM Player WHERE Surname = 'Ковыршин'),
        (SELECT Team_id FROM Player WHERE Surname = 'Ковыршин'), 'Ольга', 'Кузнецова');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13470, '20230125', '20231231', 180000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Samsung'),
        (SELECT Player_id FROM Player WHERE Surname = 'Кыко'),
        (SELECT Team_id FROM Player WHERE Surname = 'Кыко'), 'Илья', 'Витальев');


INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id, Name, Surname)
VALUES (nextval('contract_seq'), 13470, '20230125', '20231231', 180000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Samsung'),
        (SELECT Player_id FROM Player WHERE Surname = 'Кыко'),
        (SELECT Team_id FROM Player WHERE Surname = 'Кыко'), 'Test', 'Subj');