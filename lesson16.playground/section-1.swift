// Playground - noun: a place where people can play

import UIKit

// MARK: Lesson - Методы

struct Point {
  var x: Int
  var y: Int
  
  /*
  mutating func moveByX(x: Int, andY: Int) {
    self.x += x
    self.y += y
  }
*/
  
  mutating func moveByX(x: Int, andY y: Int) {
    self = Point(x: self.x + x, y: self.y + y)
  }
}

enum Color {
  
  static func numberOfElementc() -> Int {
    self.print()
    return 2
  }
  
  
  case White
  case Black
  
  mutating func invert() -> Color {
    if self == White {
      self = Black
    } else {
      self = White
    }
//    self = self == White ? Black : White
    return self
  }
  
  func print() {
    if self == White {
      println("White")
    } else {
      println("Black")
    }
  }
  
  static func print() {
    println("enum")
  }
}

var c = Color.White
c.print()
c.invert().print()
c.invert().print()
c.invert().print()
c.invert().print()

println(Color.numberOfElementc())


func move(var #point: Point, byX x: Int, andY y:Int) -> Point {
  point.y += x
  point.y += y
  return point
}

var p1 = Point(x: 1, y: 1)
var p2 = Point(x: 2, y: 2)

//move(p, 2, 4)
//move(p, byX: 2, andY: 4)
//p = move(point: p, byX: 2, andY: 4)

//p.move(byX: <#Int#>, andY: <#Int#>)
p1.moveByX(5, andY: 7)
p2

p1
p2

// MARK: Homework