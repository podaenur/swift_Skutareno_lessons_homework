//: Playground - noun: a place where people can play

import UIKit

// MARK: Lesson - Функции

// DRY

func calculateMoney(inWallet wallet: [Int], withType type: Int? = nil) -> (total: Int, count: Int) {
  
  var sum = 0
  var count = 0
  
  for value in wallet {
    if (type == nil) || (value == type!) {
      sum += value
      count++
    }
  }
  
  return (sum, count)
}

func calculateMoney(inSequence range: Int...) -> Int {
  
  var sum = 0
  for value in range {
    sum += value
  }
  
  return sum
}

let wallet = [100, 5, 1, 5, 5, 20, 50, 100, 1, 1]

let (money, count) = calculateMoney(inWallet: wallet)

money
count

/*
  ......
*/

calculateMoney(inWallet: wallet, withType: 5).count

calculateMoney(inSequence: 5,5,10,2,3,4,3,23,34,1,1)


func sayHi () -> () {
  println("hi")
}

//sayHi()
//sayHi()
//sayHi()
//sayHi()

let hi: () -> () = sayHi

func sayPhrase(phrase: String) -> Int? {
  println(phrase)
  return 0
}

sayPhrase("aaa")

let phrase/*: (String) -> (Int?)*/ = sayPhrase

phrase("bbb")



func doSomthing(whatToDo:() -> ()) {
  whatToDo()
}

func whatToDo() -> () -> () {
  func printSomething() { //  nested func
    println("hello world!!!")
  }
  return printSomething
}

doSomthing(sayHi)

whatToDo()()  //  nested func calling

let iShouldDoThis = whatToDo()

iShouldDoThis()

// MARK: Homework

/*
1. Создайте пару функций с короткими именами, которые возвращают строку с классным символом или символами. Например heart() возвращает сердце и т.п. Вызовите все эти функции внутри принта для вывода строки этих символов путем конкатенации.

2. Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль

3. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.

4. Разберитесь с inout самостоятельно и выполните задание номер 3 так, чтобы функция не возвращала перевернутый массив, но меняла элементы в существующем. Что будет если убрать inout?

5. Создайте функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова (9 -> nine и тд)
*/


func drive() -> String {
  return "Keep going!"
}

func askPuzzle() -> String {
  return "What that mean:  \u{723}  ?"
}

println(askPuzzle() + " " + drive())

func chessCellColor(forColumn c: UInt, andRow r: Character) -> String {
  
  let rows = "ABCDEFGH"
  let set = NSCharacterSet
  
  if rows.rangeOfCharacterFromSet(<#aSet: NSCharacterSet#>)
    return "wrong row"
  }
  
  if (c < 1) || (c > 8) {
    return "wrong column"
  }
  
  
  
  return "we happy"
}

chessCellColor(forColumn: 5, andRow: "D")




