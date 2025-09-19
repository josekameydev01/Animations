//
//  ContentView.swift
//  Animations
//
//  Created by carlosgalvankamey on 9/16/25.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap Me") {
            animationAmount += 0.1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .scaleEffect(animationAmount)
        .animation(.spring(duration: 1, bounce: 0.9), value: animationAmount)
    }
}

#Preview {
    ContentView()
}
