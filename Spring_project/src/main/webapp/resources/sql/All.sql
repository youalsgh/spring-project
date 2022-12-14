create database market;

use market;

create table if not exists member(
	m_id varchar(100) not null primary key,
    m_password varchar(100) not null,
    m_name varchar(100),
    m_email varchar(100),
    adminCk int default 0,
    m_addr1 varchar(300),
    m_addr2 varchar(300),
    m_addr3 varchar(300)
)default charset=utf8mb4;

insert into member(m_id, m_password, m_name, m_email, adminCk) values('admin', '1234', '김민호', 'youalsgh@naver.com', 1);
insert into member(m_id, m_password, m_name, m_email) values
('test', '1234', '김민호', 'youalsgh@naver.com'),
('test1', '1234', '김민수', 'youalsgh@naver.com'),
('test2', '1234', '김민후', 'youalsgh@naver.com'),
('test3', '1234', '김민교', 'youalsgh@naver.com'),
('test4', '1234', '김민식', 'youalsgh@naver.com'),
('test5', '1234', '김민석', 'youalsgh@naver.com'),
('test6', '1234', '김민혁', 'youalsgh@naver.com'),
('test7', '1234', '김민휘', 'youalsgh@naver.com'),
('test8', '1234', '김민경', 'youalsgh@naver.com'),
('test9', '1234', '김민성', 'youalsgh@naver.com'),
('test10', '1234', '오유경', 'youalsgh@naver.com');
select * from member;
select count(*) from member where m_id not in('admin');
drop table member;

create table if not exists product(
	p_id int primary key auto_increment,
    p_brand varchar(100),
    p_name varchar(100),
    p_price int,
    p_gender varchar(100),
    p_description varchar(2000),
    p_fileName varchar(100),
    p_ratingAvg decimal(2,1)
)default charset=utf8mb4;

insert into product(p_brand, p_name, p_price, p_gender, p_description, p_fileName) values
('brand', 'name', 10000, 'man', '상세설명입니다', 'shop_01.jpg'),
('brand', 'name', 10000, 'man', '상세설명입니다', 'shop_02.jpg'),
('brand', 'name', 10000, 'man', '상세설명입니다', 'shop_03.jpg'),
('brand', 'name', 10000, 'man', '상세설명입니다', 'shop_04.jpg'),
('brand', 'name', 10000, 'man', '상세설명입니다', 'shop_05.jpg'),
('brand', 'name', 10000, 'man', '상세설명입니다', 'shop_06.jpg'),
('brand', 'name', 10000, 'man', '상세설명입니다', 'shop_07.jpg'),
('brand', 'name', 10000, 'man', '상세설명입니다', 'shop_08.jpg'),
('brand', 'name', 10000, 'man', '상세설명입니다', 'shop_09.jpg'),
('brand', 'name', 10000, 'man', '상세설명입니다', 'shop_10.jpg'),
('brand', 'name', 10000, 'man', '상세설명입니다', 'shop_11.jpg');

insert into product(p_brand, p_name, p_price, p_gender, p_description, p_fileName) values
('무신사 스탠다드', '실켓 릴렉스 핏 크루넥 반팔', 30900, 'man', '상세설명입니다.', 'man_tshirt1.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[퍼플 그레이]', 13900, 'man', '상세설명입니다.', 'man_tshirt2.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[에그렛]', 13900, 'man', '상세설명입니다.', 'man_tshirt3.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[터콰이즈]', 13900, 'man', '상세설명입니다.', 'man_tshirt4.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[멜란지 라이트 그레이]', 13900, 'man', '상세설명입니다.', 'man_tshirt5.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[건메탈]', 13900, 'man', '상세설명입니다.', 'man_tshirt6.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[페이드 블루]', 13900, 'man', '상세설명입니다.', 'man_tshirt7.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[카키 그레이]', 13900, 'man', '상세설명입니다.', 'man_tshirt8.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[오트밀]', 13900, 'man', '상세설명입니다.', 'man_tshirt9.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[라이트 베이지]', 13900, 'man', '상세설명입니다.', 'man_tshirt10.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[그레이]', 13900, 'man', '상세설명입니다.', 'man_tshirt11.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[라이트 그레이]', 13900, 'man', '상세설명입니다.', 'man_tshirt12.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[더스티 베이지]', 13900, 'man', '상세설명입니다.', 'man_tshirt13.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[멜란지 그레이]', 13900, 'man', '상세설명입니다.', 'man_tshirt14.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[다크 브라운]', 13900, 'man', '상세설명입니다.', 'man_tshirt15.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[크림]', 13900, 'man', '상세설명입니다.', 'man_tshirt16.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[다크 그레이]', 13900, 'man', '상세설명입니다.', 'man_tshirt17.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[네이비]', 13900, 'man', '상세설명입니다.', 'man_tshirt18.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[블랙]', 13900, 'man', '상세설명입니다.', 'man_tshirt19.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[화이트]', 13900, 'man', '상세설명입니다.', 'man_tshirt20.jpg'),
('무신사 스탠다드', '베이식 슬리브리스 탑[페일 핑크]', 10900, 'woman', '상세설명입니다.', 'woman_tshirt1.jpg'),
('무신사 스탠다드', '베이식 슬리브리스 탑[다크 네이비]', 10900, 'woman', '상세설명입니다.', 'woman_tshirt2.jpg'),
('무신사 스탠다드', '베이식 슬리브리스 탑[다크 그레이]', 10900, 'woman', '상세설명입니다.', 'woman_tshirt3.jpg'),
('무신사 스탠다드', '베이식 크루 넥 반팔[그라스 그린]', 12900, 'woman', '상세설명입니다.', 'woman_tshirt4.jpg'),
('무신사 스탠다드', '베이식 크루 넥 반팔[핑크]', 12900, 'woman', '상세설명입니다.', 'woman_tshirt5.jpg'),
('무신사 스탠다드', '베이식 크루 넥 반팔[오트밀]', 12900, 'woman', '상세설명입니다.', 'woman_tshirt6.jpg'),
('무신사 스탠다드', '베이식 크루 넥 반팔[멜란지 라이트]', 12900, 'woman', '상세설명입니다.', 'woman_tshirt7.jpg'),
('무신사 스탠다드', '베이식 크루 넥 반팔[에그렛]', 12900, 'woman', '상세설명입니다.', 'woman_tshirt8.jpg'),
('무신사 스탠다드', '베이식 크루 넥 반팔[보니 블루]', 12900, 'woman', '상세설명입니다.', 'woman_tshirt9.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[더스티 베이지]', 13900, 'woman', '상세설명입니다.', 'woman_tshirt10.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[퍼플 그레이]', 13900, 'woman', '상세설명입니다.', 'woman_tshirt11.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[오트밀]', 13900, 'woman', '상세설명입니다.', 'woman_tshirt12.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[다크 네이비]', 13900, 'woman', '상세설명입니다.', 'woman_tshirt13.jpg'),
('무신사 스탠다드', '릴렉스 핏 크루 넥 반팔[다크 그레이]', 13900, 'woman', '상세설명입니다.', 'woman_tshirt14.jpg'),
('무신사 스탠다드', '크루 넥 크롭 반팔[그라스 그린]', 11900, 'woman', '상세설명입니다.', 'woman_tshirt15.jpg'),
('무신사 스탠다드', '크루 넥 크롭 반팔[미디엄 그레이]', 11900, 'woman', '상세설명입니다.', 'woman_tshirt16.jpg'),
('무신사 스탠다드', '크루 넥 크롭 반팔[다크 그레이]', 11900, 'woman', '상세설명입니다.', 'woman_tshirt17.jpg');

