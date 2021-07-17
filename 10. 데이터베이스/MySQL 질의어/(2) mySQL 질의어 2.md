## 레코드 검색
- SQL에서 가장 많이 사용되고, 중요하며, 복잡한 명령
  - 기본 구조
  - 재명명 연산
  - like 연산
  - 집합 연산
  - 외부 조인
  - 집계 함수
  - 널의 처리
  - 중첩 질의

## 레코드 검색의 기본 구조
- 테이블에서 원하는 레코드의, 원하는 필드만을 뽑아냄
- 형식
  ``` sql
    select <필드리스트>    // 질의 결과로 출력할 필드들(추출 연산)
    from <테이블리스트>     // 질의 실행 과정에 필요한 테이블(카티션 프로덕트) 
    where <조건>;         // 검색할 레코드에 대한 조건(선택 연산) or 생략가능
  ```
## 레코드 기본 검색 예(1)
- 모든 학생들의 이름과 소속 학과명을 검색
``` sql
  select name, dept_name
  from department, student
  where department.dept_id=student.dept_id;
```
  - from 절에 나열한 테이블들을 카티션 프로덕트
  - where 절에 지정한 조건식을 만족하는 레코드만 선택
    - 같은 이름의 필드가 두 개 이상의 테이블에 나타날 때 혼동을 피하기 위해 '테이블명.필드명'으로 표현
  - 최종적으로 name 필드와 dept_name 필드만 추출
 
 ## 레코드 기본 검색 예(2)
 - 기본적으로 검색 결과에는 중복을 포함
  - 예: 모든 학생들의 주소를 검색
  ``` sql
  select address
  from student;
  ```
 
 - distinct
  - 중복된 레코드를 제거하고 검색하기 위해 사용
  - 예: 모든 학생들의 주소를 중복없이 검색
  ``` sql
  select distinct address
  from student;
  ```
  
## 레코드 기본 검색 예(3)
- 레코드의 모든 필드들을 추출하고자 할 때
  - 1안: 필드명들을 콤마로 구분하여 나열
    - 표시될 필드 순서 지정 가능
  - 2안: 필드명 대신 * 사용
    - 테이블 생성시 정의한 필드 순서대로 표시

- 예: student 테이블의 모든 레코드의 모든 필드검색
``` sql
  select * from student;
```

## 레코드의 기본 검색 예(4)
- select 절에 필드명 외에 산술식이나 상수 사용 가능
  - 예: 2014년 기준, 교수들의 이름과 재직 연수를 검색
  ```sql
  select name, 2014-year_emp    // year_emp : 교수임용된 연도
  from professor;
  ```
## 레코드의 기본 검색 예(5)
- 조인 질의
  - from 절에 두 개 이상의 테이블을 포함하는 질의 
  - 순수 카티션 프로덕트보다는 테이블 간의 레코드에 대한 관계가 명시된 조인이나 자연 조인이 대부분
  - 예: 학생들의 이름과 학번, 학과명을 검색
  ``` sql
  select student.name, student.stu_id, department.dept_name
  from student, department
  where student.dept_id=department.dept_id;
  ```
- where 절의 조건식은 and 나 or 로 연결
  - 예: 컴퓨터공학과 3학년생들의 학번 검색
  ```sql
  select student.stu_id
  from student, department
  where student.dept_id=department.dept_id and
        student.year=3 and
        department.dept_name='컴퓨터공학과';
  ```
## 레코드의 순서 지정(1)
- 테이블에 저장된 레코드 간의 순서는 의미 없음
  - 기본적으로 결과 레코드들의 순서는 예측 불가
- order by <필드리스트>;
  - 검색 결과를 <필드리스트> 기반으로 정렬하여 출력
    - 기본적으로 오름차순 정렬
  - 예: 3, 4학년 학생들의 이름과 학번을 검색
    - 학생 이름을 기준으로 오름차순 정렬
    - 동명이인 존재시 학번을 기준으로 오름차순 정렬
    ``` sql
    select student.name, student.stu_id
    from student
    where year=3 or year=4
    order by name, stu_id;
    ```
## 레코드의 순서 지정(2)
- 필드리스트의 각 필드명 옆에 asc나 desc를 명시해 정렬 순서 지정
``` sql
    select student.name, student.stu_id
    from student
    where year=3 or year=4
    order by name asc, stu_id asc;
```
- 각 필드마다 서로 다른 정렬 방법 지정도 가능

## LIKE 연산자
- 일부분만 일치하는 문자열을 찾을 경우 사용
  - = 연산자는 정확히 일치하는 경우만 검색
  - 형식
    - where <필드명> ㅣike <문자열 패턴>;
      - <필드명>의 레코드들 중 <문자열패턴>을 포함한 레코드 검색
      - <문자열패턴>
        - %: 0개 이상의 문자에 대응
        - _ : 1개 문자에 대응
      - 예:
        - '%서울%':'서울'이란 단어가 포함된 문자열
        - '%서울': '서울'이란 단어로 끝나는 문자열
        - '서울%': '서울'이란 단어로 시작하는 문자열
        - '_ _ _ ' : 정확히 세 개의 문자로 구성된 문자열
        - '_ _ _ %' : 최소한 세 개의 문자로 구성된 문자열

## LIKE 연산자 사용 예
- '김'씨 성을 가진 학생들 검색
``` sql
  select *
  from student
  where name like '김%';
```
