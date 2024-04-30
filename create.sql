
BEGIN;







CREATE TABLE IF NOT EXISTS public.Competition
(
    Competition_id integer NOT NULL,
    Results_id     integer NOT NULL,
    Team_name      text    NOT NULL,
    Wins_count     integer NOT NULL
);

CREATE TABLE IF NOT EXISTS public.Trainer
(
    Trainer_id    integer NOT NULL,
    Name          text    NOT NULL,
    Surname       text    NOT NULL,
    Second_name   text,
    Passport_info integer NOT NULL,
    Date_of_birth DATE    NOT NULL,
    Phone         text,
    Licence       text    NOT NULL
);

CREATE TABLE IF NOT EXISTS public.Contract
(
    Contract_id integer NOT NULL,
    Sponsor_id integer NOT NULL,
    Player_id integer NOT NULL,
    Team_id integer NOT NULL,
    Number      integer NOT NULL,
    Start_date  date    NOT NULL,
    End_date    date    NOT NULL,
    Salary      integer NOT NULL,
    Name text NOT NULL,
    Surname text NOT NULL
);

CREATE TABLE IF NOT EXISTS public.Management
(
    Management_id integer NOT NULL,
    Team_id       integer NOT NULL,
    Name          text    NOT NULL,
    Surname       text    NOT NULL,
    Second_name   text,
    Passport_info integer NOT NULL,
    Date_of_birth date    NOT NULL,
    Phone         text
);

CREATE TABLE IF NOT EXISTS public.Match
(
    Match_id       integer NOT NULL,
    Competition_id integer NOT NULL,
    Team_id        integer NOT NULL,
    Rival_id       integer NOT NULL,
    Goals_count    integer NOT NULL,
    Missed_count   integer NOT NULL,
    Tickets_sold   integer NOT NULL,
    Strategy       text,
    Tactic         text
);


CREATE TABLE IF NOT EXISTS public.Player
(
    Player_id      serial NOT NULL,
    Team_id        serial NOT NULL,
    Name           text    NOT NULL,
    Surname        text    NOT NULL,
    Second_name    text,
    Passport_info  text NOT NULL,
    Number         text NOT NULL,
    Height         integer NOT NULL,
    Weight         integer NOT NULL,
    Phone          text,
    Date_of_birth date NOT NULL,
    Nationality_id serial NOT NULL,
    Position_id    serial NOT NULL,
    Salary         integer NOT NULL
);




CREATE TABLE IF NOT EXISTS public.Sponsor
(
    Sponsor_id serial NOT NULL,
    Name       text
);

CREATE TABLE IF NOT EXISTS public.Team
(
    Team_id   serial NOT NULL,
    Team_name text    NOT NULL
);

CREATE TABLE IF NOT EXISTS public.Results
(
    Results_id       serial NOT NULL,
    Team_name        text    NOT NULL,
    League_placement integer NOT NULL,
    Prize            integer
);



CREATE TABLE IF NOT EXISTS public.Nationality
(
    Nationality_id serial NOT NULL,
    Name           text    NOT NULL
);

CREATE TABLE IF NOT EXISTS public.Position
(
    Position_id serial NOT NULL,
    Name        text    NOT NULL
);

CREATE TABLE IF NOT EXISTS public.Trainer_team_date
(
    Trainer_id      serial NOT NULL,
    Team_id serial NOT NULL,
    Start_date      date    NOT NULL,
    End_date        date
);



ALTER TABLE IF EXISTS public.Competition
    ADD PRIMARY KEY (Competition_id);


ALTER TABLE IF EXISTS public.Trainer
    ADD PRIMARY KEY (Trainer_id);


ALTER TABLE IF EXISTS public.Contract
    ADD PRIMARY KEY (Contract_id);


ALTER TABLE IF EXISTS public.Management
    ADD PRIMARY KEY (Management_id);


ALTER TABLE IF EXISTS public.Match
    ADD PRIMARY KEY (Match_id);


ALTER TABLE IF EXISTS public.Player
    ADD PRIMARY KEY (Player_id);



ALTER TABLE IF EXISTS public.Sponsor
    ADD PRIMARY KEY (Sponsor_id);


ALTER TABLE IF EXISTS public.Team
    ADD PRIMARY KEY (Team_id);


ALTER TABLE IF EXISTS public.Results
    ADD PRIMARY KEY (Results_id);


ALTER TABLE IF EXISTS public.Trainer_team
    ADD PRIMARY KEY (Trainer_team_id);



ALTER TABLE IF EXISTS public.Nationality
    ADD PRIMARY KEY (Nationality_id);


ALTER TABLE IF EXISTS public.Position
    ADD PRIMARY KEY (Position_id);


