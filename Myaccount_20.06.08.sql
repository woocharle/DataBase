set serveroutput on;

DECLARE
    i int := 9;
    grade varchar2(50) := 'A';
    
BEGIN
    if i = 10 then 
        dbms_output.put_line('i�� ' || i || ' �Դϴ�.');
        dbms_output.put_line('������ ' || grade || ' �Դϴ�.');
        
    end if;
    
    if mod(i, 2) = 0  then 
        dbms_output.put_line(i || '�� ¦�� �Դϴ�.');

    else
        dbms_output.put_line(i || '�� Ȧ�� �Դϴ�.');
    end if;
    
END ;


DECLARE
    i int := 9;
    res VARCHAR2(50) := ' ';
    
BEGIN
    if mod(i, 2) = 0  then 
        res := '¦��';

    else
        res := 'Ȧ��';
    end if;
    
    dbms_output.put_line(i || '�� '|| res || '�Դϴ�.');
    
END ;

DECLARE
    i int := 100;
    res VARCHAR2(50) := '';
    
BEGIN
    if i >= 90  then 
        res := 'A';
    elsif i >= 80 then
        res := 'B';
    elsif i >= 70 then
        res := 'C';
    else
        res := 'F';
    end if;
    
    dbms_output.put_line('������ '|| res || '�Դϴ�.');
    
END ;


DECLARE
    cnt int;
BEGIN
    for cnt in 1..10 loop
        dbms_output.put_line('cnt = ' || cnt);
    end loop;
    
END ;

-- ¦�� ���
DECLARE
    cnt int;
BEGIN
    for cnt in 1..10 loop
        if mod(cnt, 2) = 0 then
            dbms_output.put_line('cnt = ' || cnt);
        end if;
    end loop;
    
END ;

-- ¦���� �� ���
DECLARE
    tot int := 0;
    cnt int;
BEGIN
    for cnt in 1..10 loop
        if mod(cnt, 2) = 0 then
            tot := tot + cnt;    
        end if;
    end loop;
    dbms_output.put_line('1���� 10���� ¦���� �� �հ�� ' || tot);
    
END ;

-- 1 ~ 10���� ���
DECLARE
    tot int := 0;
    cnt int := 0;
BEGIN
    while cnt < 10 loop
        cnt := cnt + 1;
        dbms_output.put_line(cnt);
        
    end loop;
END ;


DECLARE
    tot int := 0;
    cnt int := 0;
BEGIN
    while cnt < 10 loop
        cnt := cnt + 1;
        if mod(cnt, 2) = 0 then
            dbms_output.put_line(cnt);
        end if;
    end loop;
END ;

DECLARE
    tot int := 0;
    cnt int := 0;
BEGIN
    while cnt < 10 loop
        cnt := cnt + 1;
        if mod(cnt, 2) = 0 then
            tot := tot + cnt;
        end if;
    end loop;
    dbms_output.put_line(tot);
    
END ;



DECLARE
    tot int := 0;
    cnt int := 0;
BEGIN
    loop
        cnt := cnt + 1;
        dbms_output.put_line(cnt);
        exit when cnt = 10;
    end loop;
END ;


DECLARE
    tot int := 0;
    cnt int := 0;
BEGIN
    loop
        cnt := cnt + 1;
        if mod(cnt, 2) = 0 then
            dbms_output.put_line(cnt);
        end if;
        
        exit when cnt = 10;
    end loop;
END ;

DECLARE
    tot int := 0;
    cnt int := 0;
BEGIN
    loop
        cnt := cnt + 1;
        if mod(cnt, 2) = 0 then
            tot := tot + cnt;
        end if;
        
        exit when cnt = 10;
    end loop;
    dbms_output.put_line(tot);
    
END ;












