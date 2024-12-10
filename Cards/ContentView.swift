//
//  ContentView.swift
//  Cards
//
//  Created by Micah Alpern on 11/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var cards: [Card] = [
         Card(front: "What is 7+7?", back: "14")
     ]
    @State var isShowingCreateCardView = false
     
    var body: some View {
        ZStack {
            CardDeckView(cards: cards)
            Button {
                isShowingCreateCardView = true
            } label: {
                Image(systemName: "plus")
                    .font(.headline)
                    .padding()
                    .fontWeight(.heavy)
                    .background(Color.orange)
                    .foregroundColor(Color("flipColor"))
                    .clipShape(.circle)
            }
            .padding([.top, .trailing])
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            
        }
        .sheet(isPresented: $isShowingCreateCardView) {
            CreateCardView { newCard in
                cards.append(newCard)
            }
        }
    }
}

#Preview {
    ContentView()
}
