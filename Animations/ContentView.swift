//
//  ContentView.swift
//  Animations
//
//  Created by carlosgalvankamey on 9/16/25.
//

import SwiftUI

struct ContentView: View {
    private var letters = Array("Hello Swift")
    
    @State private var dragAmounts: [CGSize] = Array(repeating: .zero, count: 11)
    @State private var enableStates: [Bool] = Array(repeating: false, count: 11)
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) { num in
                Text("\(letters[num])")
                    .padding(5)
                    .font(.title)
                    .foregroundStyle(enableStates[num] ? .green : .black)
                    .offset(dragAmounts[num])
                    .animation(.linear, value: dragAmounts[num])
                    .gesture(
                        DragGesture()
                            .onChanged { dragAmounts[num] = $0.translation }
                            .onEnded { _ in
                                dragAmounts[num] = .zero
                                enableStates[num].toggle()
                            }
                    )
            }
        }
    }
}

#Preview {
    ContentView()
}
