SELECT CEIL(10.1) FROM DUAL;
SELECT ROUND(15.4) FROM DUAL;
SELECT FLOOR(14.1) FROM DUAL
;

SELECT SYSDATE FROM DUAL;

CREATE TABLE members(
    id VARCHAR2(50),
    pw NUMBER
);

ALTER TABLE members MODIFY (pw VARCHAR2(50));

CREATE TABLE book(
    bookid NUMBER,
    bookname VARCHAR2(50),
    publisher VARCHAR2(50),
    price NUMBER
);

CREATE TABLE bookcopy AS
SELECT *
FROM book;

DROP TABLE bookcooy;

INSERT INTO book VALUES (1, '1일 1깡', '정지훈', 1000);
INSERT INTO book VALUES (2, '날 떠나지마', '박진영', 7000);
INSERT INTO book VALUES (3, '고릴라', '박진영', 7000);
INSERT INTO book VALUES (4, '방탄노인단', '박정희', 7000);

DELETE FROM book
WHERE publisher = '박정희';

SELECT COUNT(DISTINCT publisher)
FROM book;

SELECT *
FROM book
ORDER BY bookid DESC;

CREATE TABLE book2(
    bookid NUMBER NOT NULL PRIMARY KEY,
    bookname VARCHAR2(50),
    publisher VARCHAR2(50),
    price NUMBER
);

COMMIT;

INSERT INTO book2 VALUES (1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO book2 VALUES (2, '축구아는 여자', '나무수', 13000);
INSERT INTO book2 VALUES (3, '축구의 이해', '대한미디어', 22000);
INSERT INTO book2 VALUES (4, '골프 바이블', '대한미디어', 35000);
INSERT INTO book2 VALUES (5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO book2 VALUES (6, '역도 단계별기술', '굿스포츠', 6000);
INSERT INTO book2 VALUES (7, '야구의 추억', '이상미디어', 20000);
INSERT INTO book2 VALUES (8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO book2 VALUES (9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO book2 VALUES (10, 'Olympic Champions', 'Pearson', 13000);

UPDATE book2
SET price = price * 1.1
WHERE publisher = '굿스포츠';

SELECT * FROM book2;

SELECT COUNT(bookid) 총_개수, SUM(PRICE) 총_금액
FROM book2;

SELECT bookname
FROM book2
WHERE price >=20000;








