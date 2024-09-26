//
//  CardView.swift
//  Flashcards
//
//  Created by Benia Morgan-Ware on 9/19/24.
//

import SwiftUI

struct CardView: View {
    var card: Card
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @State var isBackVisible: Bool = false
    var degrees: Double {
       isBackVisible ? 180 : 0
    }
    var body: some View {
            ZStack {
                Group {
                    Text(card.back)
                        .scaleEffect(x: -1)
                        .opacity(isBackVisible ? 1 : 0)
                    
                    Text(card.front)
                        .opacity(isBackVisible ? 0 : 1)
                }
                .font(.system(size: 24))
                .bold()
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity,
                       maxHeight: .infinity,
                       alignment: .topLeading)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.6)){
                        isBackVisible.toggle()
                    }
                    
                } label: {
                    Image(systemName: "arrow.left.arrow.right.circle.fill")
                        .font(.system(size: 36))
                }
                .frame(maxWidth: .infinity,
                       maxHeight: .infinity,
                       alignment: .bottomTrailing)
            }
            .padding()
            .aspectRatio(1.25, contentMode: .fit)
            .frame(width: 300, height: 225)
            .background(card.bgColor)
            .cornerRadius(10)
            .shadow(radius: 8)
            .padding()
            .rotation3DEffect(
                .degrees(degrees),
                axis: (x: 0.0, y: 1.0, z: 0.0)
            )
            .animation(reduceMotion ? nil : .default)
    }
}

#Preview {
    let cards: [Card] = [
        Card(front: "What is 7+7?", back: "14", bgColor: .indigo),
        Card(front: "What is the difference between a variable and a constant?", back: "The value of a variable can change. A constant cannot be changed.", bgColor: .mint),
        Card(front: "From what is cognac made?", back: "Grapes", bgColor: .orange)
    ]
    return ForEach(cards) { card in
        CardView(card: card)
    }
}
