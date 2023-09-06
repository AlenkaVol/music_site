-- Название и продолжительность самого длительного трека
SELECT name_track, track_length FROM track
WHERE track_length = (SELECT MAX (track_length) FROM track);

-- Название треков, продолжительность которых не менее 3,5 минут
SELECT name_track, track_length FROM track
WHERE track_length >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name_compilation, release_year FROM compilation
WHERE release_year BETWEEN 2018 AND 2020;

-- Исполнители, чьё имя состоит из одного слова 
SELECT name_singer FROM singer
WHERE name_singer NOT LIKE '% %';

-- Название треков, которые содержат слово «мой» или «my»
SELECT name_track FROM track
WHERE name_track LIKE '%мой%' OR name_track LIKE '%my%' OR name_track LIKE '%Мой%' OR name_track LIKE '%My%';

-- Количество исполнителей в каждом жанре
SELECT name_genre, COUNT(*) FROM genre g 
JOIN singer_genre sg ON g.id_genre = sg.genre_id
GROUP BY name_genre;

-- Количество треков, вошедших в альбомы 2019–2020 годов
SELECT release_year, COUNT(id_track) FROM album a 
JOIN track t ON a.id_album = t.id_track 
WHERE release_year BETWEEN 2019 AND 2020
GROUP BY release_year;

-- Средняя продолжительность треков по каждому альбому
SELECT name_album, AVG(track_length) FROM album a 
JOIN track t ON a.id_album = t.album_id
GROUP BY name_album;

-- Все исполнители, которые не выпустили альбомы в 2020 году 
SELECT name_singer FROM singer
WHERE name_singer NOT IN (SELECT name_singer FROM singer 
JOIN singer_album sa ON singer.id_singer = sa.singer_id 
JOIN album a ON sa.album_id = a.id_album
WHERE release_year = 2020);

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами) 
SELECT name_compilation FROM compilation c
JOIN compilation_track ct ON c.id_compilation = ct.compilation_id 
JOIN track t ON ct.track_id = t.id_track 
JOIN singer_album sa ON t.album_id = sa.album_id 
JOIN singer s ON sa.singer_id = s.id_singer 
WHERE name_singer = 'Zivert'
