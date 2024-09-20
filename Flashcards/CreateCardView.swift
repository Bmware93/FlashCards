//
//  CreateCardView.swift
//  Flashcards
//
//  Created by Benia Morgan-Ware on 9/20/24.
//

import SwiftUI

struct CreateCardView: View {
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        Button("Cancel") {
            dismiss()
        }
    }
}

#Preview {
    CreateCardView()
}
