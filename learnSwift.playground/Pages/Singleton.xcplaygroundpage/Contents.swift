import Foundation

class UserInfo {
    static let shared = UserInfo()
    
    var id: String?
    var password: String?
    var name: String?
}

// A VC
//let userInfo = UserInfo.shared
//userInfo.id = "kyuchul2"
// B VC
//let userInfo = UserInfo.shared
//userInfo.password = "12345"
// C VC
//let userInfo = UserInfo.shared
//userInfo.name = "kimkyuchul"

class NoneSingletonClass {
    var num = 0
}

let noneSingletonClass = NoneSingletonClass()
noneSingletonClass.num = 20

let noneSingletonClass1 = NoneSingletonClass()
noneSingletonClass.num = 5

let noneSingletonClass2 = NoneSingletonClass()
noneSingletonClass.num = 14

noneSingletonClass.num
noneSingletonClass1.num
noneSingletonClass2.num

class SingletonClass {
    static let shared = SingletonClass()
    var a = 0
}

let SingletonClass1 = SingletonClass.shared
SingletonClass1.a = 20

let SingletonClass2 = SingletonClass.shared
SingletonClass2.a = 15

class Singleton {
    static let shared = Singleton()
    private init() {}
}
