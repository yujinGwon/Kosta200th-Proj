-- BUS
-- ������ȣ, �������, ����/����, ���������, ����/�ó�, ����̷�(Ƚ��), ����, ����Ÿ�, �ֱ� ��������
INSERT INTO BUS VALUES('01��0001', 2020, 'õ������', SYSDATE, '�ó�', 0, '�����', 10000, NULL);
INSERT INTO BUS VALUES('02��0002', 2019, 'õ������', SYSDATE, '�ó�', 0, '�����', 20000, NULL);
INSERT INTO BUS VALUES('03��0003', 2018, '����', SYSDATE, '�ó�', 0, '�����', 30000, NULL);
INSERT INTO BUS VALUES('04��0004', 2017, '����', SYSDATE, '�ó�', 0, '�����', 40000, NULL);
INSERT INTO BUS VALUES('05��0005', 2016, 'õ������', SYSDATE, '�ó�', 0, '�����', 50000, NULL);
INSERT INTO BUS VALUES('06��0006', 2015, 'õ������', SYSDATE, '�ó�', 0, '�����', 60000, NULL);
INSERT INTO BUS VALUES('07��0007', 2014, 'õ������', SYSDATE, '�ó�', 0, '�����', 70000, NULL);
INSERT INTO BUS VALUES('08��0008', 2013, 'õ������', SYSDATE, '�ó�', 0, '�����', 80000, NULL);
INSERT INTO BUS VALUES('09��0009', 2012, '����', SYSDATE, '�ó�', 0, '�����', 90000, NULL);
INSERT INTO BUS VALUES('10��0010', 2011, '����', SYSDATE, '�ó�', 0, '�����', 90000, NULL);
INSERT INTO BUS VALUES('11ī0011', 2010, 'õ������', SYSDATE, '�ó�', 0, '�����', 80000, NULL);
INSERT INTO BUS VALUES('12Ÿ0012', 2009, 'õ������', SYSDATE, '�ó�', 0, '�����', 70000, NULL);
INSERT INTO BUS VALUES('13��0013', 2008, 'õ������', SYSDATE, '�ó�', 0, '�����', 60000, NULL);
INSERT INTO BUS VALUES('14��0014', 2007, 'õ������', SYSDATE, '����', 0, '�����', 50000, NULL);
INSERT INTO BUS VALUES('15��0015', 2006, 'õ������', SYSDATE, '���� ', 0, '�����', 40000, NULL);
INSERT INTO BUS VALUES('16��0016', 2005, 'õ������', SYSDATE, '����', 0, '�����', 30000, NULL);
INSERT INTO BUS VALUES('17��0017', 2004, 'õ������', SYSDATE, '����', 0, '�����', 20000, NULL);
INSERT INTO BUS VALUES('18��0018', 2003, '����', SYSDATE, '����', 0, '�����', 20000, NULL);
INSERT INTO BUS VALUES('19��0019', 2002, '����', SYSDATE, '����', 0, '�����', 30000, NULL);
INSERT INTO BUS VALUES('20��0020', 2001, '����', SYSDATE, '����', 0, '�����', 40000, NULL);
INSERT INTO BUS VALUES('21��0021', 2002, 'õ������', SYSDATE, '�ó�', 0, '�����', 50000, NULL);
INSERT INTO BUS VALUES('22��0022', 2003, 'õ������', SYSDATE, '�ó�', 0, '�����', 60000, NULL);
INSERT INTO BUS VALUES('23��0023', 2004, 'õ������', SYSDATE, '�ó�', 0, '�����', 70000, NULL);
INSERT INTO BUS VALUES('24��0024', 2005, 'õ������', SYSDATE, '����', 0, '�����', 80000, NULL);
INSERT INTO BUS VALUES('25ī0025', 2006, 'õ������', SYSDATE, '����', 0, '�����', 90000, NULL);
INSERT INTO BUS VALUES('26Ÿ0026', 2007, 'õ������', SYSDATE, '�ó�', 0, '�����', 100000, NULL);
INSERT INTO BUS VALUES('27��0027', 2008, 'õ������', SYSDATE, '�ó�', 0, '�����', 90000, NULL);
INSERT INTO BUS VALUES('28��0028', 2009, '����', SYSDATE, '�ó�', 0, '�����', 80000, NULL);


