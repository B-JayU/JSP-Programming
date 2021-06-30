# 내장 객체 request
- 웹 클라이언트로부터 전달 받은 사용자 요청과 관련된 기능을 제공
  - 클라이언트에서 서버로 전달된 정보를 처리할 때 사용
    - HTML 폼 태그를 통해 입력된 값을 JSP에서 가져올 때
  - javax.servlet.http.HttpServletRequest 인터페이스로부터 파생된 객체

## request 객체의 주요 메서드
<table>
  <th> 반환값
  <th> 메서드
  <th> 사용 용도
  <tr>
    <td> Enumeration<String>
    <td> getParameterNames()
    <td> 현재 요청에 포함된 매개변수 이름을 반환
  <tr>
    <td> String
    <td> getParameter(String name)
    <td> name과 이름이 같은 매개변수의 값을 반환,<br> 없으면 null을, 여러 개이면 첫 번째 값 변환
  <tr>
    <td> String[]
    <td> getParameterValues(String name)
    <td> name과 이름이 같은 매개변수들의 값을 갖는 배열 반환, 없으면 null 반환
  <tr>
    <td> Cookie[]
    <td> getCookies()
    <td> 모든 쿠키값을 배열로 반환
  <tr>
    <td> String[]
    <td> getMethod()
    <td> 현재 요청의 전달 방법 반환. GET/POST
  <tr>
    <td> int
    <td> getSession()
    <td> 현재 세션 객체 반환
  <tr>
    <td> String
    <td> getRemoteAddr()
    <td> 요청을 보낸 클라이언트 IP 주소 반환
  <tr>
    <td> String
    <td> getProtocol()
    <td> 현재 서버의 프로토콜을 반환
  <tr>
    <td> void
    <td> setCharacterEncoding(String env)
    <td> 현재 JSP로 전달된 요청 내용을 지정한 문자셋(env)으로 변환
 </table>     
