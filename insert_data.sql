INSERT INTO performers (id, performer_name) VALUES
	(1, 'Imagine Dragons'),
	(2, 'The Baseballs'),
	(3, 'LP'),
	(4, 'Pet Shop Boys'),
	(5, 'Ricky Martin'),
	(6, 'Aviators'),
	(7, 'Robbie Williams'),
	(8, 'Biagio Antonacci');
INSERT INTO albums (id, title, released) VALUES
	(1, 'Evolve', 2017),
	(2, 'Origins', 2018),
	(3, 'Hot Shots', 2021),
	(4, 'Heart to Mouth', 2018),
	(5, 'Yes', 2009),
	(6, 'Ricky Martin', 1999),
	(7, 'From Oceans to Skies', 2015),
	(8, 'The Heavy Entertainment Show', 2016),
	(9, 'BIAGIO', 2015),
	(10, 'Night Visions', 2013),
	(11, 'In And Out Of Consciousness', 2010),
	(12, 'Pet Shop Boys Christmas', 2009),
	(13, 'Good ol'' Christmas', 2012);
INSERT INTO perfomer_album (performer_id, album_id) VALUES
	(1, 1),	(1, 2), (1, 10),
	(2, 3), (2, 13),
	(3, 4),
	(4, 5), (4, 12),
	(5, 6),
	(6, 7),
	(7, 8), (7, 11),
	(8, 9);
INSERT INTO genres (id, title) VALUES
	(1, 'rock'),
	(2, 'pop'),
	(3, 'rock''n''roll'),
	(4, 'alternative'),
	(5, 'electronic'),
	(6, 'latin');
INSERT INTO performer_genre (performer_id, genre_id) VALUES
	(1, 1),	(1, 2),
	(2, 2), (2, 3),
	(3, 4),
	(4, 2), (4, 5),
	(5, 2), (5, 6),
	(6, 4), (6, 1),
	(7, 2),
	(8, 2), (8, 6);
INSERT INTO tracks (id, title, track_length, album_id) VALUES
	(1, 'Believer', 204, 1),
	(2, 'Natural', 189, 2),
	(3, 'Iris (Tra le tue poesie)', 238, 9),
	(4, 'Se io, se lei', 259, 9),
	(5, 'Demons', 177, 10),
	(6, 'Love My Life', 208, 8),
	(7, 'Recovery', 234, 4),
	(8, 'Radioactive', 188, 10),
	(9, 'It''s time', 240, 10),
	(10, 'Whatever It Takes', 201, 1),
	(11, 'Angels', 267, 11),
	(12, 'It Doesn''t Often Snow At Christmas', 231, 12),
	(13, 'Rudolph, the Red-Nosed Reindeer', 176, 13),
	(14, 'Livin'' la Vida Loca', 242, 6),
	(15, 'The Monsters Under My Bed', 296, 7),
	(16, 'Time Of My Life', 254, 3),
	(17, 'Love etc.', 211, 5);
INSERT INTO collections (id, title, released) VALUES
	(1, 'Golden Hits', 2020),
	(2, 'Love Romantic Pop Songs', 2021),
	(3, 'Hits Of All Time', 2021),
	(4, 'Best Radio Tracks, Vol. 15', 2018),
	(5, 'Throwback Hits', 2020),
	(6, 'Timeless Love Songs', 2018),
	(7, 'Christmas: The Collection', 2013),
	(8, '1990s XL', 2019);
INSERT INTO track_collection (collection_id, track_id) VALUES
	(1, 1), (1, 2),
	(2, 3), (2, 4), (2, 5),
	(3, 1), (3, 5),
	(4, 7),
	(5, 8), (5, 2), (5, 5),	(5, 9), (5, 10), (5, 1),
	(6, 11),
	(7, 12), (7, 13),
	(8, 14);
-- Additional album
INSERT INTO albums (id, title, released) VALUES (14, 'PAUSA', 2020);
INSERT INTO perfomer_album (performer_id, album_id) VALUES (5, 14);
INSERT INTO tracks (id, title, track_length, album_id) VALUES (18, 'Simple', 215, 14);
