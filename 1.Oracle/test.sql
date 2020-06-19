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

INSERT INTO book VALUES (1, '1�� 1��', '������', 1000);
INSERT INTO book VALUES (2, '�� ��������', '������', 7000);
INSERT INTO book VALUES (3, '����', '������', 7000);
INSERT INTO book VALUES (4, '��ź���δ�', '������', 7000);

DELETE FROM book
WHERE publisher = '������';

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

INSERT INTO book2 VALUES (1, '�౸�� ����', '�½�����', 7000);
INSERT INTO book2 VALUES (2, '�౸�ƴ� ����', '������', 13000);
INSERT INTO book2 VALUES (3, '�౸�� ����', '���ѹ̵��', 22000);
INSERT INTO book2 VALUES (4, '���� ���̺�', '���ѹ̵��', 35000);
INSERT INTO book2 VALUES (5, '�ǰ� ����', '�½�����', 8000);
INSERT INTO book2 VALUES (6, '���� �ܰ躰���', '�½�����', 6000);
INSERT INTO book2 VALUES (7, '�߱��� �߾�', '�̻�̵��', 20000);
INSERT INTO book2 VALUES (8, '�߱��� ��Ź��', '�̻�̵��', 13000);
INSERT INTO book2 VALUES (9, '�ø��� �̾߱�', '�Ｚ��', 7500);
INSERT INTO book2 VALUES (10, 'Olympic Champions', 'Pearson', 13000);

UPDATE book2
SET price = price * 1.1
WHERE publisher = '�½�����';

SELECT * FROM book2;

SELECT COUNT(bookid) ��_����, SUM(PRICE) ��_�ݾ�
FROM book2;

SELECT bookname
FROM book2
WHERE price >=20000;








