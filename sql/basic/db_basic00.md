# SQLiteDBMS.

## SQLite 설치
    - vs code -> sqlite 확장팩 설치
    - 웹에서 sqlite 설치파일, tools 압축파일 다운로드
    - C드라이브에 sqlite 폴더 생성 후 압축파일 해제
    - sqlite 폴더에 파일만 들어가있게!
    - 환경변수 c\sqlite\ 패스 생성
    - git bash에 sqlite 진입 확인
        ```bash
        $ winpty sqlite3 -- >sqlite실행명령어
        sqlite >
        ```
## ailas 생성
    - 실행명령어 축약하기
        ```bash
        $ code ~/.bashrc
        ```
    - 열린 창에 입력
        ```.bashrc
        alias sqlite3 = 'winpty sqlite3'
        ```
    - 저장 후 종료
    - 소스 적용
        ```bash
        $ source ~/.bashrc
        ```

## git에서 특정 파일 무시하고 push하기
    - gitignore에 추가
        ```.gitignore

        *.sqlite3
        a.txt
        *.csv
        ```

# 단축키
    - ctrl + shift + q : query 전체 실행
    - 부분 실행은 마우스 우클릭 메뉴에
    - 그러니까 table 핸들링하는건 다른 파일로 구분하여 사용하기
# 터미널에서 VIEW 변경
    - 터미널에서 sqlite 실행
    - bash에서 sqlite파일 열기
        ```bash
        $ sqlite tutorial.sqlite3
        sqlite > 
        ```
## turminal view 변경
    ```SQL
    sqlite> .headers on
    sqlite> .mode column
    ```