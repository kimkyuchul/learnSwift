//: [Previous](@previous)

import Foundation
import Darwin

var greeting = "Hello, playground"

// 기존의 클래스, 구조체, 열거형 프로토콜에 새로운 기능을 추가하는 기능

// 연산 타입 / 연산 인스턴스 프로퍼티
// 타입 메서드 / 인스턴스 메서드
//이니셜라이징
//서브스크립트
//중첩 타입
//특정 프로토콜을 준수할 수 있도록 기능 추가


/*
 extension SomeType {
 //추가기능
 }
 */

extension Int {
    var isEven: Bool {//짝수 홀수 확인
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return self % 2 == 1
    }
}


var number = 3
number.isOdd
number.isEven

//익스텐션은 연산 프로퍼티는 추구 저장프로퍼티는 추구 x 타입에 지정되있는 기존의 프로퍼티에 프로퍼티 감시자도 추가할 수 없다.

//익스텐션을 통해 타입의 메서드를 정의

extension String {
    func convertToInt() -> Int? {
        return Int(self)
    }
}

var string = "0"
string.convertToInt()


