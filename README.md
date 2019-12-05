# HotelProject
<h3>호텔프로젝트</h3>
<br>



<br>
ahnwoo - admin<br>
    -12/04 로그인시 어드민페이지로<br>
           seller리스트,수정,삭제<br>
<br>
seoHo - member<br>
    -12/03 signup, login<br>
    -12/04 member - 정보 수정, 삭제<br>
           관리자페이지 member 리스트, 수정, 삭제
    <br>
seoYoung-seller <br>
    -12/03 signup, login<br>
    -12/04 로그인시 내정보수정,회원탈퇴,로그아웃,<br>
            hotel의 숙소등록, <br>
            예약 현황<br>
<br>
ByoungHwa-hotel <br>
    -hotel insertForm/객실 추가 <br>
호텔 테이블
create table hotel (
num number,
selnum number,
h_name varchar2(50),
h_nation varchar2(50),
h_address1 varchar2(50),
h_address2 varchar2(50),
h_type varchar2(50),
h_phone varchar2(50),
h_room_num  number,
h_facilities varchar2(300),
h_internet varchar2(50),
h_animal varchar2(50),
h_parking varchar2(50),
h_smoke varchar2(50),
h_language varchar2(50),
h_image varchar2(300),
h_hotel_url varchar2(50),
h_comment varchar2(300)
);

룸테이블
create sequence room_seq
start with 0
minvalue 0
increment by 1
nocache;


create table rooms(
num number primary key,
r_type varchar2(20),
r_price number,
hname varchar2(20),
r_person number,
r_breakfast varchar2(10),
r_stock number
);

12/5 
main에서 검색 하면 search.ho를 요청하고 호텔 리스트페이지 출력
호텔 리스트페이지에서 각 호텔을 눌렀을때 

