# Database
  - 체계화된 데이터의 모임
  - 여러 사람이 공유하고 사용할 목적으로 통합 관리되는 데이터 집합
  - 논리적으로 연관된 (하나 이상의) 자료 모음, 그 내용을 고도로 구조화 함으로써 검색과 갱신의 효율화를 꾀한다.
  - 몇개의 자료 파일을 조직적으로 통합하여 자료 항목의 중복을 없애고 자료를 구조화하여 기억시켜 놓은 자료의 집합체
  ## 데이터 베이스의 장점
    - 데이터 중복 최소화
    - 데이터 무결성 (정확한 정보를 보장)
    - 데이터 일관성
    - 데이터 독립성 (물리적/논리적)
    - 데이터 표준화
    - 데이터 보안 유지
# RDB(관계형 데이터베이스, Relational DataBase)
  - 서로 관련된 데이터를 저장하고 접근할 수 있는 데이터베이스 유형
  - key,value들의 간단한 realationd을 table 형태로 정리한 데이터베이스
  ## 스키마(schema)
    - 데이터베이스에서 자료의 구조, 표현방법, 관계 등 전반적인 명세를 기술한 것
  ## 테이블(table)
    - 열(컬럼/필드)과 행(레코드/값)의 모델을 사용해 조직된 데이터 요소들의 집합
    #### 열(column)
      - 각 열에 고유한 데이터 형식 지정
      - 필드에 저장된 데이터(세로보기)
    #### 행(row)
      - 실제 데이터가 저장되는 형태
      - 값들의 저장형태(가로보기)
    #### 기본키(Primary key)
      - 각 행(레코드)의 고유 값
      - 반드시 설정하고, 고유해야하며, 무결성이여야한다.
# RDBMS(Realational DataBase Managemant System, 관계형 데이터베이스 관리 시스템)
  - 관계형 모델을 ㅣ반으로 하는 데이터베이스 관리시스템을 의미
  ## SQLite
    - 서버 형태가 아닌 파일 형식으로 응용프로그램에 넣어서 사용하는 비교적 가벼운 데이터베이스
    - 구글-안드로이드 운영체제에 기본적으로 탑재되 데이터베이스, 임베디드 소프트웨어에도 많이 활용됨
    - 로컬에서 간단한 DB 구성을 ㅏㄹ 수 있으며, ㅗ픈소스 프로젝트이기 때문에 자유롭게 사용 가능.

    ###  SQLite Data Type
      1. NULL
      2. INTEGER
        - 크기에 따라 0, 1, 2, 3, 4, 6 또는 8바이트에 저장된 부호 있는 정수
      3. REAL
        - 8바이트 부동 소수점 숫자로 저장된 부동 소수점 값
      4. TEXT
      5. BLOB
        - 입력된 그대로 정확히 저장된 데이터 (별다른 타입 없이 그대로 저장)
      #### SQLite Type Affinity
        - 특정 컬럼에 저장하도록 권장하는 데이터 타입
        1. INTEGER
          - INT
          - INTEGER
          - TINYINT
          - SMALLINT
          - DEDIUMINT
          - BIGINT
          - UNSIGNED BIG INT
          - INT2
          - INT8
        2. TEXT
          - CHARACER(20)
          - VARCHAR(255)
          - VARING CHARACER(255)
          - NCHAR(55)
          - NATIVE CHARACTER(70)
          - NVARCHAR(100)
          - TEXT
          - CLOB
        3. BLOB
          - BLOB(NO DATATYPE SPCIFIED)
        4. REAL
          - REAL
          - DOUBLE
          - DOUBLE PRECISION
          - FLOAT
        5. NUMERIC
          - DECIMAL(10,5)
          - BOOLEAN
          - DATE
          - DATETIME
# SQL(Structured Query Language)
  - 관계형 데이터베이스 관리시스템의 데이터 관리를 위해 설계된 특수 목적으로 제작된 프로그래밍 언어
  - 데이터베이스 스키마 생성 및 수정
  - 자료의 검색 및 관리
  - 데이터베이스 객체 접근 조정 관리
  ## DDL(데이터정의언어, Data Dfinition Language)
    - 관계형 데이터베이스 구조(테이블, 스키마)를 정의하기 위한 명령어
    ### CREATE
    ### DROP
    ### ALTER
  ## DML(데이터 조작 언어, Data Manipulation Language)
    - 데이터를 저장, 조회, 수정, 삭제 등을 하기 위한 명령어
    ### INSERT
      - 새로운 데이터 삽입(추가)
    ### SELECT
      - 저장되어있는 데이터 조회
    ### UPDATE
      - 저장되어있는 데이터 갱신
    ### DELETE
      - 저장되어있는 데이터 삭제
  ## DCL(데이터 제어 언어, Data Control Language)
    - 데이터베이스 사용자의 권한 제어를 위해 사용하는 명령어
    ### GRANT
    ### REVOKE
    ### COMMIT
    ### ROLLBACK
        
