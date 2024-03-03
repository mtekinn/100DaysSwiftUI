//
//  main.swift
//  Day2
//
//  Created by Mehmet Tekin on 3.03.2024.
//

import Foundation

let goodDogs = true
var gameOver = false

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)


print(gameOver)
gameOver.toggle()
print(gameOver)


let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart


let name = "Mehmet"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)



// Checkpoint 1

let celcius = 32.0
var fahrenheit = (((celcius * 9) / 5) + 32)

print("Celcius is \(celcius), fahrenheit is \(fahrenheit)")
