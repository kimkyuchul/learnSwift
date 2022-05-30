//: [Previous](@previous)

import Foundation

//클래스가 다른 클래스로부터 메서트 프로퍼티 등을 상속받는 것
//한 클래스가 다른 클래스를 상속할 때 상속받는 클래스를 서브(자식) 클래스 상속하는 클래스를 슈퍼(부모) 클래스라고 한다.
//오버라이딩을 통해 인스턴스 메서드 서브스크립트 등을 자신만의 내용으로 재정의
//상속받은 프로퍼티의 값이 변경할 때 값을 알려주는 프로퍼티 감시자도 정의,  자식 클래스에서 프로퍼티 감시자를 정의 가능

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print ("speaker on")
    }
}

/*
 class 클래스 이름: 부모클래스 이름 {
    //하위 클래스 정의
 }
 */

class Bicycle: Vehicle {
    var hasBasket = false
}

var bicycle = Bicycle()
bicycle.currentSpeed
bicycle.currentSpeed = 15.0
bicycle.currentSpeed

class Train: Vehicle {
    override func makeNoise() {
        super.makeNoise() //먼저 슈퍼클래스의 makeNoise() 출력
        print("choo choo")
    }
}

let train = Train()
train.makeNoise() // Vehicle를 상속받아 makeNoise 메서드를 override하여 재정의

//만약 서브에서 슈퍼클래스의 특성을 재정의했을 때 슈퍼클래스의 특성을 서브에서 쓰고 싶을 땐? => Super을 사용

//프로퍼티를 오버라이딩 하는 방법, 메소드와 마찬가지로 슈퍼클래스로부터 상속받은 인스턴스 프로퍼티, 타입 프로퍼티를 서브클래스의 용도에 맞게 재정의 할 수 있다.
//프로퍼티 재정의? => get, set, 옵저버등을 재정의 하는 것
// 슈퍼클래스에 있는 프로퍼티도 서브클래스에서 재정의 가능

class Car: Vehicle {
    var geer = 1
    override var description: String {
        return super.description + " in geer \(geer)"
    }
}

let car = Car()
car.currentSpeed = 30.0
car.geer = 2
//계산/저장 프로퍼티 오버라이딩한 프로퍼티는 get, set을 가질 수 있다. 자식클래스에서 재정의할 프로퍼티는 슈퍼클래스의 프로퍼티와 이름과 타입이 일치해야 한다.
//슈퍼클래스에서 read/write로 선언된 프로퍼티를 서브클래스에서 readOnly로 오버라이드 할 수 없지만, 슈퍼클래스에서 readOnly로 선언된 프로퍼티는 read/write로 오버라이드 할 수 있다.

print(car.description)

//상속된 프로퍼티에 오버라이드를 사용하여 프로퍼티 옵저버를 추가할 수 있도록 구현 코드 작성
class AutimaticCar: Car {
    override var currentSpeed: Double {
        didSet { //currentSpeed 변하면 기어를 계산하여 계산된 값을 대입
            geer = Int(currentSpeed / 10) + 1
        } 
    }
}

let automatic = AutimaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")
// 상속된 프로퍼티에 오버라이드를 사용하여 프로퍼티 옵저버를 추가할 때는 상수 저장 프로퍼티나 리드온리 연산 프로퍼티에는 프로퍼티 옵저버를 추가할 수 없음
//그 이유는 상수 저장 프로퍼티, 리드온리 프로퍼티에는 값을 설정할 수 없기 때문에 willset이나 didSet 사용 못함

//final을 선언하면 상속 X 
