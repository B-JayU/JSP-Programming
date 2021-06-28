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
- 컨테이너에서 현재 JSP 페이지를 처리하는데 필요한 각종 속성을 기술하는 지시어
  - 보통 JSP 페이지 매 앞에 위치
  - 서로 다른 속성들을 한 번에 지정 가능
    - <%@ page 속성1="속성값1" 속성2="속성값2" ... %>
    
## page 지시어: language 속성
- 표현식, 선언, 스크립트릿에서 사용할 스크립트 언어를 지정
  - 현재는 자바 언어만 지원
    - 속성값: java(default)
    - 향후 JSP의 확장을 고려해 추가된 속성

## page 지시어: contentType 속성
- 현재 JSP 페이지를 클라이언트에서 처리하기 위한 컨텐츠 유형을 지정
  - MIME(Multipurpose Internet Mail Extension) 유형
    - 웹 클라이언트 측에서 이 속성값에 따라 전달되는 내용을 어떻게 처리할지 결정 함
  - 속성값:
    - text/html (기본값)
        - 기본으로 ISO-8859-1의 문자셋이 지정
    - text/html; charset=방식
        - MIME에서의 문자셋도 함께 지정 가능
   
## page 지시어 : pageEncoding 속성
- 컨테이너에서 처리할 JSP 페이지의 인코딩 방식을 기술
  - 속성값 : 
    - ISO-8859-1 (기본값)
  - JSP 2.0 스펙에 추가된 속성
    - 이전 버전을 지원하는 컨테이너의 경우 사용 불가

## JSP에서 한글 표시 처리 설정
- page 지시어에 다음의 속성 기술
  - pageEncoding="UTF-8" contentType="text/html; charset=UFT-8"
  - 한글 문자셋 비교
    - EUC-KR
      - 확장 유닉스 코드(Extended Unix Code) 중 한글 인코딩 방식
      - 국내 대상 사이트 구축시엔 문제없음
  - UTF-8
    - 유니코드 표준
    - 다국어 통합 사이트 구축시엔 추천

## page 지시어 : import 속성
- 자바의 import 문장을 대체하는 속성
  - 자바 코드에 사용할 클래 패키지들을 지정
  - 자바의 import 문과 달리 콤마를 이용해 여러 패키지를 한 번에 지정 가능
  - 하나의 JSP 페이지에 import 속성을 여러 번에 나눠 기술하는 것도 가능
  - 자동 임포트 패키지
    - java.lang.*
    - javax.servlet.*
    - javax.servlet.http.*
    - javax.servlet.jsp.*
