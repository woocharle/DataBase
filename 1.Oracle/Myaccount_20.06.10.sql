/*판매된 도서에 대한 이익을 계산하는 함수
  가격이 30,000이상 이면 10%, 30,000미만 이면 5%*/
SELECT * FROM orders;
 
  
CREATE FUNCTION fnc_Interest(f_price orders.saleprice%TYPE)
RETURN NUMBER AS
    my_price NUMBER;
  
BEGIN
    IF f_price >= 30000 THEN 
        my_price := f_price * 0.1;
    ELSE
        my_price := f_price * 0.05;
    END IF;
    RETURN my_price;
END;
  
--abbreviation
SELECT o.* , fnc_Interest(o.saleprice) AS 순이익 FROM orders o;

CREATE FUNCTION date_format_1(f_date orders.orderdate%TYPE)
RETURN VARCHAR2 AS
    f_date VARCHAR2(50);
BEGIN
    f_date := to_char(v_date, 'yyyy"년" mm"월" dd"일" day');
    RETURN f_date;
END;

CREATE FUNCTION date_format_2(v_date orders.orderdate%TYPE)
RETURN VARCHAR2 AS
    f_date VARCHAR2(50);
BEGIN
    f_date := to_char((v_date + 5), 'yyyy"년" mm"월" dd"일" day');
    RETURN f_date;
END;

SELECT o.* , date_format_1(o.orderdate) 날짜 FROM orders o;

SELECT o.* , date_format_2(o.orderdate) AS 유통기한 FROM orders o;



