ALTER TABLE IF EXISTS public.Nationality
    ADD CONSTRAINT unique_nation UNIQUE (Name);


ALTER TABLE IF EXISTS public.Position
    ADD CONSTRAINT unique_position UNIQUE (Name);



ALTER TABLE IF EXISTS public.Competition
    ADD CONSTRAINT fk_result
        FOREIGN KEY (Results_id)
            REFERENCES public.Results (Results_id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE;


ALTER TABLE public.Competition
    ADD CONSTRAINT good_count
        CHECK ( Wins_count >= 0 );


ALTER TABLE IF EXISTS public.Contract
    ADD CONSTRAINT fk_sponsor
        FOREIGN KEY (Sponsor_id)
            REFERENCES public.Sponsor (Sponsor_id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE;


ALTER TABLE IF EXISTS public.Contract
    ADD CONSTRAINT fk_player
        FOREIGN KEY (Player_id)
            REFERENCES public.Player (Player_id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE;


ALTER TABLE IF EXISTS public.Contract
    ADD CONSTRAINT fk_team
        FOREIGN KEY (Team_id)
            REFERENCES public.Team (Team_id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE;


ALTER TABLE public.Contract
    ADD CONSTRAINT good_date
        CHECK ( Start_date < End_date );


ALTER TABLE public.Contract
    ADD CONSTRAINT good_int
        CHECK ( Salary >= 0 );


ALTER TABLE IF EXISTS public.Management
    ADD CONSTRAINT fk_team
        FOREIGN KEY (Team_id)
            REFERENCES public.Team (Team_id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE;


ALTER TABLE public.Management
    ADD CONSTRAINT good_date
        CHECK ( Date_of_birth > '19500101' AND Date_of_birth < '20130101');


ALTER TABLE IF EXISTS public.Match
    ADD CONSTRAINT fk_competition
        FOREIGN KEY (Competition_id)
            REFERENCES public.Competition (Competition_id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE;


ALTER TABLE IF EXISTS public.Match
    ADD CONSTRAINT fk_team_id
        FOREIGN KEY (Team_id)
            REFERENCES public.Team (Team_id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE;


ALTER TABLE IF EXISTS public.Match
    ADD CONSTRAINT fk_rival_id
        FOREIGN KEY (Rival_id)
            REFERENCES public.Team (Team_id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE;


ALTER TABLE public.Match
    ADD CONSTRAINT good_goals
        CHECK ( Goals_count >= 0 );


ALTER TABLE public.Match
    ADD CONSTRAINT good_missed
        CHECK ( Missed_count >= 0 );


ALTER TABLE public.Match
    ADD CONSTRAINT good_tickets
        CHECK ( Tickets_sold >= 0 );


ALTER TABLE IF EXISTS public.Player
    ADD CONSTRAINT fk_team
        FOREIGN KEY (Team_id)
            REFERENCES public.Team (Team_id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE;


ALTER TABLE IF EXISTS public.Player
    ADD CONSTRAINT fk_nationality
        FOREIGN KEY (Nationality_id)
            REFERENCES public.Nationality (Nationality_id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE;


ALTER TABLE IF EXISTS public.Player
    ADD CONSTRAINT fk_position
        FOREIGN KEY (Position_id)
            REFERENCES public.Position (Position_id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE;


ALTER TABLE public.Player
    ADD CONSTRAINT good_height
        CHECK ( Height >= 150 );


ALTER TABLE public.Player
    ADD CONSTRAINT good_weight
        CHECK ( Weight >= 50 );


ALTER TABLE public.Player
    ADD CONSTRAINT good_salary
        CHECK ( Salary >= 0 );


ALTER TABLE IF EXISTS public.Trainer_team
    ADD CONSTRAINT fk_team
        FOREIGN KEY (Team_id)
            REFERENCES public.Team (Team_id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE;


ALTER TABLE IF EXISTS public.Trainer_team_date
    ADD CONSTRAINT fk_trainer
        FOREIGN KEY (Trainer_id)
            REFERENCES public.Trainer (Trainer_id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE;



ALTER TABLE IF EXISTS public.Trainer_team_date
    ADD CONSTRAINT fk_team
        FOREIGN KEY (Team_id)
            REFERENCES public.Team (Team_id)
            ON UPDATE NO ACTION
            ON DELETE CASCADE;



ALTER TABLE public.Trainer_team_date
    ADD CONSTRAINT good_date
        CHECK ( Start_date > '19500101' AND End_date < '20240101');


ALTER TABLE public.Trainer
    ADD CONSTRAINT good_date
        CHECK ( Date_of_birth > '19500101' AND Date_of_birth < '20100101');



END;