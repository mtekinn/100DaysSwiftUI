//
//  main.swift
//  Day3
//
//  Created by Mehmet Tekin on 3.03.2024.
//

import Foundation

//var beatles = ["John", "Paul", "George", "Ringo"]
//let numbers = [4, 8, 15, 16, 23, 42]
//var tempratures = [25.3, 28.2, 26,4]
//
//print(beatles[0])
//print(beatles[1])
//print(tempratures[2])
//
//beatles.append("Adrian")
//beatles.append("Adriah")
//beatles.append("Novall")
//beatles.append("Vivian")
//
//var scores = Array<Int>()
//scores.append(100)
//scores.append(80)
//scores.append(85)
//print(scores[1])
//
//
//// var albums = Array<String>()
//var albums = [String]()
//albums.append("Folklore")
//albums.append("Fearless")
//albums.append("Red")
//
//print(albums.count)
//
//var characters = ["Lana", "Pam", "Ray", "Sterling"]
//print(characters.count)
//
//characters.remove(at: 2)
//print(characters.count)
//
//characters.removeAll()
//print(characters.count)
//
//
//let cities = ["London", "Tokyo", "Rome", "Budapest"]
//print(cities.sorted())
//
//
//let preseidents = ["Bush", "Obama", "Trump", "Biden"]
//let reversedPresidents = preseidents.reversed()
//print(reversedPresidents)


// Dictionaries

//var employee = ["Taylor Swift", "Singer", "Nashville"]
////print("Name: \(employee[0])")
////print("Job Title: \(employee[1])")
////print("Location: \(employee[2])")
//
//let employee2 = ["name": "Taylor Swift",
//                 "job": "Singer",
//                 "location": "Nashville"
//]
//
//print(employee2["name", default: "Unknown"])
//print(employee2["job", default: "Unknown"])
//print(employee2["location", default: "Unknown"])
//
//let hasGraduated = [
//    "Eric": false,
//    "Maeve": true,
//    "Otis": false,
//]
//
//
//let olympics = [
//    2012: "London",
//    2016: "Rio de Janerio",
//    2021: "Tokyo"
//]
//
//print(olympics[2012, default: "Unknown"])
//
//
//var heights = [String: Int]()
//heights["Yao Ming"] = 229
//heights["Shaquille O'Neal"] = 216
//heights["LeBron James"] = 206
//
//
//var archEnemies = [String: String]()
//archEnemies["Batman"] = "The Joker"
//archEnemies["Superman"] = "Lex Luthor"
//
//archEnemies["Batman"] = "Penguin"


// Sets

//let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
var people = Set<String>()
people.insert("Denzel Washington")
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel L Jackson")
//print(people)


// enums


//enum Weekday {
//    case monday
//    case tuesday
//    case wednesday
//    case thursday
//    case friday
//}

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
//day = Weekday.tuesday
//day = Weekday.friday

day = .tuesday
day = .friday