--ROUTE
-- �뼱��ȣ, �����, ������, ù���ð�, �����ð�, ��������, �̹�������, ���ο��(ī), ����, û�ҳ� ���(ī), ����, ��̿��(ī��), ����
INSERT INTO ROUTE VALUES('1��', '���Ӹ���3,5����', '���ε����д�����', '05:00', '22:30', 15, 'r001.jpg', 1200, 1300, 800, 900, 400, 500);
INSERT INTO ROUTE VALUES('5��', '��������', '�����ʵ��б�', '04:35', '22:30', 14, 'r002.jpg', 1200, 1300, 800, 900, 400, 500);
INSERT INTO ROUTE VALUES('10��', '���������', '���ǵ�ȯ�¼���', '04:30', '23:15', 9, 'r003.jpg', 1200, 1300, 800, 900, 400, 500);
INSERT INTO ROUTE VALUES('11-1��', '�߾�����������Ʈ', '���ǵ�ȯ�¼���', '05:00', '23:30', 12, 'r004.jpg', 1200, 1300, 800, 900, 400, 500);
INSERT INTO ROUTE VALUES('5528��', '���굿', '��翪', '04:30', '22:50', 10, 'r005.jpg', 1200, 1300, 800, 900, 400, 500);

INSERT INTO ROUTE VALUES('013-1��', '���õ���������', '��õ��û', '05:40', '00:05', 15, 'r006.jpg', 1000, 1100, 700, 800, 400, 500);
INSERT INTO ROUTE VALUES('013-2��', '���õ���������', '�Ҹ����Ÿ�', '05:40', '00:02', 15, 'r007.jpg', 1000, 1100, 700, 800, 400, 500);
INSERT INTO ROUTE VALUES('021-1��', '�⸰�������', '���̵�ī����', '05:05', '23:25', 20, 'r008.jpg', 1000, 1100, 700, 800, 400, 500);
INSERT INTO ROUTE VALUES('����01��', '������', '�ݿ�����', '05:50', '23:50', 8, 'r009.jpg', 1000, 1100, 700, 800, 400, 500);
INSERT INTO ROUTE VALUES('����02��', '������', '�������б�', '05:50', '23:50', 10, 'r010.jpg', 1000, 1100, 700, 800, 400, 500);



