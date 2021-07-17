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
