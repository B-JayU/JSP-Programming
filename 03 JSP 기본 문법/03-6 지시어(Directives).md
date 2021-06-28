# 지시어(Directives)
- 태그 형태를 이용하여 JSP 파일의 속성 및 특별한 지시 사항을 기수
  - JSP 컨테이너에게 해당 페이지를 어떻게 처리해야 하는지 전달하기 위한 내용 기술
  - 일반적으로 이클립스의 템플릿에 의해 자동 작성됨.

# 지시어 형식 및 종류
- <%@ directives property="property-value" %>
  - directives와 property 모두 대소문자를 구분
  - 속성값 기술시 반드시 큰따옴표를 이용

  <table>
    <th> 종류에 따른 사용 예
    <th> 용도
    <tr>
      <td><%@ page property="property-value" %>
      <td>JSP JSP 페이지에 대한 속성 지정
    <tr>
      <td><%@ include file="file-name" %>
      <td>JSP 태그 부분에 지정한 페이지를 정적으로 삽입
    <tr>
      <td><%@ taglib url="url-value" prifix="pfx-value" %>
      <td>JSP 새로운 태그를 정의하여 이용
  </table>
        
# page 지시어
- 컨테이너에서 현재 JSP 페이지를 처리하는데 필요하 각종 속성을 기술하는 지시어
  
        
