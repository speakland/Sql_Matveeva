
ALTER SYSTEM SET log_line_prefix = '%a %m [%p] %u ';

ALTER SYSTEM SET log_statement = 'ddl';
ALTER ROLE test SET log_min_duration_statement =1;

SELECT pg_reload_conf();




CREATE ROLE test LOGIN PASSWORD 'qwer';


GRANT ALL PRIVILEGES ON TABLE PlayerTest TO test;
GRANT ALL PRIVILEGES ON TABLE PlayerTest_audit TO test;
GRANT ALL PRIVILEGES ON Sequence playertest_playertest_id_seq TO test;
GRANT ALL PRIVILEGES ON Sequence team_seq TO test;
GRANT ALL PRIVILEGES ON Sequence player_seq TO test;



CREATE TABLE IF NOT EXISTS public.PlayerTest
(
    PlayerTest_id      serial NOT NULL,
    Team_id        serial NOT NULL,
    Name           text    NOT NULL,
    Surname        text    NOT NULL,
    Salary         integer NOT NULL
);


CREATE TABLE IF NOT EXISTS public.PlayerTest_audit
(
    LIKE public.PlayerTest,
    operation_type   text,
    when_was_execute timestamp,
    user_was_execute text
);

-- Создание функции аудита
CREATE OR REPLACE FUNCTION PlayerTest_audit()
    RETURNS TRIGGER
AS
$$
BEGIN
    IF (TG_OP = 'DELETE') THEN
        INSERT INTO public.PlayerTest_audit (operation_type, when_was_execute, user_was_execute, playertest_id,
                                             team_id, name, surname, salary)
        VALUES ('DELETE', now(), user, old.playertest_id, old.team_id, old.name, old.surname, old.salary);
    ELSIF (TG_OP = 'UPDATE') THEN
        INSERT INTO public.PlayerTest_audit (operation_type, when_was_execute, user_was_execute, playertest_id,
                                             team_id, name, surname, salary)
        VALUES ('DELETE UPD', now(), user, old.playertest_id, old.team_id, old.name, old.surname, old.salary);
        INSERT INTO public.PlayerTest_audit (operation_type, when_was_execute, user_was_execute, playertest_id,
                                             team_id, name, surname, salary)
        VALUES ('UPDATE NEW', now(), user, new.playertest_id, new.team_id, new.name, new.surname, new.salary);
    ELSIF (TG_OP = 'INSERT') THEN
        INSERT INTO public.PlayerTest_audit (operation_type, when_was_execute, user_was_execute, playertest_id,
                                             team_id, name, surname, salary)
        VALUES ('INSERT', now(), user, new.playertest_id, new.team_id, new.name, new.surname, new.salary);
    END IF;
    RETURN NULL;
END ;
$$ LANGUAGE plpgsql;

-- Создание триггера для аудита
CREATE TRIGGER PlayerTest_audit_trigger
    AFTER INSERT OR UPDATE OR DELETE
    ON public.PlayerTest
    FOR EACH ROW
EXECUTE FUNCTION PlayerTest_audit();




INSERT INTO PlayerTest (playertest_id,team_id, Name, Surname, Salary)
VALUES
(nextval('player_seq') ,nextval('team_seq'), 'John105', 'Doe105', 50000);


UPDATE playertest
SET
    Name = 'newJohn101',
    Surname = 'newDoe101'
where playertest_id = 300107;

DELETE FROM PlayerTest
WHERE playertest_id = 300111;



SELECT * FROM PlayerTest_audit;
