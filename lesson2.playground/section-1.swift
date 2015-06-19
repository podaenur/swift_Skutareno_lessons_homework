// Playground - noun: a place where people can play

/*
Домашнее задание:

1. Выведите в консоль минимальные и максимальные значения базовых типов, не ленитесь :)
2. Создайте 3 константы с типами Int, Float и Double Создайте другие 3 константы, тех же типов: Int, Float и Double, при чем каждая из них это сумма первых трех, но со своим типом
3. Сравните Int результат суммы с Double и выведите отчет в консоль
*/

import UIKit

Int.min
UInt.min
UInt8.min
Int8.min
UInt16.min
Int16.min
UInt32.min
Int32.min
UInt64.min
Int64.min

Int.max
UInt.max
UInt8.max
Int8.max
UInt16.max
Int16.max
UInt32.max
Int32.max
UInt64.max
Int64.max


let someInt = 15
let someFloat: Float = 3.14
let someDouble = 12.75443

let anotherInt = someInt + Int(someFloat) + Int(someDouble)
let anotherFloat = Float(someInt) + someFloat + Float(someDouble)
let anotherDouble = Double(someInt) + Double(someFloat) + someDouble

let tmp = Double(anotherInt)

let result = (tmp > anotherDouble) ? "int great" : (tmp == anotherDouble) ? "equals" : "int less"