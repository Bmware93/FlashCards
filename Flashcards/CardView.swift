//
//  CardView.swift
//  Flashcards
//
//  Created by Benia Morgan-Ware on 9/19/24.
//

import SwiftUI

struct CardView: View {
    var card: Card
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
                    withAnimation{
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
            .background(isBackVisible ? .yellow : .pink)
            .cornerRadius(10)
            .shadow(radius: 8)
            .padding()
            .rotation3DEffect(
                .degrees(degrees),
                axis: (x: 0.0, y: 1.0, z: 0.0)
            )

    }
}

#Preview {
    CardView(card: Card(front: "Front", back: "Back"))
}
