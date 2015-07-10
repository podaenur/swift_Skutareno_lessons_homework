// Playground - noun: a place where people can play

/*
1. Посчитать количество секунд от начала года до вашего дня рождения. Игнорируйте високосный год и переходы на летнее и зимнее время. Но если хотите - не игнорируйте :)

2. Посчитайте в каком квартале вы родились

3. Создайте пять переменных типа Инт и добавьте их в выражения со сложением, вычитанием, умножением и делением. В этих выражениях каждая из переменных должна иметь при себе унарный постфиксный или префиксный оператор. Переменные могут повторяться.

Убедитесь что ваши вычисления в голове или на бумаге совпадают с ответом. Обратите внимание на приоритет операций

4. Шахматная доска 8х8. Каждое значение в диапазоне 1…8. При заданных двух значениях по вертикали и горизонтали определите цвет поля. Если хотите усложнить задачу, то вместо цифр на горизонтальной оси используйте буквы a,b,c,d,e,f,g,h
*/

import UIKit

// MARK: Secconds of birthday
let dayOfBirth = 31
let monthOfBirth = 12
let yearOfBirth = 1982

let currentDay = 2
let currentMinth = 7
let currentYear = 2015

let oneDaySeconds = 24 * 60 * 60
let leapYearCounter = Int((currentYear - yearOfBirth) / 4)

// 31 28 31 30 31 30 31 | 31 30 31 30 31

var days = dayOfBirth
var delta = ((yearOfBirth % 4) > 0) ? 0 : 1

switch monthOfBirth {
case 12: days += 30; fallthrough
case 11: days += 31; fallthrough
case 10: days += 30; fallthrough
case  9: days += 31; fallthrough
case  8: days += 31; fallthrough
case  7: days += 30; fallthrough
case  6: days += 31; fallthrough
case  5: days += 30; fallthrough
case  4: days += 31; fallthrough
case  3: days += 28; fallthrough
case  2: days += 31; fallthrough
default:
  break
}

days = ((365 + delta) - days) + ((currentYear - yearOfBirth - 1) * 365) + leapYearCounter

println("Days from birthday to begining of the \(currentYear) is \(days)")
println("In seconds this is: \(days * 24 * 60 * 60)")


var quarter: String!

switch monthOfBirth {
case 1...3: quarter = "Birthday in first quarter"
case 4...6: quarter = "Birthday in second quarter"
case 7...9: quarter = "Birthday in third quarter"
case 10...12: quarter = "Birthday in fourth quarter"
default: quarter = "error ranging"
}

println(quarter)


var first = 5
var second = 24
var third = -3
var fourth = 10_000
var fifth = -13

second += third
fifth = first / first
fourth = fourth * fifth

// MARK: Cheess
let horizontalPosition = 1
let verticalPosition = "a"
var tmp: Int!

switch verticalPosition {
case "a": tmp = 1
case "b": tmp = 2
case "c": tmp = 3
case "d": tmp = 4
case "e": tmp = 5
case "f": tmp = 6
case "g": tmp = 7
case "h": tmp = 8
default: tmp = 0
}

if tmp > 0 && tmp < 9 && horizontalPosition > 0 && horizontalPosition < 9 {
  let str = (horizontalPosition + tmp)%2 > 0 ? "white" : "black"
  println("Cell color is: \(str)")
} else {
  println("Wrong initial data")
}