// Playground - noun: a place where people can play

import UIKit

// MARK: Lesson - Клоужеры

let numbers = [4, 3, 12, 7, 6, 3, 56, 7, 8, 9, 10, 4, 3, 1, 8, 11]

func filterArray(array: [Int], f: (Int) -> Bool) -> [Int] {
  var filtered = [Int]()
  
  for value in array {
    if f(value) {
      filtered.append(value)
    }
  }
  return filtered
}

/*
func compare(i: Int) -> Bool {
  return i % 2 == 0
}
*/

filterArray(numbers, {(i: Int) -> Bool in
  return i % 2 == 0
})

filterArray(numbers, {(i: Int) -> Bool in
  return i % 2 == 1
})

filterArray(numbers, {(i: Int) -> Bool in
  return i % 3 == 0
})

filterArray(numbers, {(i: Int) -> Bool in
  return i < 10
})

// ------
// MARK: simple form
// FIXME: aaa
// TODO: fix it :)

filterArray(numbers, {i in
  return i % 2 == 0
})

let a =
filterArray(numbers, { i in i % 2 == 1 })

let a1 =
filterArray(numbers, { $0 % 3 == 0 })

let a3 =
filterArray(numbers) { $0 % 3 == 0 }

// если бы мы не принимали numbers, то валидна запись:  filterArray { $0 % 3 == 0 }

let array = [1, 2, 3, 5, 7, 123]

var count = 0

let a4 =
filterArray(numbers) { value in
  for include in array {
    count++
    if include == value {
      return true
    }
  }
  return false
}

count
count = 0

var dict = [Int: Bool]()

for value in array {
  count++
  dict[value] = true
}

let a5 =
filterArray(numbers) { value in
  count++
  return dict[value] != nil
}

count


// MARK: Homework

/*
1. Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте println в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.

2. Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.

3. Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.

используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.

4. Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы

5. Проделайте задание №3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)
*/