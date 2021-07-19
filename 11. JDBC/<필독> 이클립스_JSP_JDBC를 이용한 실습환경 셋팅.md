## *** tomcat 연결하기
### 1. 새로운 workspace 생성하기
### 2. Dynamic Web project를 생성한다.
### 3. [eclipse] - [preference] - [Server] - [Runtime environmnets]
### 4. 프로젝트 실행 -> run on server 확인하기
---------------------------------------------------------------------
### IF it does not work, 
### 1. 프로젝트 -> 마우스 우클리 -> Properties 선택
### 2. Libraries -> Classpath 에서 Add Library 선택
### 3. Server Runtime -> 사용하는 apache tomcat server를 선택한다
### 4. Java build path -> jre System library edit version Java SE-15로 변경하기

## *** JDBC 연동하기
### 1. 프로젝트 내에서 src-main-webapp/Webcontent/web-inf-lib 폴더르 확인
### 2. 해당 폴더 아래에 mysql=connector-java-(버전).jar 파일을 복사 붙여넣기 한다.

## *** jar 파일의 클래스 import
### 1. 데이터베이스에 데이터 쓰기 / 읽기 하는 jsp 파일 위에 <@ import="java.sql.*" @> 적어준다


## *** 프로젝트 내 jsp 파일 생성 즉시, 빨간줄 뜨는 현상
### 1. [build path] - [configure build path] - [library] - [classModule]에 addLibrary -  tomcat 서버 등록
