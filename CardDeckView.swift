//
//  CardDeckView.swift
//  Flashcards
//
//  Created by Benia Morgan-Ware on 9/19/24.
//

import SwiftUI

struct CardDeckView: View {
    var cards: [Card]
    var body: some View {
        TabView {
            ForEach(cards) { card in
                CardView(card: card)
            }
        }
    }
}

#Preview {
     let cards = [
     Card(front: "What is 7+7?", back: "14"),
     Card(front: "What is the difference between a variable and a constant?", back: "The value of a variable can change. A constant cannot be changed.")
     ]
     return CardDeckView(cards: cards)
}
