//
//  ContentView.swift
//  Animations
//
//  Created by carlosgalvankamey on 9/16/25.
//

import SwiftUI

struct ContentView: View {
    private var letters = Array("Hello Swift")
    
    @State private var enable = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) { num in
                Text("\(letters[num])")
                    .padding(5)
                    .font(.title)
                    .foregroundStyle(enable ? .green : .black)
                    .offset(dragAmount)
                    .animation(.linear.delay(Double(num) / 20), value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded { _ in
                    dragAmount = CGSize.zero
                    enable.toggle()
                }
        )
    }
}

#Preview {
    ContentView()
}
