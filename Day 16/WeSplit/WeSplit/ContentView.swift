//
//  ContentView.swift
//  WeSplit
//
//  Created by Mehmet Tekin on 11.03.2024.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Hermione"
    
    var body: some View {
        Form {
            Picker("Select student", selection: $selectedStudent) {
                ForEach(students, id: \.self) {
                    Text($0)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
