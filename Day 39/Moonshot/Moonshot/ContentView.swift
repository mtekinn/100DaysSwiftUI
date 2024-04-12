//
//  ContentView.swift
//  Moonshot
//
//  Created by Mehmet Tekin on 9.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    let astronauts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        VStack {
            Text(String(astronauts.count))
        }
    }
}

#Preview {
    ContentView()
}