insert into product(p_brand, p_name, p_price, p_gender, p_description, p_fileName) values
('무신사 스탠다드', '크루 넥 크롭 반팔[보니 블루]', 11900, 'woman', '상세설명입니다.', 'woman_tshirt18.jpg');

insert into product(p_brand, p_name, p_price, p_gender, p_description, p_fileName) values
('무신사 스탠다드', '라이트웨이트 쓰리 턱 세미 벌룬 슬랙스[건메탈]', 35900, 'man', '상세설명입니다.', 'man_pants1.jpg');
insert into product(p_brand, p_name, p_price, p_gender, p_description, p_fileName) values
('무신사 스탠다드', '라이트웨이트 쓰리 턱 세미 벌룬 슬랙스[라이트 베이지]', 35900, 'man', '상세설명입니다.', 'man_pants2.jpg');
insert into product(p_brand, p_name, p_price, p_gender, p_description, p_fileName) values
('무신사 스탠다드', '라이트웨이트 쓰리 턱 세미 벌룬 슬랙스[차콜 그레이]', 35900, 'man', '상세설명입니다.', 'man_pants3.jpg');
insert into product(p_brand, p_name, p_price, p_gender, p_description, p_fileName) values
('무신사 스탠다드', '라이트웨이트 쓰리 턱 세미 벌룬 슬랙스[그레이]', 35900, 'man', '상세설명입니다.', 'man_pants4.jpg');


select * from product;
select p_ratingAvg from product where p_id = 10;
drop table product;
delete from product where p_id = 13 and p_brand = '무신사 스탠다드';
create table if not exists cart(
	c_id int auto_increment primary key,
    c_memberId  varchar(100),
    c_productId int,
    c_productCount int,
    foreign key (c_memberId) references member(m_id),
    foreign key (c_productId) references product(p_id)
)default charset=utf8mb4;

alter table cart add unique (c_memberId, c_productId);

select * from cart;
drop table cart;
select a.c_id, a.c_memberId, a.c_productId, a.c_productCount, b.p_name, b.p_price, b.p_fileName from cart a left outer join product b on a.c_productId = b.p_id where c_memberId = 'test';

create table if not exists orders(
	o_id varchar(500) primary key,
    o_addressee  varchar(100),
    o_memberId varchar(100),
    o_memberAddr1 varchar(300),
    o_memberAddr2 varchar(300),
    o_memberAddr3 varchar(300),
    o_orderState varchar(300),
    o_orderDate timestamp default now(),
    foreign key (o_memberId) references member(m_id)
)default charset=utf8mb4;

select * from orders;
drop table orders;

create table if not exists orderItem(
	orderItemId int auto_increment primary key,
    orderId  varchar(500),
    productId int,
    productCount int,
    foreign key (orderId) references orders(o_id),
    foreign key (productId) references product(p_id)
)default charset=utf8mb4;

select * from orderItem;

select a.productCount, b.p_brand, b.p_name, b.p_price, b.p_fileName from orderItem a left outer join product b on a.productId = b.p_id where orderId = 202208091932533571;

select * from orderItem;
drop table orderItem;

create table if not exists reply(
	r_id int auto_increment primary key,
    r_productId int,
    r_memberId varchar(100),
    r_content varchar(2000),
    r_rating decimal(2,1),
    r_regDate timestamp default now(),
    foreign key (r_memberId) references member(m_id),
    foreign key (r_productId) references product(p_id)
)default charset=utf8mb4;

select * from reply;
drop table reply;
select a.r_id, a.r_memberId, a.r_productId, a.r_memberId, a.r_content, a.r_rating, a.r_regDate, b.m_name from reply a left outer join member b on a.r_memberId = b.m_id where r_productId =10;
select avg(r_rating) from reply where r_productId = 10;