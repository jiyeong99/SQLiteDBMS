-- SQLite
SELECT smoking, COUNT(*)
FROM healthcare
GROUP BY smoking;

SELECT is_drinking, COUNT(*)
FROM healthcare
GROUP BY is_drinking;

SELECT blood_pressure, COUNT(*)
FROM healthcare
GROUP BY blood_pressure
HAVING blood_pressure >= 300;

SELECT sido, COUNT(*)
FROM healthcare
GROUP BY sido
HAVING COUNT(sido) >= 5000;

SELECT height, COUNT(*)
FROM healthcare
GROUP BY height
ORDER BY COUNT(*) DESC
LIMIT 5;

SELECT weight, height, COUNT(*)
FROM healthcare
GROUP BY height,weight
ORDER BY COUNT(*) DESC
LIMIT 5;

SELECT AVG(waist), COUNT(*)
FROM healthcare
GROUP BY is_drinking;

SELECT gender, ROUND(AVG(va_left),2) AS '평균 왼쪽 시력',ROUND(AVG(va_right), 2) AS '평균 오른쪽 시력'
FROM healthcare
GROUP BY gender;

SELECT age, AVG(height) AS '평균 키' ,AVG(weight) AS '평균 몸무게'
FROM healthcare
GROUP BY age
HAVING AVG(height) >= 160 AND AVG(weight) >= 60;

SELECT is_drinking, smoking, weight*10000/height/height AS BMI
FROM healthcare
GROUP BY is_drinking,smoking
HAVING is_drinking != '' AND smoking != '';

SELECT COUNT(*)
FROM healthcare
WHERE waist = '';

SELECT is_drinking, ROUND(AVG(blood_pressure),2) AS '평균혈압', ROUND(AVG(waist),2) AS '평균허리둘레'
FROM healthcare
WHERE is_drinking != '' AND blood_pressure != '' AND waist != ''
GROUP BY is_drinking;

SELECT sido, COUNT(*)
FROM healthcare
GROUP BY sido;

SELECT smoking, gender, (va_left+va_right)/2 AS '평균시력'
FROM healthcare
WHERE smoking != ''
GROUP BY smoking, gender;