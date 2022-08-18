-- SQLite

-- GROUP BY
-- 성별 갯수
SELECT last_name, COUNT(*)
FROM users
GROUP BY last_name;

-- GROUP BY에서 활용하는 컬럼을 제외하고는
-- 집계함수
SELECT last_name, AVG(age), COUNT(*)
FROM users
GROUP BY last_name;

SELECT last_name, age
FROM users
WHERE last_name = '곽';
-- last_name	age
-- ---------  -----
-- 곽	25
-- 곽	30
-- 곽	28
-- 곽	15

SELECT *
FROM users
LIMIT 5;

SELECT *
FROM users
GROUP BY last_name
LIMIT 5;

SELECT last_name, COUNT(last_name)
FROM users
GROUP BY last_name
HAVING COUNT(last_name) > 100