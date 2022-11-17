TITLE '현재 검색한 지역의 구매 가능한 상품 리스트 '
COLUMN 종류 FORMAT A10
COLUMN 상품명 FORMAT A30
COLUMN 가격 FORMAT 9,999,999
COLUMN "판매자 정보" FORMAT A50
COLUMN 등급 FORMAT A10

select c.kinds 종류, p.prod_name 상품명, p.price 가격, 'ID: '|| p.seller_id ||', 이름: ' || u.name as "판매자 정보", u.grade 등급
from product p, normal_user u, product_code c
where p.seller_id=u.user_id and 
p.sell_state='판매중' and
p.area='&지역' and
p.code=c.code
order by p.price;

TTITLE OFF