-- EMPLOYER
-- ���, �̸�, �ֹι�ȣ, �μ��̸�, ����, ��������, ��������, �ٷΰ�༭, �������, �ް��ϼ�, ��ȥ, ���, ���, Ư��, ����ó, �ӹ�, �̸���, �ּ�, �Ի���, �����, ����Ȯ��?, ����
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '���浿', '111111-1111111', '������', '����', NULL, '����01', '�ۼ�', 1, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '���浿@ANVER.COM', '���� ���α� ���굿', SYSDATE, NULL, 1, 'ROLE_ADMIN');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '���浿', '111111-1111111', '������', '����', NULL, '����02', '�ۼ�', 2, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '���浿@ANVER.COM', '���� ���α� ���굿', SYSDATE, NULL, 1, 'ROLE_USER');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '�ٱ浿', '111111-1111111', '������', '����', NULL, '����03', '�ۼ�', 3, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '�ٱ浿@ANVER.COM', '���� ���α� ���굿', SYSDATE, NULL, 1, 'ROLL_MANAGER');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '��浿', '111111-1111111', '������', '����', NULL, '����04', '�ۼ�', 4, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '��浿@ANVER.COM', '���� ���α� ���굿', SYSDATE, NULL, 1, 'ROLE_TEST');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '���浿', '111111-1111111', '������', '����', NULL, '����05', '�ۼ�', 5, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '���浿@ANVER.COM', '���� ���α� ���굿', SYSDATE, NULL, 1, 'ROLE_GUEST');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '�ٱ浿', '111111-1111111', '������', '����', NULL, '����06', '�ۼ�', 4, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '�ٱ浿@ANVER.COM', '���� ���α� ���굿', SYSDATE, NULL, 1, 'ROLE_USER');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '��浿', '111111-1111111', '������', '����', NULL, '����07', '�ۼ�', 3, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '��浿@ANVER.COM', '���� ���α� ���굿', SYSDATE, NULL, 1, 'ROLE_USER');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '�Ʊ浿', '111111-1111111', '������', '����', NULL, '����08', '�ۼ�', 2, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '�Ʊ浿@ANVER.COM', '���� ���α� ���굿', SYSDATE, NULL, 1, 'ROLE_USER');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '�ڱ浿', '111111-1111111', '������', '����', NULL, '����09', '�ۼ�', 1, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '�ڱ浿@ANVER.COM', '���� ���α� ���굿', SYSDATE, NULL, 1, 'ROLE_USER');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '���浿', '111111-1111111', '������', '����', NULL, '����10', '�ۼ�', 3, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '���浿@ANVER.COM', '���� ���α� ���굿', SYSDATE, NULL, 1, 'ROLE_USER');

INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '��ٿ�', '111111-1111111', '�ѹ���', '����', NULL, NULL, '�ۼ�', 0, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '��ٿ�@ANVER.COM', '���� ���', SYSDATE, NULL, 1, '�ѹ�');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '������', '111111-1111111', '�ѹ���', '����', NULL, NULL, '�ۼ�', 0, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '������@ANVER.COM', '���� ���', SYSDATE, NULL, 1, '�ѹ�');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '��ä��', '111111-1111111', '������', '���', NULL, '����11', '�ۼ�', 2, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '��ä��@ANVER.COM', '��⵵ �Ⱦ�?', SYSDATE, NULL, 1, '����');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, 'ä���̺���', '111111-1111111', '������', '����', NULL, '����12', '�ۼ�', 2, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', 'ä���̺���@ANVER.COM', '���ֵ�', SYSDATE, NULL, 1, '����');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '����', '111111-1111111', '�λ���', '�븮', NULL, NULL, '�ۼ�', 0, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '����@ANVER.COM', '���� ���', SYSDATE, NULL, 1, '�λ�');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '�����', '111111-1111111', '������', '���', NULL, '����13', '�ۼ�', 3, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '�����@ANVER.COM', 'Ȩ����', SYSDATE, NULL, 1, '����');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '����̺���', '111111-1111111', '������', '����', NULL, '����14', '�ۼ�', 2, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '����̺���@ANVER.COM', '������', SYSDATE, NULL, 1, '����');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '������', '111111-1111111', '�λ���', '���', NULL, NULL, '�ۼ�', 0, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '������@ANVER.COM', '��⵵ ȭ����', SYSDATE, NULL, 1, '�λ�');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '�̵���', '111111-1111111', '�λ���', '����', NULL, NULL, '�ۼ�', 0, 15, '��ȥ', '�����', NULL, NULL, '010-0000-0000', '1234', '�̵���@ANVER.COM', '���� ���', SYSDATE, NULL, 1, '������');


-- ALLOCATION
-- ��������, �����뼱, ��������, �ٹ���
insert into allocation values('01��0001', '1��', 'E0001', '���浿', 'A��');


