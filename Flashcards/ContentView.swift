//
//  ContentView.swift
//  Flashcards
//
//  Created by Benia Morgan-Ware on 9/19/24.
//

import SwiftUI

struct ContentView: View {
    @State var cards: [Card] = [
        Card(front: "What is 7+7?", back: "14", bgColor: .green),
        Card(front: "What is the difference between a variable and a constant?", back: "The value of a variable can change. A constant cannot be changed.", bgColor: .cyan),
        Card(front: "From what is cognac made?", back: "Grapes", bgColor: .mint)
    ]
    @State private var isShowingCreateCardView = false
    
    var body: some View {
        ZStack {
            CardDeckView(cards: cards)
            Button {
                isShowingCreateCardView = true
                
            } label: {
                Image(systemName: "plus")
                    .font(.largeTitle)
                    .padding()
                    .clipShape(.circle)
            }
            .padding([.top, .trailing])
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity,
                   alignment: .topTrailing)
        }
        .sheet(isPresented: $isShowingCreateCardView) {
            CreateCardView(onCreate: { card in
                cards.append(card)
            })
            
        }
        
    }
}

#Preview("Card Deck") {
    ContentView()
    
}

