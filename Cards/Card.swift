//
//  Card.swift
//  Cards
//
//  Created by Micah Alpern on 11/29/24.
//

import Foundation

struct Card: Identifiable {
    var front: String
    var back: String
    var id = UUID()
}
