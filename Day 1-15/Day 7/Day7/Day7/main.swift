//
//  main.swift
//  Day7
//
//  Created by Mehmet Tekin on 4.03.2024.
//

import Foundation

//let root = sqrt(169)
//print(root)
//
//func rollDice() -> Int {
//    return Int.random(in: 1...6)
//}
//
//let result = rollDice()
//print(result)

//func areLettersIdentical(string1: String, string2: String) -> Bool {
//    let first = string1.sorted()
//    let second = string2.sorted()
//    return first == second
//}

//func areLettersIdentical(string1: String, string2: String) -> Bool {
//    return string1.sorted() == string2.sorted()
//}

//func areLettersIdentical(string1: String, string2: String) -> Bool {
//    string1.sorted() == string2.sorted()
//}

//func pythagoras(a: Double, b: Double) -> Double {
//    let input = a * a + b * b
//    let root = sqrt(input)
//    return root
//}

//func pythagoras(a: Double, b: Double) -> Double {
//    sqrt(a * a + b * b)
//}
//
//let c = pythagoras(a: 3, b: 4)
//print(c)


// return multiple values


//func getUser() -> [String] {
//    ["Mehmet", "Tekin"]
//}
//
//let user = getUser()
//print("Name: \(user[0]) \(user[1])")
//
//
//func getUser2() -> [String: String] {
//    [
//        "firstName": "Mehmet",
//        "lastName": "Tekin"
//    ]
//}

//let user2 = getUser2()
//print("Name: \(user2["firstName", default: "Anonymous"]) \(user2["lastName", default: "Anonymous"])")


//func getUser() -> (firstName: String, lastName: String) {
//    (firstName: "Mehmet", lastName: "Tekin")
//}
//
//let user = getUser()
//print("Name: \(user.firstName) \(user.lastName)")


//func getUser() -> (String, String) {
//    ("Mehmet", "Tekin")
//}
//
//let user = getUser()
//print("Name: \(user.0) \(user.1)")


//func getUser() -> (firstName: String, lastName: String) {
//    (firstName: "Mehmet", lastName: "Tekin")
//}

//let user = getUser()
//let firstName = user.firstName
//let lastName = user.lastName
//
//print("Name: \(firstName) \(lastName)")


//let (firstName, lastName) = getUser()
//print("Name: \(firstName) \(lastName)")


// parameter labels

func rollDice(sides: Int, count: Int) -> [Int] {
    var rolls = [Int]()
    
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)
print(rolls)


let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))


func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

print(result)


//func printTimesTables(number: Int) {
//    for i in 1...12 {
//        print("\(i) x \(number) is \(i * number)")
//    }
//}
//
//printTimesTables(number: 5)

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
