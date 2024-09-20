//
//  ContentView.swift
//  Flashcards
//
//  Created by Benia Morgan-Ware on 9/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(card: Card(front: "What is 7+7?", back: "14"))
    }
}

#Preview("Single line question") {
    CardView(card: Card(front: "What is 7+7?", back: "14"))
    
}

#Preview("Multiline question") {
    CardView(card: Card(front: "What is the difference between a variable and a constant?", back: "The value of a variable can change. A constant cannot be changed."))
    
}
