TTITLE ‘회원이 인증한 QR코드 리스트'
COLUMN 사용자아이디 FORMAT A10
COLUMN QR코드 FORMAT A15
COLUMN '받은 지역화폐' FORMAT 9,999,999

select distinct verify.user_id as "사용자 아이디", qrcode.qr_id as "QR코드", qrcode.local_cur as" 받은 지역화폐"
from verify, qrcode
where verify.user_id =& user_id
and verify.qr_id = qrcode.qr_id;

TTITLE OFF;