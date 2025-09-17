//
//  ContentView.swift
//  Animations
//
//  Created by carlosgalvankamey on 9/16/25.
//

import SwiftUI

struct ContentView: View {
    @State private var textColor = Color.black
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle.bold())
            .foregroundStyle(textColor)
        
        HStack {
            Button("RED") {
                withAnimation {
                    textColor = .red
                }
            }
            Button("BLACK") {
                withAnimation {
                    textColor = .black
                }
            }
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ContentView()
}
