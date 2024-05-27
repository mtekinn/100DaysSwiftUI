//
//  ContentView.swift
//  Bookworm
//
//  Created by Mehmet Tekin on 24.05.2024.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @AppStorage("notes") private var notes = ""
    @Query var students: [Student]
    @Environment(\.modelContext) var modelContext

    var body: some View {
        NavigationStack {
            List(students) { student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add") {
                    let firstNames = ["Ginny", "Harry", "Hermione", "Luna", "Ron"]
                    let lastNames = ["Granger", "Lovegood", "Potter", "Weasley"]

                    let chosenFirstName = firstNames.randomElement()!
                    let chosenLastName = lastNames.randomElement()!
                    
                    let student = Student(id: UUID(), name: "\(chosenFirstName) \(chosenLastName)")
                    modelContext.insert(student)
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
