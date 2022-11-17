rem ���̺� ������ �ʱⵥ���� ���� 
rem �����ۼ���: 2021-05-31
rem ����������: 2021-06-04 20:24

rem �Ϲ�ȸ�� ���̺� ���� 

CREATE TABLE normal_user (
    user_id     VARCHAR2(8),
    user_pw     VARCHAR2(15) NOT NULL,
    name        VARCHAR2(20) NOT NULL,
    birth_date  DATE,
    area        CHAR(8) NOT NULL,
    email       VARCHAR2(30) NOT NULL UNIQUE,
    phone       VARCHAR2(13) NOT NULL UNIQUE,
    point       NUMBER(6) DEFAULT 0,
    grade       CHAR(4) DEFAULT '�ǹ�',
    walk_dis    NUMBER(5) DEFAULT 0,
    CONSTRAINT normal_user_PK PRIMARY KEY (user_id),
    CONSTRAINT area_check CHECK (area IN ('����', '����', '�뱸', '�λ�', '���', '����', '����', '������', '��⵵', '��û����',
                                          '��û�ϵ�', '��󳲵�', '���ϵ�', '���󳲵�', '����ϵ�', '���ֵ�')),

    CONSTRAINT grade_check CHECK (grade IN ('�ǹ�', '���'))
);

rem �Ϲ�ȸ�� �ʱ� ������ ����

INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('hrts423', 'thearhert12', '���̳�', TO_DATE('1999/11/22','YYYY/MM/DD'), '����', 'graeq@naver.com', '010-1111-2222', 12, '�ǹ�',10);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('sjryjsgt', 'nyrsnjysrt13', '�̽ſ�', TO_DATE('2000/01/26','YYYY/MM/DD'), '����', 'tgagda@naver.com', '010-1110-2222', 350, '���', 100);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('ethjeth', 'jeiqorfql43', '�輼��', TO_DATE('1998/02/01','YYYY/MM/DD'), '�뱸', '5yeqjmh@naver.com', '010-1100-2222', 400, '���', 120);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('srrssrw', 'ktoepakgta2', '������', TO_DATE('1997/11/16','YYYY/MM/DD'), '���', 'iykdutj@naver.com', '010-1000-2222', 220, '�ǹ�', 60);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('6sryeh', 'jrieoaq123', '���־�', TO_DATE('1996/11/08','YYYY/MM/DD'), '�λ�', 'gbzdv@naver.com', '010-0000-2222', 160, '�ǹ�', 30);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('rtjhsi3', 'eropqgjq2123', '������', TO_DATE('1995/11/04','YYYY/MM/DD'), '����', 'ouiykdutjh@naver.com', '010-1111-2220', 366, '���', 210);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('46yrsth', 'grueiq331', '��ȿ��', TO_DATE('1994/11/10','YYYY/MM/DD'), '������', 'hnfbg@naver.com', '010-1111-2200', 471, '���', 90);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('stmh57', '58429gergsf', '������', TO_DATE('1993/11/11','YYYY/MM/DD'), '����', 'mjgnhf@naver.com', '010-1111-2000', 310, '���', 80);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('5uk24', 'gjirow2r2', '�̰���', TO_DATE('1992/11/30','YYYY/MM/DD'), '�뱸', 'iyujthrgd@naver.com', '010-1111-0000', 339, '���', 130);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('5thhrs', 'hyr3as1nr3', '�����', TO_DATE('1991/11/19','YYYY/MM/DD'), '���󳲵�', 'ouikutjy@naver.com', '010-1110-2220', 422, '���', 100);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('uupiyg', 'ntae56rqg', '������', TO_DATE('1999/11/08','YYYY/MM/DD'), '���ֵ�', 'oiktu57@naver.com', '010-1100-2220', 160, '�ǹ�', 30);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('xuxzz3', 'ht48eqeas', '�ӽÿ�', TO_DATE('1998/11/09','YYYY/MM/DD'), '���ֵ�', 'ykjgm3@naver.com', '010-1000-2220', 191, '�ǹ�', 70);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('nyrww1', 'b4t8e9qen', '�谡��', TO_DATE('1997/07/28','YYYY/MM/DD'), '����', 'nbfdv64@naver.com', '010-0000-2220', 388, '���', 160);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('tgeraqo', 'nt48e4qn6we', '�����', TO_DATE('1996/03/22','YYYY/MM/DD'), '�λ�', 'oli6ktu64@naver.com', '010-1110-2200', 423, '���', 130);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('nyuw5452', 'g13zd2b', '��Ƹ�', TO_DATE('1995/12/25','YYYY/MM/DD'), '���ϵ�', 'gbzda247@naver.com', '010-1100-2200', 492, '���', 220);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('teb240', 'g4d8gdfgx', '�̵���', TO_DATE('1994/11/26','YYYY/MM/DD'), '����', '9o76i8tu@naver.com', '010-1000-2200', 389, '���', 110);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('bkipetop', 'ntgea8b6wf', '������', TO_DATE('1993/01/02','YYYY/MM/DD'), '��û�ϵ�', 'l6k5ij4uh@naver.com', '010-0000-2200', 520, '���', 180);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('tejuire', 'ju5wtsnh56', '����ȯ', TO_DATE('1992/11/12','YYYY/MM/DD'), '����', 'mgfnhdb4@naver.com', '010-1110-2000', 362, '���', 130);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('btiepq2', 'rilyfkjg3', '������', TO_DATE('1991/11/23','YYYY/MM/DD'), '����', '13wtrdh@naver.com', '010-1100-2000', 411, '���', 150);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('btkeoap', 'mjtdfnhs23', 'Ȳ����', TO_DATE('1990/05/15','YYYY/MM/DD'), '������', '2q3wetsgr@naver.com', '010-1000-2000', 368, '���', 150);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('kfspae12', 'k6eutjnh89', '����ȣ', TO_DATE('1989/06/06','YYYY/MM/DD'), '�뱸', '13qtwgrsh@naver.com', '010-0000-2000', 33, '�ǹ�', 30);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('fke33opa', 'ymjdsfnhbg3', 'Ȳ�̼�', TO_DATE('1988/10/27','YYYY/MM/DD'), '����', '9o68itujy@naver.com', '010-1110-0000', 490, '���', 240);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('vfisa12', 'jdmgfnbgd2', '������', TO_DATE('1987/11/23','YYYY/MM/DD'), '����', '46wtrsg@naver.com', '010-1100-0000', 267,'�ǹ�', 120);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('1jikj2', 'qtwsrd5t5', '�����', TO_DATE('1986/11/22','YYYY/MM/DD'), '��û����', 'dcftgy53y@naver.com', '010-1000-0000', 339,'���', 130);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('75ubv4', '324teyth', '������', TO_DATE('2001/11/12','YYYY/MM/DD'), '��󳲵�', 'buh084t2@naver.com', '010-0000-0000', 176,'�ǹ�', 60);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('6b6k55', '35yetsfs', '������', TO_DATE('2002/11/23','YYYY/MM/DD'), '����', '75urywr@naver.com', '010-1111-2223', 88, '�ǹ�', 20);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('vjh66nn', '86iu7tyrhg', '�̿���', TO_DATE('2003/11/02','YYYY/MM/DD'), '����ϵ�', '24ywh@naver.com', '010-1111-2233', 84, '�ǹ�', 50);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('mkl54', '96i8u5jrhy', '������', TO_DATE('2004/11/27','YYYY/MM/DD'), '����', '8i57urjy@naver.com', '010-1111-2333', 372, '���', 100);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('azseg3', '13qtwrsghd', '������', TO_DATE('2005/11/02','YYYY/MM/DD'), '���ϵ�', '13tqgwers@naver.com', '010-1111-3333', 356, '���', 170);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('34vvf3f', 'avsfgeht4u', '�ڽ���', TO_DATE('1989/01/12','YYYY/MM/DD'), '��û����', '86i5rjywg@naver.com', '010-1112-3333', 431, '���', 200);
commit;

rem Ż��ȸ�� ���̺� ����

CREATE TABLE resign_normal_user (
    user_id     VARCHAR2(8),
    user_pw     VARCHAR2(15) NOT NULL,
    name        VARCHAR2(20) NOT NULL,
    birth_date  DATE,
    area        CHAR(8) NOT NULL,
    email       VARCHAR2(30) NOT NULL UNIQUE,
    phone       VARCHAR2(13) NOT NULL UNIQUE,
    point       NUMBER(6) DEFAULT 0,
    grade       CHAR(4) NOT NULL,
    walk_dis    NUMBER(5) DEFAULT 0,
    CONSTRAINT resign_normal_user_PK PRIMARY KEY (user_id),
    CONSTRAINT area_check2 CHECK (area IN ('����', '����', '�뱸', '�λ�', '���', '����', '����', '������', '��⵵', '��û����',
                                          '��û�ϵ�', '��󳲵�', '���ϵ�', '���󳲵�', '����ϵ�', '���ֵ�')),

    CONSTRAINT grade_check2 CHECK (grade IN ('�ǹ�', '���'))
);

rem ���ȸ�� ���̺� ����

CREATE TABLE company_user (
    user_id     VARCHAR2(8),
    user_pw     VARCHAR2(15) NOT NULL,
    logo        VARCHAR2(50),
    com_name    VARCHAR2(20) NOT NULL,
    dept        VARCHAR2(10) NOT NULL,
    mgr_name   VARCHAR2(20) NOT NULL,
    phone       VARCHAR2(13) NOT NULL,
    CONSTRAINT company_user_PK PRIMARY KEY (user_id)
);

rem ���ȸ�� �ʱ� ������ ����

INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('te3hte53', 'nyrswmuy5', 'C:\Pictures\01.png', '�ֽ�ȸ���Ѽ�', '�λ��', '���ȱ�', '010-1234-5678');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('lk836w5j', 'nyrsanz2', 'C:\Pictures\02.png', '�����Ͽ콺', 'ȸ���', '�����', '010-1235-6789');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('74qw2js', 'ymear5y2', 'C:\Pictures\03.png', '������', '��ȹ��', '������', '010-1236-7890');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('masrjzy', '6uq4j24q', 'C:\Pictures\04.png', 'ī�ǿ�', '��ȹ��', '������', '010-1237-8901');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('ustmy53', 'j7iuw564', 'C:\Pictures\05.png', '�ȳ���', '������ȹ��', '���ִ�', '010-1238-9012');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('64etg', 'ntfie90a4', 'C:\Pictures\06.png', '�½�', '�ѹ���', '���ϱ�', '010-1239-0123');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('o9685i', 'k864ke6', 'C:\Pictures\07.png', '�÷�������', '�λ��', '������', '010-1230-1234');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('15q3tea', 'o9478e36k', 'C:\Pictures\08.png', '�����', '������', '������', '010-1231-2345');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('968itu', 'o86k5juye', 'C:\Pictures\09.png', '�Ƹ���', '�����ú�', '�谡��', '010-1232-3456');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('mju3y5', '8oi5ju4yr', 'C:\Pictures\10.png', '�۷ι���', '������', '�����', '010-1233-4567');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('k5t3sh', 'i5jyegsb', 'C:\Pictures\11.png', 'AESSO', '�λ��', '�ֿ���', '010-1245-6789');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('sgqgr5', 'itj3engn', 'C:\Pictures\12.png', 'Marseille', '�����ú�', '������', '010-1246-7890');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('13ef6', 'bsf98sss', 'C:\Pictures\13.png', 'Bultoy', '�����ȹ��', '��ȿ��', '010-1247-8901');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('bf2w5qr', 'yrnj9g9dgt', 'C:\Pictures\14.png', '����ȸ��', '�濵������', '�ڼ���', '010-1248-9012');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('tw65w', 'ht9hs9st9g', 'C:\Pictures\15.png', '���̾�', '�����Ѱ���', '�ּ���', '010-1249-0123');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('avdv5', 'bfai90sfsf', 'C:\Pictures\16.png', '�Ѱ���', 'ȸ���', '�嵿��', '010-1240-1234');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('42t8942', 'bgi9et0me', 'C:\Pictures\17.png', '���׾�', '�濵������', '���ؼ�', '010-1241-2345');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('fva23g', 'bnfusg0bfr9', 'C:\Pictures\18.png', '������', '�����ȹ��', '������', '010-1242-3456');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('uk65utk', 'bwru90bau', 'C:\Pictures\19.png', '�����ȴ�', '�����ú�', '�ְǿ�', '010-1243-4567');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('sru56r', 'rtn3j14otnj', 'C:\Pictures\20.png', '�������', '��ȭ��', '������', '010-1244-5678');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('wi3t6k', 'bif9btwjisio4', 'C:\Pictures\21.png', 'amiedeco', '����������', '�ڼ���', '010-1237-5566');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('w56q', 'btjuw90b', 'C:\Pictures\22.png', '�ߺ��轺', '�濵��ȹ��', '����ä', '010-4569-1563');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('mu5w23', 'g4i2org2i0', 'C:\Pictures\23.png', '�����', 'â�ۺ�', '�����', '010-5614-6456');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('mu556w', 'brtj01ut25', 'C:\Pictures\24.png', '���̺���', '�ѹ���', '�����', '010-1591-6167');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('gsf23', 'bt920uy905', 'C:\Pictures\25.png', '���̿���', '�λ��', '������', '010-1231-2312');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('u42mnut', '365buj5902u', 'C:\Pictures\26.png', '�����ö���', '�濵��', '�����', '010-4891-3153');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('mth13s', 'bt44u920h', 'C:\Pictures\27.png', '���߽�', '��ȭ������', '������', '010-4894-8946');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('hss9m6', 'bn353533h3', 'C:\Pictures\28.png', '�̽���', 'â����', '�Ÿ��', '010-4894-5862');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('6nh4123', 'ug402u9gr', 'C:\Pictures\29.png', '���̿�Ŭ��', '��ȹ��', '������', '010-4864-6461');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('gd12ewe', 'g4i9120tug', 'C:\Pictures\30.png', '���̿�', '����������', '�տ���', '010-8946-5132');
commit;

rem ��ǰ�ڵ� ���̺� ����

CREATE TABLE product_code (
    code        CHAR(1),
    kinds       CHAR(15) NOT NULL,
    CONSTRAINT product_code_PK PRIMARY KEY (code),
    CONSTRAINT code_check CHECK (code BETWEEN 1 AND 7)

);

rem ��ǰ�ڵ� �ʱ� ������ ����

INSERT INTO product_code(code, kinds) VALUES('1', '�Ź�');
INSERT INTO product_code(code, kinds) VALUES('2', '����');
INSERT INTO product_code(code, kinds) VALUES('3', '����');
INSERT INTO product_code(code, kinds) VALUES('4', '����');
INSERT INTO product_code(code, kinds) VALUES('5', '�尩');
INSERT INTO product_code(code, kinds) VALUES('6', '��꽺ƽ');
INSERT INTO product_code(code, kinds) VALUES('7', '��Ÿ');
commit;

rem �ȱ���� ���̺� ����

CREATE TABLE walk_meet (
    meet_num    CHAR(5),
    meet_info   VARCHAR2(500) NOT NULL,
    meet_place  VARCHAR2(50) NOT NULL,
    min_per     NUMBER(2),
    max_per     NUMBER(3),
    hold_time   VARCHAR2(10) NOT NULL,
    end_time    VARCHAR2(10) NOT NULL,
    hold_date   DATE NOT NULL,
    CONSTRAINT walk_meet_PK PRIMARY KEY (meet_num)
);

