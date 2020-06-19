
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
    dbms_output.put_line('å�� ���: ' || trunc(avg_val));
END;

SELECT * FROM book;

--book id�� �Է� �޾Ƽ� å�̸�, ������ ����ϴ� ���ν����� ������.

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
    dbms_output.put_line('å�� �̸�: ' || i_bookname || ', å�� ����: ' || i_price);
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
    dbms_output.put_line('å �̸�: ' || i_bookname);
    dbms_output.put_line('å ����: ' || i_price);
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
    dbms_output.put_line('å �̸� ' || v_name);
    dbms_output.put_line('å ���� ' || v_price);
END;

EXEC b_test(2);




