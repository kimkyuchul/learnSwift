//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// 고차함수 : 다른 함수를 전달 인자로 받거나 함수 실행의 결과를 함수로 반환하는 함수

//map
//컨테이너 내부의 기존 데이터를 변형하여 새로운 데이터를 생성한다.

let numbers = [0,1,2,3]
let mapArray = numbers.map { (number) -> Int in
    return number * 2
}

print("map \(mapArray)")

//filter
//컨테이너 내부의 값을 걸러서 새로운 값을 추출
let intArray = [10, 5, 20, 13, 4]
let filterArray = intArray.filter { $0 > 5 }
print("filter \(filterArray)")

// reduce
//컨테이너 내부의 요소를 하나로 통합
let someArray = [1,2,3,4,5]
let reduceResult = someArray.reduce(0) { // reduce 0으로 설정
    (result: Int, element: Int) -> Int in
    print("\(result) + \(element)") // result : 누적값, element: 배열의 요소값
    return result+element
}

print("reduce \(reduceResult)")
