//
//  main.swift
//  Day14
//
//  Created by Mehmet Tekin on 10.03.2024.
//

import Foundation

//let oppsites = [
//    "Mario": "Wario",
//    "Luigi": "Waluigi"
//]
//
//let peachOpposite = oppsites["Peach"]
//
//if let marioOpposite = oppsites["Mario"] {
//    print("Mario's opposite is \(marioOpposite)")
//}
//
//var username: String? = nil
//
//if let unwrappedName = username {
//    print("We got a user: \(unwrappedName)")
//} else {
//    print("The optional was empty.")
//}


//func square(number: Int) -> Int {
//    number * number
//}
//
//var number: Int? = nil
//
//if let number = number {
//    print(square(number: number))
//}


//func getUsername() -> String? {
//    "Mehmet"
//}
//
//if let username = getUsername() {
//    print("Username is \(username)")
//} else {
//    print("No username")
//}


//func printSquare(of number: Int?) {
//    guard let number = number else {
//        print("Missing input")
//        return
//    }
//    print("\(number) * \(number) is \(number * number)")
//}
//
//var myVar: Int? = 3
//
//if let uwrapped = myVar {
//    print("Run if myVar has a value inside")
//}
//
//guard let unwrapped = myVar else {
//    print("Run if myVar doesn't have a value inside")
//}



//func getMeaningOfLife() -> Int? {
//    42
//}


//func printMeaningOfLife() {
//    if let name = getMeaningOfLife() {
//        print(name)
//    }
//}

//printMeaningOfLife()

//func printMeaningOfLife() {
//    guard let name = getMeaningOfLife() else {
//        return
//    }
//    print(name)
//}
//
//printMeaningOfLife()


//func double(number: Int?) -> Int? {
//    guard let number = number else {
//        return nil
//    }
//    return number * 2
//}
//let input = 5
//if let doubled = double(number: input) {
//    print("\(input) doubled is \(doubled).")
//}




//let captains = [
//    "Enterprise": "Picard",
//    "Voyager": "Janeway",
//    "Defiant": "Sisko"
//]
//
//let new = captains["Serenity"] ?? "Unknown"
//print(new)


//let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
//let favorite = tvShows.randomElement() ?? "None"
//print(favorite)


//struct Book {
//    let title: String
//    let author: String?
//}
//
//let book = Book(title: "Beowulf", author: nil)
//let author = book.author ?? "Anonymous"
//print(author)
//
//let input = ""
//let number = Int(input) ?? 0
//print(number)

//let scores = ["Picard": 800, "Data": 7000, "Troi": 900]
//let crusherScore = scores["Crusher"] ?? 0
//let crusherScore2 = scores["Crusher", default: 0]
//
//print(crusherScore)
//print(crusherScore2)




//let names = ["Arya", "Bran", "Robb", "Sansa"]
//
//let chosen = names.randomElement()?.uppercased() ?? "No one"
//print("Nex in line: \(chosen)")


//struct Book {
//    let title: String
//    let author: String?
//}
//
//var book: Book? = nil
//let author = book?.author?.first?.uppercased() ?? "A"
//print(author)


//let names = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
////let surnameLetter = names["Vincent"]?.first?.uppercased()
//let surnameLetter = names["Vincent"]?.first?.uppercased() ?? "?"


//enum UserError: Error {
//    case badID, networkFailed
//}
//
//func getUser(id: Int) throws -> String {
//    throw UserError.networkFailed
//}
//
//if let user = try? getUser(id: 23) {
//    print("User: \(user)")
//}
//
//let user = (try? getUser(id: 23)) ?? "Anonymous"
//print(user)


//enum errMessage: Error {
//    case msg
//}
//
//func runRiskyFunction() {
//    print("This is a risky function!!")
//}
//
////do {
////    let result = try runRiskyFunction()
////    print(result)
////} catch {
////    errMessage.msg
////}
//
//if let result = try? runRiskyFunction() {
//    print(result)
//}





// Checkpoint 9


func randomNumber(from arr: [Int]?) -> Int {
    arr?.randomElement() ?? Int.random(in: 1...100)
}

//var rn = randomNumber(from: [22, 11, 33])
var rn = randomNumber(from: [])
print(rn)
