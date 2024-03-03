//
//  main.swift
//  Day1
//
//  Created by Mehmet Tekin on 3.03.2024.
//

import Cocoa

var greeting = "Hello, this is first SwiftUI lesson"
// print(greeting)

var name = "Mehmet"
print(name)
name = "Ahmet"
print(name)
name = "Salih"
print(name)

let surname = "Tekin"
print(surname)
// surname = "Yılmaz" # Can't works cause constant which is a value that can't change


let actor = "Tarkan Tevetoglu"
let filename = "istanbul.jpg"
let result = "⭐️ You win! ⭐️"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple engineer
"""

print(actor.count)
let actorLength = actor.count
print(actorLength)
print(result.uppercased())

print(movie.hasPrefix("A day"))

print(movie.hasSuffix(".jpg"))

let score = 10

let reallyBig = 100000000
let reallyBig2 = 100_000_000

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)


var counter = 10
counter = counter + 5
counter += 5
print(counter)
counter *= 2
print(counter)
counter -= 10
print(counter)
counter /= 2
print(counter)

let number = 120
print(number.isMultiple(of: 3))
print(130.isMultiple(of: 3))


let dNumber = 0.1 + 0.2
print(dNumber)

let a = 1
let b = 2.0
let c = a + Int(b)
print(c)

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int = 3

var name2 = "Nicolas Cage"
name2 = "John Travolta"
