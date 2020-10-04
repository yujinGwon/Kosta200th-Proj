-- BUS
-- 차량번호, 차량년식, 주유/충전, 운행시작일, 마을/시내, 사고이력(횟수), 상태, 주행거리, 최근 정비일자
INSERT INTO BUS VALUES('01가0001', 2020, '천연가스', SYSDATE, '시내', 0, '대기중', 10000, NULL);
INSERT INTO BUS VALUES('02나0002', 2019, '천연가스', SYSDATE, '시내', 0, '대기중', 20000, NULL);
INSERT INTO BUS VALUES('03다0003', 2018, '경유', SYSDATE, '시내', 0, '대기중', 30000, NULL);
INSERT INTO BUS VALUES('04라0004', 2017, '경유', SYSDATE, '시내', 0, '대기중', 40000, NULL);
INSERT INTO BUS VALUES('05마0005', 2016, '천연가스', SYSDATE, '시내', 0, '대기중', 50000, NULL);
INSERT INTO BUS VALUES('06바0006', 2015, '천연가스', SYSDATE, '시내', 0, '대기중', 60000, NULL);
INSERT INTO BUS VALUES('07사0007', 2014, '천연가스', SYSDATE, '시내', 0, '대기중', 70000, NULL);
INSERT INTO BUS VALUES('08아0008', 2013, '천연가스', SYSDATE, '시내', 0, '대기중', 80000, NULL);
INSERT INTO BUS VALUES('09자0009', 2012, '경유', SYSDATE, '시내', 0, '대기중', 90000, NULL);
INSERT INTO BUS VALUES('10차0010', 2011, '경유', SYSDATE, '시내', 0, '대기중', 90000, NULL);
INSERT INTO BUS VALUES('11카0011', 2010, '천연가스', SYSDATE, '시내', 0, '대기중', 80000, NULL);
INSERT INTO BUS VALUES('12타0012', 2009, '천연가스', SYSDATE, '시내', 0, '대기중', 70000, NULL);
INSERT INTO BUS VALUES('13파0013', 2008, '천연가스', SYSDATE, '시내', 0, '대기중', 60000, NULL);
INSERT INTO BUS VALUES('14하0014', 2007, '천연가스', SYSDATE, '마을', 0, '대기중', 50000, NULL);
INSERT INTO BUS VALUES('15가0015', 2006, '천연가스', SYSDATE, '마을 ', 0, '대기중', 40000, NULL);
INSERT INTO BUS VALUES('16나0016', 2005, '천연가스', SYSDATE, '마을', 0, '대기중', 30000, NULL);
INSERT INTO BUS VALUES('17다0017', 2004, '천연가스', SYSDATE, '마을', 0, '대기중', 20000, NULL);
INSERT INTO BUS VALUES('18라0018', 2003, '경유', SYSDATE, '마을', 0, '대기중', 20000, NULL);
INSERT INTO BUS VALUES('19마0019', 2002, '경유', SYSDATE, '마을', 0, '대기중', 30000, NULL);
INSERT INTO BUS VALUES('20바0020', 2001, '경유', SYSDATE, '마을', 0, '대기중', 40000, NULL);
INSERT INTO BUS VALUES('21사0021', 2002, '천연가스', SYSDATE, '시내', 0, '대기중', 50000, NULL);
INSERT INTO BUS VALUES('22아0022', 2003, '천연가스', SYSDATE, '시내', 0, '대기중', 60000, NULL);
INSERT INTO BUS VALUES('23자0023', 2004, '천연가스', SYSDATE, '시내', 0, '대기중', 70000, NULL);
INSERT INTO BUS VALUES('24차0024', 2005, '천연가스', SYSDATE, '마을', 0, '대기중', 80000, NULL);
INSERT INTO BUS VALUES('25카0025', 2006, '천연가스', SYSDATE, '마을', 0, '대기중', 90000, NULL);
INSERT INTO BUS VALUES('26타0026', 2007, '천연가스', SYSDATE, '시내', 0, '대기중', 100000, NULL);
INSERT INTO BUS VALUES('27파0027', 2008, '천연가스', SYSDATE, '시내', 0, '대기중', 90000, NULL);
INSERT INTO BUS VALUES('28하0028', 2009, '경유', SYSDATE, '시내', 0, '대기중', 80000, NULL);


