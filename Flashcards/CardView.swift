//
//  CardView.swift
//  Flashcards
//
//  Created by Benia Morgan-Ware on 9/19/24.
//

import SwiftUI

struct CardView: View {
    var text: String = "Hello, World"
    var body: some View {
        ZStack {
            Text(text)
                .font(.system(size: 24))
                .bold()
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity,
                       maxHeight: .infinity,
                       alignment: .topLeading)
     
                Image(systemName: "arrow.left.arrow.right.circle.fill")
                    .font(.system(size: 36))
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
    }
}

#Preview {
    CardView()
}
