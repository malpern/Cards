//
//  ContentView.swift
//  Cards
//
//  Created by Micah Alpern on 11/28/24.
//

import SwiftUI

struct ContentView: View {
    var text: String = "Hello, World!"
    var body: some View {
        ZStack {
            Text(text)
                .font(.system(size: 24))
                .bold()
                .multilineTextAlignment(.leading)
            Image(systemName: "arrow.left.arrow.right.circle.fill")
                .font(.system(size: 36))
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
        }
        .padding()
        .frame(width: 300, height: 225)
        .background(Color.orange)
        .clipShape(.rect(cornerRadius: 10))
        .shadow(radius: 10, x: 0, y: 10)
        .padding()

    }
}

#Preview {
    ContentView(text: "What is 7+7?")
}
#Preview {
    ContentView(text: "What is the airspeed velocity of an unladen swallow?")
}
