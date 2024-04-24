//
//  DetailView.swift
//  Navigation
//
//  Created by Mehmet Tekin on 24.04.2024.
//

import SwiftUI


struct DetailView: View {
    var number: Int
    @Binding var path: [Int]

    var body: some View {
        NavigationLink("Go to Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
            .toolbar {
                Button("Home") {
                    path.removeAll()
                }
            }
        
    }
    
}