-- REPAIR
-- �ڵ�, ������ȣ, ������, ����, ���, ����, ���
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '01��0001', SYSDATE, NULL, '��������', 1, '��������', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '02��0002', SYSDATE, NULL, '��������', 1, '��������', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '03��0003', SYSDATE, NULL, '��������', 1, '��������', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '04��0004', SYSDATE, NULL, '��������', 1, '��������', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '05��0005', SYSDATE, NULL, '��������', 1, '��������', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '06��0006', SYSDATE, NULL, '��������', 1, '��������', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '07��0007', SYSDATE, NULL, '��������', 1, '��������', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '08��0008', SYSDATE, NULL, '��������', 1, '��������', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '09��0009', SYSDATE, NULL, '��������', 1, '��������', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '10��0010', SYSDATE, NULL, '��������', 1, '��������', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '11ī0011', SYSDATE, NULL, '��������', 1, '��������', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '12Ÿ0012', SYSDATE, NULL, '��������', 1, '��������', NULL);


-- FUEL
-- CODE, ������ȣ, Ÿ��, ��¥, ������¥, ������, ���, ������/�����Ϸ�, ȸ��ó��, ���
INSERT INTO FUEL VALUES(NEXT_F_CODE, '01��0001', 'õ������', SYSDATE, NULL, 30, 30000, '������', '01��0001 õ������ 30L ����', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '02��0002', 'õ������', SYSDATE, NULL, 40, 40000, '������', '02��0002 õ������ 40L ����', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '03��0003', '����', SYSDATE, NULL, 50, 50000, '������', '03��0003 ���� 50L ����', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '04��0004', '����', SYSDATE, NULL, 40, 40000, '������', '04��0004 ���� 40L ����', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '05��0005', 'õ������', SYSDATE, NULL, 30, 30000, '������', '05��0005 õ������ 30L ����', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '06��0006', 'õ������', SYSDATE, NULL, 20, 320000, '������', '06��0006 õ������ 20L ����', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '07��0007', 'õ������', SYSDATE, NULL, 20, 20000, '������', '07��0007 õ������ 20L ����', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '08��0008', 'õ������', SYSDATE, NULL, 30, 30000, '������', '08��0008 õ������ 30L ����', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '09��0009', '����', SYSDATE, NULL, 40, 40000, '������', '09��0009 ���� 40L ����', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '10��0010', '����', SYSDATE, NULL, 50, 50000, '������', '10��0010 ���� 50L ����', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '11ī0011', 'õ������', SYSDATE, NULL, 30, 50000, '������', '11ī0011 õ������ 30L ����', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '12Ÿ0012', 'õ������', SYSDATE, NULL, 50, 50000, '������', '12Ÿ0012 õ������ 50L ����', NULL);


-- ACCDIENT
-- PK, ������ȣ, ���̻��, ����, ��������, ���ð�, ������, �����
INSERT INTO ACCIDENT VALUES(ACC_SEQ.NEXTVAL, '28��0028', 'E0010', '����10', '���డ��', SYSDATE, '�б� ��', '���˻��');
INSERT INTO ACCIDENT VALUES(ACC_SEQ.NEXTVAL, '27��0027', 'E0009', '����09', '���డ��', SYSDATE, '������ ��', '�ߵ�');
INSERT INTO ACCIDENT VALUES(ACC_SEQ.NEXTVAL, '26Ÿ0026', 'E0008', '����08', '��������', SYSDATE, '������ ��', '�����浹');
INSERT INTO ACCIDENT VALUES(ACC_SEQ.NEXTVAL, '25ī0025', 'E0007', '����07', '��������', SYSDATE, '��ö�����Ա� ��', '����Ⱦ��');
INSERT INTO ACCIDENT VALUES(ACC_SEQ.NEXTVAL, '24��0024', 'E0006', '����06', '��������', SYSDATE, '���� ��', '���Ϲ�');


