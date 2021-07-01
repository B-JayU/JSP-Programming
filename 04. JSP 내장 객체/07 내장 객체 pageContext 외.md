## 내장 객체 config
- 서블릿이 초기화되는 동안 JSP 컨테이너가 환경정보를 서블릿으로 전달할 때 사용하는 객체
  - xmb.xml에 설정된 초기화 파라미터를 참조하기 위한 용도로 사용
  - 서로 독립적인 JSP나 서블릿들이 서로 다른 시점에서 임의의 정보를 서로 교환하기 위해 활용 가능
    - JSP 만으로 구성된 경우나 별도의 데이터 공유 방법이 있다면 사용 불필요
  - javax.servlet.ServletCOnfig 인터페이스롭터 파생된 객체

## 내장 객체 page
- JSP 페이지가 자기 자신을 참조할 때 사용
  - page 지시어에서 language 속성이 java가 아닌 경우라면 유용하게 쓰일 수 있음.
    - java 인 경우라면 this로 바로 접근 가능
      - 따라서 거의 사용하지 않음

  - 현재는 org.apache.jasper.runtime.HttpJspBase 클래스 형 객체를 Object 형 참조변수로 가리킴
    - getServletInfo() 메서드 제공
      - JSP 페이지의 지시자의 속성 info에 지정한 값 반환

## 내장 객체 pageContext
- JSP 페이지에 관한 정보와 다른 페이지로 제어권을 넘겨줄 때 이용되는 메서드 제공
  - 다른 모든 내장 객체에 대한 접근 방법 제공
    - 내장 객체느 이미 별도의 식별자를 가지므로 별 의미가 없음
  - HTTP 요청을 처리하느 제어권을 다른 페이지로 넘기거나 포함할 때 사용
    - forward / include 액션으 내부 구현 코드

  - javax.servlet.jsp.PageContext 클래스 형 객체

- pageContext 객체으 주요 메서드
<table>
  <th> 메서드
  <th> 설명
  <tr>
    <td> getPage()
    <td> 현재 페이지에서 생성된 서블릿 인스턴스인 page 내장객체를 반환한다.
  <tr>
    <td> getRequest()
    <td> 현재 페이지의 클라이언트 요청 정보가 있는 request 내장객체를 반환한다.
  <tr>
    <td> getResponse()
    <td> 현재 페이지의 클라이언트 응답 정보가 있는 response 내장객체를 반환한다.
  <tr>
    <td> getOut()
    <td> 현재 페이지의 output stream인 out 내장객체를 반환한다.
  <tr>
    <td> getSession()
    <td> 현재 페이지의 session 내장 객체를 반환한다.
  <tr>
    <td> getServletConfig()
    <td> 현제 페이지의 config 내장객체를 반환한다.
  <tr>
    <td> getServletContext()
    <td> 현재 페이지의 서블릿 컨텍스트(application 내장객체)를 반환한다. 
  <tr>
    <td> getException()
    <td> 오류 페이지, 즉 page 지시어에서 errorPage 속성을 지정하 페이지에서 오류가 발생할 떄, 발생한 예외 정보가 있는 exception 내장객체를 반환한다.
  <tr>
    <td> forward(path)
    <td> 문자열 path에 지정된 페이지로 전달한다. (forward action과 동일한 기능)
  <tr>
    <td> include(path)
    <td> 문자열 path에 지정된 페이지를 포함시킨다. (include action과 동일한 기능)
</table>

### 내장 객체 exception
- page 지시어에서 오류 페이질 지정된 JSP 페이지로 전달된 예외 객체를 참조 =
  - 발생하 예외 상황에 대한 정보를 가져올 수 있음.
      - 보통 오류 페이지에서 로깅이나 추가적인 정보 획득을 위해 사용
  - java.lang.Throwable 인터페이스로부터 파생된 예외 객체
  <table>
    <th> 반환값
    <th> 메소드
    <th> 사용 용도
    <tr>
      <td> String
      <td> getMessage()
      <td> 예외 메시지 반환
    <tr>
      <td> String
      <td> toString()
      <td> 예외 객체의 정보를 문자열로 반환
    <tr>
      <td> void
      <td> printStackTrace()
      <td> 예외 발생-전달 과정의 추적 정보 출력
      </table>
</table>ㅇ
</table>ㅓ
</table>
