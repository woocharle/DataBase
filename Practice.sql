SELECT CHR(68) FROM DUAL;
SELECT TRIM(' ������ '), LTRIM(' ������ '), RTRIM(' ������ ') FROM DUAL;

SELECT LPAD('Page 1', 15, '*.'), LENGTH(LPAD('Page 1', 15, '*.')) FROM DUAL;

SELECT ADD_MONTHS('14/05/21', 1) FROM DUAL;

SELECT REPLACE('DKDKDKDKDKD', 'K', 'J') FROM DUAL;

SELECT INSTR('77070 - 1077999', '9', -1, 1) FROM DUAL;

SELECT TRUNC(sysdate - TO_DATE('20/06/01')) FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'yyyy/mm/dd dy hh24:mi:ss') FROM DUAL;