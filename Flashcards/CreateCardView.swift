//
//  CreateCardView.swift
//  Flashcards
//
//  Created by Benia Morgan-Ware on 9/20/24.
//

import SwiftUI

struct CreateCardView: View {
    @Environment (\.dismiss) var dismiss
    @State var front: String = ""
    @State var back: String = ""
    var onCreate: (Card) -> Void
    var isCardVaild: Bool {
        !front.isEmpty && !back.isEmpty
    }
    func createCard() {
        guard isCardVaild else { return }
        let newCard = Card(front: front, back: back)
        onCreate(newCard)
        
        dismiss()
    }
    
    var body: some View {
        Form {
            Section(header: Text("Card Details")) {
                TextField("Front", text: $front)
                TextField("Back", text: $back)
                    .onSubmit {
                        createCard()
                    }
            }
            Section {
                Button("Create") {
                    createCard()
                }
                .disabled(!isCardVaild)
                
                Button("Cancel") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    CreateCardView(onCreate: { _ in })
}
