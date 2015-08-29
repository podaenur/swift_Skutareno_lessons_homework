// Playground - noun: a place where people can play

import UIKit

// MARK: Lesson - Сабскрипты

let array = ["a", "b", "c"]
array[0]
array[1]
array[2]

struct Family {
  var father = "Father"
  var mother = "Mother"
  var kids = ["Kid1", "Kid2", "Kid3"]
  
  var count: Int {
    return 2 + kids.count
  }
  
  subscript(index: Int) -> String? {
    get {
      switch(index) {
      case 0: return father
      case 1: return mother
      case 2..<(2 + kids.count): return kids[index - 2]
      default: return nil
      }
    }
    set {
      let value = newValue ?? ""
      
      switch(index) {
      case 0: return father = value
      case 1: return mother = value
      case 2..<(2 + kids.count): kids[index - 2] = value
      default: break
      }
    }
  }
  
  subscript(index: Int, suffix: String) -> String? {
    var name = self[index] ?? ""
    name += " " + suffix
    return name
  }
}

var family = Family()
family.father
family.mother
family.kids[0]
family.count

family[0]
family[1]
family[2]

family[0] = "Daddy"
family.father

family[3] = "Buddy"
family.kids[1]

family[3]
family[3, "the great"]!


struct Field {
  var dict = [String: String]()
  
  func keyForColumn(column: String, andRow row: Int) -> String {
    return column + String(row)
  }
  
  subscript(column: String, row: Int) -> String? {
    get {
      return dict[keyForColumn(column, andRow: row)]
    }
    set {
      dict[keyForColumn(column, andRow: row)] = newValue
    }
  }
}

var field = Field()

field["a", 5]
field["a", 5] = "X"
field["a", 5]


// MARK: Homework

/*
Шахматная доска (Легкий уровень)
1. Создайте тип шахматная доска.
2. Добавьте сабскрипт, который выдает цвет клетки по координате клетки (буква и цифра).
3. Если юзер ошибся координатами - выдавайте нил

Крестики нолики (Средний уровень)
1. Создать тип, представляющий собой поле для игры в крестики нолики
На каждой клетке может быть только одно из значений: Пусто, Крестик, Нолик
Добавьте возможность красиво распечатывать поле
2. Добавьте сабскрипт, который устанавливает значение клетки по ряду и столбцу,
причем вы должны следить за тем, чтобы программа не падала если будет введен не существующий ряд или столбец.
3. Также следите за тем, чтобы нельзя было устанавливать крестик либо нолик туда, где они уже что-то есть. Добавьте метод очистки поля.
4. Если хотите, добавте алгоритм, который вычислит победителя

Морской бой (Тяжелый уровень)
1. Создайте тип корабль, который будет представлять собой прямоугольник. В нем может быть внутренняя одномерная система координат (попахивает сабскриптом). Корабль должен принимать выстрелы по локальным координатам и вычислять когда он убит
2. Создайте двумерное поле, на котором будут располагаться корабли врага. Стреляйте по полю и подбейте вражеский четырех трубник :)
3. Сделайте для приличия пару выстрелов мимо, красивенько все выводите на экран :)
*/
