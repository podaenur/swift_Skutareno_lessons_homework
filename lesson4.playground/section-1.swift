// Playground - noun: a place where people can play

/*
Домашнее задание:

1. Создать пять строковых констант. Одни константы это только цифры, другие содержат еще и буквы. Найти сумму всех этих констант приведя их к Int. (Используйте и optional binding и forced unwrapping)

2. С сервера к нам приходит тюпл с тремя параметрами: statusCode, message, errorMessage (число, строка и строка) в этом тюпле statusCode всегда содержит данные, но сама строка приходит только в одном поле если statusCode от 200 до 300 исключительно, то выводите message, в противном случает выводите errorMessage. После этого проделайте тоже самое только без участия statusCode

3. Создайте 5 тюплов с тремя параметрами: имя, номер машины, оценка за контрольную. при создании этих тюплов не должно быть никаких данных, после создания каждому студенту установите имя, некоторым установите номер машины, некоторым установите результат контрольной .

выведите в консоль:
- имена студента
- есть ли у него машина
- если да, то какой номер
- был ли на контрольной
- если да, то какая оценка
*/

import UIKit

let first = "1"
let second = "2"
let third = "3third"
let fourth = "fourth"
let fifth = "fifth"

var summ: Int?

summ = first.toInt()! + second.toInt()!

if let tmp = third.toInt() {
  summ = summ! + tmp
}

if let tmp = fourth.toInt() {
  summ = summ! + tmp
}

if let tmp = fifth.toInt() {
  summ = summ! + tmp
}

println("summ: \(summ)")


var response = (statusCode: Int(), message: String?(), errorMessage: String?())

response = (401, nil, "deny")

if (response.statusCode >= 200 && response.statusCode <= 300) {
  if let msg = response.message {
    println("message: \(msg)")
  }
} else {
  if let msg = response.errorMessage {
    println("error: \(msg)")
  }
}

var newFirst = (name: String(), number: String?(), score: Double?())
var newSecond = (name: String(), number: String?(), score: Double?())
var newThird = (name: String(), number: String?(), score: Double?())
var newFourth = (name: String(), number: String?(), score: Double?())
var newFifth = (name: String(), number: String?(), score: Double?())

newFifth = ("Ivan", nil, 5.3)
newSecond = ("Tolyan", "a987oa", 2.1)
newThird = ("Margarin", nil, nil)
newFourth = ("Lui", "d3212er", 0.1)
newFifth = ("Landish", nil, 4)

let allInfo = [newFirst, newSecond, newThird, newFourth, newFifth]

for obj in allInfo {
  println("name: \(obj.name)")
  if let num = obj.number { println("number: \(num)") } else { println("beggar") }
  if let scr = obj.score { println("score: \(scr)") } else { println("loggerhead") }
}