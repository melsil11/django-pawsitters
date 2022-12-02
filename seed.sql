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
VALUES('timm@t.com', 'Test2022!', 'False', 'True', 'False');

-- 2
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('beth@b.com', 'Test2022!', 'False', 'True', 'False');

-- 3
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('aisha@a.com', 'Test2022!', 'False', 'True', 'False');

-- 4
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('andrew@a.com', 'Test2022!', 'False', 'True', 'False');

-- 5
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('scarlet@s.com', 'Test2022!', 'False', 'True', 'False');

-- 6
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('john@t.com', 'Test2022!', 'False', 'True', 'False');

-- 7
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('tommmy@t.com', 'Test2022!', 'False', 'True', 'False');

-- 8
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('tombo@t.com', 'Test2022!', 'False', 'True', 'False');

-- 9
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('kiki@k.com', 'Test2022!', 'False', 'True', 'False');

-- 10
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('vimes@v.com', 'Test2022!', 'False', 'True', 'False');

-- 11
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('carrot@c.com', 'Test2022!', 'False', 'True', 'False');

-- 12
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('agnes@a.com', 'Test2022!', 'False', 'True', 'False');

-- 13
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('mariner@m.com', 'Test2022!', 'False', 'True', 'False');

-- 14
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('boimler@b.com', 'Test2022!', 'False', 'True', 'False');

-- 15
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('mando@m.com', 'Test2022!', 'False', 'True', 'False');

-- 16
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('lando@c.com', 'Test2022!', 'False', 'True', 'False');

-- 17
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('valkyrie@a.com', 'Test2022!', 'True', 'True', 'True');

-- 18
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('winston@b.com', 'Test2022!', 'True', 'True', 'True');

-- 19
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('mantis@m.com', 'Test2022!', 'True', 'True', 'True');

-- 20
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('jimmy@woo.com', 'Test2022!', 'True', 'True', 'True');

-- 21
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('sabrina@a.com', 'Test2022!', 'True', 'True', 'True');

-- SELECT * FROM api_user;

-- -- //////////
-- -- petsitters
-- -- //////////
-- 1
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Timm', 'Schoenborn', '85', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '15', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'Pizza is pretty, pretty great, but donuts are the best.', 'https://ca.slack-edge.com/T0351JZQ0-UUGDXLLMV-f1f19d7adf52-512', '1', now(), now());

-- 2
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Beth', 'Parnell', '85', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '15', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'A self-titled cat lady. Here to help my peeps with their pets.', 'https://ca.slack-edge.com/T0351JZQ0-U01UQB1CTCG-87f02edb37fe-512', '2', now(), now());

-- 3
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Aisha', 'Cannon', '85', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '15', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'I do not have a lot of time, but I am here if you need me.', 'https://ca.slack-edge.com/T0351JZQ0-U01UATJT7QQ-ec8cb93e90ce-512', '3', now(), now());

-- 4
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Andrew', 'Kidd-Kestler', '85', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '15', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'Hello, I would love to take care of your furbaby. Also, happy to talk about boats or sci-fi.', 'https://ca.slack-edge.com/T0351JZQ0-U02663GPMB6-5bb163127e90-512', '4', now(), now());

-- 5
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Scarlet', 'Puma', '80', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '15', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'Hi, I am a fan of video games,theater and animals. Happy to help if you need.', 'https://ca.slack-edge.com/T0351JZQ0-U02S1R13H45-be1f71f866a4-512', '5', now(), now());

-- 6
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('John', 'McCants', '13', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '15', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'Yo. If you need me, I am here.', 'https://ca.slack-edge.com/T0351JZQ0-U03P93Y6WDT-6cf154d1b49a-512', '6', now(), now());

-- 7
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Tommy', 'Peterson', '13', 'True', 'True', 'True', 'True', 'True', 'True', 'False', '15', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'Hello Everyone, I hope you are ready for how amazing I am going to be with taking care of your pet.', 'https://ca.slack-edge.com/T0351JZQ0-U02TKRYDLRH-5b133e73db83-512', '7', now(), now());

-- 8
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Kiki', 'Miyazaki', '13', 'True', 'True', 'True', 'True', 'True', 'False', 'True', '15', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'A a nice young witch off on her first year of training away from home.', 'https://creators-images.vice.com/content-images/article/the-bakery-from-miyazaki-classic-kikis-delivery-service-is-real/827d6a9fa8aa040fec8090b5ed974fa2.jpg', '9', now(), now());

-- 9
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Sam', 'Vimes', '45', 'True', 'True', 'True', 'True', 'False', 'False', 'False', '15', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'An honest man who needs new boots - good with animals.', 'https://s3-us-west-2.amazonaws.com/flx-editorial-wordpress/wp-content/uploads/2020/12/31150813/WATCH_Richard-Dormer-as-Vimes_600x314.jpg', '10', now(), now());

