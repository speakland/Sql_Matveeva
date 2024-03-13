DELETE FROM public.Contract
WHERE end_date < CURRENT_DATE;



INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary, Sponsor_id, Player_id, Team_id)
VALUES (nextval('contract_seq'), 13465, '20230101', '20230910', 150000,
        (SELECT sponsor_id FROM Sponsor WHERE name = 'Coca cola'),
        (SELECT Player_id FROM Player WHERE Surname = 'Макаренко'),
        (SELECT Player.team_id FROM Player WHERE Surname = 'Макаренко'));



INSERT INTO Contract (Contract_id, Number, Start_date, End_date, Salary)
VALUES (nextval('contract_seq'), 13465, '20190401', '20200910', 150000);


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