// Playground - noun: a place where people can play

import UIKit

// MARK: Lesson

let MaxNameLength = 10

class Human {
  var name: String {
    didSet {
      if countElements(name) > MaxNameLength {
        name = oldValue
      }
    }
  }

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
      if countElements(name) > MaxNameLength {
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

var cat = Cat(name: "Whiten", age: 10)

human.age = 1_000
cat.age = 50

Cat.totalCats

let cat1 = Cat(name: "Whiten1", age: 10)
let cat2 = Cat(name: "Whiten2", age: 10)

Cat.totalCats

cat.name = "hsjfhdjksghjkdfshgjkdsf"


// MARK: Homework
