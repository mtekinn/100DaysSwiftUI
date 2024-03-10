import Foundation

// Creating constants and variables


/*
var name = "Mehmet"
name = "Can"
 
let user = "Firuze"
user = "Tekin" // Cannot assign to value: 'user' is a 'let' constant
print(user) // Firuze
*/


// Strings


/*
let actor = "Tom Cruise"
let actor = "Tom Cruise 🏃‍♂️"

let quote = "He tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple engineer
"""

print(actor.count) // 12
print(quote.hasPrefix("He")) // true
print(quote.hasSuffix("Away.")) // false
*/


// Integers


/*
let score = 10
let higherScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3)) // true

let id = Int.random(in: 1...1000)
*/


// Decimals


/*
let score = 3.0
*/


// Booleans


/*
let goodDogs = true
let gameOver = false

var isSaved = false
isSaved.toggle()
*/


// Joining strings


/*
let name = "Mehmet"
let age = 25
let message = "I'm \(name) and I'm \(age) years old."
print(message) // I'm Mehmet and I'm 25 years old.
*/


// Arrays

/*
var colors = ["Red", "Yello", "Blue"]
let numbers = [4, 8, 15, 16]
var readings = [0.1, 0.5, 1.5]

print(colors[0]) // Red
print(readings[2]) // 1.5

colors.append("Black")

colors.remove(at: 0)
print(colors.count) // 3

print(colors.contains("Gray")) // false
*/


// Dictionaries


/*
let employee = [
    "name": "Mehmet",
    "job": "iOS Engineer"
]

print(employee["name", default: "Unknown"]) // Mehmet
print(employee["job", default: "Unknown"]) // iOS Engineer
*/


// Sets


/*
var numbers = Set([1, 1, 3, 5, 7])
print(numbers) // [1, 7, 5, 3]

numbers.insert(10)
*/


// Enums


/*
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .friday
print(day) // friday
*/


// Type annotations


/*
var score: Double = 0

let player: String = "Mehmet"
var luckyNumber: Int = 7
let pi: Double = 3.141
var isEnabled: Bool = true
var albums: Array<String> = ["Pink", "Floyd"]
var user: Dictionary<String, String> = ["id": "@mtekin"]
var books: Set<String> = Set(["L.O.T.R.", "Harry Potter"])

var teams: [String] = [String]()
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light
*/


// Conditions


/*
let age = 21

if age < 12 {
    print("You can't vote")
} else if age < 18 {
    print("You can vote soon.")
} else {
    print("You can vote now.") // You can vote now.
}


let temp = 26

if temp > 20 && temp < 30 {
    print("It's a nice day.") // It's a nice day.
}
*/


// Switch statements


/*
enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("A nice day.") // A nice day.
case .rain:
    print("Pack an umbrella.")
default:
    print("Should be okay.")
}
*/


// The ternary conditional operator


/*
let age = 21
let canVote = age >= 18 ? "Yes" : "No"
print(canVote) // Yes
*/


// Loops


/*
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1..<13 {
    print("5 x \(i) is \(5 * i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

var count = 10

while count > 0 {
    print("\(count)…")
    count -= 1
}

print("Go!")

let files = ["me.jpg", "work.txt", "sophie.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(file)")
}
*/


// Functions


/*
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)
*/


// Returning multiple values from functions


/*
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Mehmet", lastName: "Tekin")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

let (firstName, _) = getUser()
print("Name: \(firstName)")
*/



// Customizing parameter labels


/*
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
*/



// Providing default values for parameters


/*
func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)!")
    } else {
        print("Hi, \(person)!")
    }
}

greet("Mehmet", formal: true) // Welcome, Mehmet!
greet("Firuze") // Hi, Firuze!
*/



// Handling errors in functions


/*
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!") // I have the same combination on my luggage!
} catch {
    print("There was an error.")
}
*/



// Closures


/*
//let sayHello = {
//    print("Hi there!")
//}
//
//sayHello()

let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})
*/


// Trailing closures and shorthand syntax


/*
let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

//let onlyT = team.filter({ (name: String) -> Bool in
//    return name.hasPrefix("T")
//})

//let onlyT = team.filter({ (name: String) -> Bool in
//    name.hasPrefix("T")
//})

//let onlyT = team.filter({ name in
//    name.hasPrefix("T")
//})

//let onlyT = team.filter { name in
//    name.hasPrefix("T")
//}

let onlyT = team.filter {
    $0.hasPrefix("T")
}

print(onlyT) // ["Tiffany", "Tasha"]
*/



// Structs


/*
struct Album {
    let title: String
    let artist: String
    var isReleased = true

    func printSummary() {
        print("\(title) by \(artist)")
    }
    
    mutating func removeFromSale() {
        isReleased = false
    }

}

let red = Album(title: "Karma", artist: "Tarkan")
print(red.title)
red.printSummary()
*/



// Computed properties


/*
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }

        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}
*/



// Property observers


/*
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10 // Score is now 10
game.score -= 3 // Score is now 7
*/



// Custom initializers


/*
struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}
*/



// Access control


/*
struct BankAccount {
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
*/



// Static properties and methods


/*
struct AppData {
    static let version = "1.3 beta 2"
    static let settings = "settings.json"
}
*/



// Classes


/*
class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }

    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm coding for \(hours) hours.")
    }
}

let mehmet = Developer(hours: 8)
mehmet.work() // I'm coding for 8 hours.
mehmet.printSummary() // I work 8 hours a day.

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

class Singer {
    var name = "Tarkan"
}

var singer1 = Singer()
var singer2 = singer1
singer2.name = "Sezen"
print(singer1.name) // Sezen
print(singer2.name) // Sezen

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
//for i in 1...3 {
//    let user = User(id: i)
//    print("User \(user.id): I'm in control!")
//}


class User {
    var name = "Mehmet"
}

let user = User()
user.name = "Tekin"
print(user.name)
*/



// Protocols


/*
protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    var name: String
    
    var currentPassengers: Int
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("Too slow!")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car(name: "Tesla", currentPassengers: 2)
commute(distance: 100, using: car) // I'm driving 100km.

let name = "Car"
var currentPassengers = 1
*/



// Extensions


/*
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmed()

extension String {
    mutating func trim() {
        self = self.trimmed()
    }
}

quote.trim()

extension String {
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
"""

print(lyrics.lines.count) // 2
*/



// Protocol extensions


/*
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)") // Guest count: 3
}
*/



// Optionals


/*
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)") // Mario's opposite is Wario
}
*/



// Unwrapping optionals with guard


/*
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}
*/


// Nil coalescing


/*
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

let input = ""
let number = Int(input) ?? 0
print(number) // 0
*/


// Optional chaining


/*
let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased()
print("Next in line: \(chosen ?? "No one")") // Next in line: ARYA
*/



// Optional try?


enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}
