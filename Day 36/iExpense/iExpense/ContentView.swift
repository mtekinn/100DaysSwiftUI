//
//  ContentView.swift
//  iExpense
//
//  Created by Mehmet Tekin on 30.03.2024.
//

import SwiftUI

@Observable
class User {
    var firstName = "Can"
    var lastName = "Tekin"
}

struct ContentView: View {
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First Name", text: $user.firstName)
            TextField("First Name", text: $user.lastName)
        }
    }
}

#Preview {
    ContentView()
}
