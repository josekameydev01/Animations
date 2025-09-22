//
//  ContentView.swift
//  Animations
//
//  Created by carlosgalvankamey on 9/16/25.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    var body: some View {
        Button("Tap Me") {
            withAnimation {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 0, z: 1))
    }
}

#Preview {
    ContentView()
}