--ROUTE
-- 노선번호, 출발지, 도착지, 첫차시간, 막차시간, 배차간격, 이미지파일, 성인요금(카), 현금, 청소년 요금(카), 현금, 어린이요금(카드), 현금
INSERT INTO ROUTE VALUES('1번', '숲속마을3,5단지', '구로디지털단지역', '05:00', '22:30', 15, 'r001.jpg', 1200, 1300, 800, 900, 400, 500);
INSERT INTO ROUTE VALUES('5번', '월암종점', '당중초등학교', '04:35', '22:30', 14, 'r002.jpg', 1200, 1300, 800, 900, 400, 500);
INSERT INTO ROUTE VALUES('10번', '용못내공원', '여의도환승센터', '04:30', '23:15', 9, 'r003.jpg', 1200, 1300, 800, 900, 400, 500);
INSERT INTO ROUTE VALUES('11-1번', '중앙하이츠아파트', '여의도환승센터', '05:00', '23:30', 12, 'r004.jpg', 1200, 1300, 800, 900, 400, 500);
INSERT INTO ROUTE VALUES('5528번', '가산동', '사당역', '04:30', '22:50', 10, 'r005.jpg', 1200, 1300, 800, 900, 400, 500);

INSERT INTO ROUTE VALUES('013-1번', '수궁동양지연립', '부천시청', '05:40', '00:05', 15, 'r006.jpg', 1000, 1100, 700, 800, 400, 500);
INSERT INTO ROUTE VALUES('013-2번', '수궁동양지연립', '소명여고사거리', '05:40', '00:02', 15, 'r007.jpg', 1000, 1100, 700, 800, 400, 500);
INSERT INTO ROUTE VALUES('021-1번', '기린운수종점', '제이드카운터', '05:05', '23:25', 20, 'r008.jpg', 1000, 1100, 700, 800, 400, 500);
INSERT INTO ROUTE VALUES('구로01번', '개봉역', '금옥여고', '05:50', '23:50', 8, 'r009.jpg', 1000, 1100, 700, 800, 400, 500);
INSERT INTO ROUTE VALUES('구로02번', '개봉역', '개봉중학교', '05:50', '23:50', 10, 'r010.jpg', 1000, 1100, 700, 800, 400, 500);



-- EMPLOYER
-- 사번, 이름, 주민번호, 부서이름, 직급, 운행차량, 운전면허, 근로계약서, 운전경력, 휴가일수, 결혼, 장애, 취미, 특기, 연락처, ㅣ번, 이메일, 주소, 입사일, 퇴사일, 계정확인?, 권한
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '가길동', '111111-1111111', '배차팀', '기사님', NULL, '면허01', '작성', 1, 15, '미혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '가길동@ANVER.COM', '서울 구로구 가산동', SYSDATE, NULL, 1, 'ROLE_ADMIN');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '나길동', '111111-1111111', '배차팀', '기사님', NULL, '면허02', '작성', 2, 15, '미혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '나길동@ANVER.COM', '서울 구로구 가산동', SYSDATE, NULL, 1, 'ROLE_USER');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '다길동', '111111-1111111', '배차팀', '기사님', NULL, '면허03', '작성', 3, 15, '기혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '다길동@ANVER.COM', '서울 구로구 가산동', SYSDATE, NULL, 1, 'ROLL_MANAGER');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '라길동', '111111-1111111', '배차팀', '기사님', NULL, '면허04', '작성', 4, 15, '기혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '라길동@ANVER.COM', '서울 구로구 가산동', SYSDATE, NULL, 1, 'ROLE_TEST');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '마길동', '111111-1111111', '배차팀', '기사님', NULL, '면허05', '작성', 5, 15, '기혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '마길동@ANVER.COM', '서울 구로구 가산동', SYSDATE, NULL, 1, 'ROLE_GUEST');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '바길동', '111111-1111111', '배차팀', '기사님', NULL, '면허06', '작성', 4, 15, '기혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '바길동@ANVER.COM', '서울 구로구 가산동', SYSDATE, NULL, 1, 'ROLE_USER');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '사길동', '111111-1111111', '배차팀', '기사님', NULL, '면허07', '작성', 3, 15, '미혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '사길동@ANVER.COM', '서울 구로구 가산동', SYSDATE, NULL, 1, 'ROLE_USER');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '아길동', '111111-1111111', '배차팀', '기사님', NULL, '면허08', '작성', 2, 15, '미혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '아길동@ANVER.COM', '서울 구로구 가산동', SYSDATE, NULL, 1, 'ROLE_USER');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '자길동', '111111-1111111', '배차팀', '기사님', NULL, '면허09', '작성', 1, 15, '미혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '자길동@ANVER.COM', '서울 구로구 가산동', SYSDATE, NULL, 1, 'ROLE_USER');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '차길동', '111111-1111111', '배차팀', '기사님', NULL, '면허10', '작성', 3, 15, '미혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '차길동@ANVER.COM', '서울 구로구 가산동', SYSDATE, NULL, 1, 'ROLE_USER');

INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '김다운', '111111-1111111', '총무팀', '과장', NULL, NULL, '작성', 0, 15, '미혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '김다운@ANVER.COM', '서울 어딘가', SYSDATE, NULL, 1, '총무');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '오선미', '111111-1111111', '총무팀', '과장', NULL, NULL, '작성', 0, 15, '미혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '오선미@ANVER.COM', '서울 어딘가', SYSDATE, NULL, 1, '총무');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '임채성', '111111-1111111', '배차팀', '사원', NULL, '면허11', '작성', 2, 15, '미혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '임채성@ANVER.COM', '경기도 안양?', SYSDATE, NULL, 1, '배차');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '채성이부하', '111111-1111111', '배차팀', '인턴', NULL, '면허12', '작성', 2, 15, '기혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '채성이부하@ANVER.COM', '제주도', SYSDATE, NULL, 1, '배차');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '이희섭', '111111-1111111', '인사팀', '대리', NULL, NULL, '작성', 0, 15, '기혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '이희섭@ANVER.COM', '서울 어딘가', SYSDATE, NULL, 1, '인사');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '유희민', '111111-1111111', '정비팀', '사원', NULL, '면허13', '작성', 3, 15, '기혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '유희민@ANVER.COM', '홈리스', SYSDATE, NULL, 1, '정비');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '희민이부하', '111111-1111111', '정비팀', '인턴', NULL, '면허14', '작성', 2, 15, '미혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '희민이부하@ANVER.COM', '강원도', SYSDATE, NULL, 1, '정비');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '권유진', '111111-1111111', '인사팀', '사원', NULL, NULL, '작성', 0, 15, '미혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '권유진@ANVER.COM', '경기도 화성시', SYSDATE, NULL, 1, '인사');
INSERT INTO EMPLOYER VALUES(NEXT_E_NO, '이도연', '111111-1111111', '인사팀', '부장', NULL, NULL, '작성', 0, 15, '기혼', '비장애', NULL, NULL, '010-0000-0000', '1234', '이도연@ANVER.COM', '서울 어딘가', SYSDATE, NULL, 1, '관리자');


-- ALLOCATION
-- 배차차량, 배차노선, 배차기사님, 근무조
insert into allocation values('01가0001', '1번', 'E0001', '가길동', 'A조');


