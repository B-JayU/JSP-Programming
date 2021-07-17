## JDBC(Java DataBase Connectivity)
- 자바 프로그램에서 데이터베아스를 표준화된 방법으로 접속할 수 있도록 만든 API 규격
  - 개발자는 DB 종류에 무관하게 표준화된 API를 이용해 프로그램 개발 가능
  - DB 종류 변경시 프로그램 수정 최소화

  - 애플리케이션 --> 사용 --> JDBC 드라이버 관리자 <-- 구현 <-- 오라클/MySQL/IBM DB2 JDBC 드라이버 -> 오라클/MySQL/IBM DB2 DMBS

## JDBC 드라이버 설치
- 각 DBMS 제조업체 홈페이지를 통해 다운로드
- MySQL JDBC 드라이버
  - http://dev.mysql.com/downloads/connector/j/

- 다양한 설치 방법
  - 1. [Java설치경로₩jre8₩lib₩ext]에 복사
  - 2. [톰캣설치경로₩lib]에 복사
  - 3. 이클립스 프로젝트의 [WebContent₩WEB-INF₩lib]에 복사
    - 배포를 고려하는 경우 3번이 가장 적합
  
## JDBC 프로그램 개요
- JDBC 프로그래밍 단계
   1. JDBC 드라이버 로드
     - System.setProperty()
     - Class.forName()
   2. 데이터베이스 연결
     - java.sql.Connection
   3. Statement 생성
     - java.sql.Statement
     - java.sql.PreparedStatement
   4. SQL문 전송
     - java.sql.Statement
       - executeQuery()
       - executeUpdate()
   5. 결과 받기
     - java.sql.ResultSet
   6. 연결 해제
     - java.sql.Connection
       - close()

## JDBC 드라이버 로딩 DB 연결 코드 예
``` java
  Connection conn = null;
  PreparedStatement pstmt = null;
   
  String jdbc_driver = "com.mysql.ch.jdbc.Driver";
  String jdbc_url = "jdbc:mysql://localhost/jspdb"; // IP주소[:포트번호]/스키마명
  jdbc_url += "?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
   
  try {
       Class.forName(jdbc_driver); // jdbc_driver의 패키지로부터 driver 객체를 생성
   
       conn = DriverManager.getConnection(jdbc_url, "jspbook", "1234");
   
       pstmt.close();
       conn.close();
  }
  catch(Exception e) {
       System.out.println(e);
  } 
%>
```

