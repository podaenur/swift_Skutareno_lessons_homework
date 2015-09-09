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

/*
1. Создать энум с шахматными фигруами (король, ферзь и т.д.). Каждая фигура должна иметь цвет белый либо черный (надеюсь намек понят), а так же букву и цифру для позиции. Создайте пару фигур с расположением на доске, так, чтобы черному королю был мат :) Поместите эти фигуры в массив фигур

2. Сделайте так, чтобы энумовские значения имели rawValue типа String. Каждому типу фигуры установите соответствующее английское название. Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение. Используя эту функцию распечатайте все фигуры в массиве.

3. Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску. Если клетка не содержит фигуры, то используйте белую или черную клетку. Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)

4. Создайте функцию, которая будет принимать шахматную фигуру и тюпл новой позиции. Эта функция должна передвигать фигуру на новую позицию, причем перемещение должно быть легальным: нельзя передвинуть фигуру за пределы поля и нельзя двигать фигуры так, как нельзя их двигать в реальных шахматах (для мегамонстров программирования). Вызовите эту функцию для нескольких фигур и распечатайте поле снова.

5. Следите чтобы ваш код был красивым!
*/

//  мат: black king - А1  white queen H2  white Rook A8

enum Chessman {
  case King
  case Queen
  case Rook
  case Knight
  case Bishop
  case Pawn
  
  enum Color {
    case Black
    case White
  }
}




