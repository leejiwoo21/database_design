rem 테이블 생성과 초기데이터 삽입 
rem 최초작성일: 2021-05-31
rem 최종수정일: 2021-06-04 20:24

rem 일반회원 테이블 생성 

CREATE TABLE normal_user (
    user_id     VARCHAR2(8),
    user_pw     VARCHAR2(15) NOT NULL,
    name        VARCHAR2(20) NOT NULL,
    birth_date  DATE,
    area        CHAR(8) NOT NULL,
    email       VARCHAR2(30) NOT NULL UNIQUE,
    phone       VARCHAR2(13) NOT NULL UNIQUE,
    point       NUMBER(6) DEFAULT 0,
    grade       CHAR(4) DEFAULT '실버',
    walk_dis    NUMBER(5) DEFAULT 0,
    CONSTRAINT normal_user_PK PRIMARY KEY (user_id),
    CONSTRAINT area_check CHECK (area IN ('서울', '대전', '대구', '부산', '울산', '광주', '세종', '강원도', '경기도', '충청남도',
                                          '충청북도', '경상남도', '경상북도', '전라남도', '전라북도', '제주도')),

    CONSTRAINT grade_check CHECK (grade IN ('실버', '골드'))
);

rem 일반회원 초기 데이터 삽입

INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('hrts423', 'thearhert12', '김이나', TO_DATE('1999/11/22','YYYY/MM/DD'), '대전', 'graeq@naver.com', '010-1111-2222', 12, '실버',10);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('sjryjsgt', 'nyrsnjysrt13', '이신영', TO_DATE('2000/01/26','YYYY/MM/DD'), '서울', 'tgagda@naver.com', '010-1110-2222', 350, '골드', 100);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('ethjeth', 'jeiqorfql43', '김세연', TO_DATE('1998/02/01','YYYY/MM/DD'), '대구', '5yeqjmh@naver.com', '010-1100-2222', 400, '골드', 120);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('srrssrw', 'ktoepakgta2', '박정아', TO_DATE('1997/11/16','YYYY/MM/DD'), '울산', 'iykdutj@naver.com', '010-1000-2222', 220, '실버', 60);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('6sryeh', 'jrieoaq123', '최주애', TO_DATE('1996/11/08','YYYY/MM/DD'), '부산', 'gbzdv@naver.com', '010-0000-2222', 160, '실버', 30);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('rtjhsi3', 'eropqgjq2123', '김현식', TO_DATE('1995/11/04','YYYY/MM/DD'), '세종', 'ouiykdutjh@naver.com', '010-1111-2220', 366, '골드', 210);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('46yrsth', 'grueiq331', '김효민', TO_DATE('1994/11/10','YYYY/MM/DD'), '강원도', 'hnfbg@naver.com', '010-1111-2200', 471, '골드', 90);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('stmh57', '58429gergsf', '이현재', TO_DATE('1993/11/11','YYYY/MM/DD'), '대전', 'mjgnhf@naver.com', '010-1111-2000', 310, '골드', 80);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('5uk24', 'gjirow2r2', '이강진', TO_DATE('1992/11/30','YYYY/MM/DD'), '대구', 'iyujthrgd@naver.com', '010-1111-0000', 339, '골드', 130);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('5thhrs', 'hyr3as1nr3', '민재빈', TO_DATE('1991/11/19','YYYY/MM/DD'), '전라남도', 'ouikutjy@naver.com', '010-1110-2220', 422, '골드', 100);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('uupiyg', 'ntae56rqg', '문강훈', TO_DATE('1999/11/08','YYYY/MM/DD'), '제주도', 'oiktu57@naver.com', '010-1100-2220', 160, '실버', 30);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('xuxzz3', 'ht48eqeas', '임시완', TO_DATE('1998/11/09','YYYY/MM/DD'), '제주도', 'ykjgm3@naver.com', '010-1000-2220', 191, '실버', 70);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('nyrww1', 'b4t8e9qen', '김가을', TO_DATE('1997/07/28','YYYY/MM/DD'), '대전', 'nbfdv64@naver.com', '010-0000-2220', 388, '골드', 160);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('tgeraqo', 'nt48e4qn6we', '나재빈', TO_DATE('1996/03/22','YYYY/MM/DD'), '부산', 'oli6ktu64@naver.com', '010-1110-2200', 423, '골드', 130);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('nyuw5452', 'g13zd2b', '김아린', TO_DATE('1995/12/25','YYYY/MM/DD'), '경상북도', 'gbzda247@naver.com', '010-1100-2200', 492, '골드', 220);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('teb240', 'g4d8gdfgx', '이동우', TO_DATE('1994/11/26','YYYY/MM/DD'), '광주', '9o76i8tu@naver.com', '010-1000-2200', 389, '골드', 110);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('bkipetop', 'ntgea8b6wf', '김태현', TO_DATE('1993/01/02','YYYY/MM/DD'), '충청북도', 'l6k5ij4uh@naver.com', '010-0000-2200', 520, '골드', 180);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('tejuire', 'ju5wtsnh56', '남태환', TO_DATE('1992/11/12','YYYY/MM/DD'), '대전', 'mgfnhdb4@naver.com', '010-1110-2000', 362, '골드', 130);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('btiepq2', 'rilyfkjg3', '안진서', TO_DATE('1991/11/23','YYYY/MM/DD'), '세종', '13wtrdh@naver.com', '010-1100-2000', 411, '골드', 150);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('btkeoap', 'mjtdfnhs23', '황윤서', TO_DATE('1990/05/15','YYYY/MM/DD'), '강원도', '2q3wetsgr@naver.com', '010-1000-2000', 368, '골드', 150);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('kfspae12', 'k6eutjnh89', '강인호', TO_DATE('1989/06/06','YYYY/MM/DD'), '대구', '13qtwgrsh@naver.com', '010-0000-2000', 33, '실버', 30);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('fke33opa', 'ymjdsfnhbg3', '황이수', TO_DATE('1988/10/27','YYYY/MM/DD'), '서울', '9o68itujy@naver.com', '010-1110-0000', 490, '골드', 240);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('vfisa12', 'jdmgfnbgd2', '곽윤헌', TO_DATE('1987/11/23','YYYY/MM/DD'), '서울', '46wtrsg@naver.com', '010-1100-0000', 267,'실버', 120);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('1jikj2', 'qtwsrd5t5', '김원일', TO_DATE('1986/11/22','YYYY/MM/DD'), '충청남도', 'dcftgy53y@naver.com', '010-1000-0000', 339,'골드', 130);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('75ubv4', '324teyth', '이유진', TO_DATE('2001/11/12','YYYY/MM/DD'), '경상남도', 'buh084t2@naver.com', '010-0000-0000', 176,'실버', 60);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('6b6k55', '35yetsfs', '이윤재', TO_DATE('2002/11/23','YYYY/MM/DD'), '서울', '75urywr@naver.com', '010-1111-2223', 88, '실버', 20);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('vjh66nn', '86iu7tyrhg', '이원준', TO_DATE('2003/11/02','YYYY/MM/DD'), '전라북도', '24ywh@naver.com', '010-1111-2233', 84, '실버', 50);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('mkl54', '96i8u5jrhy', '나영재', TO_DATE('2004/11/27','YYYY/MM/DD'), '광주', '8i57urjy@naver.com', '010-1111-2333', 372, '골드', 100);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('azseg3', '13qtwrsghd', '이찬혁', TO_DATE('2005/11/02','YYYY/MM/DD'), '경상북도', '13tqgwers@naver.com', '010-1111-3333', 356, '골드', 170);
INSERT INTO normal_user(user_id, user_pw, name, birth_date, area, email, phone, point, grade, walk_dis) VALUES('34vvf3f', 'avsfgeht4u', '박슬기', TO_DATE('1989/01/12','YYYY/MM/DD'), '충청남도', '86i5rjywg@naver.com', '010-1112-3333', 431, '골드', 200);
commit;

rem 탈퇴회원 테이블 생성

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
    CONSTRAINT area_check2 CHECK (area IN ('서울', '대전', '대구', '부산', '울산', '광주', '세종', '강원도', '경기도', '충청남도',
                                          '충청북도', '경상남도', '경상북도', '전라남도', '전라북도', '제주도')),

    CONSTRAINT grade_check2 CHECK (grade IN ('실버', '골드'))
);

rem 기업회원 테이블 생성

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

rem 기업회원 초기 데이터 삽입

INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('te3hte53', 'nyrswmuy5', 'C:\Pictures\01.png', '주식회사한섬', '인사부', '서팔광', '010-1234-5678');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('lk836w5j', 'nyrsanz2', 'C:\Pictures\02.png', '엘리하우스', '회계부', '김덕협', '010-1235-6789');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('74qw2js', 'ymear5y2', 'C:\Pictures\03.png', '헤어매직', '기획부', '엄석용', '010-1236-7890');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('masrjzy', '6uq4j24q', 'C:\Pictures\04.png', '카피온', '기획부', '김인희', '010-1237-8901');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('ustmy53', 'j7iuw564', 'C:\Pictures\05.png', '안나이', '영업기획부', '강주덕', '010-1238-9012');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('64etg', 'ntfie90a4', 'C:\Pictures\06.png', '온슈', '총무부', '김일권', '010-1239-0123');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('o9685i', 'k864ke6', 'C:\Pictures\07.png', '플레이투샵', '인사부', '손지후', '010-1230-1234');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('15q3tea', 'o9478e36k', 'C:\Pictures\08.png', '레어마켓', '영업부', '임지훈', '010-1231-2345');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('968itu', 'o86k5juye', 'C:\Pictures\09.png', '아모제', '마케팅부', '김가은', '010-1232-3456');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('mju3y5', '8oi5ju4yr', 'C:\Pictures\10.png', '글로벌컴', '관리부', '김민준', '010-1233-4567');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('k5t3sh', 'i5jyegsb', 'C:\Pictures\11.png', 'AESSO', '인사부', '최예준', '010-1245-6789');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('sgqgr5', 'itj3engn', 'C:\Pictures\12.png', 'Marseille', '마케팅부', '박윤서', '010-1246-7890');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('13ef6', 'bsf98sss', 'C:\Pictures\13.png', 'Bultoy', '사업기획부', '이효리', '010-1247-8901');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('bf2w5qr', 'yrnj9g9dgt', 'C:\Pictures\14.png', '유한회사', '경영지원부', '박서현', '010-1248-9012');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('tw65w', 'ht9hs9st9g', 'C:\Pictures\15.png', '씨이씨', '영업총괄부', '최수빈', '010-1249-0123');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('avdv5', 'bfai90sfsf', 'C:\Pictures\16.png', '한가람', '회계부', '장동건', '010-1240-1234');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('42t8942', 'bgi9et0me', 'C:\Pictures\17.png', '알테아', '경영지원부', '김준서', '010-1241-2345');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('fva23g', 'bnfusg0bfr9', 'C:\Pictures\18.png', '엑스쿨', '사업기획부', '민지우', '010-1242-3456');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('uk65utk', 'bwru90bau', 'C:\Pictures\19.png', '마리안느', '마케팅부', '최건우', '010-1243-4567');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('sru56r', 'rtn3j14otnj', 'C:\Pictures\20.png', '대상유통', '문화부', '박지수', '010-1244-5678');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('wi3t6k', 'bif9btwjisio4', 'C:\Pictures\21.png', 'amiedeco', '예술교육부', '박수인', '010-1237-5566');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('w56q', 'btjuw90b', 'C:\Pictures\22.png', '삐빠삭스', '경영기획부', '최윤채', '010-4569-1563');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('mu5w23', 'g4i2org2i0', 'C:\Pictures\23.png', '노블러스', '창작부', '김시은', '010-5614-6456');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('mu556w', 'brtj01ut25', 'C:\Pictures\24.png', '메이비윤', '총무부', '김재운', '010-1591-6167');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('gsf23', 'bt920uy905', 'C:\Pictures\25.png', '제이엠넷', '인사부', '이현준', '010-1231-2312');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('u42mnut', '365buj5902u', 'C:\Pictures\26.png', '에듀플라자', '경영부', '김시훈', '010-4891-3153');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('mth13s', 'bt44u920h', 'C:\Pictures\27.png', '조야스', '문화예술부', '박일현', '010-4894-8946');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('hss9m6', 'bn353533h3', 'C:\Pictures\28.png', '미스우', '창업부', '신명기', '010-4894-5862');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('6nh4123', 'ug402u9gr', 'C:\Pictures\29.png', '아이원클릭', '기획부', '지태훈', '010-4864-6461');
INSERT INTO company_user(user_id, user_pw, logo, com_name, dept, mgr_name, phone) VALUES('gd12ewe', 'g4i9120tug', 'C:\Pictures\30.png', '아이온', '공간지원부', '손예은', '010-8946-5132');
commit;

rem 물품코드 테이블 생성

CREATE TABLE product_code (
    code        CHAR(1),
    kinds       CHAR(15) NOT NULL,
    CONSTRAINT product_code_PK PRIMARY KEY (code),
    CONSTRAINT code_check CHECK (code BETWEEN 1 AND 7)

);

rem 물품코드 초기 데이터 삽입

INSERT INTO product_code(code, kinds) VALUES('1', '신발');
INSERT INTO product_code(code, kinds) VALUES('2', '모자');
INSERT INTO product_code(code, kinds) VALUES('3', '상의');
INSERT INTO product_code(code, kinds) VALUES('4', '하의');
INSERT INTO product_code(code, kinds) VALUES('5', '장갑');
INSERT INTO product_code(code, kinds) VALUES('6', '등산스틱');
INSERT INTO product_code(code, kinds) VALUES('7', '기타');
commit;

rem 걷기모임 테이블 생성

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

rem 걷기모임 초기 데이터 삽입

