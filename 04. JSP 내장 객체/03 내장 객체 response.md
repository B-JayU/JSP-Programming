## 내장 객체 response
- 웹 클라이언트로 보내는 사용자 응답과 관련된 기능을 제공
  - 사용자 요청을 처리
  - 응답을 다른 페이지로 전달

  - javax.servlet.http.HttpServletResponse 인터페이스로부터 파생된 객체
    - request 객체 만큼 자주 사용되지는 않음

## response 객체의 주요 메서드
<table>
  <th> 반환값
  <th> 메소드
  <th> 사용 용도
  
  <tr>
    <td> void
    <td> setContentType(String type)
    <td> 새로운 MIME 타입을 지정<br> (What is MIME?)
  <tr>
    <td> void
    <td> sendRedirect(String url)
    <td> 사용자 요청을 지정 페이지(url)로 보냄
</table>

- setContentType()
  - page 지시어에서 지정한 contentType을 무시하고 새로 설정
      
- sendRedirect()
  - 단순히 사용자 요청을 지정 페이지로 보냄
      - request/response 객체를 새로 생성
        - 이전 페이지의 사용자 요청이 request로 받아지는 것이 아니라 새로운 request가 생성됨.
          - 고로, 이전 페이지의 내용이 다음 페이지로 전달되지 않는다.
          - 단순 사용자 요청을 보내는 것이므로 새로운 정보를 다른페이지로 전달 할 수 없다.
  - ref) forward action
      - 지정 페이지로 원래 요청에 포함된 request/response 를 전달
- 나머지 메서드들은 주로 응답 페이지의 헤더를 다룸
