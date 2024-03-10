//
//  main.swift
//  Day13
//
//  Created by Mehmet Tekin on 9.03.2024.
//

import Foundation

//protocol Vehicle {
//    var name: String { get }
//    var currentPassengers: Int { get set }
//    func estimateTime(for distance: Int) -> Int
//    func travel(distance: Int)
//}
//
//
//
//struct Car: Vehicle {
//    let name = "Car"
//    
//    var currentPassengers = 1
//    
//    func estimateTime(for distance: Int) -> Int {
//        distance / 50
//    }
//    
//    func travel(distance: Int) {
//        print("I'm driving \(distance)km.")
//    }
//    
//    func openSunroof() {
//        print("It's a nice day!")
//    }
//}
//
//
//func commute(distance: Int, using vehicle: Vehicle) {
//    if vehicle.estimateTime(for: distance) > 100 {
//        print("That's too slow! I'll try a different vehicle.")
//    } else {
//        vehicle.travel(distance: distance)
//    }
//}
//
//let car = Car()
//commute(distance: 100, using: car)
//
//
//struct Bicycle: Vehicle {
//    let name = "Bicycle"
//
//    var currentPassengers = 1
//    
//    func estimateTime(for distance: Int) -> Int {
//        distance / 10
//    }
//    
//    func travel(distance: Int) {
//        print("I'm cycling \(distance)km.")
//    }
//}
//
//let bike = Bicycle()
//commute(distance: 50, using: bike)
//
//
//func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
//    for vehicle in vehicles {
//        let estimate = vehicle.estimateTime(for: distance)
//        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
//    }
//}
//
//
//getTravelEstimates(using: [car, bike], distance: 150)


//protocol Purchaseable {
//    var name: String { get set }
//}
//
//
//struct Book: Purchaseable {
//    var name: String
//    var author: String
//}
//
//struct Movie: Purchaseable {
//    var name: String
//    var actors: [String]
//}
//
//struct Car: Purchaseable {
//    var name: String
//    var manufacturer: String
//}
//
//struct Coffee: Purchaseable {
//    var name: String
//    var strength: Int
//}
//
//
//func buy(_ item: Purchaseable) {
//    print("I'm buying \(item.name)")
//}
//
//
//var b = Book(name: "Test Book", author: "Mehmet Tekin")
//buy(b)


//func getRandomNumber() -> some Equatable {
//    Int.random(in: 1...6)
//}
//
//func getRandomBool() -> some Equatable {
//    Bool.random()
//}
//
//print(getRandomNumber() == getRandomNumber())


//var quote = "   The truth is rarely pure and never simple   "
//let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
//
//extension String {
//    
//    func trimmed() -> String {
//        self.trimmingCharacters(in: .whitespacesAndNewlines)
//    }
//    
//    mutating func trim() {
//        self = self.trimmed()
//    }
//    
//    var lines: [String] {
//        self.components(separatedBy: .newlines)
//    }
//}
//
////let trimmed = quote.trimmed()
////print(trimmed)
//
//func trim(_ string: String) -> String {
//    string.trimmingCharacters(in: .whitespacesAndNewlines)
//}
//
//let trimmed2 = trim(quote)
//// print(trimmed2)
//
//let lyrics = """
//But I keep cruising
//Can't stop, won't stop moving
//It's like I got this music in my mind
//Saying it's gonna be alright
//"""
//
//print(lyrics.lines.count)


//struct Book {
//    let title: String
//    let pageCount: Int
//    let readingHours: Int
//    
//    init(title: String, pageCount: Int, readingHours: Int) {
//        self.title = title
//        self.pageCount = pageCount
//        self.readingHours = pageCount / 50
//    }
//}
//
//extension Book {
//    init(title: String, pageCount: Int) {
//        self.title = title
//        self.pageCount = pageCount
//        self.readingHours = pageCount / 50
//    }
//}
//
//let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)
//print(lotr)


//let guests = ["Mario", "Luigi", "Peach"]
//
//if guests.isEmpty == false {
//    print("Guest count: \(guests.count)")
//}
//
//if !guests.isEmpty {
//    print("Guest count2: \(guests.count)")
//}
//
//
//extension Array {
//    var isNotEmpty: Bool {
//        isEmpty == false
//    }
//}
//
//if guests.isNotEmpty {
//    print("Guest count3: \(guests.count)")
//}
//
//extension Collection {
//    var isNotEmpty: Bool {
//        isEmpty == false
//    }
//}
//
//
//protocol Person {
//    var name: String { get }
//    func sayHello()
//}
//
//extension Person {
//    func sayHello() {
//        print("Hi, I'm \(name)")
//    }
//}
//
//
//struct Employee: Person {
//    let name: String
//}
//
//let taylor = Employee(name: "Taylor Swift")
//taylor.sayHello()


//let numbers = [4, 8, 15, 16]
//let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }
//
//print(allEven)
//
//let numbers2 = Set([4, 8, 15, 16])
//let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }
//print(allEven2)
//
//let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
//let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }
//print(allEven3)
