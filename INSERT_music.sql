INSERT INTO Genre (name_genre) VALUES 
('Рок'),
('Рэп'),
('Поп');


INSERT INTO Singer (name_singer) VALUES 
('Imagine dragons'),
('Nirvana'),
('50 Cent'),
('Zivert'),
('Eminem'),
('The Beatles'),
('Руки Вверх'),
('Dabro'),
('Doja Cat');


INSERT INTO Album (name_album, release_year) VALUES 
('Открой мне дверь!', 2012),
('Music to Be Murdered By', 2020),
('Power of the Dollar', 1999),
('Vinyl #1', 2019),
('Vinyl #2', 2021),
('Nevermind', 1991),
('Let It Be', 1970),
('Hot Pink', 2019),
('Лучшие песни', 2020),
('Smoke + Mirrors', 2015),
('Без альбома', 2023);


INSERT INTO Compilation (name_compilation, release_year) VALUES 
('Сборник 100 лучших песен 2020 года', 2020),
('Europa Plus ЕвроХит Топ 40 - Итоговый чарт года', 2021),
('Русские хиты часть 5 ', 2022),
('OLD DISCO DRIVE ', 2020);


INSERT INTO Track (album_id, name_track, track_length) VALUES 
(1, 'Девочка из прошлого', 213),
(7, 'Let It Be', 243),
(5, 'ЯТЛ', 223),
(4, 'CREDO', 184),
(8, 'Say so ', 237),
(9, 'Мой путь', 237),
(10, 'I Bet My Life', 193),
(4, 'Бродяга-Дождь ', 216),
(2, 'Lock It Up', 170),
(11, 'Bad Habits', 240),
(11, 'Save Your Tearsо', 248),
(11, 'WAKE UP!', 237),
(11, 'Live Together', 384);


INSERT INTO singer_genre (genre_id, singer_id) VALUES 
(1, 1),
(1, 2),
(1, 6),
(2, 3),
(2, 5),
(2, 9),
(3, 4),
(3, 7),
(3, 8);


INSERT INTO singer_album (album_id, singer_id) VALUES 
(1, 7),
(2, 5),
(3, 3),
(4, 4),
(5, 4),
(6, 2),
(7, 6),
(8, 9),
(9, 8), 
(10, 1);


INSERT INTO compilation_track (compilation_id, track_id) VALUES 
(1, 3),
(1, 5),
(2, 10),
(2, 11),
(3, 12),
(4, 13);
