//
//  CardView.swift
//  Flashcards
//
//  Created by Benia Morgan-Ware on 9/19/24.
//

import SwiftUI

struct CardView: View {
    var card: Card
    @State var isBackVisible: Bool = false {
        didSet {
            degrees = isBackVisible ? 180 : 0
        }
    }
    @State var degrees: Double = 0
    var body: some View {
        VStack {
            ZStack {
                Text(isBackVisible ? card.back : card.front)
                    .font(.system(size: 24))
                    .bold()
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity,
                           alignment: .topLeading)
                Button {
                    isBackVisible.toggle()
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
            .background(Color.orange)
            .cornerRadius(10)
            .shadow(radius: 8)
            .padding()
            .rotation3DEffect(
                .degrees(degrees),
                axis: (x: 0.0, y: 1.0, z: 0.0)
            )
        }
        Text("Degrees: \(degrees)")
        
        Slider(value: $degrees, in: 0...180)
            .padding(.horizontal)
    }
}

#Preview {
    CardView(card: Card(front: "Front", back: "Back"))
}