INSERT INTO walk_meet VALUES('10001', '제주도 올래길에서 만나요', '올레길 매표소', 10, 50, '11시30분', '18시30분', TO_DATE('2019/01/22','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10002', '해안누리길 새천년로에서 힐링', '누리길 입구표지판', 30, 150, '9시30분', '15시00분', TO_DATE('2019/1/25','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10003', '계족산 황톳길로 걷기여행갑니다', '계족산 등산로입구', 50, 250, '15시30분', '17시10분', TO_DATE('2019/01/26','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10004', '내포문화숲길 원효깨달음길 8코스에서 걸어봅시다', '8코스 앞 버스정류장', 10, 50, '13시30분', '15시10분', TO_DATE('2019/03/27','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10005', '새만금 광역탐방로 끝까지 걷기', '만경읍사무소', 10, 300, '12시30분', '14시20분', TO_DATE('2019/04/28','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10006', '금강소나무숲길 5코스 걷기합니다 많이 신청해주세요', '울진 터미널', 70, 250, '11시30분', '13시40분', TO_DATE('2019/05/2','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10007', '바우길 1코스 선자령 풍차길 같이 걸어봐요', '대관령마을휴게소', 50, 500, '9시00분', '11시30분', TO_DATE('2019/06/5','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10008', '원주굽이길 3코스 회촌달맞이길 같이 걸어요', '원주터미널', 10, 100, '10시30분', '13시10분', TO_DATE('2019/07/10','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10009', '해파랑길 2코스 출발합니다', '송정해변 안내표지판 앞', 80, 200, '19시30분', '21시20분', TO_DATE('2019/08/13','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10010', '강동그린웨이 걷기대회 코스 같이걸어요', '강동그린빌딩 1층', 10, 800, '10시20분', '11시30분', TO_DATE('2019/10/26','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10011', '관악산둘레길(관악구) 오실분들 미리 문자주세요', '낙성대입구역 1번출구', 20, 50, '15시30분', '17시10분', TO_DATE('2019/11/29','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10012', '경기옛길 평해길 3구간 정약용길 생수와 뒤풀이비용 준비', '농업기술센터', 40, 600, '16시20분', '17시40분', TO_DATE('2020/01/15','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10013', '이순신 백의종군길 전남구간 1코스 끝나고 수산물 시장에 맛집에서 뒷풀이 합니다', '전남터미널', 5, 50, '18시20분', '19시20분', TO_DATE('2020/02/21','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10014', '원주굽이길 원7코스 반계리은행나무길 동서울터미널에서 버스타고 갑니다', '동서울터미널', 10, 30, '9시50분', '10시30분', TO_DATE('2020/02/27','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10015', '강화나들길 1코스 심도역사문화길 근처 식당에서 같이 식사하고 헤어집니다', '문화길 은행나무 앞', 5, 20, '16시30분', '17시00분', TO_DATE('2020/03/3','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10016', '바우길 1코스 선자령 풍차길 참석여부 댓글로 달아주시구요', '풍차박물관 입구', 10, 50, '12시30분', '13시30분', TO_DATE('2020/03/14','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10017', '내포문화숲길 원효깨달음길 8코스 제휴대폰으로 닉네임과 같이 보내주세요', '원효역 2번출구', 20, 150, '13시30분', '14시40분', TO_DATE('2020/03/20','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10018', '제주도 올래길 같이 걸으실분들은 같이 걸어요', '제주도 공항', 10, 300, '12시30분', '18시50분', TO_DATE('2020/04/9','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10019', '해파랑길 2코스 제시간 지켜주세요', '부산터미널', 30, 150, '11시00분', '21시30분', TO_DATE('2020/04/15','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10020', '계족산 황톳길 10시30분에 바로 출발합니다', '황톳길 입구 편의점 앞', 5, 20, '10시30분', '12시10분', TO_DATE('2020/04/24','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10021', '새만금 광역탐방로 유명한 식당에서 뒷풀이 합니다', '새만금역 4번출구', 4, 30, '11시30분', '15시20분', TO_DATE('2020/04/29','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10022', '원주굽이길 3코스 회촌달맞이길 초보자도 걷기 쉬운 곳이에요', '원주터미널', 1, 10, '7시30분', ' 9시50분', TO_DATE('2020/05/5','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10023', '바우길 1코스 선자령 풍차길 많이 신청해주세요', '바우길 버스정류장', 2, 5, '10시30분', '17시20분', TO_DATE('2020/05/7','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10024', '제주올레길 8코스 경치가 너무 좋아요', '대포포구', 8, 10, '11시10분', '12시10분', TO_DATE('2020/05/8','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10025', '새만금 광역탐방로 참석하실분들 댓글 남겨주시고 문자보내주세요', '새만금기념관 입구', 20, 150, '13시10분', '14시50분', TO_DATE('2020/05/16','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10026', '계족산 황톳길 비상금 생수 필참', '계족산 등산로 입구', 30, 150, '15시30분', '19시30분', TO_DATE('2020/05/22','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10027', '금강소나무숲길 5코스 건강해집시다', '금강산 가장 큰 소나무 앞', 50, 230, '13시10분', '15시10분', TO_DATE('2020/06/4','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10028', '경기옛길 평해길 3구간 정약용길 너무도 좋은 길이랍니다', '다산정약용 정류장 앞', 77, 777, '14시30분', '20시10분', TO_DATE('2020/06/11','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10029', '이순신 백의종군길 전남구간 1코스 사연이 깊은 길이에요', '전남대학교 입구', 35, 150, '10시30분', '19시20분', TO_DATE('2020/07/1','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10030', '제주올레길 8코스 좋은공기를 마셔가며 걸을 수 있는 길이랍니다', '대평포구 ', 10, 55, '19시20분', '20시50분', TO_DATE('2020/09/16','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10031', '새만금 광역탐방로 간식 우비 뒤풀이비용 지참', '새만금정류장', 10, 50, '10시10분', '12시10분', TO_DATE('2020/10/1','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10032', '강동그린웨이 걷기대회 코스 참석하실분 휴대폰으로 문자 미리주시고요', '동서울터미널', 80, 280, '8시30분', '15시40분', TO_DATE('2020/11/23','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10033', '관악산둘레길(관악구) 걸으면 서울대 갈 수 있어요', '서울대입구', 20, 350, '12시50분', '14시10분', TO_DATE('2021/02/27','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10034', '바우길 1코스 선자령 풍차길 중간에 허기채울 간단한 간식 준비해주세요', '바우길 1코스 매표소', 50, 600, '13시20분', '16시30분', TO_DATE('2021/03/25','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10035', '제주올레길 8코스 개인생수와 뒤풀이비용 챙겨오세요', '올래길 매표소', 30, 500, '15시40분', '17시20분', TO_DATE('2021/04/5','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10036', '경기옛길 평해길 3구간 정약용길 걷기편한복장입고 만나요', '사릉관리소 앞', 50, 550, '12시00분', '14시20분', TO_DATE('2021/04/16','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10037', '관악산둘레길(관악구) 끝나고 서울대 갈 겁니다', '낙성대입구', 10, 400, '19시00분', '22시30분', TO_DATE('2021/04/21','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10038', '금강소나무숲길 5코스 우천시 우비 준비해주세요', '5코스 매표소 앞', 20, 50, '18시15분', '20시00분', TO_DATE('2021/05/14','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10039', '새만금 광역탐방로 같이 걸어봐요', '새만금 유적지 입구', 30, 100, '6시20분', '11시30분', TO_DATE('2021/05/22','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10040', '계족산 황톳길 힘차게 걸어봅니다', '계족산 앞 편의점', 20, 200, '12시10분', '13시50분', TO_DATE('2021/06/01','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10041', '경기옛길 평해길 3구간 정약용길 참석하실분들 문자 보내주세요', '순흥삼거리', 50, 500, '8시40분', '10시30분', TO_DATE('2021/06/03','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10042', '강동그린웨이 걷기대회 코스 걷기하시고 오래사세요', '올림픽공원역', 30, 150, '16시40분', '12시40분', TO_DATE('2021/06/10','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10043', '바우길 1코스 선자령 풍차길 회비 천원 입장료 4천원 지참', '정동진', 5, 10, '9시10분', '14시10분', TO_DATE('2021/06/23','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10044', '금강소나무숲길 5코스 식사는 근처 식당에서 뒤풀이겸 합니다', '금강오토캠핑장 앞', 30, 150, '13시30분', '18시00분', TO_DATE('2021/06/25','YYYY/MM/DD'));
INSERT INTO walk_meet VALUES('10045', '계족산 황톳길 현장도착하면 저한테 전화해서 아는체 해주세요', '계족산 매점', 80, 350, '12시50분', '14시20분', TO_DATE('2021/07/10','YYYY/MM/DD'));
commit;

rem 걷기코스 테이블 생성

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

rem 걷기코스 초기 데이터 삽입 

INSERT INTO walk_course VALUES('00001','해안누리길 새천년로','동해 먼 바다에서 이곳을 바라보면 긴 장대처럼 보인다고 해서 붙여진 지명의 간절곶은 해돋이 명소로 사람들이 많이 찾는 장소입니다.','http://kko.to/LWL6QrkYM','바다를 따라 걷는 코스','울산 울주군',5.3,4.8,'약 2시간','http://kko.to/LWL6QrkYN');
INSERT INTO walk_course VALUES('00002','계족산 황톳길','잘 가꾸어진 나무숲속을 맨발로 걸을 수 있는 에코힐링길','http://kko.to/paV2RrkD0','푸르른 숲에서 힐링하는 코스','대전 대덕구',14.5,3.3,'약 4시간','http://kko.to/paV2RrkD2');
INSERT INTO walk_course VALUES('00003','내포문화숲길 원효깨달음길 8코스','역천과 검안천변을 따라 걷다가 수당리 마을길을 지나 안국사지에 이르는 구간', 'http://kko.to/VmtpmrCDB','편안히 걸을 수 있는 코스','충남 당진시',5.6,4,'약 1시간 20분','http://kko.to/VmtpmrCDC');
INSERT INTO walk_course VALUES('00004','새만금 광역탐방로','만경읍 화포리 340-85 (만경낙조 전망대)에서 진봉면 고사리 진봉1길 13 진봉면사무소까지 6.5km 거리로 2시간 정도 소요되는 완만한 코스','http://kko.to/_OZay9CDB','갈대숲을 끼고 걷는 코스','전북 김제시',6.5,4.8,'약 2시간','http://kko.to/_OZay9CDP');
INSERT INTO walk_course VALUES('00005','제주올레길 8코스','주상절리와 흐드러진 억새가 일품인 열리 해안길을 지나며 7코스와 더불어 많은 올레꾼들의 사랑을 받는 코스','http://kko.to/Ep1SmrCYH','바닷가를 따라 걷는 고즈넉한 코스','제주 서귀포시',19.6,3.7,'약 6시간','http://kko.to/Ep1SmrCYN');
INSERT INTO walk_course VALUES('00006','금강소나무숲길 5코스','울진 북면 두천2리에서 호젓한 금강소나무숲과 고개를 넘어 원점으로 돌아오는 코스','http://kko.to/jyYbm9kDo','소나무를 따라 걷는 코스','경북 울진군',15.3,3.1,'약 7시간','http://kko.to/jyYbm9kD3');
INSERT INTO walk_course VALUES('00007','바우길 1코스 선자령 풍차길','대관령마을휴게소에서 시작해 선자령, 동치전망대까지 따라 걷는 둘레길','http://kko.to/WxiXm9kYp','산림욕을 즐길 수 있는 코스','강원 강릉시',12,4.8,'약 4시간 30분','http://kko.to/WxiXm9kYK');
INSERT INTO walk_course VALUES('00008','원주굽이길 3코스 회촌달맞이길','회촌달맞이길은 회촌마을, 토지문화관, 연세대 원주캠퍼스, 매지저수지를 품고 도는 인문학적 사색의 길','http://kko.to/hcU6m9kYT','볼거리가 풍성한 코스','강원 원주시',16.2,3,'약 5시간','http://kko.to/hcU6m9kYK');
INSERT INTO walk_course VALUES('00009','해파랑길 2코스','해운대의 삼포라 불리는 미포, 청사포, 구덕포를 거쳐 송정해변과 해동용궁사를 지나 대변항에 이르는 코스','http://kko.to/W8VpCrCD0','숲길과 해안길을 함께 걸을 수 있는 코스','부산 해운대구',13.2,4.7,'약 4시간','http://kko.to/W8VpCrCD3');
INSERT INTO walk_course VALUES('00010','강동그린웨이 걷기대회 코스','강동그린웨이 걷기대회 코스로 일자산 잔디광장을 출발해서 해맞이 광장과 허브천문공원과 피크닉장을 경유하여 다시 잔디광장으로 돌아오는 코스','http://kko.to/PL8Pk9CDo','도심 속 걷기코스','서울 강동구',3.5,2.7,'약 1시간 30분','http://kko.to/PL8Pk9CDK');
INSERT INTO walk_course VALUES('00011','관악산둘레길(관악구)','관악산을 둘러싼 평탄한 숲길을 걸으면서 자연과 문화, 역사를 건강하게 즐길 수 있도록 조성된 길','http://kko.to/O--sCrCYT','서울시내 조망을 즐길 수 있는 코스','서울 관악구',15.1,4.4,'약 6시간','http://kko.to/O--sCrCYJ');
INSERT INTO walk_course VALUES('00012','경기옛길 평해길 3구간 정약용길','팔당댐을 시작으로 실학박물관, 다산생태공원, 능내리를 지나 운길산역으로 이어지는 구간','http://kko.to/jFouC9kYj','정약용의 고향을 지나는 코스','경기 남양주시',12.9,3.2,'약 4시간','http://kko.to/jFouC9kYS');
INSERT INTO walk_course VALUES('00013','이순신 백의종군길 전남구간 1코스','지리산유스텔을 출발하여 앞밤재를 넘어 산동면사무소를 지나 구례구역에 도착하는 코스','http://kko.to/b_VeC9CYM','섬진강 근처 코스','전남 구례군',37,3,'약 10시간','http://kko.to/b_VeC9CYS');
INSERT INTO walk_course VALUES('00014','원주굽이길 원7코스 반계리은행나무길','문막교 밑 둔치를 출발해 섬강경치에 취해 걷다가 버들골과 취병마을길을 거치면 천연기념물로서 우리나라에서 제일 굵은 반계리은행나무에 이르는 코스','http://kko.to/62OCCrCDp','다양한 체험을 즐길 수 있는 코스','강원 원주시',11,3.5,'약 3시간','http://kko.to/62OCCrCDE');
INSERT INTO walk_course VALUES('00015','강화나들길 1코스 심도역사문화길','강화버스터미널을 시작으로 용흥궁, 연미정를 지나 갑곶돈대로 향하는 구간','http://kko.to/7RVaBnkYp','유적지가 있는 코스','인천 강화군',18,4.5,'약 6시간','http://kko.to/7RVaBnkY1');
commit;

rem 추천계절 테이블 생성

CREATE TABLE recommend_season (
    crs_num     CHAR(5),
    crs_season  CHAR(4),
    CONSTRAINT recommend_season_PK PRIMARY KEY (crs_num, crs_season),
    CONSTRAINT season_check CHECK (crs_season IN ('봄', '여름', '가을', '겨울')),
    CONSTRAINT crs_num_FK FOREIGN KEY (crs_num)
            REFERENCES walk_course(crs_num)
            ON DELETE CASCADE
);

rem 추천계절 초기 데이터 삽입

INSERT INTO recommend_season(crs_num, crs_season) VALUES('00001', '봄');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00002', '가을');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00003', '봄');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00004', '겨울');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00005', '가을');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00006', '여름');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00007', '여름');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00008', '가을');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00009', '봄');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00010', '가을');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00011', '겨울');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00012', '봄');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00013', '가을');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00014', '여름');
INSERT INTO recommend_season(crs_num, crs_season) VALUES('00015', '겨울');
commit;

rem 화장실위치 테이블 생성

CREATE TABLE toilet_location (
    crs_num     CHAR(5),
    location    VARCHAR2(100),
    CONSTRAINT toilet_location_PK PRIMARY KEY (crs_num, location),
    CONSTRAINT crs_num_FK2 FOREIGN KEY (crs_num)
            REFERENCES walk_course(crs_num)
            ON DELETE CASCADE
);

rem 화장실위치 초기 데이터 삽입
 
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

rem 게시글 테이블 생성

CREATE TABLE post (
    post_num    CHAR(8),
    title       VARCHAR2(50) NOT NULL,
    category    CHAR(10) NOT NULL,
    date_time   DATE DEFAULT SYSDATE,
    content     VARCHAR2(1000) NOT NULL,
    views       NUMBER(7) DEFAULT 0,
    comments    NUMBER(4) DEFAULT 0,
    CONSTRAINT post_PK PRIMARY KEY (post_num),
    CONSTRAINT category_check CHECK (category IN ('공지사항', '자유게시판'))
);

rem 게시글 초기 데이터 삽입

INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000001', '첫 게시글', '자유게시판', '제가 첫 게시글을 쓰게 됐네요 다들 좋은 하루 되세요~!', '50', '8' );
INSERT INTO post(post_num, title, category, content) VALUES('00000002', '경기도의 맛집추천해요', '자유게시판', '가평 쪽에 맛집 되게 많은데 참고하세요~');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000003', '안녕하세요', '자유게시판', '다들 잘 부탁드립니다.', '12', '3' );
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000004', '삶이란 무엇일까?', '자유게시판', '삶이란 무엇일까? 라는 책을 발간했습니다. 걸음을 통해서 얻은 경험을 토대로 만든 책입니다. 다들 읽어주시면 감사하겠습니다.', '21', '5' );
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000005', '학교 종강 날짜', '자유게시판', '저는 6월 중순정도 될거같은데 다들 언제쯤 종강하시나요?', '7', '1' );
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000006', '러닝화 브랜드추천', '자유게시판', '다들 아시는 러닝화 추천좀 해주세요. 신발이 다 닳아서 하나 사야겠더라구요', '9', '2' );
INSERT INTO post(post_num, title, category, content) VALUES('00000007', '6월은 걷기 좋은날', '자유게시판', '날씨가 바람도 선선하니 걷기 좋은 날씨네요~');
INSERT INTO post(post_num, title, category, content) VALUES('00000008', '공부하기 싫은날', '자유게시판', '오늘따라 공부가 너무 하기 싫네요 ㅠㅠ 어떻게 해야할까요');
INSERT INTO post(post_num, title, category, content) VALUES('00000009', '기말공부 격려', '자유게시판', '다들 기말공부하느라 힘드시죠 다들 화이팅입니다~!');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000010', '오늘의 기분', '자유게시판', '오늘따라 축 처지는게 아무것도 하기 싫은 날이네요', '15', '5' );
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000011', '하루 커피', '자유게시판', '하루에 커피 4~5잔 정도 마시는데 너무 많이 마시는것같아요 다들 얼마나 마시나요?', '3', '1' );
INSERT INTO post(post_num, title, category, content) VALUES('00000012', '근육통', '자유게시판', '너무 많이 걸어서 종아리쪽이 아프네요 푸는법 아는 것 있으신가요?');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000013', '노트북', '자유게시판', '첫 노트북을 드디어 샀어요! 행복합니다', '19', '3' );
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000014', '팝송 노래 추천', '자유게시판', '요즘 엄청 빠진노래가 하나 있는데 john k의 parachute 추천합니다', '5', '2' );
INSERT INTO post(post_num, title, category, content) VALUES('00000015', '6월의 걷기 코스 추천', '자유게시판', '제가 첫 게시글을 쓰게 됐네요 다들 좋은 하루 되세요~!');
INSERT INTO post(post_num, title, category, content) VALUES('00000016', '경기도 걷기 코스 추천', '자유게시판', '제가 첫 게시글을 쓰게 됐네요 다들 좋은 하루 되세요~!');
INSERT INTO post(post_num, title, category, content) VALUES('00000017', '고통과 인내의 시간', '자유게시판', '참 사람 일이란게 뜻대로 되지않는 것  같네요');
INSERT INTO post(post_num, title, category, content) VALUES('00000018', '다들 행복하세요', '자유게시판', '참 어렵고 힘든일들 많았지만 다 보상받는 날들이 올거에요 화이팅!');
INSERT INTO post(post_num, title, category, content) VALUES('00000019', '수작업 안경', '자유게시판', '제가 브랜드는 모르지만 수작업으로 만든 안경 써보니 진짜 편하고 좋더라구요 강추!');
INSERT INTO post(post_num, title, category, content) VALUES('00000020', '몸 튼튼 마음 튼튼', '자유게시판', '몸이 튼튼하게 마음도 튼튼해지기 마련입니다. 건강 다들 챙기세요 ');
INSERT INTO post(post_num, title, category, content) VALUES('00000021', '다들 잘 지내셨읍니까', '자유게시판', '날씨는 참맑고.... 바람은 선선하니 참 걷기 좋은 날씨더군요.. 좋은하루되세요..');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000022', '[주식회사한섬] 자원봉사자 모집합니다.', '자유게시판', '양식은 이와 같습니다. 양식 참고하세요.', '20', '3');
INSERT INTO post(post_num, title, category, content) VALUES('00000023', '[엘리하우스] 자원봉사자 모집합니다.', '자유게시판', '양식은 이와 같습니다.');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000024', '[헤어매직] 걷기 용품 아이디어 경진대회', '자유게시판', '걷기용품 아이디어 경진대회를 개최합니다. 양식은 보시는바와 같습니다.', '4', '2');
INSERT INTO post(post_num, title, category, content) VALUES('00000025', '[카피온] 자원봉사자 모집합니다.', '자유게시판', '양식은 이와 같습니다. 양식 참고하세요.');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000026', '[안나이] 의류 세일 up to 30~ ', '자유게시판', '6월 10일~ 7월 3일까지 의류 세일 진행합니다.', '31', '2');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000027', '[온슈] 음료 시음회', '자유게시판', '2021년 7월 1일 브랜드 온슈의 음료 시음회가 개최됩니다. 많은 참여 부탁드립니다.', '3', '1');
INSERT INTO post(post_num, title, category, content) VALUES('00000028', '[플레이투샵] 플래그십 편집샵 오픈', '자유게시판', '서울 지역 플래그십 편집샵을 오픈했습니다. 주로 명품을 취급합니다.');
INSERT INTO post(post_num, title, category, content) VALUES('00000029', '[레어마켓] 골동품 매입', '자유게시판', '희귀 골동품 감정 후 매입합니다.');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000030', '[아모제] 자신의 퍼스널컬러를 찾아라! ', '자유게시판', '6월 25일 서울 청담동지역 아모제 매장에서 퍼스널컬러 진단 행사를 시작합니다.', '61', '4');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000031', '[글로벌컴] 글로벌한 인재 모집', '자유게시판', '하반기 신입사원 공채 모집합니다.', '7', '1');
INSERT INTO post(post_num, title, category, content) VALUES('00000032', '[AESSO] 화장품 증정 이벤트', '자유게시판', '걷기모임 참여시, 무료로 화장품을 증정해드립니다. 해당 아이디로 인증사진, 주소 첨부해 주시길 바랍니다.');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000033', '[Marseille] 파리 여행을 무료로!', '자유게시판', '걷기모임 참여후 인증을 하면 무작위 3분에게 프랑스 왕복 티켓을 드립니다!', '72', '3');
INSERT INTO post(post_num, title, category, content) VALUES('00000034', '[Bultoy] 장난감 아이디어 대회', '자유게시판', '5세~8세를 위한 장난감 아이디어 대회가 개최됩니다.');
INSERT INTO post(post_num, title, category, content) VALUES('00000035', '[유한회사] 공채 모집', '자유게시판', '말그대로 성격이 유한 사람을 모집합니다.');
INSERT INTO post(post_num, title, category, content) VALUES('00000036', '[씨이씨] 걷기 웹사이트와의 제휴', '자유게시판', '저희 씨이씨는 자전거 회사로써 제휴를 체결하였습니다.');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000037', '[한가람] 판소리 공연', '자유게시판', '7월 20일 서울 종합경기장에서 판소리 공연을 합니다.', '11', '2');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000038', '[알테아] 백신 신청', '자유게시판', '저희의 독자적 백신인 알테아 백신을 접종받으실 사람을 모집합니다.', '2', '1');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000039', '[엑스쿨] 정기 공연', '자유게시판', '댄스팀 전문 양성 기획사 엑스쿨입니다. 6월 20일 서울지역에서 공연을 진행합니다.', '4', '2');
INSERT INTO post(post_num, title, category, content, views, comments) VALUES('00000040', '[마리안느] 의류 기부', '자유게시판', '저희 브랜드 마리안느는 걷기 모임을 개최하여 얻은 수익금을 의류 생산을 통해 전부 어려운 각 계층에게 기부하였습니다.', '7', '1');
INSERT INTO post(post_num, title, category, content) VALUES('00000041', '[대상유통] 식자재 유통', '자유게시판', '식자재 유통회사 대상유통은 댓글 이벤트 참여시 유저분들에게 과자 기프티콘을 선물해드리려고 합니다.');
commit;

rem 댓글 테이블 생성

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

rem 댓글 초기 데이터 삽입

INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000001', '첫 게시글 제가 쓸려고 했는데 아쉽네요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000001', '첫 게시글 축하드립니다!');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000001', '저는 두번째 게시글이라도 써야겠네요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c004', '00000001', '축하드려요~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c005', '00000001', '작성자님도 좋은 하루 되세요~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000003', '저도 잘부탁드려요~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000003', '안녕하세요!');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000003', '반갑습니다~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000004', '저는 이미 읽어봤어요!');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000004', '읽어봤는데 저자가 님이셨군요 좋은 책 잘 봤습니다.');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000004', '57p 5줄 부분에 말이 너무 인상 깊더군요 감사합니다.');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c004', '00000004', '한번 읽어보도록 할게요~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c005', '00000004', '재밌게 읽어 볼게요!');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000005', '저는 7월 초에 종강해요 ㅠㅠㅠ 부럽습니다');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000006', '저는 나이키 추천해요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000006', '저는 아디다스요!');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000010', '그럴 때일수록 화이팅 입니다!');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000010', '저도 오늘따라 그러네요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000010', '화이팅~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c004', '00000010', '다들 힘냅시다');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c005', '00000010', '오늘 날씨가 안좋아서 저도 덩달아 안좋아졌네요 ㅠㅠ');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000011', '저는 2잔정도 마십니다 2잔이 적당하다고 들었어요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000013', '축하드려요~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000013', '저도 최근에 삼성 노트북샀어요 좋더라구요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000013', '저는 무조건 애플! 애플이 너무좋아요~! 애플짱!');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000014', '저도 존케이 참 좋아합니다');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000014', '톡톡 튀는 팝송인 것 같아요~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c006', '00000001', '첫 게시글 작성자님께 상품증정해드리려고 합니다 주소 보내주세요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c007', '00000001', '축하드립니다');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c008', '00000001', '잘 부탁드립니다');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000022', '경영부서 직원분들 다 참여한다고하네요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000022', '좋은 취지 참여하겠습니다');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000022', '저희 회사와 협력하여 정기적으로 하시는것은 어떠신지요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000024', '저희 회사 직원들은 아이디어 하나는 뛰어나답니다');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000024', '포스터 회사 건물내에 기재해도 될까요?');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000026', '저희 직원들 옷사라고 해야겠어요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000026', '직원들에게 알려줘야겠어요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000027', '음료 시음회 꼭 가야겠어요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000030', '퍼스널컬러 찾는 행사라니 꼭 가야겠어요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000030', '서울이라니 ㅠㅠ 너무 머네요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000030', '근처네요 바로 가야겠어요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c004', '00000030', '회사내로 이벤트성으로 계약할 수 있을까요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000031', '확 이직해버릴까요~');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000033', '이건 회사 계정으로라도 참가해야겠어요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000033', '티켓은 제껍니다');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c003', '00000033', '아니죠 제가 당첨될거같은데요?');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000037', '저희 기업 방문하셔서 공연 가능하신가요?');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000037', '저희 미스우 기업에서 따로 연락드리도록 하겠습니다.');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000038', '저희 기업 먼저 가능할까요?');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000039', '저희 창립 40주년 축하공연 가능할까요?');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c002', '00000039', '공연보러 단체로 가야겠네요');
INSERT INTO post_comment(com_num, post_num, com_cont) VALUES('c001', '00000040', '저희 엘리하우스 기업또한 의류 기부에 동참하고싶은데 따로 연락주세요.');
commit;

rem 동호회 테이블 생성

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

rem 동호회 초기 데이터 삽입

INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('2', '꽃내음', '전라북도', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 15, 'sjryjsgt', TO_DATE('2009/01/22','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('3', '봄내음', '제주도', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 20, 'ethjeth', TO_DATE('2019/01/22','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('5', '길가온', '제주도', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 3, 'rtjhsi3', TO_DATE('2019/01/01','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('6', '그린나래', '광주', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 3, '46yrsth', TO_DATE('2019/01/01','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('7', '꽃가람', '충청남도', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 3, 'stmh57', TO_DATE('2018/01/01','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('8', '글길', '제주도', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 3, '5uk24', TO_DATE('2019/01/01','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('9', '가자', '경기도', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 3, '5thhrs', TO_DATE('2017/11/01','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('11', '가든', '전라남도', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 7, 'tgeraqo', TO_DATE('2010/01/22','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('12', '가장', '강원도', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 3, 'bkipetop', TO_DATE('2009/01/22','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('13', '갈', '대구', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 5, 'tejuire', TO_DATE('2010/01/12','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('14', '거울', '대전', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 5, 'btiepq2', TO_DATE('2019/05/12','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('15', '가람휘', '세종', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 12, 'btkeoap', TO_DATE('2015/07/16','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('16', '가림', '제주도', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 6, '1jikj2', TO_DATE('2018/10/30','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('17', '가온', '경상북도', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 50, 'mkl54', TO_DATE('2016/12/12','YYYY/MM/DD'));
INSERT INTO club(club_num, club_name, area, club_info, members, founder_id, found_date) VALUES('18', '가온해', '경상남도', '언제  몇시에 어디서 만남 늦을 시 지각비 있음', 70, 'azseg3', TO_DATE('2020/01/22','YYYY/MM/DD'));
commit;

rem QR코드 테이블 생성

CREATE TABLE qrcode (
    qr_id       CHAR(15),
    qr_map      VARCHAR2(100) NOT NULL,
    local_cur   NUMBER(7) NOT NULL,
    CONSTRAINT qrcode_PK PRIMARY KEY (qr_id)
);

rem QR코드 초기 데이터 삽입

INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_1','https://map.kakao.com/link/search/불국사', 150);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_2', 'https://map.kakao.com/link/search/한남오거리', 20);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_3', 'https://map.kakao.com/link/search/해밀3로', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_4', 'https://map.kakao.com/link/search/애월읍', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_5', 'https://map.kakao.com/link/search/광안리', 180);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_6', 'https://map.kakao.com/link/search/이성당', 90);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_7', 'https://map.kakao.com/link/search/성심당', 230);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_8', 'https://map.kakao.com/link/search/한라산', 500);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_9', 'https://map.kakao.com/link/search/사려니', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('A_10', 'https://map.kakao.com/link/search/성산공원', 60);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_1', 'https://map.kakao.com/link/search/남산타워', 220);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_2', 'https://map.kakao.com/link/search/세종호수공원', 40);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_3', 'https://map.kakao.com/link/search/오창호수공원', 120);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_4', 'https://map.kakao.com/link/search/북촌한옥마을', 60);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_5', 'https://map.kakao.com/link/search/익선동', 260);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_6', 'https://map.kakao.com/link/search/삼청기차박물관', 200);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_7', 'https://map.kakao.com/link/search/독립기념관', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_8', 'https://map.kakao.com/link/search/한국기술교육대학교', 10);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_9', 'https://map.kakao.com/link/search/유달경기장', 60);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('B_10', 'https://map.kakao.com/link/search/여수엑스포역', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_1', 'https://map.kakao.com/link/search/충주호', 150);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_2', 'https://map.kakao.com/link/search/경기도어린이박물관', 500);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_3', 'https://map.kakao.com/link/search/연화장', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_4', 'https://map.kakao.com/link/search/초막골생태공원', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_5', 'https://map.kakao.com/link/search/수리산도립공원', 100);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_6', 'https://map.kakao.com/link/search/지리산국립공원', 200);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_7', 'https://map.kakao.com/link/search/스타필드시티', 300);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_8', 'https://map.kakao.com/link/search/부천종합운동장', 500);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_9', 'https://map.kakao.com/link/search/대천해수욕장', 150);
INSERT INTO qrcode(qr_id, qr_map, local_cur) VALUES('C_10', 'https://map.kakao.com/link/search/망원시장', 200);
commit;

rem 지역화폐보유량 테이블 생성

CREATE TABLE local_amount (
    user_id     VARCHAR2(8),
    area        CHAR(8),
    amount      NUMBER(7) NOT NULL,
    CONSTRAINT local_amount_PK PRIMARY KEY (user_id, area),
    CONSTRAINT user_id_FK FOREIGN KEY (user_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE
);

rem 지역화폐보유량 초기 데이터 삽입

INSERT INTO local_amount(user_id, area, amount) VALUES('hrts423', '서울', 140);
INSERT INTO local_amount(user_id, area, amount) VALUES('hrts423', '제주도', 280);
INSERT INTO local_amount(user_id, area, amount) VALUES('sjryjsgt', '대전', 200);
INSERT INTO local_amount(user_id, area, amount) VALUES('sjryjsgt', '부산', 100);
INSERT INTO local_amount(user_id, area, amount) VALUES('ethjeth', '경상북도', 470);
INSERT INTO local_amount(user_id, area, amount) VALUES('srrssrw', '서울', 160);
INSERT INTO local_amount(user_id, area, amount) VALUES('srrssrw', '광주', 1130);
INSERT INTO local_amount(user_id, area, amount) VALUES('6sryeh', '대구', 270);
INSERT INTO local_amount(user_id, area, amount) VALUES('hrts423', '전라남도', 12200);
INSERT INTO local_amount(user_id, area, amount) VALUES('rtjhsi3', '전라남도', 2960);
INSERT INTO local_amount(user_id, area, amount) VALUES('rtjhsi3', '전라북도', 3210);
INSERT INTO local_amount(user_id, area, amount) VALUES('rtjhsi3', '제주도', 6420);
INSERT INTO local_amount(user_id, area, amount) VALUES('46yrsth', '세종', 70);
INSERT INTO local_amount(user_id, area, amount) VALUES('stmh57', '강원도', 1620);
INSERT INTO local_amount(user_id, area, amount) VALUES('stmh57', '제주도', 1470);
INSERT INTO local_amount(user_id, area, amount) VALUES('5uk24', '제주도', 6200);
INSERT INTO local_amount(user_id, area, amount) VALUES('5thhrs', '대구', 440);
INSERT INTO local_amount(user_id, area, amount) VALUES('5thhrs', '전라남도', 4240);
INSERT INTO local_amount(user_id, area, amount) VALUES('uupiyg', '부산', 1290);
INSERT INTO local_amount(user_id, area, amount) VALUES('uupiyg', '대전', 60);
INSERT INTO local_amount(user_id, area, amount) VALUES('uupiyg', '경기도', 1210);
INSERT INTO local_amount(user_id, area, amount) VALUES('xuxzz3', '부산', 230);
INSERT INTO local_amount(user_id, area, amount) VALUES('nyrww1', '경기도', 610);
INSERT INTO local_amount(user_id, area, amount) VALUES('tgeraqo', '전라남도', 4580);
INSERT INTO local_amount(user_id, area, amount) VALUES('tgeraqo', '제주도', 12510);
INSERT INTO local_amount(user_id, area, amount) VALUES('nyuw5452', '광주', 2240);
INSERT INTO local_amount(user_id, area, amount) VALUES('teb240', '충청남도', 260);
INSERT INTO local_amount(user_id, area, amount) VALUES('teb240', '충청북도', 480);
INSERT INTO local_amount(user_id, area, amount) VALUES('bkipetop', '제주도', 420);
INSERT INTO local_amount(user_id, area, amount) VALUES('bkipetop', '강원도', 2680);
INSERT INTO local_amount(user_id, area, amount) VALUES('tejuire', '서울', 330);
INSERT INTO local_amount(user_id, area, amount) VALUES('tejuire', '충청남도', 1330);
INSERT INTO local_amount(user_id, area, amount) VALUES('tejuire', '전라남도', 230);
INSERT INTO local_amount(user_id, area, amount) VALUES('tejuire', '경상남도', 3380);
INSERT INTO local_amount(user_id, area, amount) VALUES('tejuire', '제주도', 1880);
INSERT INTO local_amount(user_id, area, amount) VALUES('btiepq2', '대전', 210);
INSERT INTO local_amount(user_id, area, amount) VALUES('btiepq2', '경기도', 2210);
INSERT INTO local_amount(user_id, area, amount) VALUES('btiepq2', '강원도', 2110);
INSERT INTO local_amount(user_id, area, amount) VALUES('btkeoap', '대구', 100);
INSERT INTO local_amount(user_id, area, amount) VALUES('kfspae12', '서울', 230);
INSERT INTO local_amount(user_id, area, amount) VALUES('fke33opa', '부산', 990);
INSERT INTO local_amount(user_id, area, amount) VALUES('vfisa12', '경기도', 1520);
INSERT INTO local_amount(user_id, area, amount) VALUES('1jikj2', '제주도', 1100);
INSERT INTO local_amount(user_id, area, amount) VALUES('75ubv4', '전라남도' , 2650);
INSERT INTO local_amount(user_id, area, amount) VALUES('6b6k55', '제주도', 3210);
INSERT INTO local_amount(user_id, area, amount) VALUES('6b6k55', '전라남도', 310);
INSERT INTO local_amount(user_id, area, amount) VALUES('vjh66nn', '대전', 1120);
INSERT INTO local_amount(user_id, area, amount) VALUES('mkl54', '충청남도' ,4890);
INSERT INTO local_amount(user_id, area, amount) VALUES('azseg3', '전라남도', 1010);
INSERT INTO local_amount(user_id, area, amount) VALUES('azseg3', '제주도', 21100);
INSERT INTO local_amount(user_id, area, amount) VALUES('azseg3', '경기도', 180);
commit;

rem 물품 테이블 생성

CREATE TABLE product (
    prod_num    CHAR(6),
    code        CHAR(1) NOT NULL,
    prod_name   VARCHAR2(20) NOT NULL,
    price       NUMBER(8) NOT NULL,
    area        CHAR(8) NOT NULL,
    exp         VARCHAR2(100) NOT NULL,
    sell_state  CHAR(8) DEFAULT '판매중',
    seller_id   VARCHAR2(8) NOT NULL,

    CONSTRAINT product_PK PRIMARY KEY (prod_num),
    CONSTRAINT code_check2 CHECK (code BETWEEN 1 AND 7),
    CONSTRAINT area_check3 CHECK (area IN ('서울', '대전', '대구', '부산', '울산', '광주', '세종', '강원도', '경기도', '충청남도',
                                          '충청북도', '경상남도', '경상북도', '전라남도', '전라북도', '제주도')),
    CONSTRAINT sell_state_check CHECK (sell_state IN ('판매중', '판매완료')),
    CONSTRAINT code_FK FOREIGN KEY (code)
            REFERENCES product_code(code)
            ON DELETE CASCADE,
    CONSTRAINT seller_id_FK FOREIGN KEY (seller_id)
            REFERENCES normal_user(user_id)
            ON DELETE CASCADE
);

rem 물품 초기데이터 삽입

INSERT INTO product VALUES('000001','1','k2 등산화',30000,'대전','실착 몇 번 안 되는 운동화입니다. 세탁 완료했습니다. 둔산동에서 거래합니다~','판매완료','hrts423');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000002','2','블랙야크 모자',35000,'대구','선물받고 한 번도 안 쓴 모자입니다 ㅎ 정품 택 있습니다~ 쪽지주세요','ethjeth');
INSERT INTO product VALUES('000003','2','깔끔한 모자',10000,'대구','깔끔한 파란색 모자입니다. 챙 넓어서 햇빛 잘 가립니다. 싸게 내놔요.','판매완료','ethjeth');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000004','3','노스페이스 반팔',20000,'세종','바람이 잘 통하는 소재의 반팔티입니다. 쪽지주세요.','rtjhsi3');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000005','5','멋드러운 등산장갑',20000,'전라남도','디자인이 예쁜 등산장갑입니다. 고무부분 잘 붙어있습니다. 연락주세요','5thhrs');
INSERT INTO product VALUES('000006','6','튼튼한 스틱',100000,'전라남도','튼튼한 스틱입니다. 사진을 보시면 사용흔적 많이 없습니다. 상태 좋아요~','판매완료','5thhrs');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000007','7','텀블러',10000,'전라남도','등산 시에 들고다니면 좋을 스테인레스 텀블러입니다. 싸게내놓아요.','5thhrs');
INSERT INTO product VALUES('000008','1','등산화',40000,'경상북도','한 번 착용한 신발입니다. 저랑은 사이즈가 잘 안 맞아서 내놔요~ 280입니다.','판매완료','nyuw5452');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000009','1','발이 편한 러닝화',60000,'부산','발이 편한 러닝화입니다. 지인 선물로 샀는데 이미 샀다고하네요 ㅎ 싸게 내놓아요~','tgeraqo');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000010','2','모자',20000,'강원도','상태 좋은 모자입니다~ 쪽지주세요','btkeoap');
INSERT INTO product VALUES('000011','2','매쉬 모자',10000,'강원도','모자 싸게 내놓아요 쪽지주세요.','판매완료','btkeoap');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000012','6','노스페이스 스틱',70000,'전라북도','노스페이스 등산스틱 팝니다. 상태 좋아요','vjh66nn');
INSERT INTO product VALUES('000013','6','등산스틱',40000,'대전','등산스틱 팔아요. 디자인과 색상 모두 우수한 제품입니다 ㅎㅎ 쪽지주세요','판매완료','tejuire');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000014','3','기능성 반팔',20000,'세종','사놓고 한 번도 안 입은 기능성티 입니다.','btiepq2');
INSERT INTO product VALUES('000015','3','k2 반팔',30000,'서울','오염 없는 반팔티입니다. 쪽지주세요. ','판매완료','fke33opa');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000016','1','나이키 러닝화',50000,'광주','나이키 정품 러닝화입니다. 영수증 인증 했습니다. ㅎ 쪽지주세요','teb240');
INSERT INTO product VALUES('000017','5','k2 장갑',5000,'충청북도','k2에서 산 장갑입니다. 사용 흔적 많아서 싸게 내놔요~','판매완료','bkipetop');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000018','6','새상품 스틱',50000,'경상북도','사용하지 않은 스틱입니다. 영주 시내 롯데리아 근처에서 거래해요~','nyuw5452');
INSERT INTO product (prod_num,code,prod_name,price,area,exp,seller_id) VALUES('000019','7','나이키 힙색',20000,'서울','나이키 힙색 팔아요. 쪽지주세요.','sjryjsgt');
INSERT INTO product VALUES('000020','4','나이키 바지',30000,'세종','러닝 시에 편한 바지입니다. 쪽지주세요.','판매완료','rtjhsi3');
INSERT INTO product VALUES('000021','4','k2 등산바지',20000,'제주도','소재가 좋은 바지입니다. 쪽지주세요!','판매완료','uupiyg');
commit;

rem 사진 테이블 생성

CREATE TABLE picture (
    prod_num    CHAR(6),
    prod_pic    VARCHAR2(100),
    CONSTRAINT picture_PK PRIMARY KEY (prod_num, prod_pic),
    CONSTRAINT prod_num_FK FOREIGN KEY (prod_num)
            REFERENCES product(prod_num)
            ON DELETE CASCADE
);

rem 사진 초기 데이터 삽입
 
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

rem 참여하다 테이블 생성

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

rem 참여하다 초기 데이터 삽입

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

rem 일반회원_개최하다 테이블 생성

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

rem 일반회원_개최하다 초기 데이터 삽입

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

rem 기업회원_개최하다 테이블 생성

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

rem 기업회원_개최하다 초기 데이터 삽입

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

rem 일반회원_게시글 작성하다 테이블 생성

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

rem 일반회원_게시글 작성하다 초기 데이터 삽입

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

rem 기업회원_게시글작성하다 테이블 생성

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

rem 기업회원_게시글작성하다 초기 데이터 삽입

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

rem 쪽지보내다_기업_기업 테이블 생성

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

rem 쪽지보내다_기업_기업 초기 데이터 삽입

INSERT INTO send_company_to_company VALUES('101', 'te3hte53', 'lk836w5j', SYSDATE, '안녕하세요');
INSERT INTO send_company_to_company VALUES('102', 'wi3t6k', 'lk836w5j', SYSDATE, '감사해요');
INSERT INTO send_company_to_company VALUES('103', 'masrjzy', 'wi3t6k', SYSDATE, '잘 있어요');
INSERT INTO send_company_to_company VALUES('104', 'ustmy53', 'masrjzy', SYSDATE, '다시 만나요');
INSERT INTO send_company_to_company VALUES('105', '64etg', 'ustmy53', SYSDATE, '안녕하세요');
INSERT INTO send_company_to_company VALUES('106', 'o9685i', '64etg', SYSDATE, '몇 시까지 에요');
INSERT INTO send_company_to_company VALUES('107', '15q3tea', 'o9685i', SYSDATE, '얼마에요');
INSERT INTO send_company_to_company VALUES('108', '968itu', '15q3tea', SYSDATE, '12시 30분 까지 오세요');
INSERT INTO send_company_to_company VALUES('109', 'mju3y5', '968itu', SYSDATE, '배고프다');
INSERT INTO send_company_to_company VALUES('110', 'k5t3sh', 'mju3y5', SYSDATE, '점심 뭐먹을까');
INSERT INTO send_company_to_company VALUES('111', 'sgqgr5', 'k5t3sh', SYSDATE, '몇 명 모였나요');
INSERT INTO send_company_to_company VALUES('112', '13ef6', 'sgqgr5', SYSDATE, '30명이요');
INSERT INTO send_company_to_company VALUES('113', 'bf2w5qr', '13ef6', SYSDATE, '계속하나요');
INSERT INTO send_company_to_company VALUES('114', 'tw65w', 'bf2w5qr', SYSDATE, '정말 많다');
INSERT INTO send_company_to_company VALUES('115', 'avdv5', 'tw65w', SYSDATE, '먼저 갈게요');
INSERT INTO send_company_to_company VALUES('116', '42t8942', 'avdv5', SYSDATE, '공원에서 뵈요');
INSERT INTO send_company_to_company VALUES('117', 'fva23g', '42t8942', SYSDATE, '잘 다녀오셨어요');
INSERT INTO send_company_to_company VALUES('118', 'uk65utk', 'fva23g', SYSDATE, '너무 재밌다');
INSERT INTO send_company_to_company VALUES('119', 'sru56r', 'uk65utk', SYSDATE, '누구세요');
INSERT INTO send_company_to_company VALUES('120', 'wi3t6k', 'sru56r', SYSDATE, '4달라');
INSERT INTO send_company_to_company VALUES('121', 'w56q', 'wi3t6k', SYSDATE, '힘들었어요');
commit;

rem 쪽지보내다_일반_기업 테이블 생성

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

rem 쪽지보내다_일반_기업 초기 데이터 삽입

INSERT INTO send_normal_to_company VALUES('122', 'hrts423', 'lk836w5j', SYSDATE, '안녕하세요');
INSERT INTO send_normal_to_company VALUES('123', 'sjryjsgt', 'lk836w5j', SYSDATE, '감사해요');
INSERT INTO send_normal_to_company VALUES('124', 'ethjeth', '968itu', SYSDATE, '잘 있어요');
INSERT INTO send_normal_to_company VALUES('125', 'srrssrw', 'masrjzy', SYSDATE, '다시 만나요');
INSERT INTO send_normal_to_company VALUES('126', '6sryeh', 'ustmy53', SYSDATE, '안녕하세요');
INSERT INTO send_normal_to_company VALUES('127', 'rtjhsi3', '64etg', SYSDATE, '몇 시까지 에요');
INSERT INTO send_normal_to_company VALUES('128', '46yrsth', 'o9685i', SYSDATE, '얼마에요');
INSERT INTO send_normal_to_company VALUES('129', 'stmh57', '15q3tea', SYSDATE, '12시 30분 까지 오세요');
INSERT INTO send_normal_to_company VALUES('130', '5uk24', '968itu', SYSDATE, '배고프다');
INSERT INTO send_normal_to_company VALUES('131', '5thhrs', 'mju3y5', SYSDATE, '점심 뭐먹을까');
INSERT INTO send_normal_to_company VALUES('132', 'uupiyg', 'k5t3sh', SYSDATE, '몇 명 모였나요');
INSERT INTO send_normal_to_company VALUES('133', 'xuxzz3', 'sgqgr5', SYSDATE, '30명이요');
INSERT INTO send_normal_to_company VALUES('134', 'nyrww1', '13ef6', SYSDATE, '계속하나요');
INSERT INTO send_normal_to_company VALUES('135', 'tgeraqo', 'bf2w5qr', SYSDATE, '정말 많다');
INSERT INTO send_normal_to_company VALUES('136', 'nyuw5452', 'tw65w', SYSDATE, '먼저 갈게요');
INSERT INTO send_normal_to_company VALUES('137', 'teb240', 'avdv5', SYSDATE, '공원에서 뵈요');
INSERT INTO send_normal_to_company VALUES('138', 'bkipetop', '42t8942', SYSDATE, '잘 다녀오셨어요');
INSERT INTO send_normal_to_company VALUES('139', 'tejuire', 'fva23g', SYSDATE, '너무 재밌다');
INSERT INTO send_normal_to_company VALUES('140', 'btiepq2', 'uk65utk', SYSDATE, '누구세요');
INSERT INTO send_normal_to_company VALUES('141', 'btkeoap', 'sru56r', SYSDATE, '4달라');
INSERT INTO send_normal_to_company VALUES('142', 'kfspae12', 'wi3t6k', SYSDATE, '뭐해');
commit;

rem 쪽지보내다_기업_일반 테이블 생성

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

rem 쪽지보내다_기업_일반 초기 데이터 삽입

INSERT INTO send_company_to_normal VALUES('143', 'lk836w5j', 'hrts423', SYSDATE, '안녕하세요');
INSERT INTO send_company_to_normal VALUES('144', 'lk836w5j', 'sjryjsgt', SYSDATE, '감사해요');
INSERT INTO send_company_to_normal VALUES('145', 'sru56r', 'ethjeth', SYSDATE, '잘 있어요');
INSERT INTO send_company_to_normal VALUES('146', 'masrjzy', 'srrssrw', SYSDATE, '다시 만나요');
INSERT INTO send_company_to_normal VALUES('147', 'ustmy53', '6sryeh', SYSDATE, '안녕하세요');
INSERT INTO send_company_to_normal VALUES('148', '64etg', 'rtjhsi3', SYSDATE, '몇 시까지 에요');
INSERT INTO send_company_to_normal VALUES('149', 'o9685i', '46yrsth', SYSDATE, '얼마에요');
INSERT INTO send_company_to_normal VALUES('150', '15q3tea', 'stmh57', SYSDATE, '12시 30분 까지 오세요');
INSERT INTO send_company_to_normal VALUES('151', '968itu', '5uk24', SYSDATE, '배고프다');
INSERT INTO send_company_to_normal VALUES('152', 'mju3y5', '5thhrs', SYSDATE, '점심 뭐먹을까');
INSERT INTO send_company_to_normal VALUES('153', 'k5t3sh', 'uupiyg', SYSDATE, '몇 명 모였나요');
INSERT INTO send_company_to_normal VALUES('154', 'sgqgr5', 'xuxzz3', SYSDATE, '30명이요');
INSERT INTO send_company_to_normal VALUES('155', '13ef6', 'nyrww1', SYSDATE, '계속하나요');
INSERT INTO send_company_to_normal VALUES('156', 'bf2w5qr', 'tgeraqo', SYSDATE, '정말 많다');
INSERT INTO send_company_to_normal VALUES('157', 'tw65w', 'nyuw5452', SYSDATE, '먼저 갈게요');
INSERT INTO send_company_to_normal VALUES('158', 'avdv5', 'teb240', SYSDATE, '공원에서 뵈요');
INSERT INTO send_company_to_normal VALUES('159', '42t8942', 'bkipetop', SYSDATE, '잘 다녀오셨어요');
INSERT INTO send_company_to_normal VALUES('160', 'fva23g', 'tejuire', SYSDATE, '너무 재밌다');
INSERT INTO send_company_to_normal VALUES('161', 'uk65utk', 'btiepq2', SYSDATE, '누구세요');
INSERT INTO send_company_to_normal VALUES('162', 'sru56r', 'btkeoap', SYSDATE, '4달라');
INSERT INTO send_company_to_normal VALUES('163', 'wi3t6k', 'kfspae12', SYSDATE, '뭐해');
commit;

rem 쪽지보내다_일반_일반 테이블 생성

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

rem 쪽지보내다_일반_일반 초기 데이터 삽입

INSERT INTO send_normal_to_normal VALUES('164', 'hrts423', 'sjryjsgt', SYSDATE, '안녕하세요');
INSERT INTO send_normal_to_normal VALUES('165', 'sjryjsgt', 'ethjeth', SYSDATE, '감사해요');
INSERT INTO send_normal_to_normal VALUES('166', 'ethjeth', 'srrssrw', SYSDATE, '잘 있어요');
INSERT INTO send_normal_to_normal VALUES('167', 'srrssrw', '6sryeh', SYSDATE, '다시 만나요');
INSERT INTO send_normal_to_normal VALUES('168', '6sryeh', 'rtjhsi3', SYSDATE, '안녕하세요');
INSERT INTO send_normal_to_normal VALUES('169', 'rtjhsi3', '46yrsth', SYSDATE, '몇 시까지 에요');
INSERT INTO send_normal_to_normal VALUES('170', '46yrsth', 'stmh57', SYSDATE, '얼마에요');
INSERT INTO send_normal_to_normal VALUES('171', 'stmh57', '5uk24', SYSDATE, '12시 30분 까지 오세요');
INSERT INTO send_normal_to_normal VALUES('172', '5uk24', '5thhrs', SYSDATE, '배고프다');
INSERT INTO send_normal_to_normal VALUES('173', '5thhrs', 'uupiyg', SYSDATE, '점심 뭐먹을까');
INSERT INTO send_normal_to_normal VALUES('174', 'uupiyg', 'xuxzz3', SYSDATE, '몇 명 모였나요');
INSERT INTO send_normal_to_normal VALUES('175', 'xuxzz3', 'nyrww1', SYSDATE, '30명이요');
INSERT INTO send_normal_to_normal VALUES('176', 'nyrww1', 'tgeraqo', SYSDATE, '계속하나요');
INSERT INTO send_normal_to_normal VALUES('177', 'tgeraqo', 'nyuw5452', SYSDATE, '정말 많다');
INSERT INTO send_normal_to_normal VALUES('178', 'nyuw5452', 'teb240', SYSDATE, '먼저 갈게요');
INSERT INTO send_normal_to_normal VALUES('179', 'teb240', 'bkipetop', SYSDATE, '공원에서 뵈요');
INSERT INTO send_normal_to_normal VALUES('180', 'bkipetop', 'tejuire', SYSDATE, '잘 다녀오셨어요');
INSERT INTO send_normal_to_normal VALUES('181', 'tejuire', 'btiepq2', SYSDATE, '너무 재밌다');
INSERT INTO send_normal_to_normal VALUES('182', 'btiepq2', 'btkeoap', SYSDATE, '누구세요');
INSERT INTO send_normal_to_normal VALUES('183', 'btkeoap', 'kfspae12', SYSDATE, '4달라');
INSERT INTO send_normal_to_normal VALUES('184', 'kfspae12', 'hrts423', SYSDATE, '힘들었어요');
commit;

rem 일반회원_댓글작성하다 테이블 생성

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
rem 일반회원_댓글작성하다 초기 데이터 삽입

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

rem 기업회원_댓글작성하다 테이블 생성

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

rem 기업회원_댓글작성하다 초기 데이터 삽입

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

rem 평가하다 테이블 생성

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

rem 평가하다 초기 데이터 삽입 초기 데이터 삽입

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

rem 찜하다 테이블 생성

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

rem 찜하다 초기 데이터 삽입 초기 데이터 삽입

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

rem 구매하다 테이블 생성

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

rem 구매하다 초기 데이터 삽입 초기 데이터 삽입

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

rem 관리하다 테이블 생성

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

rem 관리하다 초기 데이터 삽입

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

rem 가입하다 테이블 생성

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

rem 가입하다 초기 데이터 삽입

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

rem 인증하다 테이블 생성

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

rem 인증하다 초기 데이터 삽입

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

rem 인덱스 정의

CREATE INDEX club_area_idx ON club(area);
CREATE INDEX product_area_idx ON product(area);

SET SCAN ON
