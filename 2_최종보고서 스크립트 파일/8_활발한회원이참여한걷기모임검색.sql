TTITLE '활발한 회원이 참여하는 걷기모임 리스트'
COLUMN "우수회원ID" FORMAT A10
COLUMN 모임번호 FORMAT A15
COLUMN 모임설명 FORMAT A500
COLUMN 회원점수 FORMAT 9,999,999

select  normal_user.user_id as "우수회원ID",participate.meet_num as "모임번호" , walk_meet.meet_info as "모임설명", point as "회원점수"
from normal_user, participate, sign_up , walk_meet, club
where normal_user.user_id = participate.user_id
AND sign_up.user_id = normal_user.user_id
AND walk_meet.meet_num = participate.meet_num
AND sign_up.club_num = club.club_num
AND point >= 350
order by point desc;

TTITLE OFF;