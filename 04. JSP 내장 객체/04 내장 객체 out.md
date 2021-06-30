## 내장 객체 out
- 웹 클라이언트로 보내는 응답 페이지의 내용 구성을 위한 출력 스트림 객체
  - 스크립트릿에서 텍스트를 출력하는데 사용
    - 서버의 콘솔이 아닌 웹 브라우저로 전달됨.
  - javax.servlet.jsp.JspWriter 클래스 형 객체
    - 스트림 출력과 버퍼링에 관련된 메서드 제공.
  
### out 객체의 주요 메서드
<table>
  <th> 반환값
  <th> 메소드
  <th> 사용 용도
  
  <tr>
    <td> void
    <td> print(자료형 content)
    <td> content 내용을 출력
  <tr>
    <td> void
    <td> println(자료형 content)
    <td> content 내용과 끝에 개행 문자를 함께 출력
  <tr>
    <td> int
    <td> getBufferSize()
    <td> 출력 버퍼 크기를 byte 단위로 반환
  <tr>
    <td> int
    <td> getRemaining()
    <td> 출력 버퍼의 남아 있는 크기를 반환(byte)
  <tr>
    <td> void
    <td> clearBuffer()
    <td> 출력 버퍼에 있는 내용을 모두 지움.
  <tr>
    <td> void
    <td> flush()
    <td> 출력 버퍼를 모두 비움.
  <tr>
    <td> void
    <td> close()
    <td> 출력 스트림을 닫고 출력 버퍼를 비움.
</table>
      
- "출력 버퍼를 비움"
  - 출력 버퍼의 내용을 출력 스트림을 통해 강제로 내보내 출력을 수행함을 의미
  - 버퍼의 내용을 지움은 출력 스트림을 통해 출력되기 이전에 버퍼의 내용을 지우기 때문에, 어떠한 내용도 출력되지 아니함을 의미함.
      
- 출력이란 웹 브라우저로 전달되는 HTML 문서에 출력함을 의미
  - 웹 브라우저 의해 적절히 해석되어 표현됨
