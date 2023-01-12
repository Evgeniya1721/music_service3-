--1.количество исполнителей в каждом жанре
SELECT  g.name_genre, COUNT(alias)   FROM Artists ar  
JOIN Artists_Genres ar2  ON ar.artist_id = ar2.artist_id  
JOIN Genres g ON g.genre_id = ar2.genre_id 
GROUP BY g.name_genre

--2.количество треков, вошедших в альбомы 2019-2020 годов
SELECT COUNT(name_track) FROM Tracks t 
JOIN Albums a ON t.album_id = a.album_id 
WHERE a.year_album BETWEEN '2019-12-25' AND '2020-01-01'

--3.средняя продолжительность треков по каждому альбому
SELECT AVG(duration), name_album FROM Tracks t 
JOIN Albums a ON t.album_id = a.album_id 
GROUP BY a.name_album 
ORDER BY AVG(t.duration)

--4.все исполнители, которые не выпустили альбомы в 2020 году
SELECT alias, a.year_album  FROM Artists ar
JOIN Artists_Albums ar2  ON ar.artist_id = ar2.artist_id 
JOIN Albums a ON a.album_id = ar2.album_id 
WHERE a.year_album != '2020-01-01'

--5.названия сборников, в которых присутствует конкретный исполнитель ()
SELECT DISTINCT name_collection FROM Collections c 
JOIN Collections_Tracks c2 ON c.collection_id = c2.collection_id 
JOIN Tracks t ON t.track_id = c2.track_id 
JOIN Albums a ON a.album_id = t.album_id 
JOIN Artists_Albums ar ON ar.album_id = t.album_id 
JOIN Artists ar2 ON ar2.artist_id = ar.artist_id 
WHERE ar2.alias = 'Justin Bieber'

--6.название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT name_album FROM Albums a 
JOIN Artists_Albums ar ON ar.album_id = a.album_id 
JOIN Artists ar2 ON ar2.artist_id = ar.artist_id 
JOIN Artists_Genres ar3 ON ar3.artist_id = ar2.artist_id 
GROUP BY a.name_album 
HAVING COUNT(ar3.genre_id) > 1

--7.наименование треков, которые не входят в сборники
SELECT name_track, c.collection_id  FROM Tracks t 
LEFT JOIN Collections_Tracks c ON c.track_id = t.track_id  
GROUP BY t.name_track, c.track_id, c.collection_id 
HAVING  c.track_id IS null


--8.исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
SELECT alias FROM Artists ar 
JOIN Artists_Albums ar2 ON ar2.artist_id = ar.artist_id 
JOIN Albums a ON a.album_id = ar2.album_id 
JOIN Tracks t ON t.album_id = a.album_id 
WHERE t.duration = (SELECT MIN(duration) FROM Tracks t2)

--9.название альбомов, содержащих наименьшее количество треков
SELECT name_album, COUNT(a.album_id)  FROM Albums a 
JOIN Tracks t ON t.album_id = a.album_id 
GROUP BY a.name_album 
HAVING COUNT(t.track_id) = (SELECT  COUNT(track_id)  FROM Albums a 
JOIN Tracks t ON t.album_id = a.album_id 
GROUP BY a.name_album 
ORDER BY count(t.track_id)
LIMIT 1)

--9.название альбомов, содержащих наименьшее количество треков
SELECT name_album, COUNT(a.album_id)  FROM Albums a 
JOIN Tracks t ON t.album_id = a.album_id 
GROUP BY a.name_album
HAVING COUNT(t.track_id) = (SELECT MIN(AA) FROM (SELECT 
COUNT(a.album_id) AA FROM Albums a GROUP BY a.name_album) M
)

