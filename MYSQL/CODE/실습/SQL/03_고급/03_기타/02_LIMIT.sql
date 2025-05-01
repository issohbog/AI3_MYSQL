-- LIMIT 

USE aloha;

-- 맨 앞에서 부터 10개 
SELECT * 
FROM board
LIMIT 10 
;

/*
    ⭐LIMIT 키워드 위치 
    SELECT * 
    FROM 테이블 
    WHERE (WHERE ➡ GB ➡ OB 순서 바뀌면 에러!!)
    GROUP BY 
    ORDER BY 
    LIMIT 
    *LIMIT는 제일 마지막에 적어준다!
*/

-- 페이지당 10개의 게시글 
-- 12 페이지를 출력하시오. 
SELECT * 
FROM board
LIMIT 110, 10; 

SELECT *
FROM board
LIMIT 10 OFFSET 110; 

-- 페이지당 20개씩 
-- 36 페이지를 출력하시오. 
SELECT * 
FROM board
LIMIT 700, 20; 