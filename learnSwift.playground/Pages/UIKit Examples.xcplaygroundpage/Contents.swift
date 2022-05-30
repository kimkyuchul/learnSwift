//: [Previous](@previous)

import Foundation
import UIKit
import CoreGraphics

var greeting = "Hello, playground"

//: [Next](@next)


let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))

myLabel.backgroundColor = UIColor.red
myLabel.text = "hello swift"
myLabel.textAlignment = .center
myLabel


var userName = "john"
var inboxCount = 25
var maxCount = 100
var message = "\(userName) has \(inboxCount) messages. Message capacity remaining is \(maxCount-inboxCount) messages."
print(message)
