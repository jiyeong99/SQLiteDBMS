# 기본 함수, 연산
## 문자열 함수
 - SUBSTER(문자열, start_num, end_num) : 문자열 자르기, 인덱싱(1부터 시작, 마지막 인덱스는 -1)
 - TRIM(문자열),LTRM(문자열),RTRIM(문자열) = 공백제거
 - LENGTH(문자열) : 문자열길이반환
 - REPLACE(문자열,패턴,변경값)
 - UPPER(문자열),LOWERE(문자열)
 - || : 문자열 합치기
 ## 숫자 함수
 - ABS(숫자) : 절대 값
 - SIGN(숫자) : 부호(양수1,음수 -1,0 0)
 - MOD(숫자1, 숫자2) : 숫자 1을 숫자 2로 나눈 **나머지**
 - CEIL(숫자), FLOOR(숫자) : 올림, 내림
 - **ROUND(숫자, 자릿수, 0/1)** : 소숫점 자릿수 제어, 0이면 내림 1이면 올림
 - POWER(숫자1, 숫자2) : 숫자1의 숫자 2제곱
 - SQRT(숫자) : 제곱근
## GROUP BY
### ALIAS
- 칼럼명이나 테이블명이 너무 길거나 다른 명칭으로 확인하고 싶을 때 활용
- **AS를 생략하여 공백으로 표현할 수 있음**
- 별칭에 공백, 특수문자 포함 시 큰따옴표로 묶어서 표기
### GROUP BY
- SELECT문의 optional 절
- 행 집합에서 요약 행 집합을 만든다.
- 선택된 행 그룹을 하나 이상의 열 값으로 요약행으로 만듦.
- **문장에서 where절이 있을 시 반드시 where 절 뒤에 작성**
- 지정된 컬럼의 값이 같은 행들로 묶음
- 집계함수와 활용하였을 때 의미가 있음
- 그룹화 된 각각의 그룹이 하나의 집합으로 집계함수의 인수로 넘겨진다.
- GROUP BY의 결과는 정렬되지 않으므로 필요시 ORDER BY를 이용해 정렬해야한다.

### HAVING
    - 집계함수는 WHERE절로 조건을 정해 줄 수 없다.
    - 집계함수의 조건을 더할때 쓰는 문구
    ```SQL
    SELECT *
    FROM 테이블이름
    WHERE 조건식
    GROUP BY 칼럼or표현식
    HAVIVNG 조건
    ORDER BY 칼럼or표현식 ASC/DESC
    LIMIT 숫자 OFFSET 숫자;
    ```
# ALTER TABLE
- 테이블 이름 변경
- 새로운 column 추가
- column 이름 수정
- column 삭제
```SQL
ALTER TABLE table_name
RENAME TO new_table_name;

ALTER TABLE 데이터집합이름
ADD COLUMN column_definition;

ALTER TABLE table_name
RENAME COLUMN current_column_name TO new_column_name;

ALTER TABLE table_name
DROP COLUMN column_name;

