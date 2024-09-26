//
//  Card.swift
//  Flashcards
//
//  Created by Benia Morgan-Ware on 9/19/24.
//

import SwiftUI

struct Card: Identifiable {
    var front: String
    var back: String
    var bgColor: Color
    var id = UUID()
}
