DROP TABLE book2;

CREATE TABLE customer1(
    custid number not null PRIMARY KEY,
    c_name VARCHAR(50),
    c_address VARCHAR(50),
    c_phone VARCHAR(50)
);

INSERT INTO customer1 VALUES(1,'박지성', '영국 멘처스터', '010-5000-0001');
INSERT INTO customer1 VALUES(2,'김연아', '대한민국 서울', '010-6000-0001');
INSERT INTO customer1 VALUES(3,'장미란', '대한민국 강원도', '010-7000-0001');
INSERT INTO customer1 VALUES(4,'추신수', '미국 클리블랜드', '010-8000-0001');
INSERT INTO customer1 VALUES(5,'박세리', '대한민국 대전', null);
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

















