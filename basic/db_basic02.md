# INIT
## DB 생성
```bash
$ sqlite3 <filename>.sqlite3
sqlite> .database
```
## csv 파일 table로 만들기
    ```SQL
    .mode csv
    .import <file_name>.csv <table_name>
    .tables
    <table_name>
    ```
## sqlite 나가기
    - .quit

# CRUD
## CREAT
- csv -> table
    ```SQL
    CREATE TABLE table_name(
        id INTEGER
        ~~
    );
    ```
### 조회
    ```SQL
    .schema table_name
    ```
### 삭제
    ```SQL
    DROP TABLE table_name;
    .tables
    ```

### SELECT
    ```SQL
    SELECT * FROM table_name;
    ```
### INSERT
- 단일 행 삽입
    ```SQL
    INSERT INTO table_name (column1,column2) VALUES (value1, value2);
    INSERT INTO table_name table_name VALUES (value1, value2);
    ```
- 테이블에 정의된 모든 컬럼에 맞춰 순서대로 입력
    ```SQL
    INSERT INTO table_name table_name VALUES (value1, value2);
    ```
## READ
### SELECT
- 테이블에서 데이터 조회
- SELECT 문은 SQLite에서 가장 기본, 다양한 clause와 함께 사용
    - ORDER BY(정렬), DISTINCT(중복제거), WHERE(조건), LIMIT(반환제한)+OFFSET, GROUP BY(집합)
    ``` SQL
    SELECT DISTINCT 칼럼명 
    FROM 테이블이름 
    WHERE 조건식
    GROUP BY 컬럼 OR EXPRESSION
    HAVING 그룹조건식
    LIMIT 범위지정 OFFSET 반환인덱스?지정;
    ```
- SQLite에서 제공 : rowid(반환값에순서지정)
### DELETE
```SQL
DELETE FROM table_name WHERE 조건;
```
- 여기서 조건은 보통 UNIQUE값인 rowid값으로 삭제
### AUTOINCREMENT
- rowid랑 같은 기능, rowid와는 다르게 이전에 삭제된 행의 값을 재사용하는 것을 방지
## UPDATE
- 기존 행의 데이터 수정
- SET clause에서 테이블의 각 열에 대해 새로운 값 설정
```SQL
UPDATE 테이블이름 SET 컬럼1=값1, 컬럼2=값2, ... WHERE 조건;
```