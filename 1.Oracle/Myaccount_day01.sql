DROP TABLE book2;

CREATE TABLE customer1(
    custid number not null PRIMARY KEY,
    c_name VARCHAR(50),
    c_address VARCHAR(50),
    c_phone VARCHAR(50)
);

INSERT INTO customer1 VALUES(1,'������', '���� ��ó����', '010-5000-0001');
INSERT INTO customer1 VALUES(2,'�迬��', '���ѹα� ����', '010-6000-0001');
INSERT INTO customer1 VALUES(3,'��̶�', '���ѹα� ������', '010-7000-0001');
INSERT INTO customer1 VALUES(4,'�߽ż�', '�̱� Ŭ������', '010-8000-0001');
INSERT INTO customer1 VALUES(5,'�ڼ���', '���ѹα� ����', null);
commit;

DROP TABLE customer;

CREATE TABLE customer AS
    SELECT *
    FROM customer1;
    
DROP TABLE customer1;

SELECT COUNT(bookid)
FROM book;

SELECT COUNT(DISTINCT publisher)
FROM book;

SELECT * FROM customer;

SELECT c_name, c_addr;

















