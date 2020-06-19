
set serveroutput on; 


CREATE PROCEDURE avg_price (avg_val OUT NUMBER) AS
BEGIN
    SELECT AVG(price)  
    INTO avg_val 
    FROM book
    WHERE price IS NOT NULL;
END;

DECLARE
avg_val NUMBER;
BEGIN
    avg_price(avg_val);
    dbms_output.put_line('책의 평균: ' || trunc(avg_val));
END;

SELECT * FROM book;

--book id를 입력 받아서 책이름, 가격을 출력하는 프로시저를 만들어라.

CREATE PROCEDURE bookout
(i_bookid IN NUMBER, i_bookname OUT VARCHAR2, i_price OUT NUMBER) AS
BEGIN
    SELECT bookname
    INTO i_bookname
    FROM book
    WHERE bookid = i_bookid;
    
    SELECT price
    INTO i_price
    FROM book
    WHERE bookid = i_bookid;
    
END;

DECLARE
i_bookname VARCHAR2(50); 
i_price NUMBER;
BEGIN
    bookout(2, i_bookname, i_price);
    dbms_output.put_line('책의 이름: ' || i_bookname || ', 책의 가격: ' || i_price);
END;

CREATE PROCEDURE book_test(v_id in book.bookid%TYPE) AS
v_name book.bookname%TYPE;
v_price book.price%TYPE;
BEGIN
    SELECT bookname, price 
    INTO v_name, v_price
    FROM book
    WHERE bookid = v_id;
END;

EXEC book_test(1);


CREATE PROCEDURE book_test2
(i_bookid IN NUMBER, i_bookname OUT VARCHAR2, i_price OUT NUMBER) AS
BEGIN
    SELECT bookname, price 
    INTO i_bookname, i_price
    FROM book
    WHERE bookid = v_id;
END;
BEGIN
    book_test2(i_bookid);
    dbms_output.put_line('책 이름: ' || i_bookname);
    dbms_output.put_line('책 가격: ' || i_price);
END;


CREATE PROCEDURE b_test(v_id book.bookid%TYPE) AS
    v_name book.bookname%TYPE;
    v_price book.price%TYPE;
    PROCEDURE book_test3(v_id book.bookid%TYPE) AS
    BEGIN
        SELECT bookname, price
        INTO v_name, v_price
        FROM book
        WHERE bookid = v_id;
    END;
BEGIN
    book_test3(v_id, v_name, v_price);
    dbms_output.put_line('책 이름 ' || v_name);
    dbms_output.put_line('책 가격 ' || v_price);
END;

EXEC b_test(2);




