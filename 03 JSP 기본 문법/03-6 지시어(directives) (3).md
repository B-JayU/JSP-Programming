## include 지시어
- 현재 JSP 파일에 다른 HTML 문서나 JSP 문서를 포함하기 위한 기능을 제공
  - <%@ include file="포함할_파일명" %>
    - 포함될 파일은 HTML 기본 태그 관련 부분이 생략될 수 있음

  - 해당 파일을 포함시킨 후 컴파일
    - 여러 페이지에 공통으로 들어가는 내용 중 잘 바뀌지 않는 정적 페이지를 포함할 때 유용
  
  - 여러 정보의 조합으로 한 화면을 구성할 때 유용
    - 각 기능 혹은 화면을 모듈화하여 구성 / 재활용 용이

## taglib 지시어
- JSP 기능을 확장하기 위해 만들어진 커스텀 태그 라이브러리를 사용하기 위한 지시어
  - <%@ taglib uri=",,,.tld" prefix="..." %>
    - uri : TLD(Tag Library Descriptor) 파일을 지정
      - URI는 URL과 달리 경로만을 표시
    - prefix: 현재 JSP에서 커스텀 태그를 사용하기 위한 이름

  - 커스텀 태그는 공통으로 활용하거나 특정 기능을 HTML 태그 형태로 모듈화 하는 기술임
  - 유용한 기능을 하는 사용자 별도의 태그 라이브러리 라는 지시어를 통해 포함시킬 수 있다
