//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Mehmet Tekin on 9.06.2024.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataProjectApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
