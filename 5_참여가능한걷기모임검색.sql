TTITLE CENTER'현재 참여 가능한 걷기 모임 리스트' 

COLUMN "No" FORMAT A15
COLUMN 장소 FORMAT A30
COLUMN 개최일 FORMAT A30
COLUMN 개최자 FORMAT A15

select* from(
select w.meet_num as "No", w.meet_place 장소, to_char(w.hold_date,'""YYYY"년 "MM"월 "DD"일"') 개최일, nh.hold_id 개최자
from walk_meet w, normal_user_hold nh
where w.max_per>(select count(*)  from participate p where p.meet_num=w.meet_num) 
and sysdate<w.hold_date
and w.meet_num=nh.meet_num

union

select w.meet_num as "No", w.meet_place 장소,to_char(w.hold_date,'""YYYY"년 "MM"월 "DD"일"') 개최일, ch.hold_id 
from walk_meet w, company_user_hold ch
where w.max_per>(select count(*)  from participate p where p.meet_num=w.meet_num) 
and sysdate<w.hold_date
and w.meet_num=ch.meet_num
)
order by 개최일;

TTITLE OFF