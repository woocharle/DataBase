    
set serverout on;

SELECT * FROM members;

CREATE TRIGGER trigger_test AFTER
    INSERT ON members
    FOR EACH ROW
BEGIN
    dbms_output.put_line(:new.m_name || '삽입성공');
END;

ALTER TRIGGER trigger_test ENABLE;

INSERT INTO members 
VALUES(MEMBERS_SEQ.nextval, 'Mary', '1111', '마리', 26, SYSDATE);


CREATE TRIGGER trigger_test_2 AFTER
    UPDATE ON members 
    FOR EACH ROW
BEGIN
    dbms_output.put_line('변경 전 이름: ' || :old.m_name);
    dbms_output.put_line('변경 후 이름: ' || :new.m_name );
END;

ALTER TRIGGER trigger_test_2 ENABLE;

UPDATE members 
SET m_name = '유리' 
WHERE idx = 2;

COMMIT;

UPDATE members 
SET m_name = '마이' 
WHERE idx = 1;

CREATE TABLE members_del AS
SELECT * FROM members
WHERE 1 = 0;

SELECT * FROM members_del;

CREATE TRIGGER trigger_test_3 AFTER
    DELETE ON members
    FOR EACH ROW
BEGIN
    INSERT INTO members_del
    VALUES(:old.idx, :old.m_id, :old.m_pw, :old.m_name, :old.m_age, :old.m_reg);
END;

ALTER TRIGGER trigger_test_3 ENABLE;

DELETE FROM members
WHERE idx =5;















