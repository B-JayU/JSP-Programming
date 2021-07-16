## SQL(Structured Query Language)
- 데이터베이스의 데이터를 관리하기 위한 관계형 표준 질의 언어
  - DB 종류에 상관없이 모든 DB는 SQL을 통해서 데이터 관리가 가능
  - 기본적으로는 ANSI 표준을 따르나 DB 회사별로 조금씩 차이가 있음.
  
  - SQL 문
    - DDL (데이터 정의 언어, Data Definition Language)
      - Create Table : 테이블 생성
      - Alter Table : 테이블 구조 변경
      - Drop Table : 테이블 삭제
      
    - DML (데이터 조작 언어, Data Manipulation Language)
      - Select : 데이터 조회
      - Insert : 데이터 삽입
      - Delete : 데이터 삭제
      - Update : 데이터 수정
      
## MySQL 질의어 형식
- MySQL 질의어에는 대소문자를 구분하지 않음.
  - 사용되는 키워드, 함수, 테이블명, 속성명, 수식 등
  - 여러 줄에 걸쳐 입력 가능
  - 문장의 끝은 세미콜론(;)으로 끝남

- 예:
  - select version(), current_date;
    - 데이터베이스의 버전 및 오늘 날짜 확인 가능

## 주요 자료형
<table>
  <th>분류 
  <td>MySQL </td>
  <td>크기</td>
  <td>설명</td>
  <tr>
    <td rowspan=2> 문자열</td>
    <td> char(m) </td>
    <td> 1 <= m <= 255</td>
    <td> 고정길이의 문자열, 남은 공간은 공백으로 채움</td>
  </tr>
  <tr>
    <td> varchar(m) </td>
    <td> len+1, where len <= m && 1 <= m <= 255 </td>
    <td> 가변길이으 문자열, 효율적 저장이 가능하나 처리속도가 더 느림</td>
  </tr>
  <tr>
    <td rowspan=2> 수치 </td>
    <td> int </td>
    <td> 4 </td>
    <td> 정수형 </td>
  </tr>
  <tr>
    <td> double </td>
    <td> 8 </td>
    <td> 부동소수점수 </td>
  </tr>
  <tr>
    <td rowspan=3> 날짜 시간</td>
    <td> date </td>
    <td> 3 </td>
    <td> 1000-01-01 ~ 9999-12-31 </td>
  </tr>
  <tr>
    <td> datetime </td>
    <td> 8 </td>
    <td> 1000-01-01 00:00:00 ~ 9999-12-31 23:59:59 </td>
  </tr>
  <tr>
    <td> time </td>
    <td> 3 </td>
    <td> -839:58:58 ~ 838:59:59 </td>
  </tr>
  <tr>
    <td> 논리 </td>
    <td> boolean </td>
    <td> 1 </td>
    <td> true, false </td>
  </tr>
</table>  

## 테이블 생성
- 새로운 테이블 스키마 정으 후 인스턴스 생성
- 형식
  - create table <테이블명> (<필드리스트>);
    - <필드리스트> : 필드명 자료형 [제약사항]
  - 예: department 테이블을 생성하는 SQL문
  - ``` sql
    create table department(
      dept_id char(10) not null,
      dept_name varchar(14) not null,
      office varchar(10)
    );
    ```
## 테이블 생성시 기본키 설정 방법
- department 테이블 생성시 기본키 설정
  - ``` sql
    create table department(
      dept_id char(10) not null,
      dept_name varchar(14) not null,
      office varchar(10),
      constraint pk_department primary key(dept_id)
    );
    ```
  - pk_department
    - 기본키를 정의한 제약식의 이름
  - 기본키를 정의한 필드는 자동적으로 널을 허용 안함
    - 기본키 정의 필드에 not null 생략 가능

## 테이블 생성시 외래키 설정 방법
  - student 테이블 생성시 외래키 설정
    ``` sql
    create table student(
      stu_id char(10),
      resident_id char(14) not null,
      name varchar(10) not null,
      year int,
      address varchar(20),
      dept_id char(10),
      constraint pk_student primary key(stu_id),
      constraint fk_student foreign key(dept_id) references department(dept_id)
    );
    ```
    - 기본키 : stu_id 필드
      - not null이 암묵적을 적용됨.
    - 외래키 : dept_id 필드
      - department 테이블의 dept_id를 참조토록 설정
      - fk_student : 외래키를 정의한 제약식 이름

## 테이블 삭제
- 테이블 인스턴스 및 스키마 삭제
- 형식
  - drop table <테이블명>
