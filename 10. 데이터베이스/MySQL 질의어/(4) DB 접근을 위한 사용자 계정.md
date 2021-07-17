## DB 접근을 위하 사용자 계정 만들기

1. 관리자 계정을 접속
2. 새 데이터베이스 newdb 생성
  - create database newdb;
3. new db에 접근할 사용자 계정(user1:pwd1) 생성
  - creaet user 'user1'@'localhost' identified by 'pwd1';
  - grant all privileges on newdb.* to 'user1'@'localhost' with grant option;

## 관리자 비밀번호 변경하기
1. 관리자 계정으로 접속
2. mysql 데이터베이스 선택
  - use mysql;
3. user 테이블의 root 암호를 새로 설정 후 적용
  - alter user 'user1'@'localhost' identified with mysql_native_password by '98765';
  - flush privileges;
