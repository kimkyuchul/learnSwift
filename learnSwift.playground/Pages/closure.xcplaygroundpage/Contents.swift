//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// 참조타입이고 코드에서 전달 및 사용할 수 있는 독립 기능 이며 일급 객체의 기능을 함
// 일급객체? : 전달 인자로 보낼 수 있고 변수/상수 등으로 저장하거나 전달할 수 있으며, 함수의 반환 값이 될 수도 있다.
// 클로저는 Named closure, unnamed closure로 구분된다. 보통 unnamed closure을 말한다.

/* { (매개 변수) -> 리턴 타입 in
    실행 구문
 }
 */

//익명이긴 하지만 함수 따라서 스위프트에서 일급객체 이기 때문에 상수나 변수에 대입할 수 있다.

let hello = { () -> () in
    print("hello")
}

hello()

//파라미터와 리턴타입이 있는 클로져
let hello2 = { (name: String) -> String in
    return "hello, \(name)" //주의 : 함수에서 배운대로 파라미터의 네임은 단독으로 쓰였으니 전달인자 레이블이자 파라미터 네임이라 생각할 수 있지만 클로저에서는 전달인자 레이블을 사용하지 않는다. 오로직 파라미터 네임만 사용된다.
}

// hello2(name: "kim") <- 오류
hello2("kyu") // <- 이렇게 전달인자 레이블을 적지않고 파라미터 값을 넘겨줘야 한다.

//클로저는 함수의 파라미터 타입으로 클로저를 전달 할 수 있다.
func doSomething(closure: () -> ()) {
    closure()
}

//doSomething 호출
doSomething(closure: { () -> () in // 클로저의 파라미터에 클로저 함수를 넘긴다
    print("hello")
})

//파라미터와 반환값이 없는 클로저를 전달받으면 이런식으로 생략이 가능
doSomething() {
    print("hello2")
}

//참고로 단 하나의 클로저만 매개변수로 전달하는 경우 소괄호도 생략이 가능하다.
doSomething {
    print("hello3")
}


//함수의 반환 타입으로 클로저를 사용 가능
//반환 타입에 클로저를 적어 클로저를 반환하는 함수를 만들 수 있다.

func doSomething2() -> () -> () {
    return{ () -> () in
        print("hello4")
    }
}

doSomething2()()

//다중 후행 클로저 기능 : 맨 마지막 클로저만 사용 가능

func doSomething2(success: () -> (), fail: () -> ()) { //두 개의 클로저가 선언
    
}

//다중 후행 클로저 기능
doSomething2 {
    <#code#> //첫번째 클로저는 매개변수 레이블을 생략
} fail: {
    <#code#>
}

//클로저 표현 간소화 방법

func doSomething3(closure: (Int, Int, Int) -> Int) {
    closure(1,2,3)
}

doSomething3(closure: { (a, b, c) in
    return a+b+c
})

doSomething3(closure: {
    return $0+$1+$2
})

doSomething3(closure: {
    $0+$1+$2
})


doSomething3() {
    $0+$1+$2
}

doSomething3 {
    $0+$1+$2
}
