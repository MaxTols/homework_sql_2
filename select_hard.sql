SELECT genre_id, COUNT(*) FROM genressingers
GROUP BY genre_id
ORDER BY genre_id;

SELECT COUNT(*) FROM songs s
JOIN albums a ON s.album_id = a.id
WHERE year_of_release BETWEEN 2019 AND 2020;

SELECT album_name, AVG(duration) FROM songs s
JOIN albums a ON s.album_id = a.id
GROUP BY album_name
ORDER BY AVG(duration);

SELECT singer_name, year_of_release FROM singers s
JOIN singersalbums ss ON s.id = ss.singer_id
JOIN albums a ON ss.album_id = a.id
WHERE year_of_release != 2020;

SELECT compilation_name FROM compilations c 
JOIN compilationssongs cs ON c.id = cs.compilation_id
JOIN songs ON cs.song_id = songs.id
JOIN singersalbums ss ON songs.album_id = ss.album_id
JOIN singers s ON ss.singer_id = s.id
WHERE singer_name = 'Queen';

SELECT album_name FROM albums a
JOIN singersalbums ss ON a.id = ss.album_id
JOIN singers s ON ss.singer_id = s.id
JOIN genressingers gs ON s.id = gs.singer_id
JOIN genres g ON gs.genre_id = g.id
GROUP BY album_name
HAVING COUNT(*) > 1;

SELECT song_name FROM songs s
FULL JOIN compilationssongs c ON s.id = c.song_id
WHERE compilation_id IS NULL;

SELECT singer_name FROM singers s
JOIN singersalbums ss ON s.id = ss.singer_id
JOIN albums a ON ss.album_id = a.id
JOIN songs ON a.id = songs.album_id
WHERE duration = (SELECT MIN(duration) FROM songs);

SELECT album_name FROM albums a
JOIN songs s ON a.id = s.album_id
WHERE s.album_id IN (SELECT album_id FROM songs 
GROUP BY album_id 
HAVING COUNT(id) = (SELECT COUNT(id) FROM songs 
GROUP BY album_id 
ORDER BY COUNT(*) 
LIMIT 1));