-- REPAIR
-- 코드, 차량번호, 접수일, 내역, 비용, 상태, 비고
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '01가0001', SYSDATE, NULL, '정기점검', 1, '정비접수', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '02나0002', SYSDATE, NULL, '정기점검', 1, '정비접수', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '03다0003', SYSDATE, NULL, '정기점검', 1, '정비접수', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '04라0004', SYSDATE, NULL, '정기점검', 1, '정비접수', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '05마0005', SYSDATE, NULL, '정기점검', 1, '정비접수', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '06바0006', SYSDATE, NULL, '정기점검', 1, '정비접수', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '07사0007', SYSDATE, NULL, '정기점검', 1, '정비접수', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '08아0008', SYSDATE, NULL, '정기점검', 1, '정비접수', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '09자0009', SYSDATE, NULL, '정기점검', 1, '정비접수', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '10차0010', SYSDATE, NULL, '정기점검', 1, '정비접수', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '11카0011', SYSDATE, NULL, '정기점검', 1, '정비접수', NULL);
INSERT INTO REPAIR VALUES(NEXT_RE_CODE, '12타0012', SYSDATE, NULL, '정기점검', 1, '정비접수', NULL);


-- FUEL
-- CODE, 차량번호, 타입, 날짜, 결제날짜, 주유량, 비용, 결제전/결제완료, 회계처리, 비고
INSERT INTO FUEL VALUES(NEXT_F_CODE, '01가0001', '천연가스', SYSDATE, NULL, 30, 30000, '결제전', '01가0001 천연가스 30L 충전', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '02나0002', '천연가스', SYSDATE, NULL, 40, 40000, '결제전', '02나0002 천연가스 40L 충전', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '03다0003', '경유', SYSDATE, NULL, 50, 50000, '결제전', '03다0003 경유 50L 주유', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '04라0004', '경유', SYSDATE, NULL, 40, 40000, '결제전', '04라0004 경유 40L 주유', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '05마0005', '천연가스', SYSDATE, NULL, 30, 30000, '결제전', '05마0005 천연가스 30L 충전', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '06바0006', '천연가스', SYSDATE, NULL, 20, 320000, '결제전', '06바0006 천연가스 20L 충전', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '07사0007', '천연가스', SYSDATE, NULL, 20, 20000, '결제전', '07사0007 천연가스 20L 충전', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '08아0008', '천연가스', SYSDATE, NULL, 30, 30000, '결제전', '08아0008 천연가스 30L 충전', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '09자0009', '경유', SYSDATE, NULL, 40, 40000, '결제전', '09자0009 경유 40L 주유', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '10차0010', '경유', SYSDATE, NULL, 50, 50000, '결제전', '10차0010 경유 50L 주유', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '11카0011', '천연가스', SYSDATE, NULL, 30, 50000, '결제전', '11카0011 천연가스 30L 충전', NULL);
INSERT INTO FUEL VALUES(NEXT_F_CODE, '12타0012', '천연가스', SYSDATE, NULL, 50, 50000, '결제전', '12타0012 천연가스 50L 충전', NULL);


-- ACCDIENT
-- PK, 차량번호, 기산미사번, 면허, 차량상태, 사고시각, 사고장소, 사고내용
INSERT INTO ACCIDENT VALUES(ACC_SEQ.NEXTVAL, '28하0028', 'E0010', '면허10', '운행가능', SYSDATE, '학교 앞', '접촉사고');
INSERT INTO ACCIDENT VALUES(ACC_SEQ.NEXTVAL, '27파0027', 'E0009', '면허09', '운행가능', SYSDATE, '교차로 앞', '추돌');
INSERT INTO ACCIDENT VALUES(ACC_SEQ.NEXTVAL, '26타0026', 'E0008', '면허08', '수리요함', SYSDATE, '정류장 앞', '연석충돌');
INSERT INTO ACCIDENT VALUES(ACC_SEQ.NEXTVAL, '25카0025', 'E0007', '면허07', '수리요함', SYSDATE, '전철역출입구 앞', '무단횡단');
INSERT INTO ACCIDENT VALUES(ACC_SEQ.NEXTVAL, '24차0024', 'E0006', '면허06', '수리요함', SYSDATE, '육교 및', '낙하물');


