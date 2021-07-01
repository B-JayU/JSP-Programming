## HTTP 프로토콜 특징과 내장 객체 속성 관리
- HTTP는 비연결형 서비스
  - 연결 - 요청(request) - 응답(response) - 해제
  - 비연결형 : 웹 클라이언트에서 웹 브라우저 통해 웹 서버에게 요청을 보내고 응답을 받는 동안에만 연결되는 서비스.
    - 하나의 페이지를 요청한 이후에, 새로운 페이지를 요청하면 이전의 연결과 별도의 연결을 확립하여야 함.
    - 이전 페이지의 내용을 새로운 페이지 요청에 활용할 수 없는 한계점이 존재 함.
 
- JSP는 HTTP 프로토콜을 사용하는 웹 환경에서 구동되는 프로그램
  - 각 페이지에서 사용된 정보를 다른 페이지에서 기본적으로 공유하지 못함.

- JSP는 내장 객체들을 통해 서로 다른 페이지에서 처리된 값을 공유
  - page, request, session, application 객체

- application : 여러 사용자 간의 데이터를 공유, 전역적인 사용가능, 톰캣 종료시 까지 데이터 유지 가능
- session : 사용자마다 분리된 저장 영역, 한 사용자의 여러 페이지들 간에 정보 공유 가능
- request : 페이지 간의 데이터를 직접 전달하기 위해 request 객체 전달

### 주요 내장 객체의 생성/소멸 시점
<table>
  <th> 내장객체
  <th> 생성시점
  <th> 소멸시점
  <tr>
    <td> request
    <td> 해당 페이지 요청 시점
    <td> 해당 페이지 로딩 완료 시점
  <tr>
    <td> session
    <td> 해당 컨텍스트 내 특정 파일 요청 시점
    <td> 웹 브라우저 종료 시점 <br> 일정시간 경과 시점
  <tr>
    <td> application
    <td> 웹 애플리케이션 시작 시점
    <td> 웹 애플리케이션 종료 시점
</table>

### 주요 내장 객체의 속성 관리
- 맵 형태로 속성 관리
  - void setAttribute(String name, Objecct attr)
    - 속성 name에 속성값 attr을 할당
      - session.setAttribute("name", "홍길동");
  
  - Object getAttribute(String name)
      - 속성 name에 해당하는 속성값 반환
      - 반환되는 객체는 Object의 자료형을 가지므로 저장시 클래스형으로 다운 캐스팅 필요
        - String strName;
        - strName = (String) session.getAttribute("name");
      
### 컨테이너 기반 프로그램 vs. JSP 내장 객체
- 최신 프로그램 아키텍처의 특지 중 하나
  - 컨테이너
    - 프로그램 실행에 관여하면서 모듈화되 프로그램을 실행할 수 있게 하고,
    - 프로그램 간의 원활한 데이터 교환을 지원하는 소프트웨어

- JSP에서 내장 객체를 이용한 속성 관리가 가능한 이유
  - 톰캣 컨테이너에 의 JSP와 빈즈 객체들을 관리/실행 하기 때문

### 컨테이너 기반 프로그램의 장점
- 일반적
  - 모듈화가 용이
  - 독립적으로 실행되느 모듈 간의 데이터 교환 용이
  - 개별 프로그램에서 화면/상태 전환시 데이터 유지/관리가 용이
      
- JSP에서
  - 내장 객체를 통해 임의의 객체를 각각의 생명주기 시점에 따라 공유 가능

### MVC 패턴과 JSP 내장 객체
- MVC 패턴
  - 프로그램을 Model-View-Controller로 구분해 구현하는 소프트웨어 디자인 패턴
- JSP는 뷰의 역할만 수행해야 함
  - 화면에 데이터 출력하느 기능 담당
  - 컨트롤러에서 처리한 데이터느 내장 객체르 통해 전달 받음.
    - 예: request.setAttribute()로 저장 후 JSP(view)로 forwarding
- view를 효과적을 구성하기 위해선 표현 언어(Expression Language)와 JSTL 이용

