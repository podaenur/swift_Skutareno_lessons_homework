// Playground - noun: a place where people can play

import UIKit

// MARK: lesson - Наследование

/* final */ class Human {
  var firstName: String = ""
  var lastName: String = ""
  
  /* final */ var fullName: String {
    return firstName + " " + lastName
  }
  
  /* final */ func sayHello() -> String {
    return "Hello"
  }
}

class SmartHuman: Human {
  
}

class Student: SmartHuman {
  override func sayHello() -> String {
    return super.sayHello() + " my friend"
  }
}

class Kid: Human {
  var favoriteToy: String = "iMac"
  
  override func sayHello() -> String {
    return "agu"
  }
  
  override var fullName: String {
    return firstName
  }
  
  override var firstName: String {
    set {
      super.firstName = newValue + " :)"
    }
    get {
      return super.firstName
    }
  }
  
  override var lastName: String {
    didSet {
      println("new value " + self.lastName)
    }
  }
}

let human = Human()
human.firstName = "Alex"
human.lastName = "Skutarenko"
human.fullName
human.sayHello()

let student = Student()
student.firstName = "Max"
student.lastName = "Mix"
student.fullName
student.sayHello()

let kid = Kid()
kid.firstName = "Kid"
kid.lastName = "123456"
kid.fullName
kid.sayHello()
kid.favoriteToy

let array = [kid, student, human]

for value in array {
  println( value.sayHello() )
}


// MARK: Homework

/*
1. У нас есть базовый клас "Артист" и у него есть имя и фамилия. И есть метод "Выступление". У каждого артиста должно быть свое выступление: танцор танцует, певец поет и тд. А для художника, что бы вы не пытались ставить, пусть он ставит что-то свое (пусть меняет имя на свое артистическое). Когда вызываем метод "выступление" показать в консоле имя и фамилию артиста и собственно само выступление.
Полиморфизм используем для артистов. Положить их всех в массив, пройтись по нему и вызвать их метод "выступление"

2. Создать базовый клас "транспортное средство" и добавить три разных проперти: скорость, вместимость и стоимость одной перевозки (computed). Создайте несколько дочерних класов и переопределите их компютед проперти у всех. Создайте класс самолет, корабль, вертолет, машина и у каждого по одному объекту. В компютед пропертис каждого класса напишите свои значения скорости, вместимости, стоимости перевозки. + у вас должен быть свой метод который считает сколько уйдет денег и времени что бы перевести из пункта А в пункт В определенное количество людей с использованимем наших транспортных средств. Вывести в кольсоль результат (как быстро сможем перевести, стоимость, количество перевозок).
Используем полиморфизм

3. Есть 5 классов: люди, крокодилы, обезьяны, собаки, жирафы. (в этом задании вы будете создавать не дочерние классы, а родительские и ваша задача создать родительский таким образом, что бы группировать эти 5).
- Создайте по пару объектов каждого класса.
- Посчитайте присмыкающихся (создайте масив, поместите туда присмыкающихся и скажите сколько в нем объектов)
- Сколько четвероногих?
- Сколько здесь животных?
- Сколько живых существ?
*/