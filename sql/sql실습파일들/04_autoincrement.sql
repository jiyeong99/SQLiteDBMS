-- SQLite
CREATE TABLE members(
  id integer PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL
);

INSERT INTO members VALUES
(1,'홍길동'),
(2,'김철수'),
(3,'이호영'),
(4,'박민희'),
(5,'최혜영');

DELETE from members WHERE rowid = 5;
INSERT into members (name) VALUES ('주세환');
SELECT * from members;
-- id  name
-- --  ----
-- 1   홍길동
-- 2   김철수
-- 3   이호영
-- 4   박민희
-- 6   주세환