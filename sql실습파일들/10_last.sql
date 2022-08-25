-- SQLite
-- AC/DC의 모든 앨범
-- AC/DC (artists)
-- 앨범(albums)

-- AC/DC의 ID는 몰라..

-- ID 조회
SELECT ArtistId
FROM artists
WHERE Name = 'Nirvana';
-- ArtistId
-- --------
-- 110
SELECT *
FROM albums
WHERE ArtistId = (SELECT ArtistId
FROM artists
WHERE Name = 'Nirvana');
-- AlbumId  Title                                       ArtistId
-- -------  ------------------------------------------  --------
-- 163      From The Muddy Banks Of The Wishkah [Live]  110
-- 164      Nevermind                                   110