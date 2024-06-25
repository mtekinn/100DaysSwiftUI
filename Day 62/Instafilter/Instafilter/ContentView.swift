//
//  ContentView.swift
//  Instafilter
//
//  Created by Mehmet Tekin on 17.06.2024.
//

import SwiftUI
import StoreKit

struct ContentView: View {
    @Environment(\.requestReview) var requestReview
    
    var body: some View {
        Button("Leave a review") {
            requestReview()
        }
    }
}

#Preview {
    ContentView()
}
