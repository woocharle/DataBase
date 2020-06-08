-- 일반 계정 만들기
-- CRAETE USER 내계정 INDENTIFIED BY 비밀번호;
-- Oracle 12c부터는 공통계정 앞에 c##을 붙이도록 네이밍 규칙 변경
CREATE USER c##jwc IDENTIFIED BY 1112;

-- 내 계정에 접속권한과 자원 사용 권한을 부여하자
-- GRANT는 권한 부여 명령어
GRANT CONNECT, RESOURCE TO c##jwc;

ALTER USER c##jwc default tablespace USERS QUOTA unlimited on users;

CREATE USER c##wootool IDENTIFIED BY 1112;

-- 내 계정에 접속권한과 자원 사용 권한을 부여하자
-- GRANT는 권한 부여 명령어
GRANT CONNECT, RESOURCE TO c##wootool;

ALTER USER c##wootool default tablespace USERS QUOTA unlimited on users;


-- VIEW 승인
GRANT CREATE VIEW TO c##jwc


