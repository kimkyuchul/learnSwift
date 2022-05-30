//: [Previous](@previous)

import Foundation


//저장(var, let), 연산(값 저장하는게 아니라 특정 실행 결과값), 타입(특정 타입에서 사용되는 프로퍼티)

struct Dog {
    var name: String
    let gender: String
    
}

var dog = Dog(name: "kyuchul", gender: "male")
print(dog)

dog.name = "김구철"
// 변수로 선언된 프로퍼티만 값을 변경할 수 있다. 상수는 못 바꿈

let dog2 = Dog(name: "kyu", gender: "male")
//dog2.name = "김구"
//구조체 인스턴스가 상수로 설정되어 있어 내부 프로퍼티들도 모두 상수로 변환

class Cat {
    var name: String
    let gender: String
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
}

let cat = Cat(name:"json", gender: "male")
cat.name = "kim"
print(cat.name)

//구조체는 벨류 타입이기 때문에 상수로 선언하게되면 변수로 선언된 프로퍼티라고 해도 값이 안바뀜  클래스는 참조 타입이기 때문에 상수로 선언해도 프로퍼티의 값이 변환됨

//계산 프로퍼티
//계산 프로퍼티는 클래스, 구조체, 열거형에서 사용가능 값을 직접적으로 저장하지 않는 대신에 get, set 이용하여 다른 프로퍼티의 값들을 직접적으로 사용 가능

struct Stock {
    var averagePrice: Int //평균단가
    var quantity: Int //수량
    var purchasePrice: Int { //매입가격
        get {
            return averagePrice * quantity //평균가 * 주식 수량 = 매입가격
        }
        
        set(newPrice) { //변경된 총 매입 금액 (purchasePrice 변경된 매입 금액)
            averagePrice = newPrice / quantity
        }
    }
}
    

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchasePrice //get 코드블럭 실행
stock.purchasePrice = 3000
stock.averagePrice // purchasePrice = newPrice

class Person {
    var name: String = "Sodeul"
 
    var alias: String {
        get {
            return self.name + " 바보"
        }
        set(name) {
            self.name = name + "은 별명에서 지어진 이름"
        }
    }
}

var person = Person()
person.alias
person.alias = "김구찌"
print(person.alias)


//프로퍼티 옵저버: 프로퍼티의 값의 변화를 관찰, 새로운 값이 기존 값과 같더라도 프로퍼티 옵저버 호출, 프로퍼티가 set 될때마다 호출
// 저장 프로퍼티, 오버라이딩이된 저장 계산 프로퍼티에서만 사용 가능
//값 저장 직전 : willSet, 값 저장 직후 : didSet

class Account {
  var credit: Int = 0 { //저장형 프로퍼티
        //소괄호 이름 지정
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정")
        }
        
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경")
        }
    }
}

var account = Account()
account.credit = 1500

//타입 프로퍼티
//인스턴스 생성없이 객체 내에 진입 가능하게 만듬. 프로퍼티 타입과 직접적으로 연결
// 저장, 연산 프로퍼티에서만 사용 가능 static 키워드를 사용하여 정의

struct SomeStructure {
    static var storedTypeProperty = "Some value" //스토어
    
    static var computedTypeProperty: Int { //컴퓨티드
        return 1
        
    }
}

SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty
//타입 프로퍼티를 사용하면 변수에 클래스를 할당해 인스턴스를 사용하지 않고도 쓸 수 있다.


