INSERT INTO Genres
VALUES(1, 'rock'),
(2, 'pop'),
(3, 'R&B'),
(4, 'hip hop'),
(5, 'metal');

INSERT INTO Singers
VALUES(1, 'Queen'),
(2, 'Zivert'),
(3, 'Lady Gaga'),
(4, 'Beyonce'),
(5, 'The Weeknd'),
(6, 'Drake'),
(7, 'Eminem'),
(8, 'AC/DC');

INSERT INTO GenresSingers
VALUES(1, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 4),
(3, 5),
(4, 6),
(4, 7),
(5, 8);

INSERT INTO Albums
VALUES(1, 'At Night at the Opera', 1975),
(2, 'Сияй', 2018),
(3, 'Chromatica', 2020),
(4, 'Lemonade', 2016),
(5, 'After Hours', 2020),
(6, 'Scorpion', 2018),
(7, 'The Eminem Show', 2002),
(8, 'Back in Black', 1980);

INSERT INTO SingersAlbums
VALUES(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO Songs
VALUES(1, 1, 'Bohemian Rhapsody', 354),
(2, 2, 'Окена', 204),
(3, 3, 'Sour Candy', 158),
(4, 3, 'Rain on Me', 182),
(5, 4, 'Freedom', 290),
(6, 4, 'Forward', 79),
(7, 5, 'Too Late', 240),
(8, 5, 'Heartless', 258),
(9, 6, 'Talk Up', 196),
(10, 6, 'Jaded', 263),
(11, 7, 'Superman', 350),
(12, 7, 'My Dad''s Gone Crazy', 267),
(13, 8, 'Let Me Put My Love into You', 255),
(14, 8, 'Back in Black', 256),
(15, 8, 'Shake A Leg', 245);

INSERT INTO Compilations
VALUES(1, 'Classic Queen', 1992),
(2, 'Dawn of Chromatica', 2021),
(3, 'Care Package', 2019),
(4, 'Curtain Call', 2005),
(5, 'Who Made Who', 1986),
(6, 'Iron Man 2', 2010),
(7, 'The Weeknd in Japan', 2020),
(8, 'Queen Forever', 2014);

INSERT INTO CompilationsSongs
VALUES(1, 1),
(2, 4),
(3, 9),
(4, 11),
(5, 14),
(6, 14),
(7, 7),
(8, 1);
