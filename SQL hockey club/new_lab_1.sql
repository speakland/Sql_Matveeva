CREATE ROLE all_users LOGIN;

CREATE ROLE read_user WITH PASSWORD 'asdf';
CREATE ROLE read_write_user WITH PASSWORD 'asdf';
CREATE ROLE guest_user WITH PASSWORD 'asdf';
CREATE ROLE admin_user WITH PASSWORD 'asdf';

GRANT all_users TO read_user, read_write_user, admin_user, guest_user; --груповая рольdreop

ALTER ROLE read_user WITH LOGIN;
ALTER ROLE read_write_user WITH LOGIN;
ALTER ROLE guest_user WITH LOGIN;
ALTER ROLE admin_user WITH LOGIN;

REVOKE all_users FROM guest_user;


GRANT SELECT, INSERT, UPDATE ON all tables in schema public TO read_write_user;
GRANT SELECT ON customer TO read_user;


GRANT ALL PRIVILEGES ON customer TO admin_user;


GRANT SELECT ON snowboard, customer TO all_users;


GRANT USAGE ON SCHEMA public to admin_user;



GRANT SELECT, INSERT, UPDATE ON all tables in schema public TO admin_user;



GRANT USAGE ON SCHEMA public to read_user;



drop role read_user;


GRANT SELECT ON customer TO temp_user;

revoke SELECT ON customer from temp_user;

INSERT INTO fruits VALUES (4, 'Апельсин');

UPDATE customer
SET name = 'vlad''
WHERE name = 'mark';


drop role temp_user;