- 주의
  - 다른 테이블에서 외래키로 참조되는 경우 삭제 불가
    - class 테이블은 takes 테이블에 외래킬 참조된다면, takes 테이블을 삭제하기 전에는 class 테이블 삭제 불가

## 기본키, 외래키 관련 주의사항
- 외래키를 필드로 갖는 테이블을 생성할 때에는 참조하고 하는 대상 테이블을 먼저 생성해야 함.
- 다른 테이블이 외래킬 참조하는 필드를 갖는 테이블 삭제할 때에는
  - 참조하는 해당 테이블들을 먼저 삭제해야 함

## 레코드 삽입
- 테이블에 새 레코드 추가
- 형식
  - insert into <테이블명> (<필드리스트>) values (<값리스트>);
    - <필드리스트>
      - 삽입할 레코드의 각 값들에 매칭되는 필드들
        - 테이블 생성시 지정한 필드 순서와 일치하지 않아도 됨
      - 일부/전부 생략 가능
        - 일부 생략 생략된 필드에는 null 값이 입력됨
    - <값리스트>
      - <필드리스트> 항목고 순서에 맞춰진 삽입될 레코드의 값들
      - <필드리스트>가 전체 생략된 경우 <값리스트>에는 테이블 생성시 나열한 순서대로 나열


## 레코드 삽입 예
- 학과 테이블에 레코드 삽입 예
  - 기본
    ``` sql
    insert into department(dept_id, dept_name, office) values ('920', '컴퓨터학부', '201호');
    ```
    
  - 필드 명 기술시 임의 순서로 나열 가능
    ``` sql
    insert into department(dept_name, office, dept_id) values ('간호학부','703호', '921');
    ```
    
  - 필드명 일부 생략 가능
    ``` sql
    insert into department(dept_id, dept_name) values ('922', '경영학부');
    ```
    - 제약사항에 not null이 기술된 필드는 생략 불가
    
  - 필드명 전체 생략 가능
    - 테이블 스키마에 기술한 필드 순으로 초기값 나열
    ``` sql
    insert into department values ('923', '생명과학부', '407호');
    ```

## 레코드 수정
- 테이블에 삽입된 레코드 값의 수정
- 형식
  - update <테이블명>
  - set <수정내역>
  - where <조건>
    - <수정내역>
      - 각 필드의 값을 수정하기 위한 산술식

    - <조건>
      - 수정 대상이 되는 레코드에 대한 조건 기술
      - 관계 대수에서 선택 연산의 조건식과 같은 의미

## 레코드 수정 예
- 여러 필드 값 수정시 수정내역을 콤마(,)로 구분
  - 고희석 교수의 정보 수정
    - 직위를 '교수'로 힉과번호는 '923'으로 수정
    ``` sql
      update professor
      set position='교수', dept_id='923'
      where name='고희석';
    ```
    - 안전 갱신 모드 해제 필요
    
- where 절 생략시 전체 레코드에 대해 수행
  - 모든 학생들의 학년을 하나씩 증가
    ``` sql
    update student
    set year = year + 1;
    ```
    - 안전 갱신 모드 해제 필요
    
## 안전 갱신 모드(Safe Update Mode)
- update에서 key 컬럼을 사용하지 않은 조건문
  - 안전 갱신 모드 설정 상황에선 오류 발생
  - MySQL의 default

- 안전 갱신 모드 해제
  - command Line Client에서 다음 문장 실행
    - set SQL_SAFE_UPDATES=0;
  - workBench에서 다음 설정 실행
    - [Edit]-[Preferences] 메뉴 실행
    - [SQL Editor] 항목 선택 후
    - 맨 알 체크박스 "Safe Updates ..." 앞 체크 해제 후 재연결

## 레코드 삭제
- 테이블에 삽입된 레코드 삭제 
- 형식
  - delete from <테이블명>
  - where <조건>;
    - <조건>
      - 삭제 대상이 되는 레코드에 대한 조건 기술
      - where절 생략시 모든 레코드 삭제
        - ref) 안전 갱신 모드 해제 필요

## 기본키. 외래키 관련 주의사항
- 레코드 삽입
  - 외래키가 참조하는 테이블에 존재하는 값만 사용 가능
  - 미확정의 의미로 NULL 값은 가능

- 레코드 수정
  - 외래키가 참조하느 테이블에 존재하는 값만 사용 가능
 
- 레코드 삭제
  - 외래키로 참조하는 레코드를 먼저 삭제해야 참조되는 레코드를 삭제 할 수 있음
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    
