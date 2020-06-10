/*�Ǹŵ� ������ ���� ������ ����ϴ� �Լ�
  ������ 30,000�̻� �̸� 10%, 30,000�̸� �̸� 5%*/
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
SELECT o.* , fnc_Interest(o.saleprice) AS ������ FROM orders o;

CREATE FUNCTION date_format_1(f_date orders.orderdate%TYPE)
RETURN VARCHAR2 AS
    f_date VARCHAR2(50);
BEGIN
    f_date := to_char(v_date, 'yyyy"��" mm"��" dd"��" day');
    RETURN f_date;
END;

CREATE FUNCTION date_format_2(v_date orders.orderdate%TYPE)
RETURN VARCHAR2 AS
    f_date VARCHAR2(50);
BEGIN
    f_date := to_char((v_date + 5), 'yyyy"��" mm"��" dd"��" day');
    RETURN f_date;
END;

SELECT o.* , date_format_1(o.orderdate) ��¥ FROM orders o;

SELECT o.* , date_format_2(o.orderdate) AS ������� FROM orders o;



















