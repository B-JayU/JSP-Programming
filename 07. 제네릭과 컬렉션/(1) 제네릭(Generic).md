## 제네릭(Generic)
- 제네릭 타입
  - 자료형의 일반화

- 제네릭 클래스
  - 일반화된 타입을 갖는 클래스를 정의
    - 다른 속성을 유지하나, 같은 방식의 행위를 갖는 클래스를 정의하기 위해 클래스를 일반화
  - 객체 생성시 지정된 타입의 객체만 담을 수 있음.
    - 컴파일 단계에서 확인 가능

- JDK 5.0에서 지원

## 제네릭 클래스의 처리 방법
- 일반화된 타입을 갖는 클래스를 정의

- 제너릭 클래스 객체마다 다른 타입 지정 가능
  - 단, 클래스 변경 없이 객체 생성시 지정된 타입으 담게 됨

- 클래스 정의시 지정된 타입이 아니라 객체 생성시 지정된 타입의 객체만 담을 수 있음
  - 단, 컴파일 단계에서 오용 여부를 확인 가능

- 각각 클래스 구성
``` java
    class AppleBox{
      Apple item;
      
      void store(Apple item) {
        this.item = item;
      }
      
      Apple get() {
        Apple retItem = item;
        item = null;
        
        return retItem;
      }
    }
    
    class OrangeBox{
      Orange item;
      
      void store(Orange item) {
        this.item = item;
      }
      
      Orange get() {
        Orange retItem = item;
        item = null;
        
        return retItem;
      }
    }
```

- 제너릭 클래스 구현
``` java
  class FruitBox<T> {
    T item;
    
    void store(T item){
      this.item = item;
    }
    
    T get(){
      T retItem = item;
      item = null;
      
      return retItem;
    }
  }
```
- 컴파일 시간 때 오류 확인 가능

## 자바 컬렉션 프레임워크
- Java Collections Framework
- 요소라 불리는 가변 개수의 객체들의 저장소
  - 객체들을 한 곳에 모아 편리하게 사용하기 위해 제공되는 환경
    - 요소 개수에 따라 크기 자동 조절
    - 요소의 삽입/삭제에 따른 위치 자동 이동
  - java.util 패키지
    
  - 자료구조(검색 등 다양한 측면을 고려한 효율적인 데이터의 저장)
    - 배열/리스트/스택/큐/트리/해시
  - 알고리즘(저장된 데이텅 일부 혹은 전체르 대상으로 진행하는 각종 연산)
    - 정렬/탐색/최대/최소 검색

## 컬렉션의 특징
- 제너릭 기법으로 구현
  - 같은 방식으로 서로 다른 자료형들 유지/관리
    - 모든 타입의 객체 포함 가능

  - 기본 자료형의 경우 wrapper 클래스로 객체화 한 후 저장
  ``` java
    ArrayList<int> v = new ArrayList<int>();  // 컴파일 오류
    ArrayList<Integer> v = new ArrayList<Integer>();  // 정상 코드
  ```
  
## List<E> 인터페이스
- 시작과 끝이 선정되어 저장되는 요소들을 일괄적인 정렬상태를 유지하면서 저장됨
  - 동일한 객체들의 중복 저장을 허용
  - 객체들의 저장 순서가 유지됨
  
- Implementations
  - List<E>
    - Stack<E> : LIFO
    - Vector<E> : 배열과 비슷 / 용량이 자동 증가하는 가변적 길이
    - ArrayList<E> : Vector와 같음/ 단, 동기화는 지원 안함.

## java.util.ArrayList<E>
- 시작과 끝이 선정되어 저장되는 요소들을 일괄적인 정렬 상태를 유지하면서 저장됨.
  - 객체들의 저장 순서가 유지됨
- 일종의 가변적 길이의 배열 객체
  - 내부적을 배열을 이용하여구현
    - 필요시 할당 크기가 자동을 증가
  - 다양한 메서드 제공
    - 데이터 저장/접근을 위해 별도의 인덱스를 관리할 필요 없음.
    - 삭제 등의 처리를 위한 추가적인 코드 작성 필요 없음.
  

 
