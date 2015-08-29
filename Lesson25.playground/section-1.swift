// Playground - noun: a place where people can play

import UIKit

// MARK: Lesson - Битовые операции

extension UInt8 {
//extension Int8 {
  func binary() -> String {
    var result = ""
    for i in 0..<8 {
      let mask = 1 << i
      let set = Int(self) & mask != 0
      result = (set ? "1" : "0") + result
    }
    return result
  }
}

//var a: UInt8 = 57
//var a: Int8 = 57

/*
a.binary()

a = 0b01111111
a.binary()
a = a &+ 1
a.binary()
a = a &+ 1
a.binary()

a = 0
a = a - 1
a.binary()
a = a - 1
a.binary()

a = 0b00100001
a = a &* 4
a.binary()
*/

/*
0b11111111
0xff
255
*/

/*
a = 0b00111001
a.binary()
(5 as UInt8).binary()

a = a + 0b00000101
a.binary()
(4 as UInt8).binary()
a = a - 0b00000100
a.binary()

//a = a * 2
//a = a << 2
a = a * 4
a = a &* 2
a.binary()


a = 0b11111111
a = a &+ 1

a = 0b00000000
a = a &- 1
a.binary()
*/


var a: UInt8 = 0b00110011
var b: UInt8 = 0b11100001

a.binary()
b.binary()
(a | b).binary()  //  побитовое ИЛИ - 00

a.binary()
b.binary()
(a & b).binary()  //  побитовое И - 11

a.binary()
b.binary()
(a ^ b).binary()

a.binary()
(~a).binary()

//  так читаем биты
b = 0b00010000
a.binary()
b.binary()
(a & b).binary()

//  так устанавливаем биты
b = 0b00000100
a.binary()
b.binary()
(a | b).binary()

//  так инвертируем биты
a.binary()
b.binary()
(a ^ b).binary()

//  так сбрасываем бит
b = 0b00010000
a.binary()
b.binary()
(~b).binary()
(a & ~b).binary()

enum CheckList: UInt8 {
  case Bread    = 0b00000001
  case Chicken  = 0b00000010
  case Apples   = 0b00000100
  case Pears    = 0b00001000
}

let chechList: UInt8 = 0b00001001
let bread = chechList & CheckList.Bread.rawValue
bread.binary()

let chicken = chechList & CheckList.Chicken.rawValue
chicken.binary()

let pears = chechList & CheckList.Pears.rawValue
pears.binary()


// MARK: Homework

/*
1. Расширьте енум из урока и добавьте в него метод, помогающий установить соответствующий бит в переданную маску и метод, помогающий его прочитать. Эти методы должны принимать и возвращать маску, либо принимать адрес маски и менять его

2. Создать цикл, который будет выводить 1 байтное число с одним установленным битом в такой последовательности, чтобы в консоли получилась вертикальная синусоида

3. Создайте 64х битное число, которое представляет клетки на шахматной доске. Установите биты так, что 0 - это белое поле, а 1 - черное. Младший бит это клетка а1 и каждый следующий байт начинается с клетки а (а2, а3, а4) и заканчивается клеткой h(h2, h3, h4). Выбирая клетки но индексу столбца и строки определите цвет клетки опираясь исключительно на значение соответствующего бита
*/

extension CheckList {
  func set(inout mask: UInt8) {
    self.rawValue.binary()
    mask.binary()
//    mask = (mask | self.rawValue)
    mask.binary()
  }
  
  func readBit() -> UInt8 {
    
    return 0b00000000
  }
}

var aaa = CheckList.Bread
var mask: UInt8 = 0b01010101
aaa.rawValue.binary()
aaa.set(&mask)
aaa.rawValue.binary()


