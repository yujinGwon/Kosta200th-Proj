INSERT INTO USERLIST VALUES(1, '1', '홍길동', '010-1234-5678', '대한민국 서울', 1, 'yung21@naver.com');


HOTEL

INSERT INTO HOTEL VALUES(1, '서울 호텔', '대한민국 서울', 10, 20, '02-222-2222', 1, 1, 1, 1, 1, 5, 0, 'h1.jpg',
'대한민국 최고의 호텔인 서울호텔은 최상의 서비스를 보장합니다. 여러분의 편안한 휴식을 위해 최선을 다하겠습니다.');

INSERT INTO HOTEL VALUES(2, '부산 호텔', '대한민국 부산', 50, 30, '051-555-5432', 1, 0, 1, 1, 0, 4, 0, 'h2.jpg',
'부산에 위치한 부산호텔은 바다 가까이에 있으며 최상의 경관을 자랑합니다. 부산 마 살아있눼~');

INSERT INTO HOTEL VALUES(3, '평양 호텔', '북조선인민공화국 평양', 80, 40, '00-000-0000', 0, 1, 1, 0, 1, 2, 0, 'h3.jpg',
'위대하신 지도자 동무가 세우신 평양 호텔은 남조선 인민공화국 호텔보다 좋습니다. 저희 호텔을 이용하지 않으신다면 지옥불을 맛보게 될 것이다.');

INSERT INTO HOTEL VALUES(4, '하와이 호텔', '북태평양 미국 호놀룰루 하와이', 80, 40, '01-111-1743', 1, 1, 1, 1, 1, 5, 0, 'h4.jpg',
'천국의 섬 하와이로 놀러 오세요. 편안한 휴식을 제공합니다.');

INSERT INTO HOTEL VALUES(5, '치앙마이 호텔', '동남아시아 태국 방콕 치앙마이', 40, 33, '66-654-4356', 0, 0, 1, 1, 1, 4, 0, 'h5.jpg',
'디지털노마드족의 성지인 태국 치앙마이로 오세요. 최상의 업무환경을 제공합니다.');



INSERT INTO ROOM VALUES(1, '싱글룸', 1, 101, 1, '싱글', 50000, 1, 0, 'h1r1.JPG', 'h1r1d1.JPG', 'h1r1d2.JPG');
INSERT INTO ROOM VALUES(2, '일반룸', 1, 202, 4, '싱글', 170000, 1, 0, 'h1r2.JPG', 'h1r2d1.JPG', 'h1r2d2.JPG');
INSERT INTO ROOM VALUES(3, '일반룸', 1, 303, 4, '더블', 200000, 1, 0, 'h1r3.JPG', 'h1r3d1.JPG', 'h1r3d2.JPG');
INSERT INTO ROOM VALUES(4, '디럭스룸', 1, 505, 6, '더블', 240000, 1, 0, 'h1r4.JPG', 'h1r4d1.JPG', 'h1r4d2.JPG');
INSERT INTO ROOM VALUES(5, '럭셔리룸', 1, 606, 6, '트윈', 300000, 1, 0, 'h1r5.JPG', 'h1r5d1.JPG', 'h1r5d2.JPG');


INSERT INTO ROOM VALUES(6, '일반룸', 2, 102, 2, '싱글', 80000, 1, 0, 'h2r1.JPG', 'h2r1d1.JPG', 'h2r1d2.JPG');
INSERT INTO ROOM VALUES(7, '일반룸', 2, 506, 2, '더블', 90000, 1, 0, 'h2r2.JPG', 'h2r2d1.JPG', 'h2r2d2.JPG');
INSERT INTO ROOM VALUES(8, '패밀리룸', 2, 703, 4, '더블', 140000, 1, 0, 'h2r3.JPG', 'h2r3d1.JPG', 'h2r3d2.JPG');
INSERT INTO ROOM VALUES(9, '디럭스룸', 2, 707, 5, '트윈', 180000, 1, 0, 'h2r4.JPG', 'h2r4d1.JPG', 'h2r4d2.JPG');
INSERT INTO ROOM VALUES(10, '스윗룸', 2, 809, 2, '트윈', 260000, 1, 0, 'h2r5.JPG', 'h2r5d1.JPG', 'h2r5d2.JPG');


INSERT INTO ROOM VALUES(11, '동무방', 3, 404, 2, '더블', 40000, 1, 0, 'h3r1.JPG', 'h3r1d1.JPG', 'h3r1d2.JPG');
INSERT INTO ROOM VALUES(12, '모란봉방', 3, 606, 4, '더블', 50000, 1, 0, 'h3r2.JPG', 'h3r2d1.JPG', 'h3r2d2.JPG');
INSERT INTO ROOM VALUES(13, '반갑습니다방', 3, 808, 6, '더블', 70000, 1, 0, 'h3r3.JPG', 'h3r3d1.JPG', 'h3r3d2.JPG');
INSERT INTO ROOM VALUES(14, '불구덩이방', 3, 909, 10, '트윈', 80000, 1, 0, 'h3r4.JPG', 'h3r4d1.JPG', 'h3r4d2.JPG');
INSERT INTO ROOM VALUES(15, '령도자방', 3, 1010, 1, '싱글', 160000, 1, 0, 'h3r5.JPG', 'h3r5d1.JPG', 'h3r5d2.JPG');


INSERT INTO ROOM VALUES(16, '와이키키방', 4, 102, 2, '더블', 100000, 1, 0, 'h4r1.JPG', 'h4r1d1.JPG', 'h4r1d2.JPG');
INSERT INTO ROOM VALUES(17, '알아모아나방', 4, 205, 2, '싱글', 130000, 1, 0, 'h4r2.JPG', 'h4r2d1.JPG', 'h4r2d2.JPG');
INSERT INTO ROOM VALUES(18, '카일루아방', 4, 307, 5, '트윈', 170000, 1, 0, 'h4r3.JPG', 'h4r3d1.JPG', 'h4r3d2.JPG');
INSERT INTO ROOM VALUES(19, '진주만방', 4, 502, 4, '트윈', 230000, 1, 0, 'h4r4.JPG', 'h4r4d1.JPG', 'h4r4d2.JPG');
INSERT INTO ROOM VALUES(20, '와이콜로아방', 4, 708, 4, '더블', 290000, 1, 0, 'h4r5.JPG', 'h4r5d1.JPG', 'h4r5d2.JPG');


INSERT INTO ROOM VALUES(21, '얏샬랴마이쿰', 5, 204, 2, '싱글', 60000, 1, 0, 'h5r1.JPG', 'h5r1d1.JPG', 'h5r1d2.JPG');
INSERT INTO ROOM VALUES(22, '사와디캅', 5, 209, 2, '싱글', 70000, 1, 0, 'h5r2.JPG', 'h5r2d1.JPG', 'h5r2d2.JPG');
INSERT INTO ROOM VALUES(23, '왓우몽방', 5, 302, 4, '더블', 110000, 1, 0, 'h5r3.JPG', 'h5r3d1.JPG', 'h5r3d2.JPG');
INSERT INTO ROOM VALUES(24, '왓파랏방', 5, 305, 6, '더블', 140000, 1, 0, 'h5r4.JPG', 'h5r4d1.JPG', 'h5r4d2.JPG');
INSERT INTO ROOM VALUES(25, '칸자나방', 5, 505, 5, '트윈', 210000, 1, 0, 'h5r5.JPG', 'h5r5d1.JPG', 'h5r5d2.JPG');



