insert into Genres(name_genre)
     values ('Popular'),
            ('Classical'),
            ('Rap'),
            ('Punk'),
            ('Rock'),
            ('Alternative'),
            ('Metal'),
            ('Jazz');
            
insert into Artists(alias)
     values ('Linkin Park'),
            ('Ella Fitzgerald'),
            ('Maneskin'),
            ('Eminem'),
            ('The Offspring'),
            ('Lady Gaga'),
            ('Radiohead'),
            ('Кирилл Рихтер'),
            ('Nina Simone'),
            ('Kiss'),
            ('Justin Bieber');
            
insert into Artists_Genres
     values (1, 5),
            (2, 8),
            (3, 5),
            (4, 3),
            (5, 4),
            (6, 1),
            (7, 6),
            (8, 2),
            (9, 8),
            (10, 7),
            (11, 1);
           
insert into Albums (name_album, year_album)
     values ('Il Ballo Della Vita', '2018-03-11'),
            ('Smash', '2003-05-03'),
            ('Chronos', '2019-12-25'),
            ('Scenic Flight', '1955-01-12'),
            ('Let It All Out', '1966-07-22'),
            ('Born This Way', '2011-11-18'),
            ('The Marshall Mathers LP', '2000-12-18'),
            ('Monster', '2012-06-09'),
            ('One More Light', '2017-09-03'),
            ('Justice', '2021-11-15'),
            ('The Bends', '1995-04-05'),
            ('The Soul', '2020-01-01');
           
insert into Artists_Albums (artist_id, album_id)
     values (1, 9),
            (2, 4),
            (3, 1),
            (4, 7),
            (5, 2),
            (6, 6),
            (6, 12),
            (7, 11),
            (8, 3),
            (9, 5),
            (9, 12),
            (10, 8),
            (11, 10);
           
insert into Tracks (name_track, duration, album_id)
     values ('One more Light', 255, 1),
            ('Battle Symphony', 216, 1),
            ('Sorry for Now', 203, 1),
            ('The Lady Is A Tramp', 189, 2),
            ('Torna a casa', 230, 3),
            ('Are You Ready?', 154, 3),
            ('Yellow Brick Road', 346, 4),
            ('Gotta Get Away', 231, 5),
            ('Come Out and Play', 197, 5),
            ('Marry the Night', 264, 6),
            ('Hair', 308, 6),
            ('The Way I Am', 291, 7),
            ('Stan', 404, 7),
            ('Ophelia', 203, 8),
            ('Do not Explane', 261, 9),
            ('Jast Remember', 211, 9),
            ('Back to the Stone Age', 181, 10),
            ('Hell or Hallelujah', 247, 10),
            ('2 Much', 153, 11),
            ('Off My Face', 156, 11),
            ('MLK Interlude', 104, 11),
            ('Last Cristmas', 205, 12);
           
insert into Collections (name_collection, year_collection)
     values ('Loud Hits of The 90s', '2015-08-23'),
            ('Greatest Hits', '2018-02-22'),
            ('Classic Love Songs', '2005-12-14'),
            ('Radio Italia Love', '2019-04-18'),
            ('Gold Collections', '2020-10-10'),
            ('Hit 100', '2012-02-24'),
            ('Pop Dance Friday', '2019-11-18'),
            ('Summer - The Ultimate', '2022-01-14'),
            ('Punk Rock Holiday', '2018-03-23'),
            ('Funk & Soul Classics', '2020-10-20');
           
insert into Collections_Tracks (collection_id, track_id)
     values (1, 290),
            (1, 299),
            (2, 293),
            (2, 283),
            (3, 286),
            (3, 287),
            (4, 281),
            (5, 288),
            (6, 300),
            (6, 291),
            (6, 294),
            (7, 296),
            (7, 289),
            (7, 282),
            (8, 297),
            (8, 298),
            (9, 292),
            (9, 295),
            (9, 284),
            (10, 285),
            (11, 301);
            