// Playground - noun: a place where people can play

/*
Домашнее задание:

1. Выведите в консоль минимальные и максимальные значения базовых типов, не ленитесь :)
2. Создайте 3 константы с типами Int, Float и Double Создайте другие 3 константы, тех же типов: Int, Float и Double, при чем каждая из них это сумма первых трех, но со своим типом
3. Сравните Int результат суммы с Double и выведите отчет в консоль
*/

import UIKit

println("Int min = \(Int.min)")
println("Int max = \(Int.max)")

println("UInt min = \(UInt.min)")
println("UInt max = \(UInt.max)")

println("Int8 min = \(Int8.min)")
println("Int8 max = \(Int8.max)")

println("UInt8 min = \(UInt8.min)")
println("UInt8 max = \(UInt8.max)")

println("Int16 min = \(Int16.min)")
println("Int16 max = \(Int16.max)")

println("UInt16 min = \(UInt16.min)")
println("UInt16 max = \(UInt16.max)")

println("Int32 min = \(Int32.min)")
println("Int32 max = \(Int32.max)")

println("UInt32 min = \(UInt32.min)")
println("UInt32 max = \(UInt32.max)")

println("Int64 min = \(Int64.min)")
println("Int64 max = \(Int64.max)")

println("UInt64 min = \(UInt64.min)")
println("UInt64 max = \(UInt64.max)")

let someInt = 1 //15
let someFloat: Float = 1.5  //12.75
let someDouble = 1.7  //M_PI

//let summInt: Int = someInt + Int(someFloat) + Int(someDouble) - wrong to set annotation
//let summFloat: Float = Float(someInt) + someFloat + Float(someDouble) - wrong to set annotation
//let summDouble: Double = Double(someInt) + Double(someFloat) + someDouble - wrong to set annotation

let tmp2 = someInt + Int(someFloat) + Int(someDouble)
let summInt = Int(Double(someInt) + Double(someFloat) + someDouble)
let summFloat = Float(Double(someInt) + Double(someFloat) + someDouble)
let summDouble = Double(someInt) + Double(someFloat) + someDouble

let result = (Double(summInt) > summDouble) ? "int great" : (Double(summInt) == summDouble) ? "equals" : "int less"

if Double(summInt) > summDouble {
  println("int great")
} else if Double(summInt) == summDouble {
  println("equals")
} else {
  println("int less")
}
