SELECT album_name, year_of_release FROM albums
WHERE year_of_release = 2018;

SELECT song_name, duration FROM songs
ORDER BY duration DESC
LIMIT 1;

SELECT song_name FROM songs
WHERE duration > 210;

SELECT compilation_name FROM compilations
WHERE year_of_release BETWEEN 2018 and 2020;

SELECT singer_name FROM singers
WHERE singer_name NOT LIKE '% %';

SELECT song_name FROM songs
WHERE song_name LIKE '%My %';