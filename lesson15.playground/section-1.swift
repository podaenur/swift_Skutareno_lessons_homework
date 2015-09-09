// Playground - noun: a place where people can play

import UIKit

// MARK: Lesson - Свойства типов

let MaxNameLength = 10

class Human {
  var name: String {
    didSet {
      if count(name) > MaxNameLength {
        name = oldValue
      }
    }
  }
  
  lazy var storyOfMyLife = "This is a story of my entire life..." //  : String!
  
  class var maxAge: Int {
    return 100
  }
  
  var age: Int {
    didSet {
      if age > Human.maxAge {
        age = oldValue
      }
    }
  }
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
}

enum Direction {
  static let enumDescription = "Directions in the game"
  
  case Left
  case Right
  case Top
  case Bottom
  
  var isVertical: Bool {
    return self == .Top || self == .Bottom
  }
  
  var isHorizontal: Bool {
    return !isVertical
  }
}

let d = Direction.Right

d.isVertical
d.isHorizontal

Direction.enumDescription

struct Cat {
  var name: String {
    didSet {
      if count(name) > MaxNameLength {
        name = oldValue
      }
    }
  }
  static let maxAge = 20
  static var totalCats = 0
  var age: Int {
    didSet {
      if age > Cat.maxAge {
        age = oldValue
      }
    }
  }
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
    
    Cat.totalCats++
  }
}

let human = Human(name: "Peter", age: 40)

human
human.storyOfMyLife

var cat = Cat(name: "Whiten", age: 10)

human.age = 1_000
cat.age = 50

Cat.totalCats

let cat1 = Cat(name: "Whiten1", age: 10)
let cat2 = Cat(name: "Whiten2", age: 10)

Cat.totalCats

cat.name = "hsjfhdjksghjkdfshgjkdsf"


// MARK: Homework


/*
1. Создать структуру “Описание файла” содержащую свойства:
- путь к файлу
- имя файла
- максимальный размер файла на диске
- путь к папке, содержащей этот файл
- тип файла (скрытый или нет)
- содержимое файла (можно просто симулировать контент)

Главная задача - это использовать правильные свойства там, где нужно, чтобы не пришлось хранить одни и те же данные в разных местах и т.д. и т.п.

2. Создайте энум, который будет представлять некую цветовую гамму. Этот энум должен быть типа Int и как raw значение должен иметь соответствующее 3 байтное представление цвета. Добавьте в этот энум 3 свойства типа: количество цветов в гамме, начальный цвет и конечный цвет.

3. Создайте класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
- минимальный и максимальный возраст каждого объекта
- минимальную и максимальную длину имени и фамилии
- минимально возможный рост и вес
- самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса
*/
