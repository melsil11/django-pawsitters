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
-- 1
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('tombo@t.com', 'Test2022!', 'False', 'True', 'False');

-- 2
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('kiki@k.com', 'Test2022!', 'False', 'True', 'False');

-- 3
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('vimes@v.com', 'Test2022!', 'False', 'True', 'False');

-- 4
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('cheery@c.com', 'Test2022!', 'False', 'True', 'False');

-- 5
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('agnes@a.com', 'Test2022!', 'False', 'True', 'False');

-- 6
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('mariner@m.com', 'Test2022!', 'False', 'True', 'False');

-- 7
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('boimler@b.com', 'Test2022!', 'False', 'True', 'False');

-- 8
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('boba@f.com', 'Test2022!', 'False', 'True', 'False');

-- 9
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('lando@c.com', 'Test2022!', 'False', 'True', 'False');

-- 10
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('admin@a.com', 'Test2022!', 'True', 'True', 'True');

-- SELECT * FROM api_user;

-- -- //////////
-- -- petsitters
-- -- //////////
-- 1
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Kiki', 'Miyazaki', '13', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '15', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'A a nice young witch off on her first year of training away from home.', 'https://imgur.com/gallery/uv80HwX', '2', now(), now());

-- 2
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Sam', 'Vimes', '45', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '15', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'An honest man who needs new boots - good with animals.', 'https://pbs.twimg.com/media/EQ_DgPKXYAAfsRW.jpg', '3', now(), now());

-- 3
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Cheery', 'Littlebottom', '22', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '15', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'A genius chemist. Here to have fun, solve crimes, and watch your pets!', 'https://static.wikia.nocookie.net/discworld/images/d/de/Cheery_littlebottom.jpg/revision/latest?cb=20190228230617', '4', now(), now());

-- 4
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Brad', 'Boimler', '26', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '19', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'A Starfleet Junior Officer taking some time off to help you and your pets!', 'https://upload.wikimedia.org/wikipedia/en/9/99/Bradward_Boimler.png', '6', now(), now());

-- 5
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Boba', 'Fett', '35', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '50', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'A man who will definitely get the job done.', 'https://m.media-amazon.com/images/I/41ICxL0-4DL._AC_.jpg', '8', now(), now());

-- SELECT * FROM api_petsitter;

-- NOTE: The owner_id may change - depending on if you created a superuser in the terminal outside of psql seed data

-- -- -- //////////
-- -- -- petowners
-- -- -- //////////
-- 1
INSERT INTO api_petowner(first_name, last_name, pet_name, pet_bio, owner_id, pet_type, images, created_at, updated_at) 
VALUES ('Tombo', 'Piccolo', 'Good boy', 'The Goodest of Boys', '1', 'dog', 'https://imgur.com/gallery/xtoLyW2', now(), now());

-- 2
INSERT INTO api_petowner(first_name, last_name, pet_name, pet_bio, owner_id, pet_type, images, created_at, updated_at) 
VALUES ('Agnes', 'Nutter', 'Kitty', 'A floofy baby', '5', 'cat', 'https://imgur.com/gallery/hI26P6E', now(), now());

-- 3
INSERT INTO api_petowner(first_name, last_name, pet_name, pet_bio, owner_id, pet_type, images, created_at, updated_at) 
VALUES ('Beckett', 'Mariner', 'Kitty', 'The most amazing being you will ever meet', '7', 'reptile', 'https://static.wikia.nocookie.net/memoryalpha/images/8/8d/Beckett_Mariner.png/revision/latest?cb=20200828193819&path-prefix=en', now(), now());

-- 4
INSERT INTO api_petowner(first_name, last_name, pet_name, pet_bio, owner_id, pet_type, images, created_at, updated_at) 
VALUES ('Lando', 'Calrisian', 'Sherbert', 'A beautiful bird full of character and pizazz', '9', 'bird', 'https://upload.wikimedia.org/wikipedia/en/c/cb/Lando6-2.jpg', now(), now());

-- 5
INSERT INTO api_petowner(first_name, last_name, pet_name, pet_bio, owner_id, pet_type, images, created_at, updated_at) 
VALUES ('Admin', 'Test', 'Admiral', 'A very real gerbil that is very cute', '10', 'gerbil', 'https://insidetelecom.com/wp-content/uploads/2022/04/weekend-article-1.jpg', now(), now());

