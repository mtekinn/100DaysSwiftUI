//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Mehmet Tekin on 29.04.2024.
//

import SwiftUI

@Observable
class User: Codable {
    enum CodingKeys: String, CodingKey {
        case _name = "name"
    }
    
    var name = "Mehmet"
}

struct ContentView: View {
    var body: some View {
        Button("Encode Mehmet", action: encodeMehmet)
    }
    
    func encodeMehmet() {
        let data = try! JSONEncoder().encode(User())
        let str = String(decoding: data, as: UTF8.self)
        print(str)
    }
}

#Preview {
    ContentView()
}
