--#1
SELECT COUNT(*), genre.name
FROM track
JOIN genre ON track.genre_id = genre.genre_id
GROUP BY genre.name;

--#2
SELECT COUNT(*), genre.name
FROM track
JOIN genre ON genre.genre_id = track.genre_id
WHERE genre.name = 'Pop' OR genre.name = 'Rock'
GROUP BY genre.name;

--#3
SELECT artist.name, COUNT(*)
FROM album
JOIN artist ON artist.artist_id = album.artist_id
GROUP BY artist.name;