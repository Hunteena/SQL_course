-- 1. количество исполнителей в каждом жанре
SELECT title, count(performer_id) FROM genres g 
	JOIN performer_genre pg ON g.id  = pg.genre_id 
	GROUP BY g.id;
-- 2. количество треков, вошедших в альбомы 2019-2020 годов
SELECT a.title, count(t.id) FROM albums a 
	JOIN tracks t ON a.id = t.album_id 
	WHERE a.released BETWEEN 2019 AND 2020 
	GROUP BY a.id; 
-- 3. средняя продолжительность треков по каждому альбому
SELECT a.title, avg(t.track_length) FROM albums a 
	JOIN tracks t ON a.id = t.album_id
	GROUP BY a.id;
-- 4. все исполнители, которые не выпустили альбомы в 2020 году
SELECT performer_name FROM performers p
	LEFT JOIN (
		SELECT performer_id FROM perfomer_album pa
			JOIN albums a ON pa.album_id = a.id
			WHERE released = 2020
		) AS py ON p.id = py.performer_id
	WHERE py.performer_id IS NULL;
-- 5. названия сборников, в которых присутствует конкретный исполнитель 
SELECT DISTINCT c.title FROM collections c 
	JOIN track_collection tc ON c.id =tc.collection_id 
	JOIN tracks t ON tc.track_id = t.id 
	JOIN albums a ON t.album_id = a.id 
	JOIN perfomer_album pa ON a.id = pa.album_id 
	JOIN performers p ON pa.performer_id = p.id 
	WHERE p.performer_name = 'Imagine Dragons';
-- 6. название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT a.title FROM albums a 
	JOIN perfomer_album pa ON a.id = pa.album_id 
	JOIN performers p ON pa.performer_id = p.id 
	JOIN performer_genre pg ON p.id = pg.performer_id 
	GROUP BY a.title 
	HAVING count(*) > 1; 
-- 7. наименование треков, которые не входят в сборники
SELECT t.title FROM tracks t 
	FULL JOIN track_collection tc ON t.id = tc.track_id 
	WHERE tc.collection_id IS NULL;
-- 8. исполнителя(-ей), написавшего самый короткий по продолжительности трек
SELECT p.performer_name FROM performers p 
	JOIN perfomer_album pa ON p.id = pa.performer_id 
	JOIN albums a ON pa.album_id = a.id 
	JOIN tracks t ON a.id = t.album_id 
	WHERE t.track_length = (
		SELECT min(track_length) FROM tracks); 
-- 9. название альбомов, содержащих наименьшее количество треков
SELECT a.title FROM albums a 
	JOIN tracks t ON a.id = t.album_id 
	GROUP BY a.id
	HAVING count(*) = (
		SELECT min(c) FROM (
			SELECT album_id, count(*) c FROM tracks
				GROUP BY album_id
			) AS tc
		);