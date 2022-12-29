import Foundation

// strong (강한 참조)

class Human {
    var name: String?
    var age: Int?
    
    init(name: String?, age: Int?) {
        self.name = name
        self.age = age
    }
}
 
let kim = Human(name: "kim", age: 26) //인스턴스의 주소값이 변수에 할당될 때, RC가 증가하면 강한 참조(strong)



//Strong Reference Cycles Between Class Instances)

class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}

class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    //weak (약한 참조)
    weak var tenant: Person?
    deinit { print("Apartment \(unit) is being deinitialized") }
}

var john: Person?
var unit4A: Apartment?

john = Person(name: "John Appleseed")
unit4A = Apartment(unit: "4A")


john!.apartment = unit4A
unit4A!.tenant = john

//john = nil
//unit4A = nil

// unowned (미소유 참조)
// 고객은 신용카드가 없을 수 있다.
// 하지만 신용카드가 고객이 없을 수 없다. 항상 신용카드는 고객과 연결

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name) is being deinitialized") }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { print("Card #\(number) is being deinitialized") }
}

var jjohn: Customer?

jjohn = Customer(name: "John Appleseed")
jjohn!.card = CreditCard(number: 1234_5678_9012_3456, customer: jjohn!)

jjohn = nil
// prints "John Appleseed is being deinitialized"
// prints "Card #1234567890123456 is being deinitialized"
