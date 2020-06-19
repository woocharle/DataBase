/* ����� Ŀ��

*/     
set serverout on;

SELECT * FROM book;

CREATE PROCEDURE cursor_test (c_id book.bookid%TYPE) AS
    c_name book.bookname%TYPE;
    c_price book.price%TYPE;
BEGIN
    SELECT bookname, price 
    INTO c_name, c_price
    FROM book
    WHERE bookid = c_id;
    if sql%found then 
        dbms_output.put_line('å�̸�: ' || c_name);
        dbms_output.put_line('å����: ' || c_price);
    else
        dbms_output.put_line('�����Ͱ� �������� �ʽ��ϴ�.');
    end if;

END;

EXEC  cursor_test(1);

EXEC  cursor_test(9);


CREATE PROCEDURE cursor_test_2 AS
    CURSOR cur IS SELECT bookname FROM book;
    b_name book.bookname%TYPE;
BEGIN
    OPEN cur;
    loop 
        FETCH cur
        INTO b_name;
        dbms_output.put_line(b_name);
        exit when cur%notfound;
        
    end loop;
    CLOSE cur;

END;

EXEC cursor_test_2;

CREATE PROCEDURE cursor_test_3(c_id book.bookid%TYPE) AS
    b_name book.bookname%TYPE;
    b_price book.price%TYPE;
    CURSOR cur IS SELECT bookname, price FROM book;
BEGIN
    OPEN cur;
    loop
        FETCH cur INTO b_name, b_price;
        dbms_output_put_line(b_name ||', ' || b_price);
        EXIT WHEN cur%notfound;
    end loop;
    CLOSE cur;

END;

EXEC cursor_test_3(3);

DROP PROCEDURE cursor_test3;

CREATE PROCEDURE cursor_test_4 AS
    myInterest orders.saleprice%TYPE;
    myprice saleprice%TYPE;
    CURSOR cur IS SELECT salepirce FROM orders;
BEGIN
    OPEN cur;
    loop
        FETCH cur INTO myprice;
        EXIT WHEN cur%notfound;
        
        if myprice >= 20000 then myInterest := myprice * 0.1;
        else myInterest := myprice * 0.05;
        end if;
        
        dbms_output.put_line('���ͱ�:' || myInterest);
        
    end loop;
    CLOSE cur;
END;


EXEC cursor_test_4;





