//
//  main.swift
//  Day8
//
//  Created by Mehmet Tekin on 5.03.2024.
//

import Foundation

//func printTimesTables(for number: Int, end: Int) {
//    for i in 1...end {
//        print("\(i) x \(number) is \(i * number)")
//    }
//}
//
//printTimesTables(for: 5, end: 20)


//func printTimesTables(for number: Int, end: Int = 12) {
//    for i in 1...end {
//        print("\(i) x \(number) is \(i * number)")
//    }
//}
//
//printTimesTables(for: 5, end: 20)
//printTimesTables(for: 8)


// handle errors


enum PasswordError: Error {
    case short, obious
}


func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}


//let string = "123dsadasdasdasdasd45"
//
//do {
//    let result = try checkPassword(string)
//    print("Password rating: \(result)")
//} catch {
//    print("There was an error.")
//}


//let string = "12345"
//
//do {
//    let result = try checkPassword(string)
//    print("Password rating: \(result)")
//} catch PasswordError.short {
//    print("Plase use a longer password.")
//} catch PasswordError.obious {
//    print("I have the same combination on my luggage!")
//} catch {
//    print("There was an error, which is we don't know.")
//}




// Checkpoint 4


enum SquareRootError: Error {
    case outOfBound
    case noRoot
}

func checkpoint(_ num: Int) throws -> Int {
    guard num >= 1 && num <= 10_000 else {
        throw SquareRootError.outOfBound
    }
    
    for i in 1...10_000 {
        if num == i * i {
            return i
        }
    }
    throw SquareRootError.noRoot
}

print(try checkpoint(16))
print(sqrt(16))
