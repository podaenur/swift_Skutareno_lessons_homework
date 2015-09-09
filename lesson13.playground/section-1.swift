// Playground - noun: a place where people can play

import UIKit

// MARK: Lesson - Классы и структуры

/*
let student1 = (name: "Alex", age: 20)
let student2 = (name: "Bob", age: 22)

student1.name
student2.name
let student3 = (nam: "Sam", ag: 23)
student3.nam
*/

class StudentClass {
  var name: String
  var age: Int
  
  init() {
    name = "No name"
    age = 20
  }
  
  init(_name: String, _age: Int) {
    self.name = _name
    self.age = _age
  }
}

struct StudentStruc {
  var name: String
  var age: Int
}

func addOneYear(student: StudentClass) {
  student.age++
  student
}

func addOneYear(var student: StudentStruc) {
  student.age++
  student
}

func addOneYearElse(inout student: StudentStruc) {
  student.age++
  student
}

//  reference type
let stClass1 = StudentClass(_name: "Bob", _age: 18)

stClass1.name = "Alex"
stClass1.age = 21

//  value type
var stStruct1 = StudentStruc(name: "Sam", age: 24)

//stStruct1.name = "Sam2"
//stStruct1.age = 21

stStruct1

var stStruct2 = stStruct1

stStruct2.age = 25
stStruct2.name = "Samuel"

stStruct2
stStruct1

var stClass2 = stClass1

stClass2.age = 20
stClass2.name = "AAA"

stClass2
stClass1

stStruct1
addOneYear(stStruct1)
stStruct1

stStruct1
addOneYearElse(&stStruct1)
stStruct1

stClass1
addOneYear(stClass1)
stClass1

var arrayStructs = [stStruct1]
arrayStructs[0]
arrayStructs[0].age = 50
arrayStructs[0]
stStruct1

var arrayClasses = [stClass1]
arrayClasses[0]
arrayClasses[0].age = 50
arrayClasses[0]
stClass1


// MARK: Homework

/*
1. Создайте структуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несколько экземпляров этой структуры и заполните их данными. Положите их всех в массив (журнал).
2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого. Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.
3. С помощью функции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.
4. Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаковые, а вы сделайте так чтобы такое произошло, то сравниваются по имени. Распечатайте “журнал”.
5. Создайте переменную и присвойте ей ваш существующий массив. Измените в нем данные всех студентов. Изменится ли первый массив? Распечатайте оба массива.
6. Теперь проделайте все тоже самое, но не для структуры Студент, а для класса. Какой результат в 5м задании? Что изменилось и почему?
007. Уровень супермен
Выполните задание шахмат из урока по энумам используя структуры либо классы
*/

struct Student {
  var firstName: String?
  var lastName: String?
  var yearOfBirtday: UInt16?
  var score: Double? {
    didSet {
      if score > 5 {
        println("Score cannot be bigger than 5.0 points")
        score = oldValue
      }
    }
  }
}


var Anna = Student(firstName: "Anna", lastName: "Romanova", yearOfBirtday: 1981, score: 4.1)
var Leonid = Student(firstName: "Leonid", lastName: "Butusov", yearOfBirtday: 1969, score: 3.2)
var Petr = Student(firstName: "Petr", lastName: "Rabinovich", yearOfBirtday: 1993, score: 5.0)
var Lisa = Student(firstName: "Lisa", lastName: "Kaningem", yearOfBirtday: 1977, score: 5.8)

Anna.firstName
Leonid.lastName
Petr.yearOfBirtday
Lisa.score







