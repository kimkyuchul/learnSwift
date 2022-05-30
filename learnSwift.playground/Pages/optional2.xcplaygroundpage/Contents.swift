//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/* 옵셔널 체이닝 ?
 - 옵셔널에 속해 있는 nil 일지도 모르는 프로퍼티, 메서드, 서브스크립트 등을 가져오거나
 호출할 때 사용할 수 았는 일련의 과정
 */

struct Developer {
    let name : String
}

struct Company {
    let name: String
    var developer : Developer?
}

var developer = Developer(name: "kyu")
var company = Company(name: "Gunter", developer: developer)
print(company.developer)
//print(company.developer.name) //company.develope은 옵셔널 타입이고 develope는 옵셔널로 감싸져있어서 내부 프로퍼티인 name에 접근하지전에 옵셔널 값을 벗겨라
print(company.developer?.name)
print(company.developer!.name)

