//: [Previous](@previous)

import Foundation

//함수는 작업의 가장 작은 단위이자 코드의 집합 => 프로그램이 필요할 떄마다 함수를 호출하면 해당 작업을 반복해서 사용할 수 있다.
//func 함수명(파라미터 이름:대이터 타입) -> 반환 타입 {
//return 반환 값
//}

func sum(a: Int, b: Int) -> Int {
    return a+b
}

sum(a: 5, b: 3)
//파라미터 이름

func hello() -> String {
    return "hello"
}

hello()

func printName() {
    // 반환값이 없는 함수
}

//함수의 매개변수의 기본값을 사용할 수 있다.
func greeting(friend: String, me: String = "kyuchul") {
    print("hello, \(friend) I'm \(me)")
}

greeting(friend: "kim")


/*
 func 함수 이름(전달인자 레이블(from): 매게변수 이름: 매게변수 타입, 전달인자 레이블: 매게변수 이름: 매개변수 타입...) -> 변환 타입 {
 return 반환 값
 */
func sendMessage(from myName: String, to name: String) -> String {
    return "hello \(name) I'm \(myName)"
}

sendMessage(from: "kyuchul", to: "kimm")

func sendMessagee(_ name: String) -> String {
    return "hello \(name)"
}

sendMessagee("김규철")

func sendMessageee(name: String, me: String...) -> String { //가변매개변수
    return "hello \(name) as \(me)"
}

sendMessageee(name: "김규철", me: "김구","김구찰","김찰규")







