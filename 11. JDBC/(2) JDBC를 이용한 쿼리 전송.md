## 데이터베이스 사용(1)
- Statement 클래스
  - DB 연결로부터 SQL문을 실행하기 위해서 사용
  - Connection 객체로부터 createStatement() 호출로 얻음
  - 주요 메서드
  <table>
  <th> 메소드
  <th> 설명
  <tr>
    <td> ResultSet excuteQuery(String sql)
    <td> 주어진 SQL문을 실행하고 결과는 ResultSet 객체에 반환
  </tr>
  <tr>
    <td> int executeUpdate(String sql)
    <td> INSERT, UPDATE, 또는 DELETE과 같은 SQL문을 실행 <br/>
         SQL문 실행으로 영향의 받은 행의 개수나 0을 반환
  </tr>
  <tr>
    <td> void close()
    <td> Statement 객체의 데이터베이스와 JDBC 리소스를 즉시 반환
  </tr>
  </table>
  
      - executeQuery() : 데이터 검색을 위해
      - executeUpdate() : 데이터 변경(추가/수정/삭제) 위해

## 데이터베이스 사용 예
- 검색 명령 예
```java
  rs = stat.executeQuery("SELECT stu_id, name FROM student;");
  
  while(rs.next()) {
    String stu_id = rs.getString("stu_id");
    String name = rs.getString("name");
    System.out.println(stu_id + "\t" + name);
  }
```

- 삽입 명령 예
```java
  String sql = "INSERT INTO student ";
  sql += "(stu_id, resident_id, name, year) ";
  sql += "VALUES ";
  sql += "( '" + "123456" + "'";
  sql += ", '" + "991231-1023456" + "'";
  sql += ", '" + "홍길동" + "'";
  sql += ", " + 1;
  sql += ");";
  
  System.out.println(sql);
  stat.executeUpdate(sql);
```

## 데이터베이스 사용(2)
- PreparedStatement 클래스
  - SQL에 필요한 변수 데이터 대신 "?"로 기술하고 그 값은 메서드를 통해 설정하는 방식
    - setXxx() 메서드는 기본 자료형별로 제공됨
  - Statement 객체보다 구조적이고 편리해 권장됨
  ```java
    String sql = "insert into jdbc_test values(?, ?);";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, request.getParameter("username"));
    pstmt.setString(2, request.getParameter("email"));
    
    if (request.getParameter("username") != null)
      pstmt.executeUpdate();
  ```
 
 ## 데이터베이스 사용(3)
 - ResultSet 클래스
  - SQL문 실행 결과를 얻어 오기 위해 사용
  - 현재 레코드의 위치를 가리키는 커서(cursor) 관리
    - 커서의 초기값은 첫 번쨰 레코드 이전을 가리킴
<table>
  <th>메소드
  <th>설명
  <tr>
    <td> boolean first()
    <td> 커서를 첫 번째 행으로 이동
  </tr>
  <tr>
    <td> boolean last()
    <td> 커서를 마지막 행으로 이동
  </tr>
  <tr>
    <td> boolean next()
    <td> 커서를 다음 행으로 이동
  </tr>
  <tr>
    <td> boolean previous()
    <td> 커서를 이전 행으로 이동
  </tr>
  <tr>
    <td> boolean absolute()
    <td> 커서를 지정된 행으로 이동
  </tr>
  <tr>
    <td> boolean isFirst()
    <td> 첫 번째 행이면 true 반환
  </tr>
  <tr>
    <td> boolean isLast()
    <td> 마지막 행이면 true 반환
  </tr>
  <tr>
    <td> void close()
    <td> ResultSet 객체의 데이터베이스와 JDBC 리소스를 즉시 반환
  </tr>
  <tr>
    <td> Xxx getXxx(String columnLable) 
    <td> Xxx는 해당 데이터 타입을 나타내며 현재 행에서 지정된 열 이름에 해당하는 데이터를 반환. 예를 들어 int형 데이터를 읽는 메소드는 getInt()임
  </tr>
  <tr>
    <td> Xxx getXxx(int columnIndex) 
    <td> Xxx는 해당 데이터 타입을 나타내며 현재 행에서 지정된 열 인덱스에 해당하는 데이터를 반환. 예를 들어 int형 데이터를 읽는 메소드는 getInt()임
  </tr>  
</table> 

 ## DB로부터 결과 받기 예
 ``` java
    try{
		String sql = "select name, email from contact;";
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		int i =1;
		while(rs.next()) {
			out.println(i + " : " + rs.getString(1) + " , " + rs.getString("email") + "<br />");
			i++;
		}
	}
	catch(Exception e){
		System.out.println(e);
	}
```
    
## DB 연결 해제
- DB 연결은 중요한 자원이고 제한적이므로 사용이 끝난 연결은 반드시 해제 필요
``` java
    finally {
          try{
            if (rs!= null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
          }
          catch(SQLException e) {
            e.printStackTrace();
          }
    }
```
