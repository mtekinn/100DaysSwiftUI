//
//  main.swift
//  Day4
//
//  Created by Mehmet Tekin on 3.03.2024.
//

import Foundation

//var name: String = "Mehmet"
//var age: Int = 25
//
//let playerName: String = "Roy"
//var luckyNumber: Int = 13
//let pi: Double = 3.141
//var isAuthenticated: Bool = true
//var albums: [String] = ["Red", "Fearless"]
//var user: [String: String] = ["id": "@twostraws"]
//var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])
//var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
//var teams: [String] = [String]()
//var cities: [String] = []
//var clues = [String]()
//
//enum UIStyle {
//    case light, dark, system
//}
//
//var style = UIStyle.light



// Checkpoint 2


var arr = ["Ahmet", "Ali", "Veli", "Mehmet", "Deniz", "Gamze", "Firuze", "Emre", "Ahmet", "Veli"]
var st = Set<String>()
for i in arr {
    st.insert(i)
}
var newSet = Set(arr)

print(arr.count) // 10
print(st.count) // 8
print(newSet.count) // 8
