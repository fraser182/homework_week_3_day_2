DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Connel Allison');
INSERT INTO people (name) VALUES ('Robin Bailey');
INSERT INTO people (name) VALUES ('David Calderwood');
INSERT INTO people (name) VALUES ('George Ciurescu');
INSERT INTO people (name) VALUES ('Ally Conway');
INSERT INTO people (name) VALUES ('Christopher Croal');
INSERT INTO people (name) VALUES ('Kevin Frew');
INSERT INTO people (name) VALUES ('Stephen Higgins');
INSERT INTO people (name) VALUES ('CoDeclan Malon');
INSERT INTO people (name) VALUES ('Clare McEwan');
INSERT INTO people (name) VALUES ('Scott Osman');
INSERT INTO people (name) VALUES ('Scott Prentice');
INSERT INTO people (name) VALUES ('Fraser Ross');
INSERT INTO people (name) VALUES ('Minal Sakriya');
INSERT INTO people (name) VALUES ('Mark Sibbald');
INSERT INTO people (name) VALUES ('Louise Stewart');
INSERT INTO people (name) VALUES ('Daniel Tulloch');
INSERT INTO people (name) VALUES ('Iain Wentworth');
INSERT INTO people (name) VALUES ('Melinda Matthews');



INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '15:15');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '22:05');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '18:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '22:15');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '23:25');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '12:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '13:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '23:55');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '19:40');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '18:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '21:10');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '15:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '22:45');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '22:00');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '15:30');


-- ## Questions
-- example SELECT * FROM people;
-- 1.  Return ALL the data in the 'movies' table.
-- SELECT * FROM movies;

-- 2.  Return ONLY the name column from the 'people' table
-- SELECT name FROM people;

-- 3.  Oops! Someone at CodeClan spelled Declan's name wrong! Change it to reflect the proper spelling ('CoDeclan Malon' should be 'Declan Malone').
-- UPDATE people SET name = 'Declan Malone' WHERE name = 'CoDeclan Malon';
-- SELECT name FROM people;

-- 4.  Return ONLY your name from the 'people' table.
-- SELECT name FROM people WHERE name = 'Fraser Ross';

-- 5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
-- DELETE FROM movies WHERE title = 'Batman Begins';
-- SELECT * FROM movies;

-- 6.  Create a new entry in the 'people' table with the name of one of the instructors.
-- INSERT INTO people (name) VALUES ('Alistair Kane');
-- SELECT * FROM people;

-- 7.  Melinda Matthews has decided to hijack our movie evening, Remove her from the table of people.
-- DELETE FROM people WHERE name = 'Melinda Matthews';
-- DELETE FROM people WHERE id = 19;
-- SELECT * FROM people;

-- 8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.
-- INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00:00');
-- SELECT * FROM movies;

-- 9.  The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.
-- SELECT show_time FROM movies WHERE title = 'Guardians of the Galaxy';
-- UPDATE movies SET show_time = '20:55' WHERE title = 'Guardians of the Galaxy 2';
-- SELECT * FROM movies;

-- ## Extension
--
-- 1.  Research how to delete multiple entries from your table in a single command.
DELETE FROM movies WHERE id IN (1, 2, 3, 4, 5, 6);
SELECT * FROM movies;
--