-- 10
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Carrot', 'Ironfoundersson', '24', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '15', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'A genius chemist. Here to have fun, solve crimes, and watch your pets!', 'http://images5.fanpop.com/image/photos/28000000/Sexy-tom-hopper-28002573-1365-2048.jpg', '11', now(), now());

-- 11
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Brad', 'Boimler', '26', 'True', 'True', 'False', 'True', 'True', 'False', 'False', '19', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'A Starfleet Junior Officer taking some time off to help you and your pets!', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvqB8byGuFHvf8qKBKN0ZuoQmSUGdl-vjjeVraXeNuVmZsqD4n38l5d-A3-ulmnwgr06c&usqp=CAU', '14', now(), now());

-- 12
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('The', 'Mandalorian', '35', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '50', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'A man who will definitely get the job done.', 'https://www.etonline.com/sites/default/files/styles/max_1280x720/public/images/2020-12/mandalorian-finale-1280.jpeg?h=c673cd1c&itok=GXOBmwCW', '15', now(), now());

-- 16
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Guy', 'Dude', '35', 'True', 'True', 'True', 'False', 'False', 'False', 'True', '50', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'Hello, my dudes. I am an actor who is mostly interested in dog walking. (I am researching a role). But I would love to help care for any pet type you have!', 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', '16', now(), now());

-- 17
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Pink', 'Lady', '35', 'True', 'True', 'True', 'True', 'True', 'False', 'False', '50', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'Hello, I am a trained professional. Here to help you with your fur babies.', 'https://images.unsplash.com/photo-1614644147724-2d4785d69962?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80', '17', now(), now());

-- 18
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Business', 'Guy', '35', 'True', 'True', 'True', 'True', 'True', 'True', 'True', '50', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'Need someone to care for your babies? Look no further. I am the expert.', 'https://images.unsplash.com/photo-1514222709107-a180c68d72b4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=749&q=80', '18', now(), now());

-- 19
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Master', 'Student', '35', 'True', 'True', 'True', 'True', 'False', 'False', 'False', '50', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'Hi, I am currently studying Software Engineering with General Assembly. If you need help with your fur babies during your busy day, I am the gal for the job.', 'https://images.unsplash.com/photo-1598630388567-9fdbfd7e928e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80', '19', now(), now());

-- 20
INSERT INTO api_petsitter(first_name, last_name, age, dog_walking, pet_sitting, dog, cat, small_animal, reptile, bird, rate, availability, from_time, to_time, medicine, bio, image, owner_id, created_at, updated_at)
VALUES('Model', 'Artist', '35', 'True', 'True', 'True', 'False', 'True', 'True', 'False', '50', 'monday tuesday wednesday thursday friday saturday sunday', '00:00:00', '23:30:00', 'True', 'When I am not busy paiting and writing, I like to help my community with their pets. Sadly, I am allergic to cats.', 'https://images.unsplash.com/photo-1598630388567-9fdbfd7e928e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80', '20', now(), now());



-- SELECT * FROM api_petsitter;

-- NOTE: The owner_id may change - depending on if you created a superuser in the terminal outside of psql seed data

-- -- -- //////////
-- -- -- petowners
-- -- -- //////////
-- 1
INSERT INTO api_petowner(first_name, last_name, pet_name, pet_bio, owner_id, pet_type, images, created_at, updated_at) 
VALUES ('Tombo', 'Piccolo', 'Good boy', 'The Goodest of Boys', '8', 'dog', 'https://images.unsplash.com/photo-1558788353-f76d92427f16?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=738&q=80', now(), now());

-- 2
INSERT INTO api_petowner(first_name, last_name, pet_name, pet_bio, owner_id, pet_type, images, created_at, updated_at) 
VALUES ('Agnes', 'Nutter', 'Kitty', 'A floofy baby', '12', 'cat', 'https://imgur.com/gallery/hI26P6E', now(), now());

-- 3
INSERT INTO api_petowner(first_name, last_name, pet_name, pet_bio, owner_id, pet_type, images, created_at, updated_at) 
VALUES ('Beckett', 'Mariner', 'Kitty', 'The most amazing being you will ever meet', '13', 'reptile', 'https://static.wikia.nocookie.net/memoryalpha/images/8/8d/Beckett_Mariner.png/revision/latest?cb=20200828193819&path-prefix=en', now(), now());

-- 4
INSERT INTO api_petowner(first_name, last_name, pet_name, pet_bio, owner_id, pet_type, images, created_at, updated_at) 
VALUES ('Lando', 'Calrisian', 'Sherbert', 'A beautiful bird full of character and pizazz', '16', 'bird', 'https://upload.wikimedia.org/wikipedia/en/c/cb/Lando6-2.jpg', now(), now());

