// Playground - noun: a place where people can play

import UIKit

//MARK: Lesson - Тюплы

let simpleTuple : (Int, String, Bool, Double) = (1, "Hello", true, 2.4)
let simpleTuple1 = (1, "Hello", true, 2.4)

let (number, greatings, check, decimal) = simpleTuple1

number
greatings
check
decimal

let (_,  _, check2, _) = simpleTuple1
check2

simpleTuple.0
simpleTuple.1
simpleTuple.2
simpleTuple.3

var tuple = (index:1, phrase:"Hello", registered:true, latency:2.4)
tuple.0
tuple.1
tuple.2
tuple.3

tuple.index
tuple.phrase
tuple.registered
tuple.latency

tuple.index = 2

let a = (x:1, y:2)
var b = (x:2, z:3)

//b = a

let (red, green, blue) = ("red", "green", "blue")

let p = (x:5.0, y:5.5)

red
green
blue

let totalNumber = 5
let merchantName = "Alex"

println("\(totalNumber) \(merchantName)")
println((totalNumber, merchantName))
println(simpleTuple)

//MARK: Homework )done, refactored)

/*
Домашнее задание:

1. Создать тюпл с тремя параметрами:
- максимальное количество отжиманий
- максимальное количество подтягиваний
- максимальное количество приседаний
Заполните его своими достижениями. Распечатайте его через println()

2. Также сделайте три отдельных вывода в консоль для каждого параметра При том одни значения доставайте по индексу, а другие по параметру

3. Создайте такой же тюпл для другого человека (супруги или друга) с такими же параметрами, но с другими значениями Используйте промежуточную переменную чтобы поменять соответствующие значения первого тюпла на значения второго

4. Создайте третий тюпл с теми же параметрами, но значения это разница между соответствующими значениями первого и второго тюплов Результат выведите в консоль
*/

var train = (push: 32, pull: 412, sit: 13)
var (anotherPush, anotherPull, anotherSits) = (144, 214, 109)

println("push, pull, sit: \(train)")

println("push: \(train.0)")
println("pull: \(train.1)")
println("sit: \(train.2)")

println("push: \(train.push)")
println("pull: \(train.pull)")
println("sit: \(train.sit)")

println("anotherPush: \(anotherPush)")
println("anotherPull: \(anotherPull)")
println("anotherSits: \(anotherSits)")


var airplane = (push: 64, pull: 1024, sit: 32)

let tmp = airplane
airplane = train
train = tmp

println("\(airplane)")


let abrakadabra = (push: train.0 - airplane.0, pull: train.pull - airplane.1, sit: train.sit - airplane.sit)

println("\(abrakadabra)")
