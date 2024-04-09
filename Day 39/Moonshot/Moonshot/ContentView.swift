//
//  ContentView.swift
//  Moonshot
//
//  Created by Mehmet Tekin on 9.04.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(.howItShouldLook)
            .resizable()
            .scaledToFill()
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8
            }
    }
}

#Preview {
    ContentView()
}
