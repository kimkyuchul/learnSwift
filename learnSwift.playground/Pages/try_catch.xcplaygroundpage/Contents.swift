//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//런타임 에러 발생의 경우 발생, 감지, 전파, 조작의 오류 에러 처리를 지원

enum PhoneError: Error {
    case unknown
    case batteryLow(batteryLevel: Int)
}

//throw 구문을 통해 에러가 발생할 거 같은 지점에 에러를 던져준다.

// throw PhoneError.batteryLow(batteryLevel: 20)

// 1. 함수에서 발생한 오류를 해당 함수를 호출한 코드에 전파하는 방법
// 오류가 발생할 수 있음을 나타내기 위해서는 함수(매개변수, 생성자 매개변수) 뒤에 throws를 쓰면 된다.

func checkPhoneBatteryStatus(batteryLevel : Int) throws -> String { // 만약에 함수에 반환값이 있다면 throws 뒤에 반환값을 지정
    guard batteryLevel != -1 else { throw  PhoneError.unknown }
    guard batteryLevel > 20 else { throw
        PhoneError.batteryLow(batteryLevel: 20)}
    return "배터리 상태가 정상"
}

/*
 do {
 try 오류 발생 가능코드
 } catch 오류 패턴 {
 처리 코드
 }
 */

do {
    try checkPhoneBatteryStatus(batteryLevel: 20)
} catch PhoneError.unknown {
    print("알 수 없다..")
} catch PhoneError.batteryLow(let baterryLevell) {
    print("배터리 전원 부족 남은 배터리 : \(baterryLevell)%")
} catch {
    print("그 외 오류 : \(error)")
}

// try? : 코드의 반환값을 옵셔널값으로 변환

let status = try? checkPhoneBatteryStatus(batteryLevel: -1)
print(status)

// 확신할 때 사용.. 거의 사용할 일 없을 듯
let status1 = try! checkPhoneBatteryStatus(batteryLevel: 30)
print(status1)
