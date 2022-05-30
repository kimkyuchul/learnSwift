//: [Previous](@previous)

import Foundation
import UIKit

var numbers: Array<Int>  = Array<Int>()
numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers[0]
numbers[1]

numbers.insert(4, at: 2)

numbers.remove(at: 0)
numbers

var names = [String]()
var namess: [String] = []

//var dic: Dictionary<String, Int> = Dictionary<String, Int>()
var dic: [String: Int] = ["김규철":1]
dic["김구철"] = 3
dic["김구철철"] = 2
dic

dic.removeValue(forKey:"김구철");
dic

var set: Set = Set<Int>() //set은 축약형 선언 없음

set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set.insert(30)
set

set.remove(20)
set
