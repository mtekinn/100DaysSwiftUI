//
//  main.swift
//  Day9
//
//  Created by Mehmet Tekin on 6.03.2024.
//

import Foundation

//func greetUser() {
//    print("Hi there!")
//}
//
//greetUser()
//
//var greetCopy = greetUser
//greetCopy()
//
//let sayHello = {
//    print("Hi there!")
//}
//
//sayHello()


//let sayHello = { (name: String) -> String in
//    "Hi \(name)!"
//}
//
//
//func getUserData(for id: Int) -> String {
//    if id == 1989 {
//        return "Taylor Swift"
//    } else {
//        return "Anonymous"
//    }
//}
//
//let data: (Int) -> String = getUserData
//let user = data(1989)
//print(user)
//print(sayHello("Mehmet"))


//let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
//let sortedTeam = team.sorted()
//print(sortedTeam)
//
//
//func captainFirstSorted(name1: String, name2: String) -> Bool {
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//    
//    return name1 < name2
//}
//
//
//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)


//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//    return name1 < name2
//})

//let payment = { (user: String) in
//    print("Paying \(user)...")
//}
//
//
//
//let payment2 = { (user: String) -> Bool in
//    print("Paying \(user)...")
//    return true
//}
//
//
//let payment3 = { () -> Bool in
//    print("Paying an anonymous person...")
//    return true
//}
//
//
//let convertNumerals = { (numeral: String) -> String in
//    switch numeral {
//    case "I":
//        return "1"
//    case "II":
//        return "2"
//    case "III":
//        return "3"
//    }
//}
//print(convertNumerals("II"))



//let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
//
//let captainFirstTeam = team.sorted {
//    if $0 == "Suzanne" {
//        return true
//    } else if $1 == "Suzanne" {
//        return false
//    }
//
//    return $0 < $1
//}
//
//print(captainFirstTeam)
//
//
////let reverseTeam = team.sorted {
////    return $0 > $1
////}
//
//let reverseTeam = team.sorted { $0 > $1 }
//
//
//let tOnly = team.filter { $0.hasPrefix("T") }
//print(tOnly)
//
//
//let uppercaseTeam = team.map { $0.uppercased() }
//print(uppercaseTeam)


//func animate(duration: Double, animations: () -> Void) {
//    print("Starting a \(duration) second animation...")
//    animations()
//}
//
//
//animate(duration: 3) {
//    print("Fade out the image")
//}
//
//
//func trySquare(number: Int, animations: () -> Void) {
//    print("Starting to square the number")
//    let result = number * number
//    print("The num of \(number)'s square is \(result)")
//    animations()
//}
//
//trySquare(number: 4) {
//    print("Over")
//}

//func makeArray(size: Int, using generator: () -> Int) -> [Int] {
//    var numbers = [Int]()
//    
//    for _ in 0..<size {
//        let newNumber = generator()
//        numbers.append(newNumber)
//    }
//    return numbers
//}
//
//
//let rolls = makeArray(size: 50) {
//    Int.random(in: 1...20)
//}
//
//print(rolls)
//
//func generateNumber() -> Int {
//    Int.random(in: 1...20)
//}
//
//let newRolls = makeArray(size: 50, using: generateNumber)
//print(newRolls)
//
//
//func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
//    print("About to start first work")
//    first()
//    print("About to start second work")
//    second()
//    print("About to start third work")
//    third()
//    print("Done!")
//}
//
//
//doImportantWork {
//    print("This is the first work")
//} second: {
//    print("This is the second work")
//} third: {
//    print("This is the third work")
//}



let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]


//var evenNumbers = luckyNumbers.filter { num in
//    if num % 2 == 0 {
//        return true
//    }
//    return false
//}
//print(evenNumbers)
//
//
//var ascendingOrder = luckyNumbers.sorted()
//print(ascendingOrder)
//
//
//var luckySeven = luckyNumbers.map { num in
//    if num == 7 {
//        print("\(num) is a lucky number")
//    }
//    return false
//}


var perItem = luckyNumbers.sorted().map { num in
    print("\(num) is a lucky number")
}
