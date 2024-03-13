--функция для поиска игроков по весу
CREATE OR REPLACE FUNCTION find_players_by_weight_df(target_weight integer)
RETURNS TABLE (
    player_id integer,
    team_id integer,
    name text,
    surname text,
    second_name text,
    passport_info integer,
    number integer,
    height integer,
    weight integer,
    phone text,
    date_of_birth date,
    nationality_id integer,
    position_id integer,
    salary integer
) AS $$
BEGIN
    RETURN QUERY
    SELECT *
    FROM public.Player
    WHERE public.Player.weight = target_weight;
END;
$$ LANGUAGE plpgsql
    SECURITY DEFINER;


SELECT * FROM find_players_by_weight_df(80);





--функция для поиска игроков по весу
CREATE OR REPLACE FUNCTION find_players_by_weight_inv(target_weight integer)
RETURNS TABLE (
    player_id integer,
    team_id integer,
    name text,
    surname text,
    second_name text,
    passport_info integer,
    number integer,
    height integer,
    weight integer,
    phone text,
    date_of_birth date,
    nationality_id integer,
    position_id integer,
    salary integer
) AS $$
BEGIN
    RETURN QUERY
    SELECT *
    FROM public.Player
    WHERE public.Player.weight = target_weight;
END;
$$ LANGUAGE plpgsql
    SECURITY INVOKER;


SELECT * FROM find_players_by_weight_inv(80);






--процедура для изменеия полей игрока
CREATE OR REPLACE PROCEDURE update_player_info(
    p_player_id integer,
    new_name text,
    new_surname text,
    new_salary integer,
    new_phone text)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE public.Player
    SET name = new_name,
        surname = new_surname,
        salary = new_salary,
        phone = new_phone
    WHERE player_id = p_player_id;
END
$$
    SECURITY DEFINER;



CALL update_player_info(307, 'Тигпппппп', 'Тигранович', 50000, '+1234567890');

 DROP PROCEDURE update_player_info(integer,text,text,integer,text);

