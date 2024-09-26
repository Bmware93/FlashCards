//
//  CreateCardView.swift
//  Flashcards
//
//  Created by Benia Morgan-Ware on 9/20/24.
//

import SwiftUI

struct CreateCardView: View {
    @Environment(\.dismiss) var dismiss
    @State var front: String = ""
    @State var back: String = ""
    @State private var bgColor: Color = .pink
    var onCreate: (Card) -> Void
    var isCardVaild: Bool {
        !front.isEmpty && !back.isEmpty
    }
    func createCard() {
        guard isCardVaild else { return }
        let newCard = Card(front: front, back: back, bgColor: bgColor)
        onCreate(newCard)
        dismiss()
    }
    enum Field: Hashable {
        case front
        case back
    }
    @FocusState var focusedField: Field?
    var body: some View {
        Form {
            Section(header: Text("Card Details")) {
                TextField("Front", text: $front)
                    .focused($focusedField, equals: .front)
                    .submitLabel(.next)
                 
                TextField("Back", text: $back)
                    .focused($focusedField, equals: .back)
                    .submitLabel(.done)
                
                ColorPicker("Select a background color", selection: $bgColor)
          
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
        .onSubmit {
            if front.isEmpty {
                focusedField = .front
            } else if back.isEmpty {
                focusedField = .back
            } else {
                createCard()
            }
        }
    }
}

#Preview {
    CreateCardView(onCreate: { _ in })
}
