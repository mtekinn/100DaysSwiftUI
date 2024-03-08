//
//  main.swift
//  Day11
//
//  Created by Mehmet Tekin on 7.03.2024.
//

import Foundation

//struct BankAccount {
//    private var funds = 0
//
//    mutating func deposit(amount: Int) {
//        funds += amount
//    }
//
//    mutating func withdraw(amount: Int) -> Bool {
//        if funds >= amount {
//            funds -= amount
//            return true
//        } else {
//            return false
//        }
//    }
//}
//
//
//var account = BankAccount()
//account.deposit(amount: 100)
//let success = account.withdraw(amount: 200)
//
//if success {
//    print("Withdraw money successfully")
//} else {
//    print("Failed to get the money")
//}

//struct Doctor {
//    var name: String
//    var location: String
//    private var currentPatient = "No one"
//
//    init(name: String, location: String, currentPatient: String = "No one") {
//        self.name = name
//        self.location = location
//        self.currentPatient = currentPatient
//    }
//}
//
//// let drJones = Doctor(name: "Esther Jones", location: "Bristol")
//let dr = Doctor(name: "test", location: "test", currentPatient: "test")


//struct Office {
//    private var passCode: String
//    var address: String
//    var employees: [String]
//    init(address: String, employees: [String]) {
//        self.address = address
//        self.employees = employees
//        self.passCode = "SEKRIT"
//    }
//}
//let monmouthStreet = Office(address: "30 Monmouth St", employees: ["Paul Hudson"])

//struct School {
//    var staffNames: [String]
//    private var studentNames: [String]
//    init(staff: [String]) {
//        self.staffNames = staff
//        self.studentNames = [String]()
//    }
//}
//let royalHigh = School(staff: ["Mrs Hughes"])


//struct Toy {
//    var customerPrice: Double
//    private var actualPrice: Int
//    init(price: Int) {
//        actualPrice = price
//        customerPrice = Double(actualPrice * 2)
//    }
//}
//let buzz = Toy(price: 10)


//struct App {
//    var name: String
//    private var sales = 0
//    init(name: String) {
//        self.name = name
//    }
//}
//let spotify = App(name: "Spotify")
//print(spotify)

//struct School {
//    static var studentCount = 0
//
//    static func add(student: String) {
//        print("\(student) joined the school.")
//        studentCount += 1
//    }
//}
//
//var s1 = School()
//// s1
//School.add(student: "Mehmet Tekin")
//print(School.studentCount)



//struct AppData {
//    static let version = "1.3 beta 2"
//    static let saveFilename = "settings.json"
//    static let homeURL = "https://www.hackingwithswift.com"
//}
//
//
//struct Employee {
//    let username: String
//    let password: String
//
//}


//struct Unwrap {
//    static let appURL = "https://itunes.apple.com/app/id1440611372"
//}
//
//
//var entropy = Int.random(in: 1...1000)
//
//func getEntropy() -> Int {
//    entropy += 1
//    return entropy
//}

enum GearDirection {
    case up, down
}


struct CarGear {
    let modelName: String
    let seat: Int
    private(set) var currentGear = 1
    
    public mutating func changeGear(_ direction: GearDirection) {
        if currentGear > 0 && currentGear < 7 {
            switch direction {
            case .down:
                currentGear -= 1
            case .up:
                currentGear += 1
            }
        }
    }
}


var car = CarGear(modelName: "Tesla", seat: 4, currentGear: 3)
car.changeGear(.up)
print(car.currentGear)
