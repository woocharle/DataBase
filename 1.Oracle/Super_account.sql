-- �Ϲ� ���� �����
-- CRAETE USER ������ INDENTIFIED BY ��й�ȣ;
-- Oracle 12c���ʹ� ������� �տ� c##�� ���̵��� ���̹� ��Ģ ����
CREATE USER c##jwc IDENTIFIED BY 1112;

-- �� ������ ���ӱ��Ѱ� �ڿ� ��� ������ �ο�����
-- GRANT�� ���� �ο� ��ɾ�
GRANT CONNECT, RESOURCE TO c##jwc;

ALTER USER c##jwc default tablespace USERS QUOTA unlimited on users;

CREATE USER c##wootool IDENTIFIED BY 1112;

-- �� ������ ���ӱ��Ѱ� �ڿ� ��� ������ �ο�����
-- GRANT�� ���� �ο� ��ɾ�
GRANT CONNECT, RESOURCE TO c##wootool;

ALTER USER c##wootool default tablespace USERS QUOTA unlimited on users;


-- VIEW ����
GRANT CREATE VIEW TO c##jwc


