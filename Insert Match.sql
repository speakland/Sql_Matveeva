
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
