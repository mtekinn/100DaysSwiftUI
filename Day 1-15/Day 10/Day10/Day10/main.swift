//
//  main.swift
//  Day10
//
//  Created by Mehmet Tekin on 6.03.2024.
//

import Foundation


struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

//let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
//let wings = Album(title: "Wings", artist: "BTS", year: 2016)
//print(red.title)
//print(wings.artist)
//
//red.printSummary()
//wings.printSummary()


//struct Employee {
//    let name: String
//    var vacationRemaining: Int
//    
//    mutating func takeVacation(days: Int) {
//        if vacationRemaining > days {
//            vacationRemaining -= days
//            print("I'm going on vacation!")
//            print("Days remaining: \(vacationRemaining)")
//        } else {
//            print("Oops! There aren't enough days remaining.")
//        }
//    }
//}
//
//
//var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
////archer.takeVacation(days: 5)
////print(archer.vacationRemaining)
//
//
//var archer1 = Employee(name: "Sterling Archer", vacationRemaining: 14)
//var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)


//struct User {
//    var name: String
//    var age: Int
//    var city: String
//}


//struct Employee {
//    let name: String
//    var vacationRemaining: Int
//}
//
//var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
//archer.vacationRemaining -= 5
//print(archer.vacationRemaining)
//archer.vacationRemaining -= 3
//print(archer.vacationRemaining)


//struct Employee {
//    let name: String
//    var vacationAllocated = 14
//    var vacationTaken = 0
//
//    var vacationRemaining: Int {
//        get {
//            vacationAllocated - vacationTaken
//        }
//        set {
//            vacationAllocated = vacationTaken + newValue
//        }
//    }
//}
//
//var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
//archer.vacationTaken += 4
//archer.vacationRemaining = 5
//print(archer.vacationAllocated)


//struct Game {
//    var score = 0
//}
//
//var game = Game()
//game.score = 10
//print("Score is now \(game.score)")
//game.score -= 3
//print("Score is now \(game.score)")
//game.score += 1
//print("Score is now \(game.score)")


//struct Game {
//    var score = 0 {
//        didSet {
//            print("Score is now \(score)")
//        }
//    }
//}
//
//
//var game = Game()
//game.score += 10
//game.score -= 3
//game.score += 1


//struct App {
//    var contacts = [String]() {
//        willSet {
//            print("Current value is: \(contacts)")
//            print("Current value is: \(newValue)")
//        }
//        
//        didSet {
//            print("The are now \(contacts.count) countacts.")
//            print("Old value was \(oldValue)")
//        }
//    }
//}
//
//
//var app = App()
//app.contacts.append("Adrian E.")
//app.contacts.append("Allen W.")
//app.contacts.append("Ish S")


//struct Player {
//    let name: String
//    let number: Int
//}
//
//
//let player = Player(name: "Mehmet Tekin", number: 26)


//struct Player {
//    let name: String
//    let number: Int
//
//    init(name: String, number: Int) {
//        self.name = name
//        self.number = number
//    }
//}

//struct Player {
//    let name: String
//    let number: Int
//    
//    init(name: String) {
//        self.name = name
//        number = Int.random(in: 1...99)
//    }
//}
//
//let player = Player(name: "Mehmet T.")
//print("Player name: \(player.name)\nPlayer number: \(player.number)")


//struct User {
//    var name: String
//    var yearsActive = 0
//}
//
//
//struct Employee {
//    var name: String
//    var yearsActive = 0
//}
//
//
//let roslin = Employee(name: "Laura Roslin")
//let adama = Employee(name: "William Adama", yearsActive: 45)
//let mehmet = User(name: "Mehmet Tekin")
//let mehmet2 = User(name: "Mehmetcan Tekin", yearsActive: 123)


//struct Employee {
//    var name: String
//    var yearsActive = 0
//    
//    init() {
//        self.name = "Anonymous"
//        print("Creating an anonymous employee..")
//    }
//}
//
//
//let roslin = Employee(name: "Laura Roslin")


//struct Employee {
//    var name: String
//    var yearsActive = 0
//}
//
//
//extension Employee {
//    init() {
//        self.name = "Anonymous"
//        print("Creating an anonymous employee...")
//    }
//}
//
//let roslin = Employee(name: "Laura Roslin")
//let anon = Employee()




//struct Student {
//    var name: String
//    var bestFriend: String
//    
//    init(name: String, bestFriend: String) {
//        print("Enrolling \(name) in class...")
//        self.name = name
//        self.bestFriend = bestFriend
//    }
//}
//
//
//let std = Student(name: "Mehmet", bestFriend: "Firuze")


struct Student {
    var name: String
    var bestFriend: String
    
    init(name studentName: String, bestFriend studentBestFriend: String) {
        print("Enrolling \(studentName) in class...")
        name = studentName
        bestFriend = studentBestFriend
    }
}

struct District {
    var number: Int
    var supervisor: String
    init(number: Int, supervisor: String) {
        self.number = number
        self.supervisor = supervisor
    }
}
let district = District(number: 9, supervisor: "Unknown")
