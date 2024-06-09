//
//  Item.swift
//  SwiftDataProject
//
//  Created by Mehmet Tekin on 9.06.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
