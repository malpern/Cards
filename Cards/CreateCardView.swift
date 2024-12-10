//
//  CreateCardView.swift
//  Cards
//
//  Created by Micah Alpern on 11/30/24.
//

import SwiftUI

struct CreateCardView: View {
    @Environment(\.dismiss) var dismiss: DismissAction
    @State var front = ""
    @State var back = ""
    
    var onCreate: (Card) -> Void
    
    var body: some View {
        Form {
            Section(header: Text("Card Details")) {
                TextField("Front", text: $front)
                TextField("Back", text: $back)
            }
            Section {
                Button("Create") {
                    let newCard = Card(front: front, back: back)
                    onCreate(newCard)
                    dismiss()
                }
                Button("Cancel") {
                    dismiss()
                }
                .buttonStyle(.bordered)
            }
        }
    }
}
