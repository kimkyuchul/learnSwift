//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"



protocol someprotocol {
}

protocol someprotocol2 {
}



struct SomeStruct: someprotocol, someprotocol2 {
    
}

//클래스의 경우 상속받은 슈퍼클래스를 맨앞에 쓰고 그뒤에 프로토콜 표기
/* class SomeClass : SomeSuperclass, someprotocol, someprotocol2 {
    
}
*/

//프로토콜이 프로퍼티에 준수하도록 만들기 위헤선 저장 프로퍼티인지 계산 프로퍼티인지 지정하지 않고 프로퍼티 이름과 타입만 지정하면 된다.

protocol FirstProtocol {
    var name:Int { get set} //프로토콜은 항상 변수로 선언
    var age:Int { get } // 읽기만 가능
}

//프로토콜에서 타입 프로퍼티를 요구하려면 항상 static을 선언헤야 한다.

protocol AnotherProtocol {
    static var someTypeProperty: Int {get set}
}

protocol FullyNames {
    var fullName: String {get set}
    func printFullName()
}


struct Person:FullyNames { //FullyNames의 요구사항을 충족해야함
    var fullName: String
    
    func printFullName() {
     print(fullName)
    }
}

//프로토콜은 자신이 채택한 타입의 메서드를 요구할 수 있다. 이 때 요구하는 메서드는 타입 메서드 인스턴스 메서드 모두 가능하다.

protocol SomeProtocol3 {
    func someTypeMethod() //프로토콜에서 메서드를 정의할 때 메서드에 필요한 매게변수는 지정해줘야한다. {default 값 지정 불가)
}

//이니셜라이져 요구사항
//프로토콜은 자신을 채택한 타입의 생성자도 요구할 수 있다.

protocol SomeProtocol4 {
    init(someParameter: Int)
}

//생성자 키워드와 매개변수만 지정
protocol SomeProtocol5 {
    init()
}

class SomeClass: SomeProtocol5 {
    required init() { //구조체에서는 생성자 요구사항을 준수할 때 required가 필요없지만 class에서는 생성자를 요구할 때 required가 필요 만약에 클래스 자체가 파이널 클래스라면 required 붙일 필요 없음
        
    }
}
