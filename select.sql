SELECT title, released FROM albums
	WHERE released=2018;
SELECT title, track_length FROM tracks
	ORDER BY track_length DESC 
	LIMIT 1;
SELECT title FROM tracks
	WHERE track_length > 210;
SELECT title FROM collections
	WHERE released BETWEEN 2018 AND 2020;
SELECT performer_name FROM performers
	WHERE performer_name NOT LIKE '% %';
SELECT title FROM tracks
	WHERE title ILIKE '%my%';