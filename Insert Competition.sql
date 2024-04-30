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