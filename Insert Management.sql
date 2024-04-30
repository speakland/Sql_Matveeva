INSERT INTO Management (Management_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Team_id)
VALUES (nextval('management_seq'), 'Виталий', 'Быков', 'Витальевич', 345, '19700303', '89205437234',
        (SELECT Team_id FROM Team WHERE Team_name = 'Факел'));

INSERT INTO Management (Management_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Team_id)
VALUES (nextval('management_seq'), 'Марк', 'Макаренко', 'Витальев', 345, '19700303', '89205437234',
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


INSERT INTO Management (Management_id, Name, Surname, Second_name, Passport_info, Date_of_birth, Phone, Team_id)
VALUES (nextval('management_seq'), 'Test', 'Subj', 'Игоревна', 789, '19770330', '89012349876',
        (SELECT Team_id FROM Team WHERE Team_name = 'Динамо'));

