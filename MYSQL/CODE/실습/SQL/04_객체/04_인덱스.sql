-- INDEX 생성 전 성능 확인 
SET PROFILING = 1; 

-- 가장 많은 성을 가진 사람을 알기 위한 쿼리 
SELECT last_name
        ,COUNT(*) count
FROM employees
GROUP BY  last_name
ORDER BY count DESC
LIMIT 1
;

-- 쿼리 
SELECT * 
FROM employees
WHERE last_name = 'Baba'
  AND gender = 'M'
;

-- 프로파일 확인 
SHOW PROFILE FOR QUERY 1;

SELECT NOW(6);

-- 쿼리 
SELECT * 
FROM employees
WHERE last_name = 'Baba'
  AND gender = 'M'
;

SELECT NOW(6);

--2025-05-02 10:58:07.367233
--2025-05-02 10:58:16.322247

/*
2025-05-02 11:02:39.139694
*/

-- 인덱스 생성 
CREATE INDEX index_lastname_gender ON employees (last_name, gender);

DROP INDEX index_lastname_gender ON employees;

EXPLAIN 
SELECT * FROM employees WHERE last_name = 'Smith' AND gender = 'M';

-- 인덱스 삭제 
DROP INDEX index_lastname_gender ON employees;


