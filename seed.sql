-- To insert the pawsitters seed data from the terminal, enter the following commands (make sure that you are in the django-pawsitters folder):
-- 1) psql
-- 2) \i seed.sql

-- IF YOU HAVE TO DROP AND CREATE THE DB, MIGRATE BEFORE SEEDING
-- Can a migration be iniated from this file?

-- drop and/or create database as needed
-- DROP DATABASE pawsitters;
-- CREATE DATABASE pawsitters;

-- connect to project db
\c pawsitters;


-- seed data for testing

-- //////////
-- users
-- //////////
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('bob@b.com', 'Test2022!', 'False', 'True', 'False');

INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('kiki@k.com', 'Test2022!', 'False', 'True', 'False');

INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('admin@a.com', 'Test2022!', 'True', 'True', 'True');

SELECT * FROM api_user;

-- -- //////////
-- -- petsitters
-- -- //////////
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, from_date, to_date, from_time, to_time, medicine, image, owner_id, created_at, updated_at)
VALUES('Kiki', 'Miyazaki', '13', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '15', '12/01/2022', '12/20/2022', '12:00:00', '12:30:00', 'True', 'https://imgur.com/gallery/uv80HwX', '2', now(), now());

SELECT * FROM api_petsitter;

-- NOTE: The owner_id may change - depending on if you created a superuser in the terminal outside of psql seed data

-- -- -- //////////
-- -- -- petowners
-- -- -- //////////
INSERT INTO api_petowner(first_name, last_name, pet_type, pet_name, images, created_at, updated_at, owner_id) 
VALUES ('Bob', 'Billy', 'dog', 'Lil Bob', 'https://imgur.com/gallery/xtoLyW2', now(), now(), '1');

SELECT * FROM api_petowner;

-- NOTE: The owner_id may change - depending on if you created a superuser in the terminal outside of psql seed data

-- -- -- //////////
-- -- -- bookings
-- -- -- //////////
INSERT INTO api_booking(start_day, end_day, start_time, end_time, created_at, updated_at, pet_owner_id, pet_sitter_id)
VALUES('12/01/2022', '12/20/2022', '12:00:00', '12:30:00', now(), now(), '1', '1');

-- SELECT * FROM api_booking;

-- NOTE: The pet_owner_id AND pet_sitter_id may change - depending on if you created a superuser in the terminal outside of psql seed data

-- -- -- //////////
-- -- -- reviews
-- -- -- //////////
INSERT INTO api_review(comment, image, rating, created_at, updated_at, owner_id, pet_owner_id, pet_sitter_id)
VALUES('Very sweet, very helpful - maybe a little too helpful. Helped me fix my old fire stove!', 'https://imgur.com/gallery/mBoP1gz', '5', now(), now(), '1', '1', '1');

SELECT * FROM api_review;

-- NOTE: The owner_id, pet_owner_id AND pet_sitter_id may change - depending on if you created a superuser in the terminal outside of psql seed data


-- Other useful commands:
-- UPDATE api_user SET email='kiki@k.com' WHERE email = 'kiki@m.com';
-- SELECT * FROM api_user;

-- Function         | Command               | Description
-- quit             |   \q                  | quit the shell
-- help             |   \?                  | list help for the psql shell
-- help             |   \h                  | list all possible SQL commands
-- help             |   \h SELECT           | get help for a specific SQL command
-- list             |   \l                  | lists all availible dbs found in the cluster
-- connect          |	\c                  | connect to a database
-- describe tables  |   \dt                 | list all the tables in the current database
-- describe table   |	\d table_name       | lists a table's columns and datatypes
-- edit command     |	\e                  | opens last command in your shell's default editor
-- expanded display |   \x off (on or auto) | will change the wrap behavior of column display
-- import           |	\i file-name.sql    | imports a .sql file and runs the commands