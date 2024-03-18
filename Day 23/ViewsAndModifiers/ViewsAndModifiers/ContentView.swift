//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Mehmet Tekin on 18.03.2024.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
    
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Mehmet Tekin")
            Color.blue
                .frame(width: 300, height: 200)
                .watermarked(with: "iOS Engineer")
        }
    }
}

#Preview {
    ContentView()
}
