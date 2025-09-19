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
        .animation(
            .easeInOut(duration: 2)
            .repeatCount(3, autoreverses: true),
            value: animationAmount
        )
    }
}

#Preview {
    ContentView()
}
