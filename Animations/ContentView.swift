//
//  ContentView.swift
//  Animations
//
//  Created by carlosgalvankamey on 9/16/25.
//

import SwiftUI

struct ContentView: View {
    @State private var userAnswer = true
    var body: some View {
        NavigationStack {
            Form {
                Section("Do you want something else?") {
                    Picker("Answer", selection: $userAnswer.animation(
                        .easeInOut(duration: 1)
                        .repeatCount(3, autoreverses: true)
                    )) {
                        Text("YES").tag(true)
                        Text("NO").tag(false)
                    }
                }
                RoundedRectangle(cornerRadius: 20)
                    .fill(userAnswer ? .green : .red)
                    .frame(width: 200, height: 100)
                    .padding()
            }
            
            Button("See answer") {
                print(userAnswer)
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
