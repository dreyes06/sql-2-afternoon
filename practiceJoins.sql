--#1
SELECT * FROM invoice 
JOIN invoice_line on invoice_line.invoice_id = i.invoice_id
WHERE invoice_line.unit_price > .99;

--#2
SELECT i.invoice_date, c.first_name, c.last_name, i.total from invoice i 
JOIN customer c ON i.customer_id = c.customer_id;

--#3
SELECT c.first_name, c.last_name, employee.first_name, employee.last_name from
JOIN employee ON c.customer_id = employee.employee_id;

--#4
SELECT album.title, artist.name FROM album
JOIN artist ON album.artist_id = artist.artist_id;

--#5
SELECT playlist_track.track_id from playlist_track
JOIN playlist ON playlist.playlist_id = playlist_track.playlist_track_id
WHERE playlist.name = 'Music';

--#6
SELECT track.name FROM track
JOIN playlist_track ON playlist_track.track_id = track.track_id
WHERE playlist_track.playlist_id = 5;

--#7
SELECT track.name, playlist.name
FROM track
JOIN playlist_track ON track.track_id = playlist_track.track_id
JOIN playlist ON playlist_track.playlist_id = playlist.playlist_id;

--#8
SELECT track.name, album.title
FROM track
JOIN album ON track.album_id = album.album_id
JOIN genre ON track.genre_id = genre.genre_id
WHERE genre.name = 'Alternative & Punk'; 