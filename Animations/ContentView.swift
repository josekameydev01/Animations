//
//  ContentView.swift
//  Animations
//
//  Created by carlosgalvankamey on 9/16/25.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .padding(50)
        .background(enabled ? .green : .red)
        .animation(nil, value: enabled)
        .foregroundStyle(.white)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(
            .easeInOut(duration: 2)
            .repeatCount(3, autoreverses: true),
            value: enabled
        )
    }
}

#Preview {
    ContentView()
}
