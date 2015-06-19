// Playground - noun: a place where people can play

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

import UIKit

var train = (push: 32, pull: 412, sit: 13)

println("push, pull, sit: \(train)")

println("push: \(train.0)")
println("pull: \(train.1)")
println("sit: \(train.2)")

println("push: \(train.push)")
println("pull: \(train.pull)")
println("sit: \(train.sit)")


var airplane = (push: 64, pull: 1024, sit: 32)

let tmp = airplane
airplane = train
train = tmp

println("\(airplane)")


let abrakadabra = (push: train.0 - airplane.0, pull: train.pull - airplane.1, sit: train.sit - airplane.sit)

println("\(abrakadabra)")