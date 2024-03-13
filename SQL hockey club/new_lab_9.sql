-------------------------------------------- копирование таблицы

select * from team;

copy team to '/Users/speakland/Documents/psqlCopy/team.txt' with (format text);

delete from team;

\copy team from '/Users/speakland/Documents/psqlCopy/team.txt';

------------------------------------------- выгрузка БД в файл

--cd /Library/PostgreSQL/16/bin

pg_dump -U speakland -d HockeyClub -f /Users/speakland/Documents/psqlCopy/postgres.sql

drop table team cascade;

select * from team;

psql -d HockeyClub -U speakland -f /Users/speakland/Documents/psqlCopy/postgres.sql

-------------------------------------------- выгрузка кластера

create user temp;

\du

pg_dumpall -U speakland -f /Users/speakland/Documents/psqlCopy/claster_dump.sql

drop user temp;

psql -d HockeyClub -U speakland -f /Users/speakland/Documents/psqlCopy/claster_dump.sql


-----------------------------

sudo chown -R postgres:postgres "/Library/PostgreSQL/16/data"
sudo chmod -R 700 "/Library/PostgreSQL/16/data"

---------------------------------------------

drop table team cascade;

select * from team;

brew services stop postgresql@14

pg_ctl stop -D "/Library/PostgreSQL/16/data"

//вставляем папку

export LC_ALL=en_US.UTF-8

brew services start postgresql@14

brew services stop postgresql@14

SHOW data_directory;















