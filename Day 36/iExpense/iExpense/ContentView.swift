//
//  ContentView.swift
//  iExpense
//
//  Created by Mehmet Tekin on 30.03.2024.
//

import SwiftUI

struct User: Codable {
    let firstName: String
    let lastName: String
    var age: Int
    var married: Bool
}

struct ContentView: View {
    @State private var user = User(firstName: "Mehmet", lastName: "Tekin", age: 28, married: false)
    
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

#Preview {
    ContentView()
}
