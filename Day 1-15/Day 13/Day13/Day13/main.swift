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


protocol Purchaseable {
    var name: String { get set }
}


struct Book: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}


func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}


var b = Book(name: "Test Book", author: "Mehmet Tekin")
buy(b)
