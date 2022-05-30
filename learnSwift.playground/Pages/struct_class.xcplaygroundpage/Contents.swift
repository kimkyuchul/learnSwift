//: [Previous](@previous)

import Foundation
import Darwin

var greeting = "Hello, playground"

/* struct 구조체 이름 {
 프로퍼티와 메서드
 }
 */

struct User { //구조체는 대문자로 시작
    var nickname: String
    var age: Int
    
    func information() {
        print("\(nickname) \(age)")
    }
}
//유저 구조체의 인스턴드 생성
var user = User(nickname: "kyuchul", age: 23)

user.nickname
user.nickname = "kim"

user.information()

class Dog {
    var name: String = ""
    var age: Int = 0
    
    init() { //초기화
    }
    
    func introduce() {
        print("name \(name) age \(age)")
    }
}

var dog = Dog()
dog.name = "코코"
dog.age = 23
dog.name
dog.age

dog.introduce()

/*
 클래스와 구조체의 공통점
 값을 지정할 프로퍼티 선언
 함수적 기능을 하는 메서드 선언
 내부 값에 .을 사용하여 접근
 생성자를 사용해 초기 상태 설정
 extension을 사용하여 기능을 확장
 Protocol을 채택하여 기능을 설정
 */

/*
 클래스
 - 참조 타입
 - ARC로 메모리를 관리 => 메모리 스택 영역에는 포인터 인스턴스의 메모리 주소에 할당,  실제 데이터는 힙 영역에 할당 힙 영역에 할당되기 때문에 ARC 메모리 관리 가능
 - 타입 캐스팅을 통해 런타임에서 클래스 인스턴스의 타입을 확인
 - deinit을 사용하여 클래스 인스턴스의 메모리 할당을 해제
 - 같은 클래스 인스턴스를 여러 개의 변수에 할강한 뒤 값을 변경 시키면 모든 변수에 영향을 줌 (메모리가 복사 됨)
 - 상속이 가능
 
 구조체
 - 값 타입
 - 구조체 변수를 새로운 변수에 할당할 때마다 새로운 구조체가 할당
 - 즉 같은 구조체를 여러 개의 변수에 할당한 뒤 값을 변경시키더라도 다른 변수에 영향을 주지 않음 (값 자체를 복사)
 */

class SomeClass {
    var count: Int = 0
    
}

struct SomeStruct {
    var count: Int = 0
}

var class1 = SomeClass()
var class2 = class1
var class3 = class1

class2.count = 2
class1.count // 클래스는 참조 타입이기 때문에 같은 클래스 인스턴스를 할당한 변수의 값을 변경시키면 참조된 인스턴스의 값이 변경됨 => 변수를 복사하더라도 하나의 인스턴스의 값을 가지고 있기 때문에 값 변경이 가능

var struct1 = SomeStruct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 3
struct3.count = 4

struct1.count
struct2.count
struct3.count //구조체는 값 타입이라 매번 새로운 값이 할당
