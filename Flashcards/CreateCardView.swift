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
    
    var body: some View {
        Form {
            Section(header: Text("Card Details")) {
                TextField("Front", text: $front)
                TextField("Back", text: $back)
            }
            Section {
                Button("Create") {
                    dismiss()
                }
                Button("Cancel") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    CreateCardView()
}
