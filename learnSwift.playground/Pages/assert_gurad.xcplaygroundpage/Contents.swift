import UIKit

/*
 assert
 - 특정 조건을 체크하고, 조건이 성립되지 않으면 메세지를 출력 하게 할 수 있는 함수
 - assert 함수는 디버깅 모드에서만 동작하고 주로 디버깅 중 조건의 검증을 위하여 사용
 
 
 gurad
 - 뭔가를 검사하여 그 다음에 오는 코드를 실행할지 말지 결정
 - guard 문에 주어진 조건문이 거짓일 때 구문이 실행
 - 방어코드로 많이 사용
 */

var value = 0
assert(value == 0)

value = 2
//assert(value == 0, "값이 0이 아닙니다.") //조건 성립 x => 에러, 주로 디버깅 중 사용

//gurad 함수 내부에서 사용

func guardTest(valuee: Int) {
    guard valuee == 0 else {return} // valuee == 0이 아니면 return
    print("하이")
}

guardTest(valuee: 0)


func guardTestt(valueee: Int?) {
    guard let valueee = valueee else {return} // valueee 옵셔널 바인딩
    print(valueee)
}

// guardTestt(valueee: 2)
guardTestt(valueee: nil)
