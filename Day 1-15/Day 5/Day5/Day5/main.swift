//
//  main.swift
//  Day5
//
//  Created by Mehmet Tekin on 3.03.2024.
//

import Foundation

//let scores = 86
//
//if scores > 80 {
//    print("You pass the exam.")
//}
//
//let speed = 88
//let percentage = 85
//let age = 18
//
//if speed >= 88 {
//    print("Where we're going we don't need roads.")
//}
//
//if percentage < 85 {
//    print("Sorry, you failed the test.")
//}
//
//if age >= 18 {
//    print("You're eligible to vote")
//}
//
//let ourName = "Dave Lister"
//let friendName = "Arnorld Rimmer"
//
//if ourName < friendName {
//    print("It's \(ourName) vs \(friendName)")
//}
//
//
//if ourName > friendName {
//    print("It's \(friendName) vs \(ourName)")
//}
//
//var numbers = [1, 2, 3]
//numbers.append(4)
//
//
//if numbers.count > 3 {
//    numbers.remove(at: 0)
//}
//
//print(numbers)
//
//
//let country = "Turkey"
//
//if country == "England" {
//    print("Taylor")
//}
//
//let name = "Firuze"
//
//if name != "Anonymous" {
//    print("Welcome \(name)")
//}
//
//
//var username = "taylorswift13"
//
//if username == "" {
//    username = "Anonymous"
//}
//
//print("Welcome, \(username)")
//
//
//if username.isEmpty == true {
//    username = "Anonymous"
//}


//let firstName = "Paul"
//let secondName = "Sophie"
//
//let firstAge = 40
//let secondAge = 10
//
//
//print(firstName == secondName)
//print(firstName != secondName)
//print(firstName < secondName)
//print(firstName >= secondName)
//
//print(firstAge == secondAge)
//print(firstAge != secondAge)
//print(firstAge < secondAge)
//print(firstAge >= secondAge)
//
//
//enum Sizes: Comparable {
//    case small
//    case medium
//    case large
//}
//
//let first = Sizes.small
//let second = Sizes.large
//print(first < second)


// check multiple conditions

// let age = 16

//if age >= 18 {
//    print("You can vote in the next election.")
//} else {
//    print("Sorry, you're too young to vote.")
//}


let a = false
let b = true

//if a {
//    print("Code to run if a is true")
//} else if b {
//    print("Code to run if a is false but b is true")
//} else {
//    print("Code to run if both a and b are false")
//}


let temp = 25

//if temp > 20 {
//    if temp < 30 {
//        print("It's a nice day.")
//    }
//}

//if temp > 20 && temp < 30 {
//    print("It's a nice day.")
//}


//let userAge = 14
//let hasParentalConsent = true
//
//if userAge >= 18 || hasParentalConsent == true {
//    print("You can buy the game!")
//}


//enum TransportOption {
//    case airplane, helicopter, bicycle, car, scooter
//}
//
//let transport = TransportOption.airplane
//
//if transport == .airplane || transport == .helicopter {
//    print("Let's fly!")
//} else if transport == .bicycle {
//    print("I hope there's a bike path...")
//} else if transport == .car {
//    print("Time to get stuck in traffic")
//} else {
//    print("I'm going to hire a scooter now!")
//}



// switch statements


//enum Weather {
//    case sun, rain, wind, snow, unknown
//}
//
//let forecast = Weather.sun
//
//
//switch forecast {
//case .sun:
//    print("It should be a nice day.")
//case .rain:
//    print("Pack an umbrella.")
//case .wind:
//    print("Wear something warm")
//case .snow:
//    print("School is cancelled.")
//case .unknown:
//    print("Our forecast generator is broken!")
//}
//
//
//let place = "Ankara"
//
//switch place {
//case "Gotham":
//    print("You're Batman!")
//case "Mega-City One":
//    print("You're Judge Dredd!")
//case "Wankanda":
//    print("You're Black Panther!")
//default:
//    print("Who are you?")
//}
//
//
//let day = 5
//print("My true love gave to me...")
//
//
//switch day {
//case 5:
//    print("5 golden rings")
//    fallthrough
//case 4:
//    print("4 calling birds")
//    fallthrough
//case 3:
//    print("3 French hens")
//    fallthrough
//case 2:
//    print("2 turtle doves")
//    fallthrough
//default:
//    print("A partridge in a pear tree")
//}


// ternary conditional

let age = 18

let canVote = age >= 18 ? "Yes" : "No"
print(canVote)


let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let names = ["Ali", "Ahmet", "Mehmet"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)


enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)