rem �ȱ���� �ʱ� ������ ����

INSERT INTO walk_meet VALUES('10001', '���ֵ� �÷��濡�� ������', '�÷��� ��ǥ��', 10, 50, '11��30��', '18��30��', TO_DATE('2019/01/22','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10002', '�ؾȴ����� ��õ��ο��� ����', '������ �Ա�ǥ����', 30, 150, '9��30��', '15��00��', TO_DATE('2019/1/25','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10003', '������ Ȳ���� �ȱ⿩�఩�ϴ�', '������ �����Ա�', 50, 250, '15��30��', '17��10��', TO_DATE('2019/01/26','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10004', '������ȭ���� ��ȿ�������� 8�ڽ����� �ɾ�ô�', '8�ڽ� �� ����������', 10, 50, '13��30��', '15��10��', TO_DATE('2019/03/27','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10005', '������ ����Ž��� ������ �ȱ�', '�������繫��', 10, 300, '12��30��', '14��20��', TO_DATE('2019/04/28','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10006', '�ݰ��ҳ������� 5�ڽ� �ȱ��մϴ� ���� ��û���ּ���', '���� �͹̳�', 70, 250, '11��30��', '13��40��', TO_DATE('2019/05/2','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10007', '�ٿ�� 1�ڽ� ���ڷ� ǳ���� ���� �ɾ����', '����ɸ����ްԼ�', 50, 500, '9��00��', '11��30��', TO_DATE('2019/06/5','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10008', '���ֱ��̱� 3�ڽ� ȸ�̴޸��̱� ���� �ɾ��', '�����͹̳�', 10, 100, '10��30��', '13��10��', TO_DATE('2019/07/10','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10009', '���Ķ��� 2�ڽ� ����մϴ�', '�����غ� �ȳ�ǥ���� ��', 80, 200, '19��30��', '21��20��', TO_DATE('2019/08/13','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10010', '�����׸����� �ȱ��ȸ �ڽ� ���̰ɾ��', '�����׸����� 1��', 10, 800, '10��20��', '11��30��', TO_DATE('2019/10/26','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10011', '���ǻ�ѷ���(���Ǳ�) ���Ǻе� �̸� �����ּ���', '�������Ա��� 1���ⱸ', 20, 50, '15��30��', '17��10��', TO_DATE('2019/11/29','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10012', '��⿾�� ���ر� 3���� ������ ������ ��Ǯ�̺�� �غ�', '����������', 40, 600, '16��20��', '17��40��', TO_DATE('2020/01/15','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10013', '�̼��� ���������� �������� 1�ڽ� ������ ���깰 ���忡 �������� ��Ǯ�� �մϴ�', '�����͹̳�', 5, 50, '18��20��', '19��20��', TO_DATE('2020/02/21','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10014', '���ֱ��̱� ��7�ڽ� �ݰ踮���೪���� �������͹̳ο��� ����Ÿ�� ���ϴ�', '�������͹̳�', 10, 30, '9��50��', '10��30��', TO_DATE('2020/02/27','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10015', '��ȭ����� 1�ڽ� �ɵ����繮ȭ�� ��ó �Ĵ翡�� ���� �Ļ��ϰ� ������ϴ�', '��ȭ�� ���೪�� ��', 5, 20, '16��30��', '17��00��', TO_DATE('2020/03/3','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10016', '�ٿ�� 1�ڽ� ���ڷ� ǳ���� �������� ��۷� �޾��ֽñ���', 'ǳ���ڹ��� �Ա�', 10, 50, '12��30��', '13��30��', TO_DATE('2020/03/14','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10017', '������ȭ���� ��ȿ�������� 8�ڽ� ���޴������� �г��Ӱ� ���� �����ּ���', '��ȿ�� 2���ⱸ', 20, 150, '13��30��', '14��40��', TO_DATE('2020/03/20','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10018', '���ֵ� �÷��� ���� �����Ǻе��� ���� �ɾ��', '���ֵ� ����', 10, 300, '12��30��', '18��50��', TO_DATE('2020/04/9','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10019', '���Ķ��� 2�ڽ� ���ð� �����ּ���', '�λ��͹̳�', 30, 150, '11��00��', '21��30��', TO_DATE('2020/04/15','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10020', '������ Ȳ��� 10��30�п� �ٷ� ����մϴ�', 'Ȳ��� �Ա� ������ ��', 5, 20, '10��30��', '12��10��', TO_DATE('2020/04/24','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10021', '������ ����Ž��� ������ �Ĵ翡�� ��Ǯ�� �մϴ�', '�����ݿ� 4���ⱸ', 4, 30, '11��30��', '15��20��', TO_DATE('2020/04/29','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10022', '���ֱ��̱� 3�ڽ� ȸ�̴޸��̱� �ʺ��ڵ� �ȱ� ���� ���̿���', '�����͹̳�', 1, 10, '7��30��', ' 9��50��', TO_DATE('2020/05/5','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10023', '�ٿ�� 1�ڽ� ���ڷ� ǳ���� ���� ��û���ּ���', '�ٿ�� ����������', 2, 5, '10��30��', '17��20��', TO_DATE('2020/05/7','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10024', '���ֿ÷��� 8�ڽ� ��ġ�� �ʹ� ���ƿ�', '��������', 8, 10, '11��10��', '12��10��', TO_DATE('2020/05/8','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10025', '������ ����Ž��� �����ϽǺе� ��� �����ֽð� ���ں����ּ���', '�����ݱ��� �Ա�', 20, 150, '13��10��', '14��50��', TO_DATE('2020/05/16','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10026', '������ Ȳ��� ���� ���� ����', '������ ���� �Ա�', 30, 150, '15��30��', '19��30��', TO_DATE('2020/05/22','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10027', '�ݰ��ҳ������� 5�ڽ� �ǰ������ô�', '�ݰ��� ���� ū �ҳ��� ��', 50, 230, '13��10��', '15��10��', TO_DATE('2020/06/4','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10028', '��⿾�� ���ر� 3���� ������ �ʹ��� ���� ���̶��ϴ�', '�ٻ������ ������ ��', 77, 777, '14��30��', '20��10��', TO_DATE('2020/06/11','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10029', '�̼��� ���������� �������� 1�ڽ� �翬�� ���� ���̿���', '�������б� �Ա�', 35, 150, '10��30��', '19��20��', TO_DATE('2020/07/1','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10030', '���ֿ÷��� 8�ڽ� �������⸦ ���Ű��� ���� �� �ִ� ���̶��ϴ�', '�������� ', 10, 55, '19��20��', '20��50��', TO_DATE('2020/09/16','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10031', '������ ����Ž��� ���� ��� ��Ǯ�̺�� ����', '������������', 10, 50, '10��10��', '12��10��', TO_DATE('2020/10/1','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10032', '�����׸����� �ȱ��ȸ �ڽ� �����ϽǺ� �޴������� ���� �̸��ֽð��', '�������͹̳�', 80, 280, '8��30��', '15��40��', TO_DATE('2020/11/23','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10033', '���ǻ�ѷ���(���Ǳ�) ������ ����� �� �� �־��', '������Ա�', 20, 350, '12��50��', '14��10��', TO_DATE('2021/02/27','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10034', '�ٿ�� 1�ڽ� ���ڷ� ǳ���� �߰��� ���ä�� ������ ���� �غ����ּ���', '�ٿ�� 1�ڽ� ��ǥ��', 50, 600, '13��20��', '16��30��', TO_DATE('2021/03/25','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10035', '���ֿ÷��� 8�ڽ� ���λ����� ��Ǯ�̺�� ì�ܿ�����', '�÷��� ��ǥ��', 30, 500, '15��40��', '17��20��', TO_DATE('2021/04/5','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10036', '��⿾�� ���ر� 3���� ������ �ȱ����Ѻ����԰� ������', '�縪������ ��', 50, 550, '12��00��', '14��20��', TO_DATE('2021/04/16','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10037', '���ǻ�ѷ���(���Ǳ�) ������ ����� �� �̴ϴ�', '�������Ա�', 10, 400, '19��00��', '22��30��', TO_DATE('2021/04/21','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10038', '�ݰ��ҳ������� 5�ڽ� ��õ�� ��� �غ����ּ���', '5�ڽ� ��ǥ�� ��', 20, 50, '18��15��', '20��00��', TO_DATE('2021/05/14','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10039', '������ ����Ž��� ���� �ɾ����', '������ ������ �Ա�', 30, 100, '6��20��', '11��30��', TO_DATE('2021/05/22','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10040', '������ Ȳ��� ������ �ɾ�ϴ�', '������ �� ������', 20, 200, '12��10��', '13��50��', TO_DATE('2021/06/01','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10041', '��⿾�� ���ر� 3���� ������ �����ϽǺе� ���� �����ּ���', '�����Ÿ�', 50, 500, '8��40��', '10��30��', TO_DATE('2021/06/03','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10042', '�����׸����� �ȱ��ȸ �ڽ� �ȱ��Ͻð� �����缼��', '�ø��Ȱ�����', 30, 150, '16��40��', '12��40��', TO_DATE('2021/06/10','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10043', '�ٿ�� 1�ڽ� ���ڷ� ǳ���� ȸ�� õ�� ����� 4õ�� ����', '������', 5, 10, '9��10��', '14��10��', TO_DATE('2021/06/23','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10044', '�ݰ��ҳ������� 5�ڽ� �Ļ�� ��ó �Ĵ翡�� ��Ǯ�̰� �մϴ�', '�ݰ�����ķ���� ��', 30, 150, '13��30��', '18��00��', TO_DATE('2021/06/25','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10045', '������ Ȳ��� ���嵵���ϸ� ������ ��ȭ�ؼ� �ƴ�ü ���ּ���', '������ ����', 80, 350, '12��50��', '14��20��', TO_DATE('2021/07/10','YYYY/MM/DD'));
commit;

rem �ȱ��ڽ� ���̺� ����

CREATE TABLE walk_course (
    crs_num     CHAR(5),
    crs_name    VARCHAR2(50) NOT NULL UNIQUE,
    crs_info    VARCHAR2(200) NOT NULL,
    crs_map     VARCHAR2(100) NOT NULL,
    theme       VARCHAR2(50),
    area        VARCHAR2(20) NOT NULL,
    distance    NUMBER(4,1) NOT NULL,
    grade_avg   NUMBER(2,1) DEFAULT 0,
    est_time    VARCHAR2(20) NOT NULL,
    tour_info   VARCHAR2(100),
    CONSTRAINT walk_course_PK PRIMARY KEY (crs_num)
);

rem �ȱ��ڽ� �ʱ� ������ ���� 

INSERT INTO walk_course VALUES('00001','�ؾȴ����� ��õ���','���� �� �ٴٿ��� �̰��� �ٶ󺸸� �� ���ó�� ���δٰ� �ؼ� �ٿ��� ������ �������� �ص��� ��ҷ� ������� ���� ã�� ����Դϴ�.','http://kko.to/LWL6QrkYM','�ٴٸ� ���� �ȴ� �ڽ�','��� ���ֱ�',5.3,4.8,'�� 2�ð�','http://kko.to/LWL6QrkYN');
INSERT INTO walk_course VALUES('00002','������ Ȳ���','�� ���پ��� ���������� �ǹ߷� ���� �� �ִ� ����������','http://kko.to/paV2RrkD0','Ǫ���� ������ �����ϴ� �ڽ�','���� �����',14.5,3.3,'�� 4�ð�','http://kko.to/paV2RrkD2');
INSERT INTO walk_course VALUES('00003','������ȭ���� ��ȿ�������� 8�ڽ�','��õ�� �˾�õ���� ���� �ȴٰ� ���縮 �������� ���� �ȱ������� �̸��� ����', 'http://kko.to/VmtpmrCDB','����� ���� �� �ִ� �ڽ�','�泲 ������',5.6,4,'�� 1�ð� 20��','http://kko.to/VmtpmrCDC');
INSERT INTO walk_course VALUES('00004','������ ����Ž���','������ ȭ���� 340-85 (���泫�� ������)���� ������ ��縮 ����1�� 13 ������繫�ұ��� 6.5km �Ÿ��� 2�ð� ���� �ҿ�Ǵ� �ϸ��� �ڽ�','http://kko.to/_OZay9CDB','���뽣�� ���� �ȴ� �ڽ�','���� ������',6.5,4.8,'�� 2�ð�','http://kko.to/_OZay9CDP');
INSERT INTO walk_course VALUES('00005','���ֿ÷��� 8�ڽ�','�ֻ������� ��巯�� ����� ��ǰ�� ���� �ؾȱ��� ������ 7�ڽ��� ���Ҿ� ���� �÷��۵��� ����� �޴� �ڽ�','http://kko.to/Ep1SmrCYH','�ٴ尡�� ���� �ȴ� ������� �ڽ�','���� ��������',19.6,3.7,'�� 6�ð�','http://kko.to/Ep1SmrCYN');
INSERT INTO walk_course VALUES('00006','�ݰ��ҳ������� 5�ڽ�','���� �ϸ� ��õ2������ ȣ���� �ݰ��ҳ������� ���� �Ѿ� �������� ���ƿ��� �ڽ�','http://kko.to/jyYbm9kDo','�ҳ����� ���� �ȴ� �ڽ�','��� ������',15.3,3.1,'�� 7�ð�','http://kko.to/jyYbm9kD3');
INSERT INTO walk_course VALUES('00007','�ٿ�� 1�ڽ� ���ڷ� ǳ����','����ɸ����ްԼҿ��� ������ ���ڷ�, ��ġ��������� ���� �ȴ� �ѷ���','http://kko.to/WxiXm9kYp','�긲���� ��� �� �ִ� �ڽ�','���� ������',12,4.8,'�� 4�ð� 30��','http://kko.to/WxiXm9kYK');
INSERT INTO walk_course VALUES('00008','���ֱ��̱� 3�ڽ� ȸ�̴޸��̱�','ȸ�̴޸��̱��� ȸ�̸���, ������ȭ��, ������ ����ķ�۽�, ������������ ǰ�� ���� �ι����� ����� ��','http://kko.to/hcU6m9kYT','���Ÿ��� ǳ���� �ڽ�','���� ���ֽ�',16.2,3,'�� 5�ð�','http://kko.to/hcU6m9kYK');
INSERT INTO walk_course VALUES('00009','���Ķ��� 2�ڽ�','�ؿ���� ������ �Ҹ��� ����, û����, �������� ���� �����غ��� �ص���û縦 ���� �뺯�׿� �̸��� �ڽ�','http://kko.to/W8VpCrCD0','����� �ؾȱ��� �Բ� ���� �� �ִ� �ڽ�','�λ� �ؿ�뱸',13.2,4.7,'�� 4�ð�','http://kko.to/W8VpCrCD3');
INSERT INTO walk_course VALUES('00010','�����׸����� �ȱ��ȸ �ڽ�','�����׸����� �ȱ��ȸ �ڽ��� ���ڻ� �ܵ����� ����ؼ� �ظ��� ����� ���õ�������� ��ũ������ �����Ͽ� �ٽ� �ܵ������� ���ƿ��� �ڽ�','http://kko.to/PL8Pk9CDo','���� �� �ȱ��ڽ�','���� ������',3.5,2.7,'�� 1�ð� 30��','http://kko.to/PL8Pk9CDK');
INSERT INTO walk_course VALUES('00011','���ǻ�ѷ���(���Ǳ�)','���ǻ��� �ѷ��� ��ź�� ������ �����鼭 �ڿ��� ��ȭ, ���縦 �ǰ��ϰ� ��� �� �ֵ��� ������ ��','http://kko.to/O--sCrCYT','����ó� ������ ��� �� �ִ� �ڽ�','���� ���Ǳ�',15.1,4.4,'�� 6�ð�','http://kko.to/O--sCrCYJ');
INSERT INTO walk_course VALUES('00012','��⿾�� ���ر� 3���� ������','�ȴ���� �������� ���йڹ���, �ٻ���°���, �ɳ����� ���� ���꿪���� �̾����� ����','http://kko.to/jFouC9kYj','������� ������ ������ �ڽ�','��� �����ֽ�',12.9,3.2,'�� 4�ð�','http://kko.to/jFouC9kYS');
INSERT INTO walk_course VALUES('00013','�̼��� ���������� �������� 1�ڽ�','�������������� ����Ͽ� �չ��縦 �Ѿ� �굿��繫�Ҹ� ���� ���ʱ����� �����ϴ� �ڽ�','http://kko.to/b_VeC9CYM','������ ��ó �ڽ�','���� ���ʱ�',37,3,'�� 10�ð�','http://kko.to/b_VeC9CYS');
INSERT INTO walk_course VALUES('00014','���ֱ��̱� ��7�ڽ� �ݰ踮���೪����','������ �� ��ġ�� ����� ������ġ�� ���� �ȴٰ� ������ �뺴�������� ��ġ�� õ����买�μ� �츮���󿡼� ���� ���� �ݰ踮���೪���� �̸��� �ڽ�','http://kko.to/62OCCrCDp','�پ��� ü���� ��� �� �ִ� �ڽ�','���� ���ֽ�',11,3.5,'�� 3�ð�','http://kko.to/62OCCrCDE');
INSERT INTO walk_course VALUES('00015','��ȭ����� 1�ڽ� �ɵ����繮ȭ��','��ȭ�����͹̳��� �������� �����, �������� ���� ��������� ���ϴ� ����','http://kko.to/7RVaBnkYp','�������� �ִ� �ڽ�','��õ ��ȭ��',18,4.5,'�� 6�ð�','http://kko.to/7RVaBnkY1');
commit;

rem ��õ���� ���̺� ����

CREATE TABLE recommend_season (
    crs_num     CHAR(5),
    crs_season  CHAR(4),
    CONSTRAINT recommend_season_PK PRIMARY KEY (crs_num, crs_season),
    CONSTRAINT season_check CHECK (crs_season IN ('��', '����', '����', '�ܿ�')),
    CONSTRAINT crs_num_FK FOREIGN KEY (crs_num)
            REFERENCES walk_course(crs_num)
            ON DELETE CASCADE
);

rem ��õ���� �ʱ� ������ ����

INSERT INTO recommend_season(crs_num, crs_season) VALUES('00001', '��');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00002', '����');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00003', '��');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00004', '�ܿ�');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00005', '����');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00006', '����');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00007', '����');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00008', '����');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00009', '��');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00010', '����');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00011', '�ܿ�');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00012', '��');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00013', '����');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00014', '����');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00015', '�ܿ�');
commit;

rem ȭ�����ġ ���̺� ����

CREATE TABLE toilet_location (
    crs_num     CHAR(5),
    location    VARCHAR2(100),
    CONSTRAINT toilet_location_PK PRIMARY KEY (crs_num, location),
    CONSTRAINT crs_num_FK2 FOREIGN KEY (crs_num)
            REFERENCES walk_course(crs_num)
            ON DELETE CASCADE
);

rem ȭ�����ġ �ʱ� ������ ����
 
INSERT INTO toilet_location VALUES('00001','http://kko.to/JsFopckYM');
INSERT INTO toilet_location VALUES('00001','http://kko.to/JfnQjenfjk');
INSERT INTO toilet_location VALUES('00002','http://kko.to/JsGEJKckM');
INSERT INTO toilet_location VALUES('00003','http://kko.to/UWKndkw');
INSERT INTO toilet_location VALUES('00004','http://kko.to/WUNDklM');
INSERT INTO toilet_location VALUES('00005','http://kko.to/OWmdnfk');
INSERT INTO toilet_location VALUES('00006','http://kko.to/QdnfkwL');
INSERT INTO toilet_location VALUES('00007','http://kko.to/NVlwndlp'); 
INSERT INTO toilet_location VALUES('00007','http://kko.to/YFNkdlwm');
INSERT INTO toilet_location VALUES('00007','http://kko.to/BmfkKWJn');
INSERT INTO toilet_location VALUES('00008','http://kko.to/YDBEkenb');
INSERT INTO toilet_location VALUES('00009','http://kko.to/JNoewnlee');
INSERT INTO toilet_location VALUES('00010','http://kko.to/OHEJBmwn');
INSERT INTO toilet_location VALUES('00011','http://kko.to/BHJbe_de');
INSERT INTO toilet_location VALUES('00012','http://kko.to/Onek_kk');
INSERT INTO toilet_location VALUES('00012','http://kko.to/dnfkwKN');
INSERT INTO toilet_location VALUES('00013','http://kko.to/nejkwnEE');
INSERT INTO toilet_location VALUES('00014','http://kko.to/bnjkKWE');
INSERT INTO toilet_location VALUES('00015','http://kko.to/njvkdNKE');
commit;

rem �Խñ� ���̺� ����

CREATE TABLE post (
    post_num    CHAR(8),
    title       VARCHAR2(50) NOT NULL,
    category    CHAR(10) NOT NULL,
    date_time   DATE DEFAULT SYSDATE,
    content     VARCHAR2(1000) NOT NULL,
    views       NUMBER(7) DEFAULT 0,
    comments    NUMBER(4) DEFAULT 0,
    CONSTRAINT post_PK PRIMARY KEY (post_num),
    CONSTRAINT category_check CHECK (category IN ('��������', '�����Խ���'))
);

rem �Խñ� �ʱ� ������ ����

INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000001', 'ù �Խñ�', '�����Խ���', '���� ù �Խñ��� ���� �Ƴ׿� �ٵ� ���� �Ϸ� �Ǽ���~!', '50', '8' );
INSERT INTO post(post_num, title, category, content) VALUES('00000002', '��⵵�� ������õ�ؿ�', '�����Խ���', '���� �ʿ� ���� �ǰ� ������ �����ϼ���~');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000003', '�ȳ��ϼ���', '�����Խ���', '�ٵ� �� ��Ź�帳�ϴ�.', '12', '3' );
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000004', '���̶� �����ϱ�?', '�����Խ���', '���̶� �����ϱ�? ��� å�� �߰��߽��ϴ�. ������ ���ؼ� ���� ������ ���� ���� å�Դϴ�. �ٵ� �о��ֽø� �����ϰڽ��ϴ�.', '21', '5' );
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000005', '�б� ���� ��¥', '�����Խ���', '���� 6�� �߼����� �ɰŰ����� �ٵ� ������ �����Ͻó���?', '7', '1' );
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000006', '����ȭ �귣����õ', '�����Խ���', '�ٵ� �ƽô� ����ȭ ��õ�� ���ּ���. �Ź��� �� ��Ƽ� �ϳ� ��߰ڴ��󱸿�', '9', '2' );
INSERT INTO post(post_num, title, category, content) VALUES('00000007', '6���� �ȱ� ������', '�����Խ���', '������ �ٶ��� �����ϴ� �ȱ� ���� �����׿�~');
INSERT INTO post(post_num, title, category, content) VALUES('00000008', '�����ϱ� ������', '�����Խ���', '���õ��� ���ΰ� �ʹ� �ϱ� �ȳ׿� �Ф� ��� �ؾ��ұ��');
INSERT INTO post(post_num, title, category, content) VALUES('00000009', '�⸻���� �ݷ�', '�����Խ���', '�ٵ� �⸻�����ϴ��� ������� �ٵ� ȭ�����Դϴ�~!');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000010', '������ ���', '�����Խ���', '���õ��� �� ó���°� �ƹ��͵� �ϱ� ���� ���̳׿�', '15', '5' );
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000011', '�Ϸ� Ŀ��', '�����Խ���', '�Ϸ翡 Ŀ�� 4~5�� ���� ���ôµ� �ʹ� ���� ���ô°Ͱ��ƿ� �ٵ� �󸶳� ���ó���?', '3', '1' );
INSERT INTO post(post_num, title, category, content) VALUES('00000012', '������', '�����Խ���', '�ʹ� ���� �ɾ ���Ƹ����� �����׿� Ǫ�¹� �ƴ� �� �����Ű���?');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000013', '��Ʈ��', '�����Խ���', 'ù ��Ʈ���� ���� ����! �ູ�մϴ�', '19', '3' );
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000014', '�˼� �뷡 ��õ', '�����Խ���', '���� ��û �����뷡�� �ϳ� �ִµ� john k�� parachute ��õ�մϴ�', '5', '2' );
INSERT INTO post(post_num, title, category, content) VALUES('00000015', '6���� �ȱ� �ڽ� ��õ', '�����Խ���', '���� ù �Խñ��� ���� �Ƴ׿� �ٵ� ���� �Ϸ� �Ǽ���~!');
INSERT INTO post(post_num, title, category, content) VALUES('00000016', '��⵵ �ȱ� �ڽ� ��õ', '�����Խ���', '���� ù �Խñ��� ���� �Ƴ׿� �ٵ� ���� �Ϸ� �Ǽ���~!');
INSERT INTO post(post_num, title, category, content) VALUES('00000017', '����� �γ��� �ð�', '�����Խ���', '�� ��� ���̶��� ���� �����ʴ� ��  ���׿�');
INSERT INTO post(post_num, title, category, content) VALUES('00000018', '�ٵ� �ູ�ϼ���', '�����Խ���', '�� ��ư� �����ϵ� �������� �� ����޴� ������ �ðſ��� ȭ����!');
INSERT INTO post(post_num, title, category, content) VALUES('00000019', '���۾� �Ȱ�', '�����Խ���', '���� �귣��� ������ ���۾����� ���� �Ȱ� �Ẹ�� ��¥ ���ϰ� �����󱸿� ����!');
INSERT INTO post(post_num, title, category, content) VALUES('00000020', '�� ưư ���� ưư', '�����Խ���', '���� ưư�ϰ� ������ ưư������ �����Դϴ�. �ǰ� �ٵ� ì�⼼�� ');
INSERT INTO post(post_num, title, category, content) VALUES('00000021', '�ٵ� �� ���������ϱ�', '�����Խ���', '������ ������.... �ٶ��� �����ϴ� �� �ȱ� ���� ����������.. �����Ϸ�Ǽ���..');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000022', '[�ֽ�ȸ���Ѽ�] �ڿ������� �����մϴ�.', '�����Խ���', '����� �̿� �����ϴ�. ��� �����ϼ���.', '20', '3');
INSERT INTO post(post_num, title, category, content) VALUES('00000023', '[�����Ͽ콺] �ڿ������� �����մϴ�.', '�����Խ���', '����� �̿� �����ϴ�.');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000024', '[������] �ȱ� ��ǰ ���̵�� ������ȸ', '�����Խ���', '�ȱ��ǰ ���̵�� ������ȸ�� �����մϴ�. ����� ���ô¹ٿ� �����ϴ�.', '4', '2');
INSERT INTO post(post_num, title, category, content) VALUES('00000025', '[ī�ǿ�] �ڿ������� �����մϴ�.', '�����Խ���', '����� �̿� �����ϴ�. ��� �����ϼ���.');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000026', '[�ȳ���] �Ƿ� ���� up to 30~ ', '�����Խ���', '6�� 10��~ 7�� 3�ϱ��� �Ƿ� ���� �����մϴ�.', '31', '2');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000027', '[�½�] ���� ����ȸ', '�����Խ���', '2021�� 7�� 1�� �귣�� �½��� ���� ����ȸ�� ���ֵ˴ϴ�. ���� ���� ��Ź�帳�ϴ�.', '3', '1');
INSERT INTO post(post_num, title, category, content) VALUES('00000028', '[�÷�������] �÷��׽� ������ ����', '�����Խ���', '���� ���� �÷��׽� �������� �����߽��ϴ�. �ַ� ��ǰ�� ����մϴ�.');
INSERT INTO post(post_num, title, category, content) VALUES('00000029', '[�����] ��ǰ ����', '�����Խ���', '��� ��ǰ ���� �� �����մϴ�.');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000030', '[�Ƹ���] �ڽ��� �۽����÷��� ã�ƶ�! ', '�����Խ���', '6�� 25�� ���� û�㵿���� �Ƹ��� ���忡�� �۽����÷� ���� ��縦 �����մϴ�.', '61', '4');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000031', '[�۷ι���] �۷ι��� ���� ����', '�����Խ���', '�Ϲݱ� ���Ի�� ��ä �����մϴ�.', '7', '1');
INSERT INTO post(post_num, title, category, content) VALUES('00000032', '[AESSO] ȭ��ǰ ���� �̺�Ʈ', '�����Խ���', '�ȱ���� ������, ����� ȭ��ǰ�� �����ص帳�ϴ�. �ش� ���̵�� ��������, �ּ� ÷���� �ֽñ� �ٶ��ϴ�.');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000033', '[Marseille] �ĸ� ������ �����!', '�����Խ���', '�ȱ���� ������ ������ �ϸ� ������ 3�п��� ������ �պ� Ƽ���� �帳�ϴ�!', '72', '3');
INSERT INTO post(post_num, title, category, content) VALUES('00000034', '[Bultoy] �峭�� ���̵�� ��ȸ', '�����Խ���', '5��~8���� ���� �峭�� ���̵�� ��ȸ�� ���ֵ˴ϴ�.');
INSERT INTO post(post_num, title, category, content) VALUES('00000035', '[����ȸ��] ��ä ����', '�����Խ���', '���״�� ������ ���� ����� �����մϴ�.');
INSERT INTO post(post_num, title, category, content) VALUES('00000036', '[���̾�] �ȱ� ������Ʈ���� ����', '�����Խ���', '���� ���̾��� ������ ȸ��ν� ���޸� ü���Ͽ����ϴ�.');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000037', '[�Ѱ���] �ǼҸ� ����', '�����Խ���', '7�� 20�� ���� ���հ���忡�� �ǼҸ� ������ �մϴ�.', '11', '2');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000038', '[���׾�] ��� ��û', '�����Խ���', '������ ������ ����� ���׾� ����� ���������� ����� �����մϴ�.', '2', '1');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000039', '[������] ���� ����', '�����Խ���', '���� ���� �缺 ��ȹ�� �������Դϴ�. 6�� 20�� ������������ ������ �����մϴ�.', '4', '2');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000040', '[�����ȴ�] �Ƿ� ���', '�����Խ���', '���� �귣�� �����ȴ��� �ȱ� ������ �����Ͽ� ���� ���ͱ��� �Ƿ� ������ ���� ���� ����� �� �������� ����Ͽ����ϴ�.', '7', '1');
INSERT INTO post(post_num, title, category, content) VALUES('00000041', '[�������] ������ ����', '�����Խ���', '������ ����ȸ�� ��������� ��� �̺�Ʈ ������ �����е鿡�� ���� ����Ƽ���� �����ص帮���� �մϴ�.');
commit;

rem ��� ���̺� ����

CREATE TABLE post_comment (
    com_num     CHAR(4),
    post_num    CHAR(8),
    date_time   DATE DEFAULT SYSDATE,
    com_cont    VARCHAR2(200) NOT NULL,
    CONSTRAINT post_comment_PK PRIMARY KEY (com_num, post_num),
    CONSTRAINT post_num_FK FOREIGN KEY (post_num)
            REFERENCES post(post_num)
            ON DELETE CASCADE
);

rem ��� �ʱ� ������ ����

INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000001', 'ù �Խñ� ���� ������ �ߴµ� �ƽ��׿�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000001', 'ù �Խñ� ���ϵ帳�ϴ�!');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000001', '���� �ι�° �Խñ��̶� ��߰ڳ׿�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c004', '00000001', '���ϵ����~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c005', '00000001', '�ۼ��ڴԵ� ���� �Ϸ� �Ǽ���~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000003', '���� �ߺ�Ź�����~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000003', '�ȳ��ϼ���!');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000003', '�ݰ����ϴ�~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000004', '���� �̹� �о�þ��!');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000004', '�о�ôµ� ���ڰ� ���̼̱��� ���� å �� �ý��ϴ�.');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000004', '57p 5�� �κп� ���� �ʹ� �λ� ������� �����մϴ�.');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c004', '00000004', '�ѹ� �о���� �ҰԿ�~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c005', '00000004', '��հ� �о� ���Կ�!');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000005', '���� 7�� �ʿ� �����ؿ� �ФФ� �η����ϴ�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000006', '���� ����Ű ��õ�ؿ�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000006', '���� �Ƶ�ٽ���!');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000010', '�׷� ���ϼ��� ȭ���� �Դϴ�!');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000010', '���� ���õ��� �׷��׿�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000010', 'ȭ����~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c004', '00000010', '�ٵ� �����ô�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c005', '00000010', '���� ������ �����Ƽ� ���� ���޾� ���������׿� �Ф�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000011', '���� 2������ ���ʴϴ� 2���� �����ϴٰ� ������');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000013', '���ϵ����~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000013', '���� �ֱٿ� �Ｚ ��Ʈ�ϻ��� �����󱸿�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000013', '���� ������ ����! ������ �ʹ����ƿ�~! ����¯!');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000014', '���� ������ �� �����մϴ�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000014', '���� Ƣ�� �˼��� �� ���ƿ�~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c006', '00000001', 'ù �Խñ� �ۼ��ڴԲ� ��ǰ�����ص帮���� �մϴ� �ּ� �����ּ���');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c007', '00000001', '���ϵ帳�ϴ�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c008', '00000001', '�� ��Ź�帳�ϴ�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000022', '�濵�μ� �����е� �� �����Ѵٰ��ϳ׿�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000022', '���� ���� �����ϰڽ��ϴ�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000022', '���� ȸ��� �����Ͽ� ���������� �Ͻô°��� �������');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000024', '���� ȸ�� �������� ���̵�� �ϳ��� �پ��ϴ�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000024', '������ ȸ�� �ǹ����� �����ص� �ɱ��?');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000026', '���� ������ �ʻ��� �ؾ߰ھ��');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000026', '�����鿡�� �˷���߰ھ��');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000027', '���� ����ȸ �� ���߰ھ��');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000030', '�۽����÷� ã�� ����� �� ���߰ھ��');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000030', '�����̶�� �Ф� �ʹ� �ӳ׿�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000030', '��ó�׿� �ٷ� ���߰ھ��');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c004', '00000030', 'ȸ�系�� �̺�Ʈ������ ����� �� �������');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000031', 'Ȯ �����ع������~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000033', '�̰� ȸ�� �������ζ� �����ؾ߰ھ��');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000033', 'Ƽ���� �����ϴ�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000033', '�ƴ��� ���� ��÷�ɰŰ�������?');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000037', '���� ��� �湮�ϼż� ���� �����ϽŰ���?');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000037', '���� �̽��� ������� ���� �����帮���� �ϰڽ��ϴ�.');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000038', '���� ��� ���� �����ұ��?');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000039', '���� â�� 40�ֳ� ���ϰ��� �����ұ��?');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000039', '�������� ��ü�� ���߰ڳ׿�');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000040', '���� �����Ͽ콺 ������� �Ƿ� ��ο� �����ϰ������ ���� �����ּ���.');
commit;

rem ��ȣȸ ���̺� ����

CREATE TABLE club (
    club_num    CHAR(5),
    club_name   VARCHAR2(30) NOT NULL UNIQUE,
    area        CHAR(8) NOT NULL,
    club_info   VARCHAR2(200),
    members     NUMBER(5) DEFAULT 1,
    founder_id  VARCHAR2(8) NOT NULL,
    found_date  DATE DEFAULT SYSDATE,
    CONSTRAINT club_PK PRIMARY KEY (club_num),
    CONSTRAINT founder_id_FK FOREIGN KEY (founder_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE
);

rem ��ȣȸ �ʱ� ������ ����

INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('2', '�ɳ���', '����ϵ�', '����  ��ÿ� ��� ���� ���� �� ������ ����', 15, 'sjryjsgt', TO_DATE('2009/01/22','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('3', '������', '���ֵ�', '����  ��ÿ� ��� ���� ���� �� ������ ����', 20, 'ethjeth', TO_DATE('2019/01/22','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('5', '�氡��', '���ֵ�', '����  ��ÿ� ��� ���� ���� �� ������ ����', 3, 'rtjhsi3', TO_DATE('2019/01/01','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('6', '�׸�����', '����', '����  ��ÿ� ��� ���� ���� �� ������ ����', 3, '46yrsth', TO_DATE('2019/01/01','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('7', '�ɰ���', '��û����', '����  ��ÿ� ��� ���� ���� �� ������ ����', 3, 'stmh57', TO_DATE('2018/01/01','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('8', '�۱�', '���ֵ�', '����  ��ÿ� ��� ���� ���� �� ������ ����', 3, '5uk24', TO_DATE('2019/01/01','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('9', '����', '��⵵', '����  ��ÿ� ��� ���� ���� �� ������ ����', 3, '5thhrs', TO_DATE('2017/11/01','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('11', '����', '���󳲵�', '����  ��ÿ� ��� ���� ���� �� ������ ����', 7, 'tgeraqo', TO_DATE('2010/01/22','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('12', '����', '������', '����  ��ÿ� ��� ���� ���� �� ������ ����', 3, 'bkipetop', TO_DATE('2009/01/22','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('13', '��', '�뱸', '����  ��ÿ� ��� ���� ���� �� ������ ����', 5, 'tejuire', TO_DATE('2010/01/12','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('14', '�ſ�', '����', '����  ��ÿ� ��� ���� ���� �� ������ ����', 5, 'btiepq2', TO_DATE('2019/05/12','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('15', '������', '����', '����  ��ÿ� ��� ���� ���� �� ������ ����', 12, 'btkeoap', TO_DATE('2015/07/16','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('16', '����', '���ֵ�', '����  ��ÿ� ��� ���� ���� �� ������ ����', 6, '1jikj2', TO_DATE('2018/10/30','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('17', '����', '���ϵ�', '����  ��ÿ� ��� ���� ���� �� ������ ����', 50, 'mkl54', TO_DATE('2016/12/12','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('18', '������', '��󳲵�', '����  ��ÿ� ��� ���� ���� �� ������ ����', 70, 'azseg3', TO_DATE('2020/01/22','YYYY/MM/DD'));
commit;

rem QR�ڵ� ���̺� ����

CREATE TABLE qrcode (
    qr_id       CHAR(15),
    qr_map      VARCHAR2(100) NOT NULL,
    local_cur   NUMBER(7) NOT NULL,
    CONSTRAINT qrcode_PK PRIMARY KEY (qr_id)
);

rem QR�ڵ� �ʱ� ������ ����

INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_1','https://map.kakao.com/link/search/�ұ���', 150);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_2', 'https://map.kakao.com/link/search/�ѳ����Ÿ�', 20);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_3', 'https://map.kakao.com/link/search/�ع�3��', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_4', 'https://map.kakao.com/link/search/�ֿ���', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_5', 'https://map.kakao.com/link/search/���ȸ�', 180);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_6', 'https://map.kakao.com/link/search/�̼���', 90);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_7', 'https://map.kakao.com/link/search/���ɴ�', 230);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_8', 'https://map.kakao.com/link/search/�Ѷ��', 500);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_9', 'https://map.kakao.com/link/search/�����', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_10', 'https://map.kakao.com/link/search/�������', 60);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_1', 'https://map.kakao.com/link/search/����Ÿ��', 220);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_2', 'https://map.kakao.com/link/search/����ȣ������', 40);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_3', 'https://map.kakao.com/link/search/��âȣ������', 120);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_4', 'https://map.kakao.com/link/search/�����ѿ�����', 60);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_5', 'https://map.kakao.com/link/search/�ͼ���', 260);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_6', 'https://map.kakao.com/link/search/��û�����ڹ���', 200);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_7', 'https://map.kakao.com/link/search/��������', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_8', 'https://map.kakao.com/link/search/�ѱ�����������б�', 10);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_9', 'https://map.kakao.com/link/search/���ް����', 60);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_10', 'https://map.kakao.com/link/search/������������', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_1', 'https://map.kakao.com/link/search/����ȣ', 150);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_2', 'https://map.kakao.com/link/search/��⵵��̹ڹ���', 500);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_3', 'https://map.kakao.com/link/search/��ȭ��', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_4', 'https://map.kakao.com/link/search/�ʸ�����°���', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_5', 'https://map.kakao.com/link/search/�����굵������', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_6', 'https://map.kakao.com/link/search/�����걹������', 200);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_7', 'https://map.kakao.com/link/search/��Ÿ�ʵ��Ƽ', 300);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_8', 'https://map.kakao.com/link/search/��õ���տ��', 500);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_9', 'https://map.kakao.com/link/search/��õ�ؼ�����', 150);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_10', 'https://map.kakao.com/link/search/��������', 200);
commit;

rem ����ȭ������ ���̺� ����

CREATE TABLE local_amount (
    user_id     VARCHAR2(8),
    area        CHAR(8),
    amount      NUMBER(7) NOT NULL,
    CONSTRAINT local_amount_PK PRIMARY KEY (user_id, area),
    CONSTRAINT user_id_FK FOREIGN KEY (user_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE
);

rem ����ȭ������ �ʱ� ������ ����

INSERT INTO local_amount(user_id, area, amount) VALUES('hrts423', '����', 140);
INSERT INTO local_amount(user_id, area, amount) VALUES('hrts423', '���ֵ�', 280);
INSERT INTO local_amount(user_id, area, amount) VALUES('sjryjsgt', '����', 200);
INSERT INTO local_amount(user_id, area, amount) VALUES('sjryjsgt', '�λ�', 100);
INSERT INTO local_amount(user_id, area, amount) VALUES('ethjeth', '���ϵ�', 470);
INSERT INTO local_amount(user_id, area, amount) VALUES('srrssrw', '����', 160);
INSERT INTO local_amount(user_id, area, amount) VALUES('srrssrw', '����', 1130);
INSERT INTO local_amount(user_id, area, amount) VALUES('6sryeh', '�뱸', 270);
INSERT INTO local_amount(user_id, area, amount) VALUES('hrts423', '���󳲵�', 12200);
INSERT INTO local_amount(user_id, area, amount) VALUES('rtjhsi3', '���󳲵�', 2960);
INSERT INTO local_amount(user_id, area, amount) VALUES('rtjhsi3', '����ϵ�', 3210);
INSERT INTO local_amount(user_id, area, amount) VALUES('rtjhsi3', '���ֵ�', 6420);
INSERT INTO local_amount(user_id, area, amount) VALUES('46yrsth', '����', 70);
INSERT INTO local_amount(user_id, area, amount) VALUES('stmh57', '������', 1620);
INSERT INTO local_amount(user_id, area, amount) VALUES('stmh57', '���ֵ�', 1470);
INSERT INTO local_amount(user_id, area, amount) VALUES('5uk24', '���ֵ�', 6200);
INSERT INTO local_amount(user_id, area, amount) VALUES('5thhrs', '�뱸', 440);
INSERT INTO local_amount(user_id, area, amount) VALUES('5thhrs', '���󳲵�', 4240);
INSERT INTO local_amount(user_id, area, amount) VALUES('uupiyg', '�λ�', 1290);
INSERT INTO local_amount(user_id, area, amount) VALUES('uupiyg', '����', 60);
INSERT INTO local_amount(user_id, area, amount) VALUES('uupiyg', '��⵵', 1210);
INSERT INTO local_amount(user_id, area, amount) VALUES('xuxzz3', '�λ�', 230);
INSERT INTO local_amount(user_id, area, amount) VALUES('nyrww1', '��⵵', 610);
INSERT INTO local_amount(user_id, area, amount) VALUES('tgeraqo', '���󳲵�', 4580);
INSERT INTO local_amount(user_id, area, amount) VALUES('tgeraqo', '���ֵ�', 12510);
INSERT INTO local_amount(user_id, area, amount) VALUES('nyuw5452', '����', 2240);
INSERT INTO local_amount(user_id, area, amount) VALUES('teb240', '��û����', 260);
INSERT INTO local_amount(user_id, area, amount) VALUES('teb240', '��û�ϵ�', 480);
INSERT INTO local_amount(user_id, area, amount) VALUES('bkipetop', '���ֵ�', 420);
INSERT INTO local_amount(user_id, area, amount) VALUES('bkipetop', '������', 2680);
INSERT INTO local_amount(user_id, area, amount) VALUES('tejuire', '����', 330);
INSERT INTO local_amount(user_id, area, amount) VALUES('tejuire', '��û����', 1330);
INSERT INTO local_amount(user_id, area, amount) VALUES('tejuire', '���󳲵�', 230);
INSERT INTO local_amount(user_id, area, amount) VALUES('tejuire', '��󳲵�', 3380);
INSERT INTO local_amount(user_id, area, amount) VALUES('tejuire', '���ֵ�', 1880);
INSERT INTO local_amount(user_id, area, amount) VALUES('btiepq2', '����', 210);
INSERT INTO local_amount(user_id, area, amount) VALUES('btiepq2', '��⵵', 2210);
INSERT INTO local_amount(user_id, area, amount) VALUES('btiepq2', '������', 2110);
INSERT INTO local_amount(user_id, area, amount) VALUES('btkeoap', '�뱸', 100);
INSERT INTO local_amount(user_id, area, amount) VALUES('kfspae12', '����', 230);
INSERT INTO local_amount(user_id, area, amount) VALUES('fke33opa', '�λ�', 990);
INSERT INTO local_amount(user_id, area, amount) VALUES('vfisa12', '��⵵', 1520);
INSERT INTO local_amount(user_id, area, amount) VALUES('1jikj2', '���ֵ�', 1100);
INSERT INTO local_amount(user_id, area, amount) VALUES('75ubv4', '���󳲵�' , 2650);
INSERT INTO local_amount(user_id, area, amount) VALUES('6b6k55', '���ֵ�', 3210);
INSERT INTO local_amount(user_id, area, amount) VALUES('6b6k55', '���󳲵�', 310);
INSERT INTO local_amount(user_id, area, amount) VALUES('vjh66nn', '����', 1120);
INSERT INTO local_amount(user_id, area, amount) VALUES('mkl54', '��û����' ,4890);
INSERT INTO local_amount(user_id, area, amount) VALUES('azseg3', '���󳲵�', 1010);
INSERT INTO local_amount(user_id, area, amount) VALUES('azseg3', '���ֵ�', 21100);
INSERT INTO local_amount(user_id, area, amount) VALUES('azseg3', '��⵵', 180);
commit;

rem ��ǰ ���̺� ����

CREATE TABLE product (
    prod_num    CHAR(6),
    code        CHAR(1) NOT NULL,
    prod_name   VARCHAR2(20) NOT NULL,
    price       NUMBER(8) NOT NULL,
    area        CHAR(8) NOT NULL,
    exp         VARCHAR2(100) NOT NULL,
    sell_state  CHAR(8) DEFAULT '�Ǹ���',
    seller_id   VARCHAR2(8) NOT NULL,

    CONSTRAINT product_PK PRIMARY KEY (prod_num),
    CONSTRAINT code_check2 CHECK (code BETWEEN 1 AND 7),
    CONSTRAINT area_check3 CHECK (area IN ('����', '����', '�뱸', '�λ�', '���', '����', '����', '������', '��⵵', '��û����',
                                          '��û�ϵ�', '��󳲵�', '���ϵ�', '���󳲵�', '����ϵ�', '���ֵ�')),
    CONSTRAINT sell_state_check CHECK (sell_state IN ('�Ǹ���', '�ǸſϷ�')),
    CONSTRAINT code_FK FOREIGN KEY (code)
            REFERENCES product_code(code)
            ON DELETE CASCADE,
    CONSTRAINT seller_id_FK FOREIGN KEY (seller_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE
);

rem ��ǰ �ʱⵥ���� ����

INSERT INTO product VALUES('000001','1','k2 ���ȭ',30000,'����','���� �� �� �� �Ǵ� �ȭ�Դϴ�. ��Ź �Ϸ��߽��ϴ�. �л굿���� �ŷ��մϴ�~','�ǸſϷ�','hrts423');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000002','2','����ũ ����',35000,'�뱸','�����ް� �� ���� �� �� �����Դϴ� �� ��ǰ �� �ֽ��ϴ�~ �����ּ���','ethjeth');
INSERT INTO product VALUES('000003','2','����� ����',10000,'�뱸','����� �Ķ��� �����Դϴ�. ì �о �޺� �� �����ϴ�. �ΰ� ������.','�ǸſϷ�','ethjeth');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000004','3','�뽺���̽� ����',20000,'����','�ٶ��� �� ���ϴ� ������ ����Ƽ�Դϴ�. �����ּ���.','rtjhsi3');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000005','5','�ڵ巯�� ����尩',20000,'���󳲵�','�������� ���� ����尩�Դϴ�. ���κ� �� �پ��ֽ��ϴ�. �����ּ���','5thhrs');
INSERT INTO product VALUES('000006','6','ưư�� ��ƽ',100000,'���󳲵�','ưư�� ��ƽ�Դϴ�. ������ ���ø� ������� ���� �����ϴ�. ���� ���ƿ�~','�ǸſϷ�','5thhrs');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000007','7','�Һ�',10000,'���󳲵�','��� �ÿ� ���ٴϸ� ���� �����η��� �Һ��Դϴ�. �ΰԳ����ƿ�.','5thhrs');
INSERT INTO product VALUES('000008','1','���ȭ',40000,'���ϵ�','�� �� ������ �Ź��Դϴ�. ������ ����� �� �� �¾Ƽ� ������~ 280�Դϴ�.','�ǸſϷ�','nyuw5452');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000009','1','���� ���� ����ȭ',60000,'�λ�','���� ���� ����ȭ�Դϴ�. ���� ������ ��µ� �̹� ��ٰ��ϳ׿� �� �ΰ� �����ƿ�~','tgeraqo');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000010','2','����',20000,'������','���� ���� �����Դϴ�~ �����ּ���','btkeoap');
INSERT INTO product VALUES('000011','2','�Ž� ����',10000,'������','���� �ΰ� �����ƿ� �����ּ���.','�ǸſϷ�','btkeoap');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000012','6','�뽺���̽� ��ƽ',70000,'����ϵ�','�뽺���̽� ��꽺ƽ �˴ϴ�. ���� ���ƿ�','vjh66nn');
INSERT INTO product VALUES('000013','6','��꽺ƽ',40000,'����','��꽺ƽ �Ⱦƿ�. �����ΰ� ���� ��� ����� ��ǰ�Դϴ� ���� �����ּ���','�ǸſϷ�','tejuire');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000014','3','��ɼ� ����',20000,'����','����� �� ���� �� ���� ��ɼ�Ƽ �Դϴ�.','btiepq2');
INSERT INTO product VALUES('000015','3','k2 ����',30000,'����','���� ���� ����Ƽ�Դϴ�. �����ּ���. ','�ǸſϷ�','fke33opa');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000016','1','����Ű ����ȭ',50000,'����','����Ű ��ǰ ����ȭ�Դϴ�. ������ ���� �߽��ϴ�. �� �����ּ���','teb240');
INSERT INTO product VALUES('000017','5','k2 �尩',5000,'��û�ϵ�','k2���� �� �尩�Դϴ�. ��� ���� ���Ƽ� �ΰ� ������~','�ǸſϷ�','bkipetop');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000018','6','����ǰ ��ƽ',50000,'���ϵ�','������� ���� ��ƽ�Դϴ�. ���� �ó� �Ե����� ��ó���� �ŷ��ؿ�~','nyuw5452');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000019','7','����Ű ����',20000,'����','����Ű ���� �Ⱦƿ�. �����ּ���.','sjryjsgt');
INSERT INTO product VALUES('000020','4','����Ű ����',30000,'����','���� �ÿ� ���� �����Դϴ�. �����ּ���.','�ǸſϷ�','rtjhsi3');
INSERT INTO product VALUES('000021','4','k2 ������',20000,'���ֵ�','���簡 ���� �����Դϴ�. �����ּ���!','�ǸſϷ�','uupiyg');
commit;

rem ���� ���̺� ����

CREATE TABLE picture (
    prod_num    CHAR(6),
    prod_pic    VARCHAR2(100),
    CONSTRAINT picture_PK PRIMARY KEY (prod_num, prod_pic),
    CONSTRAINT prod_num_FK FOREIGN KEY (prod_num)
            REFERENCES product(prod_num)
            ON DELETE CASCADE
);

rem ���� �ʱ� ������ ����
 
INSERT INTO picture VALUES('000001','C:\Prodpicture\01.jpg');
INSERT INTO picture VALUES('000002','C:\Prodpicture\02.jpg');
INSERT INTO picture VALUES('000003','C:\Prodpicture\03.jpg');
INSERT INTO picture VALUES('000003','C:\Prodpicture\04.jpg');
INSERT INTO picture VALUES('000004','C:\Prodpicture\05.jpg');
INSERT INTO picture VALUES('000005','C:\Prodpicture\06.jpg');
INSERT INTO picture VALUES('000006','C:\Prodpicture\07.jpg');
INSERT INTO picture VALUES('000007','C:\Prodpicture\08.jpg');
INSERT INTO picture VALUES('000008','C:\Prodpicture\09.jpg');
INSERT INTO picture VALUES('000008','C:\Prodpicture\10.jpg');
INSERT INTO picture VALUES('000009','C:\Prodpicture\11.jpg');
INSERT INTO picture VALUES('000010','C:\Prodpicture\12.jpg');
INSERT INTO picture VALUES('000011','C:\Prodpicture\13.jpg');
INSERT INTO picture VALUES('000012','C:\Prodpicture\14.jpg');
INSERT INTO picture VALUES('000013','C:\Prodpicture\15.jpg');
INSERT INTO picture VALUES('000014','C:\Prodpicture\16.jpg');
INSERT INTO picture VALUES('000015','C:\Prodpicture\17.jpg');
INSERT INTO picture VALUES('000015','C:\Prodpicture\18.jpg');
INSERT INTO picture VALUES('000016','C:\Prodpicture\19.jpg');
INSERT INTO picture VALUES('000016','C:\Prodpicture\20.jpg');
INSERT INTO picture VALUES('000017','C:\Prodpicture\21.jpg');
INSERT INTO picture VALUES('000018','C:\Prodpicture\22.jpg');
INSERT INTO picture VALUES('000019','C:\Prodpicture\23.jpg');
INSERT INTO picture VALUES('000020','C:\Prodpicture\24.jpg');
INSERT INTO picture VALUES('000021','C:\Prodpicture\25.jpg');
commit;

rem �����ϴ� ���̺� ����

CREATE TABLE participate (
    user_id     VARCHAR2(8),
    meet_num    CHAR(5),
    CONSTRAINT participate_PK PRIMARY KEY (user_id, meet_num),
    CONSTRAINT user_id_FK2 FOREIGN KEY (user_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE,
    CONSTRAINT meet_num_FK FOREIGN KEY (meet_num)
            REFERENCES walk_meet(meet_num)
            ON DELETE CASCADE
);

rem �����ϴ� �ʱ� ������ ����

INSERT INTO participate VALUES('hrts423','10001');
INSERT INTO participate VALUES('hrts423','10003');
INSERT INTO participate VALUES('hrts423','10004');
INSERT INTO participate VALUES('hrts423','10010');
INSERT INTO participate VALUES('hrts423','10023');
INSERT INTO participate VALUES('hrts423','10033');
INSERT INTO participate VALUES('hrts423','10026');
INSERT INTO participate VALUES('sjryjsgt','10002');
INSERT INTO participate VALUES('sjryjsgt','10004');
INSERT INTO participate VALUES('sjryjsgt','10005');
INSERT INTO participate VALUES('sjryjsgt','10013');
INSERT INTO participate VALUES('ethjeth','10003');
INSERT INTO participate VALUES('ethjeth','10011');
INSERT INTO participate VALUES('ethjeth','10012');
INSERT INTO participate VALUES('ethjeth','10043');
INSERT INTO participate VALUES('ethjeth','10044');
INSERT INTO participate VALUES('srrssrw','10005');
INSERT INTO participate VALUES('srrssrw','10006');
INSERT INTO participate VALUES('srrssrw','10008');
INSERT INTO participate VALUES('srrssrw','10015');
INSERT INTO participate VALUES('srrssrw','10035');
INSERT INTO participate VALUES('6sryeh','10006');
INSERT INTO participate VALUES('6sryeh','10016');
INSERT INTO participate VALUES('6sryeh','10026');
INSERT INTO participate VALUES('6sryeh','10036');
INSERT INTO participate VALUES('6sryeh','10022');
INSERT INTO participate VALUES('rtjhsi3','10007');
INSERT INTO participate VALUES('rtjhsi3','10017');
INSERT INTO participate VALUES('rtjhsi3','10027');
INSERT INTO participate VALUES('rtjhsi3','10037');
INSERT INTO participate VALUES('rtjhsi3','10013');
INSERT INTO participate VALUES('5uk24','10008');
INSERT INTO participate VALUES('5uk24','10018');
INSERT INTO participate VALUES('5uk24','10028');
INSERT INTO participate VALUES('5uk24','10038');
INSERT INTO participate VALUES('5uk24','10012');
INSERT INTO participate VALUES('46yrsth','10009');
INSERT INTO participate VALUES('46yrsth','10019');
INSERT INTO participate VALUES('46yrsth','10029');
INSERT INTO participate VALUES('46yrsth','10039');
INSERT INTO participate VALUES('46yrsth','10018');
INSERT INTO participate VALUES('stmh57','10001');
INSERT INTO participate VALUES('stmh57','10011');
INSERT INTO participate VALUES('stmh57','10021');
INSERT INTO participate VALUES('stmh57','10031');
INSERT INTO participate VALUES('stmh57','10041');
INSERT INTO participate VALUES('5thhrs','10002');
INSERT INTO participate VALUES('5thhrs','10012');
INSERT INTO participate VALUES('5thhrs','10022');
INSERT INTO participate VALUES('5thhrs','10032');
INSERT INTO participate VALUES('5thhrs','10042');
INSERT INTO participate VALUES('uupiyg','10003');
INSERT INTO participate VALUES('uupiyg','10013');
INSERT INTO participate VALUES('uupiyg','10023');
INSERT INTO participate VALUES('uupiyg','10033');
INSERT INTO participate VALUES('uupiyg','10043');
INSERT INTO participate VALUES('xuxzz3','10004');
INSERT INTO participate VALUES('xuxzz3','10014');
INSERT INTO participate VALUES('xuxzz3','10024');
INSERT INTO participate VALUES('xuxzz3','10034');
INSERT INTO participate VALUES('xuxzz3','10044');
INSERT INTO participate VALUES('nyrww1','10005');
INSERT INTO participate VALUES('nyrww1','10015');
INSERT INTO participate VALUES('nyrww1','10025');
INSERT INTO participate VALUES('nyrww1','10035');
INSERT INTO participate VALUES('nyrww1','10045');
INSERT INTO participate VALUES('tgeraqo','10006');
INSERT INTO participate VALUES('tgeraqo','10016');
INSERT INTO participate VALUES('tgeraqo','10026');
INSERT INTO participate VALUES('tgeraqo','10036');
INSERT INTO participate VALUES('tgeraqo','10015');
INSERT INTO participate VALUES('nyuw5452','10007');
INSERT INTO participate VALUES('nyuw5452','10017');
INSERT INTO participate VALUES('nyuw5452','10027');
INSERT INTO participate VALUES('nyuw5452','10037');
INSERT INTO participate VALUES('nyuw5452','10016');
INSERT INTO participate VALUES('nyuw5452','10043');
INSERT INTO participate VALUES('teb240','10008');
INSERT INTO participate VALUES('teb240','10018');
INSERT INTO participate VALUES('teb240','10028');
INSERT INTO participate VALUES('teb240','10038');
INSERT INTO participate VALUES('bkipetop','10009');
INSERT INTO participate VALUES('bkipetop','10019');
INSERT INTO participate VALUES('bkipetop','10029');
INSERT INTO participate VALUES('bkipetop','10039');
INSERT INTO participate VALUES('tejuire','10001');
INSERT INTO participate VALUES('tejuire','10011');
INSERT INTO participate VALUES('tejuire','10021');
INSERT INTO participate VALUES('tejuire','10031');
INSERT INTO participate VALUES('btiepq2','10002');
INSERT INTO participate VALUES('btiepq2','10012');
INSERT INTO participate VALUES('btiepq2','10022');
INSERT INTO participate VALUES('btiepq2','10032');
INSERT INTO participate VALUES('btiepq2','10043');
INSERT INTO participate VALUES('kfspae12','10003');
INSERT INTO participate VALUES('kfspae12','10023');
INSERT INTO participate VALUES('kfspae12','10013');
INSERT INTO participate VALUES('kfspae12','10033');
INSERT INTO participate VALUES('kfspae12','10043');
INSERT INTO participate VALUES('fke33opa','10004');
INSERT INTO participate VALUES('fke33opa','10014');
INSERT INTO participate VALUES('fke33opa','10024');
INSERT INTO participate VALUES('vfisa12','10005');
INSERT INTO participate VALUES('vfisa12','10015');
INSERT INTO participate VALUES('vfisa12','10025');
INSERT INTO participate VALUES('vfisa12','10043');
INSERT INTO participate VALUES('1jikj2','10016');
INSERT INTO participate VALUES('1jikj2','10026');
INSERT INTO participate VALUES('1jikj2','10006');
INSERT INTO participate VALUES('1jikj2','10036');
INSERT INTO participate VALUES('75ubv4','10017');
INSERT INTO participate VALUES('75ubv4','10027');
INSERT INTO participate VALUES('75ubv4','10037');
INSERT INTO participate VALUES('75ubv4','10007');
INSERT INTO participate VALUES('75ubv4','10043');
INSERT INTO participate VALUES('6b6k55','10008');
INSERT INTO participate VALUES('6b6k55','10018');
INSERT INTO participate VALUES('6b6k55','10028');
INSERT INTO participate VALUES('6b6k55','10038');
INSERT INTO participate VALUES('vjh66nn','10009');
INSERT INTO participate VALUES('vjh66nn','10019');
INSERT INTO participate VALUES('vjh66nn','10029');
INSERT INTO participate VALUES('vjh66nn','10039');
INSERT INTO participate VALUES('vjh66nn','10043');
INSERT INTO participate VALUES('mkl54','10001');
INSERT INTO participate VALUES('mkl54','10011');
INSERT INTO participate VALUES('mkl54','10021');
INSERT INTO participate VALUES('mkl54','10031');
INSERT INTO participate VALUES('mkl54','10043');
INSERT INTO participate VALUES('azseg3','10002');
INSERT INTO participate VALUES('azseg3','10012');
INSERT INTO participate VALUES('azseg3','10022');
INSERT INTO participate VALUES('azseg3','10032');
INSERT INTO participate VALUES('34vvf3f','10003');
INSERT INTO participate VALUES('34vvf3f','10013');
INSERT INTO participate VALUES('34vvf3f','10023');
INSERT INTO participate VALUES('34vvf3f','10033');
INSERT INTO participate VALUES('34vvf3f','10043');
commit;

rem �Ϲ�ȸ��_�����ϴ� ���̺� ����

CREATE TABLE normal_user_hold (
    meet_num    CHAR(5),
    hold_id     VARCHAR2(8) NOT NULL,
    CONSTRAINT normal_user_hold_PK PRIMARY KEY (meet_num),
    CONSTRAINT meet_num_FK2 FOREIGN KEY (meet_num)
            REFERENCES walk_meet(meet_num)
            ON DELETE CASCADE,
    CONSTRAINT hold_id_FK FOREIGN KEY (hold_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE
);

rem �Ϲ�ȸ��_�����ϴ� �ʱ� ������ ����

INSERT INTO normal_user_hold VALUES('10001', '6sryeh');
INSERT INTO normal_user_hold VALUES('10002', 'uupiyg');
INSERT INTO normal_user_hold VALUES('10003', 'tejuire');
INSERT INTO normal_user_hold VALUES('10004', 'nyrww1');
INSERT INTO normal_user_hold VALUES('10005', 'nyuw5452');
INSERT INTO normal_user_hold VALUES('10006', 'uupiyg');
INSERT INTO normal_user_hold VALUES('10007', 'btiepq2');
INSERT INTO normal_user_hold VALUES('10008', 'nyuw5452');
INSERT INTO normal_user_hold VALUES('10009', 'kfspae12');
INSERT INTO normal_user_hold VALUES('10010', 'tejuire');
INSERT INTO normal_user_hold VALUES('10011', 'bkipetop');
INSERT INTO normal_user_hold VALUES('10012', '1jikj2');
INSERT INTO normal_user_hold VALUES('10013', 'mkl54');
INSERT INTO normal_user_hold VALUES('10014', 'bkipetop');
INSERT INTO normal_user_hold VALUES('10015', '6sryeh');
INSERT INTO normal_user_hold VALUES('10016', '34vvf3f');
INSERT INTO normal_user_hold VALUES('10017', 'uupiyg');
INSERT INTO normal_user_hold VALUES('10018', '75ubv4');
INSERT INTO normal_user_hold VALUES('10019', '1jikj2');
INSERT INTO normal_user_hold VALUES('10020', 'kfspae12');
INSERT INTO normal_user_hold VALUES('10021', 'azseg3');
INSERT INTO normal_user_hold VALUES('10022', 'uupiyg');
INSERT INTO normal_user_hold VALUES('10023', 'btiepq2');
INSERT INTO normal_user_hold VALUES('10024', 'nyrww1');
INSERT INTO normal_user_hold VALUES('10025', 'mkl54');
INSERT INTO normal_user_hold VALUES('10044','6sryeh');
INSERT INTO normal_user_hold VALUES('10045','uupiyg');
commit;

rem ���ȸ��_�����ϴ� ���̺� ����

CREATE TABLE company_user_hold (
    meet_num    CHAR(5),
    hold_id     VARCHAR2(8) NOT NULL,
    CONSTRAINT company_user_hold_PK PRIMARY KEY (meet_num),
    CONSTRAINT meet_num_FK3 FOREIGN KEY (meet_num)
            REFERENCES walk_meet(meet_num)
            ON DELETE CASCADE,
    CONSTRAINT hold_id_FK2 FOREIGN KEY (hold_id)
            REFERENCES company_user(user_id)
            ON DELETE CASCADE
);

rem ���ȸ��_�����ϴ� �ʱ� ������ ����

INSERT INTO company_user_hold VALUES('10026','64etg');
INSERT INTO company_user_hold VALUES('10027','te3hte53');
INSERT INTO company_user_hold VALUES('10028','lk836w5j');
INSERT INTO company_user_hold VALUES('10029','968itu');
INSERT INTO company_user_hold VALUES('10030','sgqgr5');
INSERT INTO company_user_hold VALUES('10031','lk836w5j');
INSERT INTO company_user_hold VALUES('10032','fva23g');
INSERT INTO company_user_hold VALUES('10033','lk836w5j');
INSERT INTO company_user_hold VALUES('10034','sru56r');
INSERT INTO company_user_hold VALUES('10035','masrjzy');
INSERT INTO company_user_hold VALUES('10036','gd12ewe');
INSERT INTO company_user_hold VALUES('10037','wi3t6k');
INSERT INTO company_user_hold VALUES('10038','masrjzy');
INSERT INTO company_user_hold VALUES('10039','bf2w5qr');
INSERT INTO company_user_hold VALUES('10040','mu5w23');
INSERT INTO company_user_hold VALUES('10041','gsf23');
INSERT INTO company_user_hold VALUES('10042','tw65w');
INSERT INTO company_user_hold VALUES('10043','lk836w5j');
commit;

rem �Ϲ�ȸ��_�Խñ� �ۼ��ϴ� ���̺� ����

CREATE TABLE normal_user_post_write (
    post_num    CHAR(8),
    post_id     VARCHAR2(8) NOT NULL,
    CONSTRAINT normal_user_post_write_PK PRIMARY KEY (post_num),
    CONSTRAINT post_num_FK2 FOREIGN KEY (post_num)
            REFERENCES post(post_num)
            ON DELETE CASCADE,
    CONSTRAINT post_id_FK FOREIGN KEY (post_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE
);

rem �Ϲ�ȸ��_�Խñ� �ۼ��ϴ� �ʱ� ������ ����

INSERT INTO normal_user_post_write VALUES('00000001', 'hrts423');
INSERT INTO normal_user_post_write VALUES('00000002', 'sjryjsgt');
INSERT INTO normal_user_post_write VALUES('00000003', 'ethjeth');
INSERT INTO normal_user_post_write VALUES('00000004', 'srrssrw');
INSERT INTO normal_user_post_write VALUES('00000005', '6sryeh');
INSERT INTO normal_user_post_write VALUES('00000006', 'rtjhsi3');
INSERT INTO normal_user_post_write VALUES('00000007', '46yrsth');
INSERT INTO normal_user_post_write VALUES('00000008', 'stmh57');
INSERT INTO normal_user_post_write VALUES('00000009', '5uk24');
INSERT INTO normal_user_post_write VALUES('00000010', '5thhrs');
INSERT INTO normal_user_post_write VALUES('00000011', 'uupiyg');
INSERT INTO normal_user_post_write VALUES('00000012', 'xuxzz3');
INSERT INTO normal_user_post_write VALUES('00000013', 'nyrww1');
INSERT INTO normal_user_post_write VALUES('00000014', 'tgeraqo');
INSERT INTO normal_user_post_write VALUES('00000015', 'nyuw5452');
INSERT INTO normal_user_post_write VALUES('00000016', 'teb240');
INSERT INTO normal_user_post_write VALUES('00000017', 'bkipetop');
INSERT INTO normal_user_post_write VALUES('00000018', 'tejuire');
INSERT INTO normal_user_post_write VALUES('00000019', 'btiepq2');
INSERT INTO normal_user_post_write VALUES('00000020', 'btkeoap');
INSERT INTO normal_user_post_write VALUES('00000021', 'kfspae12');
commit;

rem ���ȸ��_�Խñ��ۼ��ϴ� ���̺� ����

CREATE TABLE company_user_post_write (
    post_num    CHAR(8),
    post_id     VARCHAR2(8) NOT NULL,
    CONSTRAINT company_user_post_write_PK PRIMARY KEY (post_num),
    CONSTRAINT post_num_FK3 FOREIGN KEY (post_num)
            REFERENCES post(post_num)
            ON DELETE CASCADE,
    CONSTRAINT post_id_FK2 FOREIGN KEY (post_id)
            REFERENCES company_user(user_id)
            ON DELETE CASCADE
);

rem ���ȸ��_�Խñ��ۼ��ϴ� �ʱ� ������ ����

INSERT INTO company_user_post_write VALUES('00000022', 'te3hte53');
INSERT INTO company_user_post_write VALUES('00000023', 'lk836w5j');
INSERT INTO company_user_post_write VALUES('00000024', '74qw2js');
INSERT INTO company_user_post_write VALUES('00000025', 'masrjzy');
INSERT INTO company_user_post_write VALUES('00000026', 'ustmy53');
INSERT INTO company_user_post_write VALUES('00000027', '64etg');
INSERT INTO company_user_post_write VALUES('00000028', 'o9685i');
INSERT INTO company_user_post_write VALUES('00000029', '15q3tea');
INSERT INTO company_user_post_write VALUES('00000030', '968itu');
INSERT INTO company_user_post_write VALUES('00000031', 'mju3y5');
INSERT INTO company_user_post_write VALUES('00000032', 'k5t3sh');
INSERT INTO company_user_post_write VALUES('00000033', 'sgqgr5');
INSERT INTO company_user_post_write VALUES('00000034', '13ef6');
INSERT INTO company_user_post_write VALUES('00000035', 'bf2w5qr');
INSERT INTO company_user_post_write VALUES('00000036', 'tw65w');
INSERT INTO company_user_post_write VALUES('00000037', 'avdv5');
INSERT INTO company_user_post_write VALUES('00000038', '42t8942');
INSERT INTO company_user_post_write VALUES('00000039', 'fva23g');
INSERT INTO company_user_post_write VALUES('00000040', 'uk65utk');
INSERT INTO company_user_post_write VALUES('00000041', 'sru56r');
commit;

rem ����������_���_��� ���̺� ����

CREATE TABLE send_company_to_company (
    note_num    CHAR(8),
    sender_id   VARCHAR2(8) NOT NULL,
    rcpt_id     VARCHAR(8) NOT NULL,
    date_time   timestamp(0) DEFAULT SYSDATE,
    content     VARCHAR2(500) NOT NULL,
    CONSTRAINT send_company_to_company_PK PRIMARY KEY (note_num),
    CONSTRAINT sender_id_FK FOREIGN KEY (sender_id)
            REFERENCES company_user(user_id)
            ON DELETE CASCADE,
    CONSTRAINT rcpt_id_FK FOREIGN KEY (rcpt_id)
            REFERENCES company_user(user_id)
            ON DELETE CASCADE
);

rem ����������_���_��� �ʱ� ������ ����

INSERT INTO send_company_to_company VALUES('101', 'te3hte53', 'lk836w5j', SYSDATE, '�ȳ��ϼ���');
INSERT INTO send_company_to_company VALUES('102', 'wi3t6k', 'lk836w5j', SYSDATE, '�����ؿ�');
INSERT INTO send_company_to_company VALUES('103', 'masrjzy', 'wi3t6k', SYSDATE, '�� �־��');
INSERT INTO send_company_to_company VALUES('104', 'ustmy53', 'masrjzy', SYSDATE, '�ٽ� ������');
INSERT INTO send_company_to_company VALUES('105', '64etg', 'ustmy53', SYSDATE, '�ȳ��ϼ���');
INSERT INTO send_company_to_company VALUES('106', 'o9685i', '64etg', SYSDATE, '�� �ñ��� ����');
INSERT INTO send_company_to_company VALUES('107', '15q3tea', 'o9685i', SYSDATE, '�󸶿���');
INSERT INTO send_company_to_company VALUES('108', '968itu', '15q3tea', SYSDATE, '12�� 30�� ���� ������');
INSERT INTO send_company_to_company VALUES('109', 'mju3y5', '968itu', SYSDATE, '�������');
INSERT INTO send_company_to_company VALUES('110', 'k5t3sh', 'mju3y5', SYSDATE, '���� ��������');
INSERT INTO send_company_to_company VALUES('111', 'sgqgr5', 'k5t3sh', SYSDATE, '�� �� �𿴳���');
INSERT INTO send_company_to_company VALUES('112', '13ef6', 'sgqgr5', SYSDATE, '30���̿�');
INSERT INTO send_company_to_company VALUES('113', 'bf2w5qr', '13ef6', SYSDATE, '����ϳ���');
INSERT INTO send_company_to_company VALUES('114', 'tw65w', 'bf2w5qr', SYSDATE, '���� ����');
INSERT INTO send_company_to_company VALUES('115', 'avdv5', 'tw65w', SYSDATE, '���� ���Կ�');
INSERT INTO send_company_to_company VALUES('116', '42t8942', 'avdv5', SYSDATE, '�������� �ƿ�');
INSERT INTO send_company_to_company VALUES('117', 'fva23g', '42t8942', SYSDATE, '�� �ٳ���̾��');
INSERT INTO send_company_to_company VALUES('118', 'uk65utk', 'fva23g', SYSDATE, '�ʹ� ��մ�');
INSERT INTO send_company_to_company VALUES('119', 'sru56r', 'uk65utk', SYSDATE, '��������');
INSERT INTO send_company_to_company VALUES('120', 'wi3t6k', 'sru56r', SYSDATE, '4�޶�');
INSERT INTO send_company_to_company VALUES('121', 'w56q', 'wi3t6k', SYSDATE, '��������');
commit;

rem ����������_�Ϲ�_��� ���̺� ����

CREATE TABLE send_normal_to_company (
    note_num    CHAR(8),
    sender_id   VARCHAR2(8) NOT NULL,
    rcpt_id     VARCHAR(8) NOT NULL,
    date_time   timestamp(0) DEFAULT SYSDATE,
    content     VARCHAR2(500) NOT NULL,
    CONSTRAINT send_normal_to_company_PK PRIMARY KEY (note_num),
    CONSTRAINT sender_id_FK2 FOREIGN KEY (sender_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE,
    CONSTRAINT rcpt_id_FK2 FOREIGN KEY (rcpt_id)
            REFERENCES company_user(user_id)
            ON DELETE CASCADE
);

rem ����������_�Ϲ�_��� �ʱ� ������ ����

INSERT INTO send_normal_to_company VALUES('122', 'hrts423', 'lk836w5j', SYSDATE, '�ȳ��ϼ���');
INSERT INTO send_normal_to_company VALUES('123', 'sjryjsgt', 'lk836w5j', SYSDATE, '�����ؿ�');
INSERT INTO send_normal_to_company VALUES('124', 'ethjeth', '968itu', SYSDATE, '�� �־��');
INSERT INTO send_normal_to_company VALUES('125', 'srrssrw', 'masrjzy', SYSDATE, '�ٽ� ������');
INSERT INTO send_normal_to_company VALUES('126', '6sryeh', 'ustmy53', SYSDATE, '�ȳ��ϼ���');
INSERT INTO send_normal_to_company VALUES('127', 'rtjhsi3', '64etg', SYSDATE, '�� �ñ��� ����');
INSERT INTO send_normal_to_company VALUES('128', '46yrsth', 'o9685i', SYSDATE, '�󸶿���');
INSERT INTO send_normal_to_company VALUES('129', 'stmh57', '15q3tea', SYSDATE, '12�� 30�� ���� ������');
INSERT INTO send_normal_to_company VALUES('130', '5uk24', '968itu', SYSDATE, '�������');
INSERT INTO send_normal_to_company VALUES('131', '5thhrs', 'mju3y5', SYSDATE, '���� ��������');
INSERT INTO send_normal_to_company VALUES('132', 'uupiyg', 'k5t3sh', SYSDATE, '�� �� �𿴳���');
INSERT INTO send_normal_to_company VALUES('133', 'xuxzz3', 'sgqgr5', SYSDATE, '30���̿�');
INSERT INTO send_normal_to_company VALUES('134', 'nyrww1', '13ef6', SYSDATE, '����ϳ���');
INSERT INTO send_normal_to_company VALUES('135', 'tgeraqo', 'bf2w5qr', SYSDATE, '���� ����');
INSERT INTO send_normal_to_company VALUES('136', 'nyuw5452', 'tw65w', SYSDATE, '���� ���Կ�');
INSERT INTO send_normal_to_company VALUES('137', 'teb240', 'avdv5', SYSDATE, '�������� �ƿ�');
INSERT INTO send_normal_to_company VALUES('138', 'bkipetop', '42t8942', SYSDATE, '�� �ٳ���̾��');
INSERT INTO send_normal_to_company VALUES('139', 'tejuire', 'fva23g', SYSDATE, '�ʹ� ��մ�');
INSERT INTO send_normal_to_company VALUES('140', 'btiepq2', 'uk65utk', SYSDATE, '��������');
INSERT INTO send_normal_to_company VALUES('141', 'btkeoap', 'sru56r', SYSDATE, '4�޶�');
INSERT INTO send_normal_to_company VALUES('142', 'kfspae12', 'wi3t6k', SYSDATE, '����');
commit;

rem ����������_���_�Ϲ� ���̺� ����

CREATE TABLE send_company_to_normal (
    note_num    CHAR(8),
    sender_id   VARCHAR2(8) NOT NULL,
    rcpt_id     VARCHAR(8) NOT NULL,
    date_time   timestamp(0) DEFAULT SYSDATE,
    content     VARCHAR2(500) NOT NULL,
    CONSTRAINT send_company_to_normal_PK PRIMARY KEY (note_num),
    CONSTRAINT sender_id_FK3 FOREIGN KEY (sender_id)
            REFERENCES company_user(user_id)
            ON DELETE CASCADE,
    CONSTRAINT rcpt_id_FK3 FOREIGN KEY (rcpt_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE
);

rem ����������_���_�Ϲ� �ʱ� ������ ����

INSERT INTO send_company_to_normal VALUES('143', 'lk836w5j', 'hrts423', SYSDATE, '�ȳ��ϼ���');
INSERT INTO send_company_to_normal VALUES('144', 'lk836w5j', 'sjryjsgt', SYSDATE, '�����ؿ�');
INSERT INTO send_company_to_normal VALUES('145', 'sru56r', 'ethjeth', SYSDATE, '�� �־��');
INSERT INTO send_company_to_normal VALUES('146', 'masrjzy', 'srrssrw', SYSDATE, '�ٽ� ������');
INSERT INTO send_company_to_normal VALUES('147', 'ustmy53', '6sryeh', SYSDATE, '�ȳ��ϼ���');
INSERT INTO send_company_to_normal VALUES('148', '64etg', 'rtjhsi3', SYSDATE, '�� �ñ��� ����');
INSERT INTO send_company_to_normal VALUES('149', 'o9685i', '46yrsth', SYSDATE, '�󸶿���');
INSERT INTO send_company_to_normal VALUES('150', '15q3tea', 'stmh57', SYSDATE, '12�� 30�� ���� ������');
INSERT INTO send_company_to_normal VALUES('151', '968itu', '5uk24', SYSDATE, '�������');
INSERT INTO send_company_to_normal VALUES('152', 'mju3y5', '5thhrs', SYSDATE, '���� ��������');
INSERT INTO send_company_to_normal VALUES('153', 'k5t3sh', 'uupiyg', SYSDATE, '�� �� �𿴳���');
INSERT INTO send_company_to_normal VALUES('154', 'sgqgr5', 'xuxzz3', SYSDATE, '30���̿�');
INSERT INTO send_company_to_normal VALUES('155', '13ef6', 'nyrww1', SYSDATE, '����ϳ���');
INSERT INTO send_company_to_normal VALUES('156', 'bf2w5qr', 'tgeraqo', SYSDATE, '���� ����');
INSERT INTO send_company_to_normal VALUES('157', 'tw65w', 'nyuw5452', SYSDATE, '���� ���Կ�');
INSERT INTO send_company_to_normal VALUES('158', 'avdv5', 'teb240', SYSDATE, '�������� �ƿ�');
INSERT INTO send_company_to_normal VALUES('159', '42t8942', 'bkipetop', SYSDATE, '�� �ٳ���̾��');
INSERT INTO send_company_to_normal VALUES('160', 'fva23g', 'tejuire', SYSDATE, '�ʹ� ��մ�');
INSERT INTO send_company_to_normal VALUES('161', 'uk65utk', 'btiepq2', SYSDATE, '��������');
INSERT INTO send_company_to_normal VALUES('162', 'sru56r', 'btkeoap', SYSDATE, '4�޶�');
INSERT INTO send_company_to_normal VALUES('163', 'wi3t6k', 'kfspae12', SYSDATE, '����');
commit;

rem ����������_�Ϲ�_�Ϲ� ���̺� ����

CREATE TABLE send_normal_to_normal (
    note_num    CHAR(8),
    sender_id   VARCHAR2(8) NOT NULL,
    rcpt_id     VARCHAR(8) NOT NULL,
    date_time   timestamp(0) DEFAULT SYSDATE,
    content     VARCHAR2(500) NOT NULL,
    CONSTRAINT send_normal_to_normal_PK PRIMARY KEY (note_num),
    CONSTRAINT sender_id_FK4 FOREIGN KEY (sender_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE,
    CONSTRAINT rcpt_id_FK4 FOREIGN KEY (rcpt_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE
);

rem ����������_�Ϲ�_�Ϲ� �ʱ� ������ ����

INSERT INTO send_normal_to_normal VALUES('164', 'hrts423', 'sjryjsgt', SYSDATE, '�ȳ��ϼ���');
INSERT INTO send_normal_to_normal VALUES('165', 'sjryjsgt', 'ethjeth', SYSDATE, '�����ؿ�');
INSERT INTO send_normal_to_normal VALUES('166', 'ethjeth', 'srrssrw', SYSDATE, '�� �־��');
INSERT INTO send_normal_to_normal VALUES('167', 'srrssrw', '6sryeh', SYSDATE, '�ٽ� ������');
INSERT INTO send_normal_to_normal VALUES('168', '6sryeh', 'rtjhsi3', SYSDATE, '�ȳ��ϼ���');
INSERT INTO send_normal_to_normal VALUES('169', 'rtjhsi3', '46yrsth', SYSDATE, '�� �ñ��� ����');
INSERT INTO send_normal_to_normal VALUES('170', '46yrsth', 'stmh57', SYSDATE, '�󸶿���');
INSERT INTO send_normal_to_normal VALUES('171', 'stmh57', '5uk24', SYSDATE, '12�� 30�� ���� ������');
INSERT INTO send_normal_to_normal VALUES('172', '5uk24', '5thhrs', SYSDATE, '�������');
INSERT INTO send_normal_to_normal VALUES('173', '5thhrs', 'uupiyg', SYSDATE, '���� ��������');
INSERT INTO send_normal_to_normal VALUES('174', 'uupiyg', 'xuxzz3', SYSDATE, '�� �� �𿴳���');
INSERT INTO send_normal_to_normal VALUES('175', 'xuxzz3', 'nyrww1', SYSDATE, '30���̿�');
INSERT INTO send_normal_to_normal VALUES('176', 'nyrww1', 'tgeraqo', SYSDATE, '����ϳ���');
INSERT INTO send_normal_to_normal VALUES('177', 'tgeraqo', 'nyuw5452', SYSDATE, '���� ����');
INSERT INTO send_normal_to_normal VALUES('178', 'nyuw5452', 'teb240', SYSDATE, '���� ���Կ�');
INSERT INTO send_normal_to_normal VALUES('179', 'teb240', 'bkipetop', SYSDATE, '�������� �ƿ�');
INSERT INTO send_normal_to_normal VALUES('180', 'bkipetop', 'tejuire', SYSDATE, '�� �ٳ���̾��');
INSERT INTO send_normal_to_normal VALUES('181', 'tejuire', 'btiepq2', SYSDATE, '�ʹ� ��մ�');
INSERT INTO send_normal_to_normal VALUES('182', 'btiepq2', 'btkeoap', SYSDATE, '��������');
INSERT INTO send_normal_to_normal VALUES('183', 'btkeoap', 'kfspae12', SYSDATE, '4�޶�');
INSERT INTO send_normal_to_normal VALUES('184', 'kfspae12', 'hrts423', SYSDATE, '��������');
commit;

rem �Ϲ�ȸ��_����ۼ��ϴ� ���̺� ����

CREATE TABLE normal_user_comment_write (
    com_num     CHAR(4),
    post_num    CHAR(8),
    writer_id   VARCHAR2(8) NOT NULL,
    CONSTRAINT normal_user_comment_write_PK PRIMARY KEY (com_num, post_num),
    CONSTRAINT com_post_num_FK FOREIGN KEY (com_num, post_num)
            REFERENCES post_comment(com_num, post_num)
            ON DELETE CASCADE,
    CONSTRAINT writer_id_FK FOREIGN KEY (writer_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE

);
rem �Ϲ�ȸ��_����ۼ��ϴ� �ʱ� ������ ����

INSERT INTO normal_user_comment_write VALUES('c001', '00000001', 'hrts423');
INSERT INTO normal_user_comment_write VALUES('c002', '00000001', 'sjryjsgt');
INSERT INTO normal_user_comment_write VALUES('c003', '00000001', 'ethjeth');
INSERT INTO normal_user_comment_write VALUES('c004', '00000001', 'srrssrw');
INSERT INTO normal_user_comment_write VALUES('c005', '00000001', '6sryeh');
INSERT INTO normal_user_comment_write VALUES('c001', '00000003', 'rtjhsi3');
INSERT INTO normal_user_comment_write VALUES('c002', '00000003', '46yrsth');
INSERT INTO normal_user_comment_write VALUES('c003', '00000003', 'stmh57');
INSERT INTO normal_user_comment_write VALUES('c001', '00000004', '5uk24');
INSERT INTO normal_user_comment_write VALUES('c002', '00000004', '5thhrs');
INSERT INTO normal_user_comment_write VALUES('c003', '00000004', 'uupiyg');
INSERT INTO normal_user_comment_write VALUES('c004', '00000004', 'xuxzz3');
INSERT INTO normal_user_comment_write VALUES('c005', '00000004', 'nyrww1');
INSERT INTO normal_user_comment_write VALUES('c001', '00000005', 'nyrww1');
INSERT INTO normal_user_comment_write VALUES('c001', '00000006', 'tgeraqo');
INSERT INTO normal_user_comment_write VALUES('c002', '00000006', 'nyuw5452');
INSERT INTO normal_user_comment_write VALUES('c001', '00000010', 'teb240');
INSERT INTO normal_user_comment_write VALUES('c002', '00000010', 'bkipetop');
INSERT INTO normal_user_comment_write VALUES('c003', '00000010', 'tejuire');
INSERT INTO normal_user_comment_write VALUES('c004', '00000010', 'btiepq2');
INSERT INTO normal_user_comment_write VALUES('c005', '00000010', 'kfspae12');
INSERT INTO normal_user_comment_write VALUES('c001', '00000011', 'fke33opa');
INSERT INTO normal_user_comment_write VALUES('c001', '00000013', 'kfspae12');
INSERT INTO normal_user_comment_write VALUES('c002', '00000013', 'vfisa12');
INSERT INTO normal_user_comment_write VALUES('c001', '00000014', '1jikj2');
INSERT INTO normal_user_comment_write VALUES('c002', '00000014', '75ubv4');
commit;

rem ���ȸ��_����ۼ��ϴ� ���̺� ����

CREATE TABLE company_user_comment_write (
    com_num     CHAR(4),
    post_num    CHAR(8),
    writer_id   VARCHAR2(8) NOT NULL,
    CONSTRAINT company_user_comment_write_PK PRIMARY KEY (com_num, post_num),
    CONSTRAINT com_post_num_FK2 FOREIGN KEY (com_num, post_num)
            REFERENCES post_comment(com_num, post_num)
            ON DELETE CASCADE,
    CONSTRAINT writer_id_FK2 FOREIGN KEY (writer_id)
            REFERENCES company_user(user_id)
            ON DELETE CASCADE
);

rem ���ȸ��_����ۼ��ϴ� �ʱ� ������ ����

INSERT INTO company_user_comment_write VALUES('c006', '00000001', 'te3hte53');
INSERT INTO company_user_comment_write VALUES('c007', '00000001', '13ef6');
INSERT INTO company_user_comment_write VALUES('c008', '00000001', '74qw2js');
INSERT INTO company_user_comment_write VALUES('c001', '00000022', 'te3hte53');
INSERT INTO company_user_comment_write VALUES('c002', '00000022', 'k5t3sh');
INSERT INTO company_user_comment_write VALUES('c003', '00000022', 'avdv5');
INSERT INTO company_user_comment_write VALUES('c001', '00000024', 'sgqgr5');
INSERT INTO company_user_comment_write VALUES('c002', '00000024', 'bf2w5qr');
INSERT INTO company_user_comment_write VALUES('c001', '00000026', 'masrjzy');
INSERT INTO company_user_comment_write VALUES('c002', '00000026', '15q3tea');
INSERT INTO company_user_comment_write VALUES('c001', '00000027', 'mju3y5');
INSERT INTO company_user_comment_write VALUES('c001', '00000030', 'o9685i');
INSERT INTO company_user_comment_write VALUES('c002', '00000030', 'mu556w');
INSERT INTO company_user_comment_write VALUES('c003', '00000030', 'w56q');
INSERT INTO company_user_comment_write VALUES('c004', '00000030', 'wi3t6k');
INSERT INTO company_user_comment_write VALUES('c001', '00000031', 'hss9m6');
INSERT INTO company_user_comment_write VALUES('c001', '00000033', 'w56q');
INSERT INTO company_user_comment_write VALUES('c002', '00000033', 'gsf23');
INSERT INTO company_user_comment_write VALUES('c003', '00000033', 'u42mnut');
INSERT INTO company_user_comment_write VALUES('c001', '00000037', 'mth13s');
INSERT INTO company_user_comment_write VALUES('c002', '00000037', 'hss9m6');
INSERT INTO company_user_comment_write VALUES('c001', '00000038', '6nh4123');
INSERT INTO company_user_comment_write VALUES('c001', '00000039', 'gd12ewe');
INSERT INTO company_user_comment_write VALUES('c002', '00000039', '74qw2js');
INSERT INTO company_user_comment_write VALUES('c001', '00000040', 'lk836w5j');
commit;

rem ���ϴ� ���̺� ����

CREATE TABLE evaluate (
    user_id     VARCHAR2(8),
    crs_num     CHAR(5),
    grade       NUMBER(1) NOT NULL,
    
    CONSTRAINT user_id_FK3 FOREIGN KEY (user_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE,
    CONSTRAINT crs_num_FK3 FOREIGN KEY (crs_num)
            REFERENCES walk_course(crs_num)
            ON DELETE CASCADE,
    CONSTRAINT grade_check3 CHECK (grade IN (1, 2, 3, 4, 5)),
    CONSTRAINT evaluate_PK PRIMARY KEY (user_id, crs_num)
);

rem ���ϴ� �ʱ� ������ ���� �ʱ� ������ ����

INSERT INTO evaluate (user_id,crs_num,grade) VALUES('hrts423','00006',3);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('sjryjsgt','00010',5);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('sjryjsgt','00002',4);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('srrssrw','00015',2);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('6sryeh','00001',5);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('46yrsth','00005',5);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('46yrsth','00007',5);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('stmh57','00011',2);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('5uk24','00007',3);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('5uk24','00002',1);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('5uk24','00014',5);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('uupiyg','00011',5);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('nyrww1','00005',3);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('nyrww1','00003',2);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('nyuw5452','00003',4);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('btiepq2','00001',4);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('btiepq2','00010',3);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('btkeoap','00012',3);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('kfspae12','00006',5);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('kfspae12','00003',2);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('fke33opa','00011',3);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('vfisa12','00012',4);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('1jikj2','00005',5);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('75ubv4','00008',4);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('75ubv4','00015',5);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('34vvf3f','00008',2);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('azseg3','00005',3);
INSERT INTO evaluate (user_id,crs_num,grade) VALUES('azseg3','00001',5);
commit;

rem ���ϴ� ���̺� ����

CREATE TABLE wish (
    user_id     VARCHAR2(8),
    prod_num    CHAR(6),
    CONSTRAINT user_id_FK4 FOREIGN KEY (user_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE,
    CONSTRAINT prod_num_FK2 FOREIGN KEY (prod_num)
            REFERENCES product(prod_num)
            ON DELETE CASCADE,
    CONSTRAINT wish_PK PRIMARY KEY (user_id, prod_num)
);

rem ���ϴ� �ʱ� ������ ���� �ʱ� ������ ����

INSERT INTO wish VALUES('hrts423','000006');
INSERT INTO wish VALUES('hrts423','000008');
INSERT INTO wish VALUES('ethjeth','000001');
INSERT INTO wish VALUES('srrssrw','000009');
INSERT INTO wish VALUES('6sryeh','000020');
INSERT INTO wish VALUES('stmh57','000020');
INSERT INTO wish VALUES('stmh57','000017');
INSERT INTO wish VALUES('stmh57','000016');
INSERT INTO wish VALUES('5thhrs','000014');
INSERT INTO wish VALUES('uupiyg','000012');
INSERT INTO wish VALUES('xuxzz3','000018');
INSERT INTO wish VALUES('tgeraqo','000018');
INSERT INTO wish VALUES('nyuw5452','000021');
INSERT INTO wish VALUES('nyuw5452','000013');
INSERT INTO wish VALUES('teb240','000002');
INSERT INTO wish VALUES('tejuire','000002');
INSERT INTO wish VALUES('tejuire','000004');
INSERT INTO wish VALUES('btiepq2','000005');
INSERT INTO wish VALUES('kfspae12','000009');
INSERT INTO wish VALUES('fke33opa','000008');
INSERT INTO wish VALUES('vfisa12','000008');
INSERT INTO wish VALUES('vjh66nn','000010');
INSERT INTO wish VALUES('vjh66nn','000004');
INSERT INTO wish VALUES('azseg3','000001');
INSERT INTO wish VALUES('34vvf3f','000019');
INSERT INTO wish VALUES('34vvf3f','000017');
commit;

rem �����ϴ� ���̺� ����

CREATE TABLE buy (
    prod_num    CHAR(6),
    buyer_id    VARCHAR2(8),
    CONSTRAINT prod_num_FK3 FOREIGN KEY (prod_num)
            REFERENCES product(prod_num)
            ON DELETE CASCADE,
    CONSTRAINT buyer_id_FK FOREIGN KEY (buyer_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE,
    CONSTRAINT buy_PK PRIMARY KEY (prod_num, buyer_id)
);

rem �����ϴ� �ʱ� ������ ���� �ʱ� ������ ����

INSERT INTO buy VALUES('000001','5uk24');
INSERT INTO buy VALUES('000003','6sryeh');
INSERT INTO buy VALUES('000006','hrts423');
INSERT INTO buy VALUES('000008','teb240');
INSERT INTO buy VALUES('000011','tejuire');
INSERT INTO buy VALUES('000013','fke33opa');
INSERT INTO buy VALUES('000015','1jikj2');
INSERT INTO buy VALUES('000017','nyuw5452');
INSERT INTO buy VALUES('000020','kfspae12');
INSERT INTO buy VALUES('000021','34vvf3f');
commit;

rem �����ϴ� ���̺� ����

CREATE TABLE manage (
    club_num    CHAR(5),
    master_id   VARCHAR2(8),
    start_date  DATE DEFAULT SYSDATE,
    end_date    DATE,
    CONSTRAINT manage_PK PRIMARY KEY (club_num, master_id),
    CONSTRAINT club_num_FK FOREIGN KEY (club_num)
            REFERENCES club(club_num)
            ON DELETE CASCADE,
    CONSTRAINT master_id_FK FOREIGN KEY (master_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE
);

rem �����ϴ� �ʱ� ������ ����

INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('2', 'ethjeth', TO_DATE('2013/04/23','YYYY/MM/DD'), TO_DATE('2017/01/23','YYYY/MM/DD'));
INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('3', 'rtjhsi3', TO_DATE('2013/03/23','YYYY/MM/DD'), TO_DATE('2019/05/23','YYYY/MM/DD'));
INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('5', 'stmh57', TO_DATE('2013/01/23','YYYY/MM/DD'), TO_DATE('2021/05/23','YYYY/MM/DD'));
INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('6', '5uk24', TO_DATE('2014/05/23','YYYY/MM/DD'), TO_DATE('2022/05/23','YYYY/MM/DD'));
INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('7', '5thhrs', TO_DATE('2010/01/23','YYYY/MM/DD'), TO_DATE('2023/05/23','YYYY/MM/DD'));
INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('8', 'nyrww1', TO_DATE('2011/02/23','YYYY/MM/DD'), TO_DATE('2017/04/23','YYYY/MM/DD'));
INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('9', 'tgeraqo', TO_DATE('2013/05/26','YYYY/MM/DD'), TO_DATE('2017/06/23','YYYY/MM/DD'));
INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('11', 'teb240', TO_DATE('2013/05/28','YYYY/MM/DD'), TO_DATE('2017/08/23','YYYY/MM/DD'));
INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('12', 'bkipetop', TO_DATE('2013/05/12','YYYY/MM/DD'), TO_DATE('2017/09/23','YYYY/MM/DD'));
INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('13', 'tejuire', TO_DATE('2013/05/20','YYYY/MM/DD'), TO_DATE('2017/10/23','YYYY/MM/DD'));
INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('14', 'btiepq2', TO_DATE('2013/05/21','YYYY/MM/DD'), TO_DATE('2017/11/23','YYYY/MM/DD'));
INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('15', 'btkeoap', TO_DATE('2013/05/03','YYYY/MM/DD'), TO_DATE('2017/12/23','YYYY/MM/DD'));
INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('16', 'fke33opa', TO_DATE('2013/05/05','YYYY/MM/DD'), TO_DATE('2017/05/01','YYYY/MM/DD'));
INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('17', '1jikj2', TO_DATE('2014/01/23','YYYY/MM/DD'), TO_DATE('2017/05/02','YYYY/MM/DD'));
INSERT INTO manage(club_num, master_id, start_date, end_date) VALUES('18', 'mkl54', TO_DATE('2012/05/01','YYYY/MM/DD'), TO_DATE('2017/05/03','YYYY/MM/DD'));
commit;

rem �����ϴ� ���̺� ����

CREATE TABLE sign_up (
    user_id     VARCHAR2(8),
    club_num    CHAR(5),
    join_date   DATE DEFAULT SYSDATE,
    CONSTRAINT sign_up_PK PRIMARY KEY (user_id, club_num),
    CONSTRAINT user_id_FK5 FOREIGN KEY (user_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE,
    CONSTRAINT club_num_FK2 FOREIGN KEY (club_num)
            REFERENCES club(club_num)
            ON DELETE CASCADE
);

rem �����ϴ� �ʱ� ������ ����

INSERT INTO sign_up(user_id, club_num, join_date) VALUES('vfisa12', '2', TO_DATE('2013/05/20','YYYY/MM/DD'));
INSERT INTO sign_up(user_id, club_num, join_date) VALUES('1jikj2', '3', TO_DATE('2013/05/20','YYYY/MM/DD'));
INSERT INTO sign_up(user_id, club_num, join_date) VALUES('vjh66nn', '5', TO_DATE('2013/02/20','YYYY/MM/DD'));
INSERT INTO sign_up(user_id, club_num, join_date) VALUES('mkl54', '6', TO_DATE('2013/01/20','YYYY/MM/DD'));
INSERT INTO sign_up(user_id, club_num, join_date) VALUES('azseg3', '7', TO_DATE('2013/06/20','YYYY/MM/DD'));
INSERT INTO sign_up(user_id, club_num, join_date) VALUES('hrts423', '11', TO_DATE('2013/08/20','YYYY/MM/DD'));
INSERT INTO sign_up(user_id, club_num, join_date) VALUES('sjryjsgt', '11', TO_DATE('2013/09/20','YYYY/MM/DD'));
INSERT INTO sign_up(user_id, club_num, join_date) VALUES('ethjeth', '11', TO_DATE('2013/10/20','YYYY/MM/DD'));
INSERT INTO sign_up(user_id, club_num, join_date) VALUES('srrssrw', '15', TO_DATE('2013/11/20','YYYY/MM/DD'));
INSERT INTO sign_up(user_id, club_num, join_date) VALUES('6sryeh', '17', TO_DATE('2013/12/20','YYYY/MM/DD'));
INSERT INTO sign_up(user_id, club_num, join_date) VALUES('rtjhsi3', '17', TO_DATE('2013/05/21','YYYY/MM/DD'));
INSERT INTO sign_up(user_id, club_num, join_date) VALUES('75ubv4', '17', TO_DATE('2013/05/21','YYYY/MM/DD'));
INSERT INTO sign_up(user_id, club_num, join_date) VALUES('6b6k55', '18', TO_DATE('2013/05/21','YYYY/MM/DD'));
commit;

rem �����ϴ� ���̺� ����

CREATE TABLE verify (
    user_id     VARCHAR2(8),
    qr_id       CHAR(15),
    date_time   DATE DEFAULT SYSDATE,
    CONSTRAINT verify_PK PRIMARY KEY (user_id, qr_id),
    CONSTRAINT user_id_FK6 FOREIGN KEY (user_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE,
    CONSTRAINT qr_id_FK FOREIGN KEY (qr_id)
            REFERENCES qrcode(qr_id)
            ON DELETE CASCADE
);

rem �����ϴ� �ʱ� ������ ����

INSERT INTO verify(user_id, qr_id, date_time) VALUES('hrts423', 'C_1', TO_DATE('20160901151212','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('hrts423', 'C_2', TO_DATE('20160901151212','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('hrts423', 'C_4', TO_DATE('20160901151212','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('hrts423', 'A_1', TO_DATE('20160901151212','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('hrts423', 'B_1', TO_DATE('20160901151212','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('sjryjsgt', 'C_2', TO_DATE('20160901151212','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('sjryjsgt', 'C_1', TO_DATE('20160901151212','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('sjryjsgt', 'A_1', TO_DATE('20160901151212','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('sjryjsgt', 'B_1', TO_DATE('20160901151212','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('sjryjsgt', 'C_5', TO_DATE('20160901151212','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('ethjeth', 'C_5', TO_DATE('20160901151212','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('ethjeth', 'C_1', TO_DATE('20160901151213','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('ethjeth', 'A_5', TO_DATE('20160901151214','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('ethjeth', 'A_6', TO_DATE('20160901151215','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('ethjeth', 'B_2', TO_DATE('20160901151216','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('ethjeth', 'C_3', TO_DATE('20160901151217','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('nyrww1', 'C_3', TO_DATE('20160901151218','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('nyrww1', 'C_4', TO_DATE('20160901151219','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('nyrww1', 'C_5', TO_DATE('20160901151222','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('nyrww1', 'C_6', TO_DATE('20160901151232','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('nyrww1', 'B_8', TO_DATE('20160901151242','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('tgeraqo', 'C_3', TO_DATE('20160901151252','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('tgeraqo', 'C_4', TO_DATE('20110901151202','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('tgeraqo', 'A_1', TO_DATE('20120901151202','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('tgeraqo', 'A_3', TO_DATE('20130901151202','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('fke33opa', 'B_3', TO_DATE('20140901151202','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('fke33opa', 'C_7', TO_DATE('20160901152212','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('fke33opa', 'B_7', TO_DATE('20160901121212','YYYYMMDDHH24MISS'));
INSERT INTO verify(user_id, qr_id, date_time) VALUES('fke33opa', 'C_5', TO_DATE('20150901151212','YYYYMMDDHH24MISS'));
commit;

rem �ε��� ����

CREATE INDEX club_area_idx ON club(area);
CREATE INDEX product_area_idx ON product(area);

SET SCAN ON
