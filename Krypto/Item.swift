//
//  Item.swift
//  Krypto
//
//  Created by Mohamed Saber on 09/04/2024.
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