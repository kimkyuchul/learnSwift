//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// 열거형: 연관성이 있는 값을 모아 놓은 것을 말함

enum CompassPoint: String {
    case north = "북"
    case south = "남"
    case east = "동" //east => 열거형 항목, "남" => 원시값
    case west = "서"
}

// 각 항목은 고유값 한줄로 정의도 가능
// 열거형을 만들게되면 하나의 새로운 타입처럼 사용할 수 있다. 그렇기 때문에 열거형은 스위프트의 이름 규칙에 따라 대문자로 시작

var direction = CompassPoint.east
direction = .west  //.만 입력해도 열거형 항목들이 나온다. 그이유는 컴파일러가 direction 변수는 컴퍼스포인트 열거형 타입 이라는걸 추론하여 사용가능

switch direction {
case .north:
    print(direction.rawValue) // 원시값
    
case .south:
    print(direction.rawValue)
    
case .east:
    print(direction.rawValue)
    
case .west:
    print(direction.rawValue)
}

// 열거형의 각 항목은 자체로도 값이지만, 항목의 원시값을 가질 수 있다. => 을특정 타입으로 지정된 값을 가질 수 있다.

// 원시값을 가지고 열거형을 반환 => 열거형 인스턴스를 생성할 때 매개변수로 원시값을 넘겨주면 된다.
let direction2 = CompassPoint(rawValue: "남")


//열거형은 열관값도 가질 수 있다. => 열거형 내의 항목이 자신과 연관된 값을 가질 수 있다.
//열거형이 열관값을 갖는 법

enum PhoneError {
    case unknown
    case batteryLow(String) //연관값 추가
}

let error = PhoneError.batteryLow("배터리가 곧 방전")

//연관값을 추출

switch error {
case .batteryLow(let message):
    print(message)
    
case .unknown:
    print("알 수 없는 오류")
}
