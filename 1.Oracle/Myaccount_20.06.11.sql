CREATE TABLE member01(
    idx NUMBER NOT NULL PRIMARY KEY,
    m_id VARCHAR2(50) NOT NULL UNIQUE,
    m_pw VARCHAR2(50) NOT NULL,
    m_name VARCHAR2(50) NOT NULL,
    m_age NUMBER CHECK(m_age>=19),
    m_reg DATE DEFAULT SYSDATE
); 

ALTER TABLE member01 MODIFY m_id UNIQUE;

--시퀀스 만들기
CREATE SEQUENCE member01_seq
INCREMENT BY 1
START WITH 1 
NOCYCLE;

INSERT INTO member01
VALUES(member01_seq.nextval, 'aaaa', '1111', 'Any', 40, '2020/06/11'); 

INSERT INTO member01
VALUES(member01_seq.nextval, 'bbbb', '1112', 'Brian', 62, '2020/06/11'); 

INSERT INTO member01(idx, m_id, m_pw, m_name, m_age)
VALUES(member01_seq.nextval, 'cccc', '1113', 'Chris', 42); 

INSERT INTO member01
VALUES(member01_seq.nextval, 'dddd', '1114', 'Dorian', 12, '2020/06/11'); 


SELECT * FROM orders;
SELECT * FROM customer;
SELECT * FROM members;


ALTER TABLE customer ADD CONSTRAINT pk_cust PRIMARY KEY (custid);

ALTER TABLE orders ADD CONSTRAINT fk_orders FOREIGN KEY (custid)
REFERENCES customer(custid);

ALTER TABLE orders ADD CONSTRAINT book FOREIGN KEY (bookid)
REFERENCES book(bookid);


INSERT INTO orders
VALUES(11, 6, 1, 6000, SYSDATE);   -- 외래키로 제약을 걸어서 넣을 수 없다. custid 1 ~ 5

INSERT INTO orders
VALUES(11, 5, 11, 8000, SYSDATE); -- 외래키로 제약을 걸어서 넣을 수 없다. bookid 1 ~ 10

COMMIT;
ROLLBACK;

CREATE TABLE emp(
    emp_id NUMBER NOT NULL PRIMARY KEY,
    e_name VARCHAR2(50) NOT NULL,
    e_age NUMBER,
    depart_id NUMBER,
    emp_addr VARCHAR2(50),
    FOREIGN KEY (depart_id) REFERENCES depart(depart_id)
);

CREATE TABLE depart(
    depart_id NUMBER NOT NULL PRIMARY KEY,
    d_name VARCHAR2(50),
    d_addr VARCHAR2(50)
);



