-- PENALTY
-- �ڵ�, ������ȣ, ���, ����, �̸�, �ݾ�, ������/���οϷ�, �����Ͻ�, �������, ��������, ����, ���
INSERT INTO PENALTY VALUES(NEXT_PEN_CODE, '23��0023', 'E0005', '���浿', '����05',  50000, '���οϷ�', '20/06/25', '���� ������', '���� ������', '����', NULL);
INSERT INTO PENALTY VALUES(NEXT_PEN_CODE, '22��0022', 'E0004', '��浿', '����04', 80000, '������', '20/06/28', '�̳��÷��� ��', '���� ������', '��ȣ����', NULL);
INSERT INTO PENALTY VALUES(NEXT_PEN_CODE, '22��0022', 'E0004', '��浿', '����04', 70000, '������', '20/06/29', '�Ⱦ�õ', '�Ⱦ� ������', '�߿�', NULL);
INSERT INTO PENALTY VALUES(NEXT_PEN_CODE, '23��0023', 'E0005', '���浿', '����05', 90000, '������', '20/07/03', 'õ�տ� 1�� �ⱸ��', '���� ������', '����', NULL);
INSERT INTO PENALTY VALUES(NEXT_PEN_CODE, '23��0023', 'E0005', '���浿', '����05', 40000, '������', '20/07/05', '��õ��û�� ������', '��õ ������', '��ȣ����', NULL);

-- COMPLAINT
-- PK, ����, Ÿ��, ��¥, ����, ������ȣ, ���� ���, ���� �̸�
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '�Ҹ� �ֽ��ϴ�.', '�Ҹ�', SYSDATE, '�Ҹ� ���ƿ�. ���� ���ƿ�.', '23��0023', 'E0005', '���浿');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '������ �ʹ� ��������.', '�Ҹ�', '20/06/30', '������ ��������. û�� �� �����ϰ� ���ּ���.', '28��0028', 'E0010', '���浿');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '���� �ϳ� �Ϸ�����.', '����', '20/07/01', '������ �������� �����. �������� ���� ���°� ����?', '27��0027', 'E0009', '�ڱ浿');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '�нǹ� ã���ּ���.', '�нǹ�', SYSDATE, '���� �ڵ��� �ΰ� ���ȴµ�... �� ������ �ڵ��� ã���ּ���.', '26Ÿ0026', 'E0008', '�Ʊ浿');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '�� ���� ¯ģ��!!!', 'Ī��', SYSDATE, '���� ���� ������ ���µ���. �� ���� ģ�� �� ����̾����. ���� �ְ���!!!', '25ī0025', 'E0007', '��浿');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '������ õõ�� ���ּ���.', '�Ҹ�', SYSDATE, '���� ���� �г������� ��ȭ �����ʴϱ�? ���� õõ�� �������ּ���. �ø���', '24��0024', 'E0006', '�ٱ浿');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '���Կ��� ���߽��ϴ�.', 'Ī��', SYSDATE, '���� �ʹ� ��������. ���۶� ���� ����� ���߾��. �� ����� �޾��ּ����~~~.', '25ī0025', 'E0007', '��浿');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '���� ������ �÷��ּ���.', '����', SYSDATE, '���� ��� �������� ����Ÿ�Ⱑ �ʹ� ������. ���� ������ �� �÷��ֽô°� ����?', NULL, NULL, NULL);
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '������ �Ҿ���Ƚ��ϴ�.', '�нǹ�', '20/07/13', '�� ������ �߾��� ��� ������ �Ҿ���Ƚ��ϴ�. ���� ã���ּ���. ������', '11ī0011', 'E0004', '��浿');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '���ǰ��� �����մϴ�.', '����', '20/07/15', '�� ���Ǹ� �޾��ּ���.', '23��0023', 'E0005', '���浿');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '���� ���� �ҷ���.', '����', '20/07/18', '�ɽ��ؼ� �����غ�������.', NULL, NULL, NULL);J

-- ����
insert into wonlyo values('A001','Ÿ�̾�',10,20000);
insert into wonlyo values('B002','���ž�',10,5000);
insert into wonlyo values('C003','���͸�',10,45000);
insert into wonlyo values('D004','������',10,9000);
insert into wonlyo values('E005','ü��',10,35000);
insert into wonlyo values('F006','�������̺�',10,24000);

COMMIT;

-- �μ�Ʈ �⺻ ��


