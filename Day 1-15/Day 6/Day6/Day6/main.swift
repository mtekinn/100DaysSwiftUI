//
//  main.swift
//  Day6
//
//  Created by Mehmet Tekin on 4.03.2024.
//

import Foundation

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

//for os in platforms {
//    print("Swift works great on \(os)")
//}
//
//for i in 1...12 {
//    print("5 x \(i) is \(5 * i)")
//}


//for i in 1...12 {
//    print("The \(i) times table:")
//    
//    for j in 1...12 {
//        print("\(j) x \(i) is \(j * i)")
//    }
//    print()
//}


//for i in 1...5 {
//    print("Counting from 1 through 5: \(i)")
//}
//
//print()
//
//
//for i in 1..<5 {
//    print("Counting 1 up to 5: \(i)")
//}
//
//
//var lyric = "Haters gonna"
//
//for _ in 1...5 {
//    lyric += " hate"
//}
//
//print(lyric)


//let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]
//
//for name in names {
//    print("\(name) is a secret agent")
//}

//for i in 1...3 {
//    for j in 1...i {
//        print(j, terminator: "")
//    }
//    print("")
//}

// while loop

//var countdown = 10
//
//while countdown > 0 {
//    print("\(countdown)...")
//    countdown -= 1
//}
//
//print("Blast off!")
//
//let id = Int.random(in: 1...1000)
//let amount = Double.random(in: 0...1)
//
//
//var roll = 0
//
//while roll != 20 {
//    roll = Int.random(in: 1...20)
//    print("I rolled a \(roll)")
//}
//
//print("Critical hit!")


//var itemsSold: Int = 0
//while itemsSold < 5000 {
//    itemsSold += 100
//    if itemsSold % 1000 == 1000 {
//        print("\(itemsSold) items sold - a big milestone!")
//    }
//}


// skip loop

//let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]
//
//for filename in filenames {
//    if filename.hasSuffix(".jpg") == false {
//        continue
//    }
//    print("Found picture: \(filename)")
//}
//
//
//let number1 = 4
//let number2 = 14
//var multiples = [Int]()
//
//for i in 1...100_000 {
//    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
//        multiples.append(i)
//        
//        if multiples.count == 10 {
//            break
//        }
//    }
//}
//
//print(multiples)
//print(multiples.count)
//
//
//let scores = [10, 80, 40, 30, 0, 50, 20]
//var count = 0
//
//for score in scores {
//    if score == 0 {
//        break
//    }
//    count += 1
//}
//
//print("You had \(count) score before you got 0.")



// labeled statements

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "down"]

//for option1 in options {
//    for option2 in options {
//        for option3 in options {
//            print("In loop")
//            
//            let attempt = [option1, option2, option3]
//            
//            if attempt == secretCombination {
//                print("The combination is \(attempt)!")
//            }
//        }
//    }
//}


//outerLoop: for option1 in options {
//    for option2 in options {
//        for option3 in options {
//            print("In loop")
//            
//            let attempt = [option1, option2, option3]
//            
//            if attempt == secretCombination {
//                print("The combination is \(attempt)!")
//                break outerLoop
//            }
//        }
//    }
//}



// Checkpoint 3


for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("\(i) is: FizzBuzz")
    } else {
        if i.isMultiple(of: 3) {
            print("\(i) is: Fizz")
        } else if i.isMultiple(of: 5) {
            print("\(i) is: Buzz")
        }
        else {
            print("\(i) is: \(i)")
        }
    }
}
