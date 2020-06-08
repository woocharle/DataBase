set serveroutput on;

DECLARE
    i int := 9;
    grade varchar2(50) := 'A';
    
BEGIN
    if i = 10 then 
        dbms_output.put_line('i는 ' || i || ' 입니다.');
        dbms_output.put_line('성적은 ' || grade || ' 입니다.');
        
    end if;
    
    if mod(i, 2) = 0  then 
        dbms_output.put_line(i || '는 짝수 입니다.');

    else
        dbms_output.put_line(i || '는 홀수 입니다.');
    end if;
    
END ;


DECLARE
    i int := 9;
    res VARCHAR2(50) := ' ';
    
BEGIN
    if mod(i, 2) = 0  then 
        res := '짝수';

    else
        res := '홀수';
    end if;
    
    dbms_output.put_line(i || '는 '|| res || '입니다.');
    
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
    
    dbms_output.put_line('성적은 '|| res || '입니다.');
    
END ;


DECLARE
    cnt int;
BEGIN
    for cnt in 1..10 loop
        dbms_output.put_line('cnt = ' || cnt);
    end loop;
    
END ;

-- 짝수 출력
DECLARE
    cnt int;
BEGIN
    for cnt in 1..10 loop
        if mod(cnt, 2) = 0 then
            dbms_output.put_line('cnt = ' || cnt);
        end if;
    end loop;
    
END ;

-- 짝수의 합 출력
DECLARE
    tot int := 0;
    cnt int;
BEGIN
    for cnt in 1..10 loop
        if mod(cnt, 2) = 0 then
            tot := tot + cnt;    
        end if;
    end loop;
    dbms_output.put_line('1부터 10까지 짝수의 총 합계는 ' || tot);
    
END ;

-- 1 ~ 10까지 출력
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












