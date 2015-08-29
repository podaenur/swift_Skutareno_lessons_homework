// Playground - noun: a place where people can play

import UIKit

// MARK: Lesson - Энумы

enum Direction: String {
  case Left = "Left!"
  case Right = "Right!"
}

enum Action {
  case Walk(meters: Int)
  case Run(meters: Int, speed: Double)
  case Stop
  case Turn(direction: Direction)
  
//  enum Direction {
//    case Left
//    case Right
//  }
}

var action = Action.Run(meters: 20, speed: 15.0)

//action = .Stop
//action = .Walk(meters: 500)
//action = .Turn(direction: "Left") <-- Wrong!
//action = .Turn(direction: .Left)

var direction = Direction(rawValue: "Right!")!

action = .Turn(direction: direction)

switch action {
case .Stop: println("Stop")
//case .Walk(let meters): println("walk \(meters) meters")
case .Walk(let meters) where meters < 100:
  println("short walk")
case .Walk(let meters):
  println("long walk")
case .Run(let m, let s):
  println("run \(m) meters with speed \(s)")
case .Turn(let dir) where dir == .Left:
  println("Turn left")
case .Turn(let dir) where dir == .Right:
  println("Turn right")
default: break
}

println(Direction.Left.rawValue)

// MARK: Homework