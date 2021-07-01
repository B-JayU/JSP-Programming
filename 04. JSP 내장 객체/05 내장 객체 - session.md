## 내장 객체 session
- 웹 서버에 웹 클라이언트 마다 각기 다른 정보를 일시적으로 저장하여 사용하기 위한 객체
  - 비연결형 프로토콜인 HTTP의 한계를 보완
    - 예: 로그인 페이지, 장바구니 페이지 등
  - 접속하는 각 사용자 별로 따로 생성되며
  - 일정시간(기본값: 30분) 유지되다 자동 소멸됨
  - 쿠키와 비슷한 역할
    - 단, 쿠키는 웹 클라이언트 측에 정보를 저장

  - javax.servlet.http.HttpSession 인터페이스로부터 파생된 객체

### session 객체의 주요 메서드
<table>
  <th> 반환값
  <th> 메소드
  <th> 시용 용도
  <tr>
    <td>String
    <td> "getId()"
    <td>현재 세션 고유의 ID를 반환
  <tr>
    <td>long
    <td>getCcreationTime()
    <td>세션 생성 시간 반환 (1970년 1뤌 1일 기준을 현재까지의 시간을 ms로 변환)
  <tr>
    <td>long
    <td>getLastAccessedTime()
    <td>현재 세션을 마지막으로 작업한 시간 반환 (1970년 1뤌 1일 기준을 현재까지의 시간을 ms로 변환)
  <tr>
    <td>int
    <td>getMaxIncativeInterval()
    <td>현재 세션의 유지 시간으 설정값 반환(초)
  <tr>
    <td>void
    <td>setMaxIacativeInterval(int interval)
    <td>세션의 유효 시간을 interval(초)로 설정
  <tr>
    <td>void
    <td>invalidate()
    <td>현재 세션을 종료(세셔 값 모두 삭제)
  <tr>
    <td>void
    <td> "setAttribute(String name, Object attr)"
    <td>세션의 속성 name에 attr을 할당
  <tr>
    <td>Object
    <td> "getAttribute(String name)"
    <td>세션의 속성 name에 설정된 세션값을 반환
  <tr>
    <td>boolean
    <td>isNew()
    <td>세션이 새로 만들어졌는지의 여부 반환   
</table>

- 동일한 컴퓨터 이더라도 서로 다른 웹브라우저에서 세션을 접근하여 새로운 session 객체가 생성된다.
  - 다른 sessionId를 갖게 된다.
