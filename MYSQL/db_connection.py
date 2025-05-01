import mysql.connector
from mysql.connector import Error

def connect_to_database():
    try:
        # 데이터베이스 연결 설정
        connection = mysql.connector.connect(
            host='localhost',
            user='root',  # 사용자 이름
            password='your_password',  # 비밀번호
            database='aloha'  # 데이터베이스 이름
        )
        
        if connection.is_connected():
            print("데이터베이스에 성공적으로 연결되었습니다.")
            
            # 커서 생성
            cursor = connection.cursor()
            
            # SQL 쿼리 실행 예시
            cursor.execute("SELECT * FROM employees")
            
            # 결과 가져오기
            results = cursor.fetchall()
            
            # 결과 출력
            for row in results:
                print(row)
                
    except Error as e:
        print(f"데이터베이스 연결 중 오류 발생: {e}")
        
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("데이터베이스 연결이 종료되었습니다.")

if __name__ == "__main__":
    connect_to_database() 