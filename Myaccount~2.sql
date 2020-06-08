
CREATE VIEW v_menber
AS SELECT m_id, m_name from members;

CREATE VIEW v_book_name
AS SELECT c_name
FROM customer c
WHERE c.custid IN(SELECT custid
                  FROM orders 
                  WHERE bookid IN (SELECT bookid 
                                   FROM book
                                   WHERE bookname LIKE '_±¸%'));
                                   
                                   
SELECT * FROM v_book_name;


SELECT * FROM customer;