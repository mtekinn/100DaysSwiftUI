//
//  main.swift
//  Day12
//
//  Created by Mehmet Tekin on 8.03.2024.
//

//import Foundation
//
//class Game {
//    var score = 0 {
//        didSet {
//            print("Score is now \(score)")
//        }
//    }
//}
//
//var newGame = Game()
//newGame.score += 10
//print(newGame.score)


//class Employee {
//    let hours: Int
//    
//    func printSummary() {
//        print("I work \(hours) hours a day.")
//    }
//    
//    init(hours: Int) {
//        self.hours = hours
//    }
//}
//
//
//class Developer: Employee {
//    func work() {
//        print("I'm writing code for \(hours) hours.")
//    }
//    
//    override func printSummary() {
//        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
//    }
//}
//
//
//class Manager: Employee {
//    func work() {
//        print("I'm going to meetings for \(hours) hours.")
//    }
//}
//
//
//let robert = Developer(hours: 8)
//let joseph = Manager(hours: 10)
//robert.work()
//joseph.work()
//let novall = Developer(hours: 7)
//novall.printSummary()



//class Vehicle {
//    let isElectric: Bool
//    
//    init(isElectric: Bool) {
//        self.isElectric = isElectric
//    }
//}
//
//
//class Car: Vehicle {
//    let isConvertible: Bool
//    
//    init(isElectric: Bool, isConvertible: Bool) {
//        self.isConvertible = isConvertible
//        super.init(isElectric: isElectric)
//    }
//}
//
//
//let teslaX = Car(isElectric: true, isConvertible: false)
//print(teslaX.isElectric)
//
//
//class Product {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//class Book: Product {
//    var isbn: String
//    init(name: String, isbn: String) {
//        self.isbn = isbn
//        super.init(name: name)
//    }
//}


//class User {
//    var username = "Anonymous"
//}
//
//
//var user1 = User()
//
//var user2 = user1
//user2.username = "Mehmet"
//
//
//print(user1.username)
//print(user2.username)


//class User {
//    var username = "Anonymous"
//    
//    func copy() -> User {
//        let user = User()
//        user.username = username
//        return user
//    }
//}
//
//var user1 = User()
//var user2 = user1
//
//user2.username = "Mehmet"
//
//print(user1.username)
//print(user1.copy())
//print(user2.username)
//print(user2.copy())


//class Hairdresser {
//    var clients = [String]()
//}
//var tim = Hairdresser()
//tim.clients.append("Jess")
//var dave = tim
//dave.clients.append("Sam")
//print(tim.clients.count)
//print(dave.clients.count)


//class User {
//    let id: Int
//    
//    init(id: Int) {
//        self.id = id
//        print("User \(id): I'm alive!")
//    }
//    
//    deinit {
//        print("User \(id): I'm dead!")
//    }
//}
//
//
////for i in 1...3 {
////    let user = User(id: i)
////    print("User \(user.id): I'm in control!")
////}
//
//
//var users = [User]()
//
//for i in 1...3 {
//    let user = User(id: i)
//    print("User \(user.id): I'm in control!")
//    users.append(user)
//}
//
//print("Loop is finished!")
//users.removeAll()
//print("Array is clear!")


//class User {
//    var name = "Mehmet"
//}
//
//let user = User()
//user.name = "Tekin"
//print(user.name)


//class User {
//    var name = "Mehmet"
//}
//
//var user = User()
//user.name = "Tekin"
//user = User()
//print(user.name)




// Checkpoint 7


class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
    func speak() {
        print("Animal sound")
    }
}


class Dog: Animal {
    override func speak() {
        print("Woof!!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Yap yapp!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Arf Arf!!!")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    override func speak() {
        print("Miyavvvvv")
    }
}

class Persian: Cat {
    override func speak() {
        print("Purr Meow!")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roar!!!!")
    }
}


let genericDog = Dog(legs: 4)
genericDog.speak() // Prints "Woof!"

let corgi = Corgi(legs: 4)
corgi.speak() // Prints "Yap Yap!"

let persian = Persian(isTame: true)
persian.speak() // Prints "Purr Meow!"
