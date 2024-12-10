//
//  CardDeckView.swift
//  Cards
//
//  Created by Micah Alpern on 11/30/24.
//

import SwiftUI

struct CardDeckView: View {
    var cards: [Card]
    var body: some View {
        TabView {
            ForEach(cards) {card in
                CardView(card: card)
            }
        }
        .tabViewStyle(.page)
        .background(Color("background"))
    }
}

#Preview {
    let cards = [
        Card(front: "What is 7+7?", back: "14"),
        Card(front: "What is the airspeed velocity of an uladen swallow?", back: "African or European swallon?"),
        Card(front: "What is the capital of France?", back: "Paris")
        ]
    return CardDeckView(cards: cards)
}