-- PENALTY
-- 코드, 차량번호, 사번, 면허, 이름, 금액, 납부전/납부완료, 위반일시, 위반장소, 담당경찰서, 내용, 비고
INSERT INTO PENALTY VALUES(NEXT_PEN_CODE, '23자0023', 'E0005', '마길동', '면허05',  50000, '납부완료', '20/06/25', '가산 교차로', '구로 경찰서', '과속', NULL);
INSERT INTO PENALTY VALUES(NEXT_PEN_CODE, '22아0022', 'E0004', '라길동', '면허04', 80000, '납부전', '20/06/28', '이노플렉스 앞', '구로 경찰서', '신호위반', NULL);
INSERT INTO PENALTY VALUES(NEXT_PEN_CODE, '22아0022', 'E0004', '라길동', '면허04', 70000, '납부전', '20/06/29', '안양천', '안양 경찰서', '추월', NULL);
INSERT INTO PENALTY VALUES(NEXT_PEN_CODE, '23자0023', 'E0005', '마길동', '면허05', 90000, '납부전', '20/07/03', '천왕역 1번 출구앞', '구로 경찰서', '과속', NULL);
INSERT INTO PENALTY VALUES(NEXT_PEN_CODE, '23자0023', 'E0005', '마길동', '면허05', 40000, '납부전', '20/07/05', '금천구청역 교차로', '금천 경찰서', '신호위반', NULL);

-- COMPLAINT
-- PK, 제목, 타입, 날짜, 내용, 버스번호, 기사님 사번, 기사님 이름
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '불만 있습니다.', '불만', SYSDATE, '불만 많아요. 아주 많아요.', '23자0023', 'E0005', '마길동');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '버스가 너무 더러워요.', '불만', '20/06/30', '버스가 더러워요. 청소 좀 깨끗하게 해주세요.', '28하0028', 'E0010', '차길동');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '제안 하나 하려구요.', '제안', '20/07/01', '버스에 휴지통이 없어서요. 휴지통을 갖다 놓는게 어떨까요?', '27파0027', 'E0009', '자길동');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '분실물 찾아주세요.', '분실물', SYSDATE, '차에 핸드폰 두고 내렸는데... 제 소중한 핸드폰 찾아주세요.', '26타0026', 'E0008', '아길동');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '와 기사님 짱친절!!!', '칭찬', SYSDATE, '제가 어제 버스를 탔는데요. 와 기사님 친절 와 대박이었어요. 기사님 최고에요!!!', '25카0025', 'E0007', '사길동');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '운전을 천천히 해주세요.', '불만', SYSDATE, '기사님 무슨 분노의질주 영화 찍으십니까? 제발 천천히 운행해주세요. 플리즈', '24차0024', 'E0006', '바길동');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '기사님에게 반했습니다.', '칭찬', SYSDATE, '기사님 너무 멋지세요. 선글라스 끼신 모습에 반했어요. 제 사랑을 받아주세요옷~~~.', '25카0025', 'E0007', '사길동');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '버스 배차좀 늘려주세요.', '제안', SYSDATE, '제가 사는 곳에서는 버스타기가 너무 힘들어요. 차량 배차를 좀 늘려주시는건 어떨까요?', NULL, NULL, NULL);
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '지갑을 잃어버렸습니다.', '분실물', '20/07/13', '제 소중한 추억이 담긴 지갑을 잃어버렸습니다. 제발 찾아주세요. 흑흑흑', '11카0011', 'E0004', '라길동');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '제의견을 건의합니다.', '건의', '20/07/15', '제 건의를 받아주세요.', '23자0023', 'E0005', '마길동');
INSERT INTO COMPLAINT VALUES(C_SEQ.NEXTVAL, '나도 건의 할래요.', '건의', '20/07/18', '심심해서 건의해보려구요.', NULL, NULL, NULL);J

-- 원료
insert into wonlyo values('A001','타이어',10,20000);
insert into wonlyo values('B002','워셔액',10,5000);
insert into wonlyo values('C003','베터리',10,45000);
insert into wonlyo values('D004','와이퍼',10,9000);
insert into wonlyo values('E005','체인',10,35000);
insert into wonlyo values('F006','점퍼케이블',10,24000);

COMMIT;

-- 인서트 기본 끝


