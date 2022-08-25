-- SQLite
-- INNER JOIN : 조건에 일치하는(동일한 값이 있는) 행만 반환
SELECT * FROM users;
SELECT * FROM role;
SELECT * FROM articles;

SELECT * 
FROM users INNER JOIN role
    ON users.role_id = role.id;
-- id  name  role_id  id  title
-- --  ----  -------  --  -----
-- 1   관리자   1        1   admin
-- 2   김철수   2        2   staff
-- 3   이영희   2        2   staff
SELECT *
FROM users INNER JOIN role
    ON users.role_id = role.id
WHERE role.id = 2;
-- id  name  role_id  id  title
-- --  ----  -------  --  -----
-- 2   김철수   2        2   staff
-- 3   이영희   2        2   staff
SELECT *
FROM users INNER JOIN role
    ON users.role_id = role.id
ORDER BY users.name DESC;
-- id  name  role_id  id  title
-- --  ----  -------  --  -----
-- 3   이영희   2        2   staff
-- 2   김철수   2        2   staff
-- 1   관리자   1        1   admin

-- OUTER JOIN 동일한 값이 없는 데이터도 반환할 때 사용
--     - 기준이 되는 테이블에 따라 LEFT, RIGHT, FULL을 지정
SELECT *
FROM articles LEFT OUTER JOIN users
    ON articles.user_id = users.id;
-- id  title  content  user_id  id  name  role_id
-- --  -----  -------  -------  --  ----  -------
-- 1   1번글    111      1        1   관리자   1
-- 2   2번글    222      2        2   김철수   2
-- 3   3번글    333      1        1   관리자   1
-- 4   4번글    444
SELECT *
FROM articles LEFT OUTER JOIN users
    on users.id = articles.user_id
WHERE articles.user_id IS NOT NULL;
-- id  title  content  user_id  id  name  role_id
-- --  -----  -------  -------  --  ----  -------
-- 1   1번글    111      1        1   관리자   1
-- 2   2번글    222      2        2   김철수   2
-- 3   3번글    333      1        1   관리자   1

SELECT *
FROM articles FULL OUTER JOIN users
    ON users.id = articles.user_id;
-- id  title  content  user_id  id  name  role_id
-- --  -----  -------  -------  --  ----  -------
-- 1   1번글    111      1        1   관리자   1
-- 2   2번글    222      2        2   김철수   2
-- 3   3번글    333      1        1   관리자   1
-- 4   4번글    444

-- CROSS JOIN : 모든 가능한 경우의 수 JOIN
SELECT *
FROM users CROSS JOIN role;
-- id  name  role_id  id  title
-- --  ----  -------  --  -------
-- 1   관리자   1        1   admin
-- 1   관리자   1        2   staff
-- 1   관리자   1        3   student
-- 2   김철수   2        1   admin
-- 2   김철수   2        2   staff
-- 2   김철수   2        3   student
-- 3   이영희   2        1   admin
-- 3   이영희   2        2   staff
-- 3   이영희   2        3   student

-- TABLE 3개 JOIN
SELECT *
FROM articles
    JOIN users
        ON articles.user_id = users.id
    JOIN role
        on users.role_id = role.id;
-- id  title  content  user_id  id  name  role_id  id  title
-- --  -----  -------  -------  --  ----  -------  --  -----
-- 1   1번글    111      1        1   관리자   1        1   admin
-- 2   2번글    222      2        2   김철수   2        2   staff
-- 3   3번글    333      1        1   관리자   1        1   admin