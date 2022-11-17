TTITLE '지역별 일반회원들의 평균점수와 지역별 점수 순위'
COLUMN num_of_people FORMAT 9,999,999
COLUMN point_avg FORMAT 9,999,999
COLUMN max_point FORMAT 9,999,999
COLUMN min_point FORMAT 9,999,999
COLUMN sum_point FORMAT 9,999,999

SELECT area, COUNT(user_id) "num_of_people", ROUND(AVG(point), 1) "point_avg", MAX(point) "max_point", MIN(point) "min_point", SUM(point) "sum_point", RANK() OVER(order by sum(point) desc) as ranking
FROM normal_user
GROUP BY area;

TTITLE  OFF
CLEAR  COLUMN