-- SELECT * FROM api_petowner;
-- SELECT first_name, owner_id FROM api_petowner;

-- NOTE: The owner_id may change - depending on if you created a superuser in the terminal outside of psql seed data

-- -- -- //////////
-- -- -- bookings
-- -- -- //////////
INSERT INTO api_booking(start_day, end_day, start_time, end_time, note, created_at, updated_at, pet_owner_id, pet_sitter_id, owner_id)
VALUES('12/01/2022', '12/20/2022', '12:00:00', '12:30:00', 'I am visiting my mother for the holidays', now(), now(), '1', '2', '1');

INSERT INTO api_booking(start_day, end_day, start_time, end_time, note, created_at, updated_at, pet_owner_id, pet_sitter_id, owner_id)
VALUES('12/01/2022', '12/20/2022', '12:00:00', '12:30:00', 'The ususal. Traveling to a dangerous planet with the Federation - need someone to watch my baby.', now(), now(), '7', '6', '6');

INSERT INTO api_booking(start_day, end_day, start_time, end_time, note, created_at, updated_at, pet_owner_id, pet_sitter_id, owner_id)
VALUES('01/01/2023', '01/20/2023', '12:00:00', '12:30:00', 'I have an important mission offworld and I need someone to care for my precious Sherbert', now(), now(), '9', '8', '9');

INSERT INTO api_booking(start_day, end_day, start_time, end_time, note, created_at, updated_at, pet_owner_id, pet_sitter_id, owner_id)
VALUES('01/01/2023', '01/20/2023', '12:00:00', '12:30:00', 'I have a business trip.', now(), now(), '10', '4', '10');

INSERT INTO api_booking(start_day, end_day, start_time, end_time, note, created_at, updated_at, pet_owner_id, pet_sitter_id, owner_id)
VALUES('02/01/2023', '02/20/2023', '12:00:00', '12:30:00', 'I have an important meeting to go to for a couple weeks. Please watch after my adorable floof', now(), now(), '10', '2', '10');

-- SELECT * FROM api_booking;

-- NOTE: The pet_owner_id AND pet_sitter_id may change - depending on if you created a superuser in the terminal outside of psql seed data

-- -- -- //////////
-- -- -- reviews
-- -- -- //////////
INSERT INTO api_review(comment, image, rating, created_at, updated_at, owner_id, pet_owner_id, pet_sitter_id, owner_email)
VALUES('Very sweet, very helpful - maybe a little too helpful. Helped me fix my old fire stove!', 'https://imgur.com/gallery/mBoP1gz', '5', now(), now(), '1', '1', '2', 'tombo@t.com');

INSERT INTO api_review(comment, image, rating, created_at, updated_at, owner_id, pet_owner_id, pet_sitter_id, owner_email)
VALUES('Terrible - nearly burned down the house!', 'https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/large/800/Sam-Vimes.Discworld.webp', '1', now(), now(), '1', '1', '4', 'tombo@t.com');

INSERT INTO api_review(comment, image, rating, created_at, updated_at, owner_id, pet_owner_id, pet_sitter_id, owner_email)
VALUES('Delightful person! Learned later she was using my residence to solve some crime nearby though.', 'https://pbs.twimg.com/media/EERFy3iXoAEezWd.jpg', '3', now(), now(), '5', '5', '4', 'agnes@a.com');

INSERT INTO api_review(comment, image, rating, created_at, updated_at, owner_id, pet_owner_id, pet_sitter_id, owner_email)
VALUES('Amazing human. Followed all my instructions about Kitty to the letter. Would hire again.', 'https://images.squarespace-cdn.com/content/v1/5cc3d1b051f4d40415789cc2/1595578570907-LX9JKHS6D2MM4554NT27/lower-decks-romulan-whisky.jpg', '4', now(), now(), '7', '7', '6', 'mariner@m.com');

INSERT INTO api_review(comment, image, rating, created_at, updated_at, owner_id, pet_owner_id, pet_sitter_id, owner_email)
VALUES('No good, dirty, rotten scoundrel thought my bird had a bounty on her head', 'https://tv-vcr.com/wp-content/uploads/2018/05/boba-lando.jpg', '1', now(), now(), '9', '9', '8', 'lando@c.com');

-- SELECT * FROM api_review;

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