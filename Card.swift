//
//  Card.swift
//  Flashcards
//
//  Created by Benia Morgan-Ware on 9/19/24.
//

import Foundation

struct Card: Identifiable {
    var front: String
    var back: String
    var id = UUID()
}
