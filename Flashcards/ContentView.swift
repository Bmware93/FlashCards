//
//  ContentView.swift
//  Flashcards
//
//  Created by Benia Morgan-Ware on 9/19/24.
//

import SwiftUI

struct ContentView: View {
    @State var cards: [Card] = [
        Card(front: "What is 7+7?", back: "14"),
        Card(front: "What is the difference between a variable and a constant?", back: "The value of a variable can change. A constant cannot be changed."),
        Card(front: "From what is cognac made?", back: "Grapes")
    ]
    var body: some View {
        ZStack {
            CardDeckView(cards: cards)
            Button {
                let newCard = Card(front: "Front", back: "Back")
                cards.append(newCard)
            } label: {
                Image(systemName: "plus")
                    .font(.headline)
                    .padding()
                    .background(.orange)
                    .clipShape(.capsule)
            }
            .padding([.top, .trailing])
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity,
                   alignment: .topTrailing)
        }
    }
}


#Preview("Card Deck") {
    ContentView()
    
}

