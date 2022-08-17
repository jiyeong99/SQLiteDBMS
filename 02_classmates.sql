-- SQLite
-- classmates
-- name : TEXT
-- age : INT
-- address : TEXT

CREATE TABLE classmates(
  name TEXT,
  age INT,
  adress TEXT
);

CREATE TABLE students(
id integer primary key,
name text not null,
age integer default 1 checK (0<age)
);

INSERT INTO classmates (name, age) VALUES ('홍길동', 23);
SELECT * FROM classmates;
INSERT INTO classmates (name, age, adress) VALUES ('홍길동',23, '서울');
INSERT INTO classmates VALUES ('김철수', 40, '서울');
SELECT rowid, * FROM classmates;

DROP TABLE classmates;
DROP TABLE students;
