//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Mehmet Tekin on 24.05.2024.
//

import SwiftData
import SwiftUI

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Book.self)
        }
    }
}
