## 내장 객체 application
- 웹 어플리케이션에서 유지 관리되는 여러 정보를 관리하는 객체
  - 각 서블릿이 실행되는 환경이나 서버 자원과 관련한 정보를 얻거나 로그 파일에 기록 수행
  - JSP에서 공유하려고 하는 각종 정보를 설정하고 참조
  - 보통 톰캣의 시작과 종료 라이프 사이클을 가짐.

  - javax.servlet.ServletContext 인터페이스로부터 파생된 객체
    - 내부적으로 config 객체를 통해 생성됨.

  - 주로 관리 기능의 웹 어플리케이션 개발에 유용

### application 객체의 주요 메서드
- 서블릿과 서버 간의 자료를 교환하는 여러 메서드 제공
<table>
  <th>반환값
  <th>메소드
  <th>사요 용도
  <tr>
    <td>String
    <td>getServerInfo()
    <td>JSP/서블릿 컨테이너의 이름과 버전 반환
  <tr>
    <td>Enumeration<String>
    <td>getAttributeNames()
    <td>현 객체에 저장된 속성들을 반환
  <tr>
    <td>void
    <td> "setAttribute(String name, Object value)"
    <td>현 객체의 속성 name에 value를 할당
  <tr>
    <td>Object
    <td> "getAttribute(String attr)"
    <td>현 객체으 속성 attr 설정된 값을 반환
  <tr>
    <td>void
    <td> "removeAttribute(String name)"
    <td>속성 name 삭제
  <tr>
    <td>void
    <td>"log(msg)"
    <td>문자열 msg를 로그 파일에 기록
  <tr>
    <td>void
    <td>log(msg, exception)
    <td>예외 상황에 대한 정보를 포함하여 로그 기록
</table>
      
- session은 시간이 만료되거나, session이 종료되면 서버에 저장하고 있던 정보가 지워진다.
- application은 서버가 종료되기 전까지 모든 정보를 기록 관리
  - 게속해서 새로운 정보가 추가됨에 따라 서버의 부담이 증대

- session 에서는 다른 웹 브라우저에서 실행 하였을 경우, 새로운 객체를 생성하였지만
- application 에서는 다른 웹에서 실행 하더라도, 이전 웹페지의 요청 및 정보를 가지고 있음.
  - servlet 전체의 전역변수를 관리하는 느낌