-- 5
INSERT INTO api_petowner(first_name, last_name, pet_name, pet_bio, owner_id, pet_type, images, created_at, updated_at) 
VALUES ('Mantis', 'One', 'Admiral', 'A very real gerbil that is very cute', '10', 'gerbil', 'https://insidetelecom.com/wp-content/uploads/2022/04/weekend-article-1.jpg', now(), now());

-- SELECT * FROM api_petowner;
-- SELECT first_name, owner_id FROM api_petowner;

-- NOTE: The owner_id may change - depending on if you created a superuser in the terminal outside of psql seed data

-- -- -- //////////
-- -- -- bookings
-- -- -- //////////
INSERT INTO api_booking(start_day, end_day, start_time, end_time, note, created_at, updated_at, pet_owner_id, pet_sitter_id, owner_id)
VALUES('12/01/2022', '12/20/2022', '12:00:00', '12:30:00', 'I am visiting my mother for the holidays', now(), now(), '8', '9', '8');

INSERT INTO api_booking(start_day, end_day, start_time, end_time, note, created_at, updated_at, pet_owner_id, pet_sitter_id, owner_id)
VALUES('12/01/2022', '12/20/2022', '12:00:00', '12:30:00', 'The ususal. Traveling to a dangerous planet with the Federation - need someone to watch my baby.', now(), now(), '13', '14', '13');

INSERT INTO api_booking(start_day, end_day, start_time, end_time, note, created_at, updated_at, pet_owner_id, pet_sitter_id, owner_id)
VALUES('01/01/2023', '01/20/2023', '12:00:00', '12:30:00', 'I have an important mission offworld and I need someone to care for my precious Sherbert', now(), now(), '16', '15', '16');

INSERT INTO api_booking(start_day, end_day, start_time, end_time, note, created_at, updated_at, pet_owner_id, pet_sitter_id, owner_id)
VALUES('01/01/2023', '01/20/2023', '12:00:00', '12:30:00', 'I have a business trip.', now(), now(), '10', '15', '10');

INSERT INTO api_booking(start_day, end_day, start_time, end_time, note, created_at, updated_at, pet_owner_id, pet_sitter_id, owner_id)
VALUES('02/01/2023', '02/20/2023', '12:00:00', '12:30:00', 'I have an important meeting to go to for a couple weeks. Please watch after my adorable floof', now(), now(), '12', '11', '12');

-- SELECT * FROM api_booking;

-- NOTE: The pet_owner_id AND pet_sitter_id may change - depending on if you created a superuser in the terminal outside of psql seed data

-- -- -- //////////
-- -- -- reviews
-- -- -- //////////
INSERT INTO api_review(comment, image, rating, created_at, updated_at, owner_id, pet_owner_id, pet_sitter_id, owner_email)
VALUES('Very sweet, very helpful - maybe a little too helpful. Helped me fix my old fire stove and cook all this food!', 'https://houstonfoodfinder.com/wp-content/uploads/2022/04/Brunch-May-2021-3-copy.jpg', '5', now(), now(), '8', '8', '9', 'tombo@t.com');

INSERT INTO api_review(comment, image, rating, created_at, updated_at, owner_id, pet_owner_id, pet_sitter_id, owner_email)
VALUES('Terrible - nearly burned down the house!', 'https://www.vfxvoice.com/wp-content/uploads/2021/05/PIX-2-Goodboy-Close-Up-Breathing-Fire.jpg', '1', now(), now(), '8', '8', '10', 'tombo@t.com');

INSERT INTO api_review(comment, image, rating, created_at, updated_at, owner_id, pet_owner_id, pet_sitter_id, owner_email)
VALUES('Delightful person! Learned later he was using my residence to solve some crime nearby though.', '', '3', now(), now(), '12', '12', '11', 'agnes@a.com');

INSERT INTO api_review(comment, image, rating, created_at, updated_at, owner_id, pet_owner_id, pet_sitter_id, owner_email)
VALUES('Amazing human. Followed all my instructions about Kitty to the letter. Would hire again.', '', '4', now(), now(), '13', '13', '14', 'mariner@m.com');

INSERT INTO api_review(comment, image, rating, created_at, updated_at, owner_id, pet_owner_id, pet_sitter_id, owner_email)
VALUES('No good, dirty, rotten scoundrel thought my bird had a bounty on her head. Look at this precious queen. She would never commit a crime.', 'https://images.unsplash.com/photo-1617374595977-8d5df37ec747?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80', '1', now(), now(), '16', '16', '15', 'lando@c.com');

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